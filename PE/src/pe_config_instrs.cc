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

// File: config_instr_pe_core.cc

#include <ilang/ilang++.h>

#include <flex.h>
#include <util.h>

namespace ilang {

namespace flex {

void DefinePECoreConfigInstr(Ila& m, const int& pe_idx) {
  auto is_write = m.input(PE_RW);
  auto receive = m.input("rva_in_valid") & m.state("rva_in_ready");

  // PE Core specific
  // - Core cluster table first
  // - Core cluster table second
  // - Core memory manager first
  // - Core memory manager second
  // - Core RNN layer sizing

  { // CLUSTER_TABLE_FIRST
    auto instr =
        m.NewInstr(PEGetInstrName(pe_idx, "CONFIG_CLUSTER_TABLE_FIRST"));
    SetDecodeForPECoreConfigWr(CONFIG_ADDR_PE_CLUSTER_TABLE_FIRST);

    for (auto i = 0; i < 16; i ++ ) {
        auto Entry_next = m.input(VectorVarName(i, TOP_DATA_IN));
        SetUpdateForConfigWr(
        m, instr, Entry_next, VectorVarName(i, CLUSTER_TABLE_FIRST_CONFIG_REG_ENTRY));
    }

  }
  
  { // CLUSTER_TABLE_SECOND
    auto instr =
        m.NewInstr(PEGetInstrName(pe_idx, "CONFIG_CLUSTER_TABLE_SECOND"));
    SetDecodeForPECoreConfigWr(CONFIG_ADDR_PE_CLUSTER_TABLE_SECOND);

    for (auto i = 0; i < 16; i ++ ) {
        auto Entry_next = m.input(VectorVarName(i, TOP_DATA_IN));
        SetUpdateForConfigWr(
        m, instr, Entry_next, VectorVarName(i, CLUSTER_TABLE_SECOND_CONFIG_REG_ENTRY));
    }
    
  }


  { // MEM_MNGR_FIRST
    auto instr = m.NewInstr(PEGetInstrName(pe_idx, "CONFIG_MEM_MNGR_FIRST"));
    SetDecodeForPECoreConfigWr(CONFIG_ADDR_PE_MEM_MNGR_FIRST);

    // update for zero_active
    auto zero_active_next = m.input(TOP_DATA_IN_0);
    SetUpdateForConfigWr(
        m, instr, zero_active_next,
        PEGetVarName(pe_idx, MEM_MNGR_FIRST_CONFIG_REG_ZERO_ACTIVE));

    // update for adpfloat_bias_w
    auto adpfloat_bias_w_next = m.input(TOP_DATA_IN_1);
    SetUpdateForConfigWr(
        m, instr, adpfloat_bias_w_next,
        PEGetVarName(pe_idx, MEM_MNGR_FIRST_CONFIG_REG_ADPFLOAT_BIAS_W));

    // update for adpfloat_bias_b
    auto adpfloat_bias_b_next = m.input(TOP_DATA_IN_2);
    SetUpdateForConfigWr(
        m, instr, adpfloat_bias_b_next,
        PEGetVarName(pe_idx, MEM_MNGR_FIRST_CONFIG_REG_ADPFLOAT_BIAS_B));

    // update for adpfloat_bias_i
    auto adpfloat_bias_i_next = m.input(TOP_DATA_IN_3);
    SetUpdateForConfigWr(
        m, instr, adpfloat_bias_i_next,
        PEGetVarName(pe_idx, MEM_MNGR_FIRST_CONFIG_REG_ADPFLOAT_BIAS_I));

    // update for num_input
    auto num_input_next =
        Concat(m.input(TOP_DATA_IN_5), m.input(TOP_DATA_IN_4));
    SetUpdateForConfigWr(
        m, instr, num_input_next,
        PEGetVarName(pe_idx, MEM_MNGR_FIRST_CONFIG_REG_NUM_INPUT));

    // update for base_weight
    auto base_weight_next =
        Concat(m.input(TOP_DATA_IN_7), m.input(TOP_DATA_IN_6));
    SetUpdateForConfigWr(
        m, instr, base_weight_next,
        PEGetVarName(pe_idx, MEM_MNGR_FIRST_CONFIG_REG_BASE_WEIGHT));

    // update for base_bias
    auto base_bias_next =
        Concat(m.input(TOP_DATA_IN_9), m.input(TOP_DATA_IN_8));
    SetUpdateForConfigWr(
        m, instr, base_bias_next,
        PEGetVarName(pe_idx, MEM_MNGR_FIRST_CONFIG_REG_BASE_BIAS));

    // update for base_input
    auto base_input_next =
        Concat(m.input(TOP_DATA_IN_11), m.input(TOP_DATA_IN_10));
    SetUpdateForConfigWr(
        m, instr, base_input_next,
        PEGetVarName(pe_idx, MEM_MNGR_FIRST_CONFIG_REG_BASE_INPUT));
  }

  { // MEM_MNGR_SECOND
    auto instr = m.NewInstr(PEGetInstrName(pe_idx, "CONFIG_MEM_MNGR_SECOND"));
    SetDecodeForPECoreConfigWr(CONFIG_ADDR_PE_MEM_MNGR_SECOND);

    // update for zero_active
    auto zero_active_next = m.input(TOP_DATA_IN_0);
    SetUpdateForConfigWr(
        m, instr, zero_active_next,
        PEGetVarName(pe_idx, MEM_MNGR_SECOND_CONFIG_REG_ZERO_ACTIVE));

    // update for adpfloat_bias_w
    auto adpfloat_bias_w_next = m.input(TOP_DATA_IN_1);
    SetUpdateForConfigWr(
        m, instr, adpfloat_bias_w_next,
        PEGetVarName(pe_idx, MEM_MNGR_SECOND_CONFIG_REG_ADPFLOAT_BIAS_W));

    // update for adpfloat_bias_b
    auto adpfloat_bias_b_next = m.input(TOP_DATA_IN_2);
    SetUpdateForConfigWr(
        m, instr, adpfloat_bias_b_next,
        PEGetVarName(pe_idx, MEM_MNGR_SECOND_CONFIG_REG_ADPFLOAT_BIAS_B));

    // update for adpfloat_bias_i
    auto adpfloat_bias_i_next = m.input(TOP_DATA_IN_3);
    SetUpdateForConfigWr(
        m, instr, adpfloat_bias_i_next,
        PEGetVarName(pe_idx, MEM_MNGR_SECOND_CONFIG_REG_ADPFLOAT_BIAS_I));

    // update for num_input
    auto num_input_next =
        Concat(m.input(TOP_DATA_IN_5), m.input(TOP_DATA_IN_4));
    SetUpdateForConfigWr(
        m, instr, num_input_next,
        PEGetVarName(pe_idx, MEM_MNGR_SECOND_CONFIG_REG_NUM_INPUT));

    // update for base_weight
    auto base_weight_next =
        Concat(m.input(TOP_DATA_IN_7), m.input(TOP_DATA_IN_6));
    SetUpdateForConfigWr(
        m, instr, base_weight_next,
        PEGetVarName(pe_idx, MEM_MNGR_SECOND_CONFIG_REG_BASE_WEIGHT));

    // update for base_bias
    auto base_bias_next =
        Concat(m.input(TOP_DATA_IN_9), m.input(TOP_DATA_IN_8));
    SetUpdateForConfigWr(
        m, instr, base_bias_next,
        PEGetVarName(pe_idx, MEM_MNGR_SECOND_CONFIG_REG_BASE_BIAS));

    // update for base_input
    auto base_input_next =
        Concat(m.input(TOP_DATA_IN_11), m.input(TOP_DATA_IN_10));
    SetUpdateForConfigWr(
        m, instr, base_input_next,
        PEGetVarName(pe_idx, MEM_MNGR_SECOND_CONFIG_REG_BASE_INPUT));
  }

  { // RNN_LAYER_SIZING
    auto instr = m.NewInstr(PEGetInstrName(pe_idx, "CONFIG_RNN_LAYER_SIZING"));
    SetDecodeForPECoreConfigWr(CONFIG_ADDR_PE_RNN_LAYER_SIZING);

    // update for is_valid
    auto is_valid_next = m.input(TOP_DATA_IN_0);
    SetUpdateForConfigWr(
        m, instr, is_valid_next,
        PEGetVarName(pe_idx, RNN_LAYER_SIZING_CONFIG_REG_IS_VALID));

    // update for is_zero_first
    auto is_zero_first_next = m.input(TOP_DATA_IN_1);
    SetUpdateForConfigWr(
        m, instr, is_zero_first_next,
        PEGetVarName(pe_idx, RNN_LAYER_SIZING_CONFIG_REG_IS_ZERO_FIRST));

    // update for is_cluster
    auto is_cluster_next = m.input(TOP_DATA_IN_2);
    SetUpdateForConfigWr(
        m, instr, is_cluster_next,
        PEGetVarName(pe_idx, RNN_LAYER_SIZING_CONFIG_REG_IS_CLUSTER));

    // update for is_bias
    auto is_bias_next = m.input(TOP_DATA_IN_3);
    SetUpdateForConfigWr(
        m, instr, is_bias_next,
        PEGetVarName(pe_idx, RNN_LAYER_SIZING_CONFIG_REG_IS_BIAS));

    // update for num_manager
    auto num_manager_next = m.input(TOP_DATA_IN_4);
    SetUpdateForConfigWr(
        m, instr, num_manager_next,
        PEGetVarName(pe_idx, RNN_LAYER_SIZING_CONFIG_REG_NUM_MANAGER));

    // update for num_output
    auto num_output_next = m.input(TOP_DATA_IN_5);
    SetUpdateForConfigWr(
        m, instr, num_output_next,
        PEGetVarName(pe_idx, RNN_LAYER_SIZING_CONFIG_REG_NUM_OUTPUT));
  }
}

void DefinePEActConfigInstr(Ila& m, const int& pe_idx) {
  auto is_write = m.input(PE_RW);
  auto receive = m.input("rva_in_valid") & m.state("rva_in_ready");

  // PE ActUnit specific
  // - ActUnit manager
  // - ActUnit vector 0-15
  // - ActUnit vector 16-31

  { // ACT_MNGR
    auto instr = m.NewInstr(PEGetInstrName(pe_idx, "CONFIG_ACT_MNGR"));
    SetDecodeForPEActConfigWr(CONFIG_ADDR_PE_ACT_MNGR);

    // update for is_valid
    auto is_valid_next = m.input(TOP_DATA_IN_0);
    SetUpdateForConfigWr(m, instr, is_valid_next,
                         PEGetVarName(pe_idx, ACT_MNGR_CONFIG_REG_IS_VALID));

    // update for is_zero_first
    auto is_zero_first_next = m.input(TOP_DATA_IN_1);
    SetUpdateForConfigWr(
        m, instr, is_zero_first_next,
        PEGetVarName(pe_idx, ACT_MNGR_CONFIG_REG_IS_ZERO_FIRST));

    // update for adpfloat_bias
    auto adpfloat_bias_next = m.input(TOP_DATA_IN_2);
    SetUpdateForConfigWr(
        m, instr, adpfloat_bias_next,
        PEGetVarName(pe_idx, ACT_MNGR_CONFIG_REG_ADPFLOAT_BIAS));

    // update for num_inst
    auto num_inst_next = m.input(TOP_DATA_IN_3);
    SetUpdateForConfigWr(m, instr, num_inst_next,
                         PEGetVarName(pe_idx, ACT_MNGR_CONFIG_REG_NUM_INST));

    // update for num_output
    auto num_output_next = m.input(TOP_DATA_IN_4);
    SetUpdateForConfigWr(m, instr, num_output_next,
                         PEGetVarName(pe_idx, ACT_MNGR_CONFIG_REG_NUM_OUTPUT));

    // update for buffer_addr_base
    auto buffer_addr_base_next =
        Concat(m.input(TOP_DATA_IN_7), m.input(TOP_DATA_IN_6));
    SetUpdateForConfigWr(
        m, instr, buffer_addr_base_next,
        PEGetVarName(pe_idx, ACT_MNGR_CONFIG_REG_BUFFER_ADDR_BASE));

    // update for output_addr_base
    auto output_addr_base_next = m.input(TOP_DATA_IN_8);
    SetUpdateForConfigWr(
        m, instr, output_addr_base_next,
        PEGetVarName(pe_idx, ACT_MNGR_CONFIG_REG_OUTPUT_ADDR_BASE));
  }

  { // ACT_VECTOR_0_15
    auto instr = m.NewInstr(PEGetInstrName(pe_idx, "CONFIG_ACT_VECTOR_0_15"));
    SetDecodeForPEActConfigWr(CONFIG_ADDR_PE_ACT_VECTOR_0_15);

    // auto act_v_mem = m.state(PEGetVarName(pe_idx, ACT_VECTOR_STATE_MEM));
    // auto act_v_mem_next = act_v_mem;

    // update for inst0-15
    for (auto i = 0; i < 16; i++) {
        auto Inst_next = m.input(VectorVarName(i, TOP_DATA_IN));
        SetUpdateForConfigWr(
        m, instr, Inst_next,
        VectorVarName(i, ACT_VECTOR_0_15_CONFIG_REG_INST));
    }
  }
  

  { // ACT_VECTOR_16_31
    auto instr = m.NewInstr(PEGetInstrName(pe_idx, "CONFIG_ACT_VECTOR_16_31"));
    SetDecodeForPEActConfigWr(CONFIG_ADDR_PE_ACT_VECTOR_16_31);

    // auto act_v_mem = m.state(PEGetVarName(pe_idx, ACT_VECTOR_STATE_MEM));
    // auto act_v_mem_next = act_v_mem;

    // update for inst16-31
    for (auto i = 0; i < 16; i++) {
        auto Inst_next = m.input(VectorVarName(i, TOP_DATA_IN));
        SetUpdateForConfigWr(
        m, instr, Inst_next,
        VectorVarName(i, ACT_VECTOR_16_31_CONFIG_REG_INST));
    }

    
  }
}

} // namespace flex

} // namespace ilang
