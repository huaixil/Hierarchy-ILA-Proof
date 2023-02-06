// =============================================================================
// MIT License
//
// Copyright (c) 2019 Princeton University
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
// =============================================================================

// File: pe_top_instrs.cc

#include <vector>

#include <flex.h>
#include <uninterpreted_func.h>

namespace ilang {
namespace flex {

void DefinePETop (Ila& m, const int& pe_idx);
void Act_IncrementInst (Ila& m, InstrRef& instr, const int& pe_idx);

void DefinePETop (Ila& m, const int& pe_idx) {

  // PE Core
  auto pe_config_valid_bit = m.state(PEGetVarName(pe_idx, RNN_LAYER_SIZING_CONFIG_REG_IS_VALID));
  auto pe_config_is_valid = (pe_config_valid_bit == PE_CORE_VALID);

  auto is_start_reg = m.NewBvState(PEGetVarName(pe_idx, CORE_IS_START),
                                       PE_CORE_IS_START_BITWIDTH);
  auto mngr_cntr = m.NewBvState(PEGetVarName(pe_idx, CORE_MNGR_CNTR),
                                    PE_CORE_MNGR_CNTR_BITWIDTH);
  auto input_cntr = m.NewBvState(PEGetVarName(pe_idx, CORE_INPUT_CNTR),
                                     PE_CORE_INPUT_CNTR_BITWIDTH);
  auto output_cntr = m.NewBvState(PEGetVarName(pe_idx, CORE_OUTPUT_CNTR),
                                      PE_CORE_OUTPUT_CNTR_BITWIDTH);

  auto core_state = m.state(PEGetVarName(pe_idx, CORE_STATE));

  // core accumulator registers
  for (auto i = 0; i < PE_CORE_ACCUM_VECTOR_LANES; i++) {
      m.NewBvState(PEGetVarNameVector(pe_idx, i, CORE_ACCUM_VECTOR),
                     PE_CORE_ACCUM_VECTOR_BITWIDTH);
  }

  // PE Act
  // internal states
  auto act_is_start_reg = m.NewBvState(PEGetVarName(pe_idx, ACT_IS_START_REG),
                                       PE_ACT_IS_START_REG_BITWIDTH);
  auto instr_cntr = m.NewBvState(PEGetVarName(pe_idx, ACT_INSTR_COUNTER),
                                     PE_ACT_INSTR_COUNTER_BITWIDTH);
  auto act_output_cntr = m.NewBvState(PEGetVarName(pe_idx, ACT_OUTPUT_COUNTER),
                                      PE_ACT_OUTPUT_COUNTER_BITWIDTH);
  auto act_state = m.NewBvState(PEGetVarName(pe_idx, ACT_STATE), PE_ACT_STATE_BITWIDTH);

  // configure states
  auto num_instr = m.state(PEGetVarName(pe_idx, ACT_MNGR_CONFIG_REG_NUM_INST));
  auto num_output = m.state(PEGetVarName(pe_idx, ACT_MNGR_CONFIG_REG_NUM_OUTPUT));
  
  // Decode of Instructions
  auto current_instr = PEActInstrFetch(m, pe_idx, instr_cntr);
  auto a1 = Extract(current_instr, PE_ACT_REG_A1_HI_IDX, PE_ACT_REG_A1_LO_IDX);
  auto a2 = Extract(current_instr, PE_ACT_REG_A2_HI_IDX, PE_ACT_REG_A2_LO_IDX);
  auto op = Extract(current_instr, PE_ACT_OP_HI_IDX, PE_ACT_OP_LO_IDX);

  // define the register array as memory here: 4x16x20
  for (auto i = 0; i < PE_ACT_REGS_NUM; i++) {
    m.NewMemState(PEGetVarNameVector(pe_idx, i, ACT_REGS),
                      PE_ACT_REGS_ADDR_WIDTH, PE_CORE_ACT_VECTOR_BITWIDTH);
  }

  // define the temp register array for holding the data to be stored in to the
  // data
  for (auto i = 0; i < ACT_SCALAR; i++) {
    m.NewBvState(PEGetVarNameVector(pe_idx, i, ACT_REG_TEMP),
                     PE_CORE_ACT_VECTOR_BITWIDTH);
  }
    
  { // instruction top transfer
    auto instr = m.NewInstr(PEGetInstrName(pe_idx, "top_transfer"));

    auto core_is_start = pe_config_is_valid & is_start_reg;
    auto state_out = (core_state == PE_CORE_STATE_OUT);
    // update 04162020: flexnlp use blocking push on act port, thus if port
    // valid is high, it should halt this instruction
    // auto act_port_invalid =
    //     (m.state(PEGetVarName(pe_idx, CORE_ACT_REG_PORT_VALID)) ==
    //      PE_CORE_INVALID);
    auto act_is_start = (is_start_reg == PE_ACT_VALID);
    auto state_exec = (act_state == PE_ACT_STATE_EXEC);
    auto op_inpe_ready = (op == PE_ACT_OP_INPE);

    instr.SetDecode(core_is_start & state_out & act_is_start & state_exec & op_inpe_ready);

    auto num_mngr   = m.state(PEGetVarName(pe_idx, RNN_LAYER_SIZING_CONFIG_REG_NUM_MANAGER));
    auto num_output  = m.state(PEGetVarName(pe_idx, RNN_LAYER_SIZING_CONFIG_REG_NUM_OUTPUT));
    auto mngr_cntr_4 = Concat(BvConst(0, 4 - mngr_cntr.bit_width()), mngr_cntr);
    auto last_mngr = (mngr_cntr_4 == (num_mngr - 1));
    auto last_output = (output_cntr == (num_output - 1));
    auto is_output_end = last_mngr & last_output;

    auto is_zero_first = m.state(
        PEGetVarName(pe_idx, RNN_LAYER_SIZING_CONFIG_REG_IS_ZERO_FIRST));

    auto mngr_cntr_next =
        Ite(last_mngr, BvConst(0, PE_CORE_MNGR_CNTR_BITWIDTH), mngr_cntr + 1);
    auto output_cntr_next =
        Ite(last_mngr & last_output, BvConst(0, PE_CORE_OUTPUT_CNTR_BITWIDTH),
            Ite(last_mngr & !last_output, output_cntr + 1, output_cntr));
    // when is_zero_first & zero_active is valid, the output for the first
    // timestep should all be zero.
    auto is_zero_first_next =
        Ite(last_mngr & last_output,
            BvConst(0, RNN_LAYER_SIZING_CONFIG_REG_IS_ZERO_FIRST_WIDTH),
            is_zero_first);

    auto next_state =
         Ite(is_output_end, BvConst(PE_CORE_STATE_IDLE, PE_CORE_STATE_BITWIDTH),
             BvConst(PE_CORE_STATE_PRE, PE_CORE_STATE_BITWIDTH));
    // use the is_start_reg to end the run mac when there is no new pe_start
    // signal pushed into the channel
     auto is_start_reg_next =
         Ite(is_output_end, BvConst(PE_CORE_INVALID, PE_CORE_STATE_BITWIDTH),
             BvConst(PE_CORE_VALID, PE_CORE_STATE_BITWIDTH));

    //instr.SetUpdate(is_start_reg, is_start_reg_next);

    instr.SetUpdate(mngr_cntr, mngr_cntr_next);
    instr.SetUpdate(output_cntr, output_cntr_next);
    instr.SetUpdate(is_zero_first, is_zero_first_next);
    instr.SetUpdate(is_start_reg, is_start_reg_next);
    instr.SetUpdate(core_state, next_state);
    // instr.SetUpdate(m.state(PEGetVarName(pe_idx, CORE_ACT_REG_PORT_VALID)),
    //     BvConst(PE_CORE_INVALID, PE_CORE_ACT_REG_PORT_VALID_BITWIDTH));
    
    // update 05012020: add act_port_reg to hold the result from RunBias for
    // act_port, in accordance to the FlexNLP implementation
    for (auto i = 0; i < ACT_SCALAR; i++) {
      auto data = m.state(PEGetVarNameVector(pe_idx, i, CORE_ACT_VECTOR_REG));
      instr.SetUpdate(m.state(PEGetVarNameVector(pe_idx, i, ACT_REG_TEMP)),
                      data);
    }
    // PE Act
    Act_IncrementInst(m, instr, pe_idx);
  }
}

void Act_IncrementInst (Ila& m, InstrRef& instr, const int& pe_idx) {
  // state variables to update
    auto instr_cntr = m.state(PEGetVarName(pe_idx, ACT_INSTR_COUNTER));
    auto output_cntr = m.state(PEGetVarName(pe_idx, ACT_OUTPUT_COUNTER));
    auto state = m.state(PEGetVarName(pe_idx, ACT_STATE));
  // configure states
    auto num_instr = m.state(PEGetVarName(pe_idx, ACT_MNGR_CONFIG_REG_NUM_INST));
    auto num_output = m.state(PEGetVarName(pe_idx, ACT_MNGR_CONFIG_REG_NUM_OUTPUT));

  // end logic
    auto is_last_instr = (instr_cntr == num_instr - 1);
    auto is_last_output = (output_cntr == num_output - 1);
    auto is_end = is_last_instr & is_last_output;

    auto instr_cntr_next = Ite(is_last_instr, BvConst(0, PE_ACT_INSTR_COUNTER_BITWIDTH),
            instr_cntr + 1);
    auto output_cntr_next = Ite(is_end, BvConst(0, PE_ACT_OUTPUT_COUNTER_BITWIDTH),
            Ite(is_last_instr & !is_last_output, output_cntr + 1, output_cntr));
    auto is_zero_next = Ite(is_end, BvConst(0, ACT_MNGR_CONFIG_REG_IS_ZERO_FIRST_WIDTH),
            m.state(PEGetVarName(pe_idx, ACT_MNGR_CONFIG_REG_IS_ZERO_FIRST)));
    auto done_next = Ite(is_end, BvConst(1, PE_DONE_SIGNAL_SHARED_BITWIDTH), m.state("done"));
    auto done_val_next = Ite(is_end, BvConst(1, 1), BvConst(0,1));

  // Update the instr counters to check 
    instr.SetUpdate(instr_cntr, instr_cntr_next);
    instr.SetUpdate(output_cntr, output_cntr_next);
    instr.SetUpdate(m.state(PEGetVarName(pe_idx, ACT_MNGR_CONFIG_REG_IS_ZERO_FIRST)), is_zero_next);

    instr.SetUpdate(m.state("done"), done_next);
    instr.SetUpdate(m.state("done_valid"), done_val_next);

    instr.SetUpdate(state, BvConst(PE_ACT_STATE_DATA, PE_ACT_STATE_BITWIDTH));
}
    
} // end namespace flex
} // end namespace flex