// =============================================================================
// MIT License
//
// Copyright (c) 2022 Princeton University
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

// File: conv_instrs.cc

#include <ilang/ilang++.h>

#include <conv.h>

namespace ilang {

void DefineConvInstrs(Ila& m) {
    // m.AddInit(m.state(NVDLA_CSC_S_STATUS_0) == BvConst(0, 2));
    // m.AddInit(m.state(NVDLA_CSC_S_STATUS_1) == BvConst(0, 2));

    auto csb_addr = Extract(Concat(m.input("csb_addr"), BvConst(0,2)), 15, 0);
    auto csb_valid = (m.state("csb_rdy") == BvConst(1,1)) & (m.input("csb_vld") == BvConst(1,1));
    auto csb_write = m.input("csb_write") == BvConst(1,1);
    auto group0_unset = m.state(GetVarName("group0_", NVDLA_CSC_D_OP_ENABLE)) == BvConst(0,1);
    auto group1_unset = m.state(GetVarName("group1_", NVDLA_CSC_D_OP_ENABLE)) == BvConst(0,1);
    auto producer = m.state(NVDLA_CSC_S_PRODUCER);
    auto consumer = m.state(NVDLA_CSC_S_CONSUMER);
    auto csc_state = m.state("csc_state");

    // uninterpreted function


    // Status: 3
    // 1: IDLE
    // 2: Producer (op_enable) and Consumer
    // 3: Producer (op_enable) but not consumer

    // CSB MMIO
    { // 0004
        auto instr = m.NewInstr("Set_Producer");
        instr.SetDecode(csb_addr == 0x6004 & csb_valid & csb_write);

        instr.SetUpdate(producer, Extract(m.input("csb_data"), 0, 0));
    }

    { // CSC_Register_Group0
        auto instr = m.NewInstr("CSC_Set_Group0");
        instr.SetDecode(csb_valid & csb_write & producer == BvConst(0,1) & group0_unset);
        // 0x605c
        instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_DATA_BANK)), Ite(csb_addr == 0x605c, Extract(m.input("csb_data"), 3, 0), 
                        m.state(GetVarName("group0_", NVDLA_CSC_D_DATA_BANK))));
        instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_BANK)),Ite(csb_addr == 0x605c, Extract(m.input("csb_data"), 19, 16),
                        m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_BANK))));
        // 0x6008
        instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_OP_ENABLE)), Ite(csb_addr == 0x6008, Extract(m.input("csb_data"), 0, 0),
                        m.state(GetVarName("group0_", NVDLA_CSC_D_OP_ENABLE))));
        // 0x600c
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_MISC_CFG)), Ite(csb_addr == 0x600c, Extract(m.input("csb_data"), 31, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_MISC_CFG))));
        // // 0x6010
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_DATAIN_FORMAT)), Ite(csb_addr == 0x6008, Extract(m.input("csb_data"), 0, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_DATAIN_FORMAT))));
        // // 0x6014
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_DATAIN_HEIGHT_EXT)), Ite(csb_addr == 0x6014, Extract(m.input("csb_data"), 28, 16),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_DATAIN_HEIGHT_EXT))));
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_DATAIN_WIDTH_EXT)), Ite(csb_addr == 0x6014, Extract(m.input("csb_data"), 12, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_DATAIN_WIDTH_EXT))));
        // // 0x6018
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_DATAIN_CHANNEL_EXT)), Ite(csb_addr == 0x6018, Extract(m.input("csb_data"), 12, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_DATAIN_CHANNEL_EXT))));
        // // 0x601c
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_BATCH_NUMBER)), Ite(csb_addr == 0x601c, Extract(m.input("csb_data"), 4, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_BATCH_NUMBER))));
        // // 0x6020
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_POST_Y_EXTENSION)), Ite(csb_addr == 0x6020, Extract(m.input("csb_data"), 1, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_POST_Y_EXTENSION))));
        // // 0x6024
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_ENTRY_PER_SLICE)), Ite(csb_addr == 0x6024, Extract(m.input("csb_data"), 11, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_ENTRY_PER_SLICE))));
        // // 0x6028
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_FORMAT)), Ite(csb_addr == 0x6028, Extract(m.input("csb_data"), 0, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_FORMAT))));
        // // 0x602c
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_HEIGHT_EXT)), Ite(csb_addr == 0x602c, Extract(m.input("csb_data"), 20, 16),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_HEIGHT_EXT))));
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_WIDTH_EXT)), Ite(csb_addr == 0x602c, Extract(m.input("csb_data"), 4, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_WIDTH_EXT))));
        // // 0x6030
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_CHANNEL_EXT)), Ite(csb_addr == 0x6030, Extract(m.input("csb_data"), 12, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_CHANNEL_EXT))));
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_KERNEL)), Ite(csb_addr == 0x6030, Extract(m.input("csb_data"), 28, 16),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_KERNEL))));
        // // 0x6034
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_BYTES)), Ite(csb_addr == 0x6034, Extract(m.input("csb_data"), 24, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_BYTES))));
        // // 0x6038
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_WMB_BYTES)), Ite(csb_addr == 0x6038, Extract(m.input("csb_data"), 20, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_WMB_BYTES))));
        // // 0x603c
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_DATAOUT_WIDTH)), Ite(csb_addr == 0x603c, Extract(m.input("csb_data"), 12, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_DATAOUT_WIDTH))));
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_DATAOUT_HEIGHT)), Ite(csb_addr == 0x603c, Extract(m.input("csb_data"), 28, 16),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_DATAOUT_HEIGHT))));
        // // 0x6040
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_DATAOUT_CHANNEL)), Ite(csb_addr == 0x6040, Extract(m.input("csb_data"), 12, 0),
        //                 m.state(GetVarName("group0_",NVDLA_CSC_D_DATAOUT_CHANNEL))));
        // // 0x6044
        // instr.SetUpdate(m.state(GetVarName("group0_",  NVDLA_CSC_D_ATOMICS)), Ite(csb_addr == 0x6044, Extract(m.input("csb_data"), 20, 0),
        //                 m.state(GetVarName("group0_",  NVDLA_CSC_D_ATOMICS))));
        // // 0x6048
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_RELEASE)), Ite(csb_addr == 0x6048, Extract(m.input("csb_data"), 11, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_RELEASE))));
        // // 0x604c
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_CONV_X_STRIDE_EXT)), Ite(csb_addr == 0x604c, Extract(m.input("csb_data"), 2, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_CONV_X_STRIDE_EXT))));
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_CONV_Y_STRIDE_EXT)), Ite(csb_addr == 0x604c, Extract(m.input("csb_data"), 18, 16),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_CONV_Y_STRIDE_EXT))));
        // // 0x6050
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_X_DILATION_EXT)), Ite(csb_addr == 0x6050, Extract(m.input("csb_data"), 4, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_X_DILATION_EXT))));
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_Y_DILATION_EXT)), Ite(csb_addr == 0x6050, Extract(m.input("csb_data"), 20, 16),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_Y_DILATION_EXT))));
        // // 0x6054
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_ZERO_PADDING_LEFT)), Ite(csb_addr == 0x6054, Extract(m.input("csb_data"), 4, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_ZERO_PADDING_LEFT))));
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_ZERO_PADDING_TOP)), Ite(csb_addr == 0x6054, Extract(m.input("csb_data"), 20, 16),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_ZERO_PADDING_TOP))));
        // // 0x6058
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_ZERO_PADDING_VALUE)), Ite(csb_addr == 0x6058, Extract(m.input("csb_data"), 15, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_ZERO_PADDING_VALUE))));
        // // 0x605c
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_DATA_BANK)), Ite(csb_addr == 0x605c, Extract(m.input("csb_data"), 3, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_DATA_BANK))));
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_BANK)), Ite(csb_addr == 0x605c, Extract(m.input("csb_data"), 19, 16),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_BANK))));
        // // 0x6060
        // instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_PRA_CFG)), Ite(csb_addr == 0x6060, Extract(m.input("csb_data"), 1, 0),
        //                 m.state(GetVarName("group0_", NVDLA_CSC_D_PRA_CFG))));
                
    }

    { // CSC_Register_Group1
        auto instr = m.NewInstr("CSC_Set_Group1");
        instr.SetDecode(csb_valid & csb_write & producer == BvConst(0,1) & producer == BvConst(1,1) & group1_unset);
        // 0x605c
        instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_DATA_BANK)), Ite(csb_addr == 0x605c, Extract(m.input("csb_data"), 3, 0), 
                        m.state(GetVarName("group1_", NVDLA_CSC_D_DATA_BANK))));
        instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_BANK)),Ite(csb_addr == 0x605c, Extract(m.input("csb_data"), 19, 16),
                        m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_BANK))));
        // 0x6008
        instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_OP_ENABLE)), Ite(csb_addr == 0x6008, Extract(m.input("csb_data"), 0, 0),
                        m.state(GetVarName("group1_", NVDLA_CSC_D_OP_ENABLE))));
        // // 0x600c
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_MISC_CFG)), Ite(csb_addr == 0x600c, Extract(m.input("csb_data"), 31, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_MISC_CFG))));
        // // 0x6010
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_DATAIN_FORMAT)), Ite(csb_addr == 0x6008, Extract(m.input("csb_data"), 0, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_DATAIN_FORMAT))));
        // // 0x6014
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_DATAIN_HEIGHT_EXT)), Ite(csb_addr == 0x6014, Extract(m.input("csb_data"), 28, 16),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_DATAIN_HEIGHT_EXT))));
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_DATAIN_WIDTH_EXT)), Ite(csb_addr == 0x6014, Extract(m.input("csb_data"), 12, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_DATAIN_WIDTH_EXT))));
        // // 0x6018
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_DATAIN_CHANNEL_EXT)), Ite(csb_addr == 0x6018, Extract(m.input("csb_data"), 12, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_DATAIN_CHANNEL_EXT))));
        // // 0x601c
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_BATCH_NUMBER)), Ite(csb_addr == 0x601c, Extract(m.input("csb_data"), 4, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_BATCH_NUMBER))));
        // // 0x6020
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_POST_Y_EXTENSION)), Ite(csb_addr == 0x6020, Extract(m.input("csb_data"), 1, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_POST_Y_EXTENSION))));
        // // 0x6024
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_ENTRY_PER_SLICE)), Ite(csb_addr == 0x6024, Extract(m.input("csb_data"), 11, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_ENTRY_PER_SLICE))));
        // // 0x6028
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_FORMAT)), Ite(csb_addr == 0x6028, Extract(m.input("csb_data"), 0, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_FORMAT))));
        // // 0x602c
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_HEIGHT_EXT)), Ite(csb_addr == 0x602c, Extract(m.input("csb_data"), 20, 16),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_HEIGHT_EXT))));
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_WIDTH_EXT)), Ite(csb_addr == 0x602c, Extract(m.input("csb_data"), 4, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_WIDTH_EXT))));
        // // 0x6030
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_CHANNEL_EXT)), Ite(csb_addr == 0x6030, Extract(m.input("csb_data"), 12, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_CHANNEL_EXT))));
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_KERNEL)), Ite(csb_addr == 0x6030, Extract(m.input("csb_data"), 28, 16),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_KERNEL))));
        // // 0x6034
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_BYTES)), Ite(csb_addr == 0x6034, Extract(m.input("csb_data"), 24, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_BYTES))));
        // // 0x6038
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_WMB_BYTES)), Ite(csb_addr == 0x6038, Extract(m.input("csb_data"), 20, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_WMB_BYTES))));
        // // 0x603c
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_DATAOUT_WIDTH)), Ite(csb_addr == 0x603c, Extract(m.input("csb_data"), 12, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_DATAOUT_WIDTH))));
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_DATAOUT_HEIGHT)), Ite(csb_addr == 0x603c, Extract(m.input("csb_data"), 28, 16),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_DATAOUT_HEIGHT))));
        // // 0x6040
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_DATAOUT_CHANNEL)), Ite(csb_addr == 0x6040, Extract(m.input("csb_data"), 12, 0),
        //                 m.state(GetVarName("group1_",NVDLA_CSC_D_DATAOUT_CHANNEL))));
        // // 0x6044
        // instr.SetUpdate(m.state(GetVarName("group1_",  NVDLA_CSC_D_ATOMICS)), Ite(csb_addr == 0x6044, Extract(m.input("csb_data"), 20, 0),
        //                 m.state(GetVarName("group1_",  NVDLA_CSC_D_ATOMICS))));
        // // 0x6048
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_RELEASE)), Ite(csb_addr == 0x6048, Extract(m.input("csb_data"), 11, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_RELEASE))));
        // // 0x604c
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_CONV_X_STRIDE_EXT)), Ite(csb_addr == 0x604c, Extract(m.input("csb_data"), 2, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_CONV_X_STRIDE_EXT))));
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_CONV_Y_STRIDE_EXT)), Ite(csb_addr == 0x604c, Extract(m.input("csb_data"), 18, 16),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_CONV_Y_STRIDE_EXT))));
        // // 0x6050
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_X_DILATION_EXT)), Ite(csb_addr == 0x6050, Extract(m.input("csb_data"), 4, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_X_DILATION_EXT))));
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_Y_DILATION_EXT)), Ite(csb_addr == 0x6050, Extract(m.input("csb_data"), 20, 16),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_Y_DILATION_EXT))));
        // // 0x6054
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_ZERO_PADDING_LEFT)), Ite(csb_addr == 0x6054, Extract(m.input("csb_data"), 4, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_ZERO_PADDING_LEFT))));
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_ZERO_PADDING_TOP)), Ite(csb_addr == 0x6054, Extract(m.input("csb_data"), 20, 16),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_ZERO_PADDING_TOP))));
        // // 0x6058
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_ZERO_PADDING_VALUE)), Ite(csb_addr == 0x6058, Extract(m.input("csb_data"), 15, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_ZERO_PADDING_VALUE))));
        // // 0x605c
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_DATA_BANK)), Ite(csb_addr == 0x605c, Extract(m.input("csb_data"), 3, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_DATA_BANK))));
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_BANK)), Ite(csb_addr == 0x605c, Extract(m.input("csb_data"), 19, 16),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_BANK))));
        // // 0x6060
        // instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_PRA_CFG)), Ite(csb_addr == 0x6060, Extract(m.input("csb_data"), 1, 0),
        //                 m.state(GetVarName("group1_", NVDLA_CSC_D_PRA_CFG))));
                
    }


    { // Start from IDLE
        auto instr = m.NewInstr("Start");
        auto group0_ok = consumer == BvConst(0,1) & m.state(GetVarName("group0_", NVDLA_CSC_D_OP_ENABLE)) == BvConst(1,1);
        auto group1_ok = consumer == BvConst(1,1) & m.state(GetVarName("group1_", NVDLA_CSC_D_OP_ENABLE)) == BvConst(1,1);
        instr.SetDecode(csc_state == IDLE & (group0_ok | group1_ok));

        auto pending0 = consumer == BvConst(0,1) & (m.state(GetVarName("group0_", NVDLA_CSC_D_DATA_BANK)) != m.state("last_data_bank") | 
                                                   m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_BANK)) != m.state("last_weight_bank") );
        auto pending1 = consumer == BvConst(1,1) & (m.state(GetVarName("group1_", NVDLA_CSC_D_DATA_BANK)) != m.state("last_data_bank") | 
                                                   m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_BANK)) != m.state("last_weight_bank") );
        auto need_pending = pending0 | pending1;
        instr.SetUpdate(csc_state, Ite(need_pending, PEND, BUSY));
    }

    { // Pend2Busy
        auto instr = m.NewInstr("Pend2Busy");
        instr.SetDecode(csc_state == PEND & m.input("pending_clr") == BvConst(1,1));
        instr.SetUpdate(csc_state, BUSY);
    }

    { // Start Layer
        auto instr = m.NewInstr("Layer_Processing");
        instr.SetDecode(csc_state == BUSY & m.input("buf2sc_wt_vld") == BvConst(1,1) & m.input("buf2sc_dl_vld") == BvConst(1,1) & m.state("sc2buf_rdy") == BvConst(1,1));
        
        // auto partial_sum = SortRef::BV(NVDLA_CONV_OUTPUT_DATA_WIDTH);
        // auto partial_sum_updated = SortRef::BV(NVDLA_CONV_OUTPUT_DATA_WIDTH);
        // auto weight = SortRef::BV(NVDLA_CONV_WEIGHT_WIDTH);
        // auto feature_data = SortRef::BV(NVDLA_CONV_INPUT_DATA_WIDTH);

        // // uninterpreted function
        // FuncRef Update_Output("Update_Output", partial_sum_updated, weight, feature_data, partial_sum);
        
        
        // auto output_update = Update_Output(m.input("buf2sc_wt"), m.input("buf2sc_dl"), m.state("accu2sdp_data") );
        auto partial_sum_updated = SortRef::BV(NVDLA_CONV_OUTPUT_DATA_WIDTH);
        FuncRef Update_Output("Update_Output", partial_sum_updated);
        auto output_update = Update_Output();

        // Update thte partial sume
        instr.SetUpdate(m.state("accu2sdp_data"), output_update);
        // If finish calculating the current output cube element, validate the output, else keep ready to receive the new partial sum
        instr.SetUpdate(m.state("accu2sdp_valid"), Ite(m.input("last_channel_finished") == BvConst(1, 1), BvConst(1, 1), m.state("accu2sdp_valid")));
        instr.SetUpdate(m.state("sc2buf_rdy"), Ite(m.input("last_channel_finished") == BvConst(1, 1), BvConst(0,1), m.state("sc2buf_rdy")));
    }

    { // DATA Sent to SDP
        auto instr = m.NewInstr("DATA2SDP_Sent");
        instr.SetDecode(m.state("accu2sdp_valid") == BvConst(1,1) & m.input("sdp2accu_ready"));

        // reset the partial sum
        instr.SetUpdate(m.state("accu2sdp_data"), BvConst(0, NVDLA_CONV_WEIGHT_WIDTH));
        // invalid the output data
        instr.SetUpdate(m.state("accu2sdp_valid"), BvConst(0, 1));
        // ready to receive the new data to calculate the next output cube element                      
        instr.SetUpdate(m.state("sc2buf_rdy"), BvConst(1,1));                          
    }

    { // Busy2Idle0
        auto instr = m.NewInstr("Busy2Idle_0");
        instr.SetDecode(csc_state == BUSY & m.input("done") & consumer == BvConst(0,1));

        instr.SetUpdate(csc_state, IDLE);
        instr.SetUpdate(consumer, BvConst(1,1));
        instr.SetUpdate(m.state("last_data_bank"), m.state(GetVarName("group0_", NVDLA_CSC_D_DATA_BANK)));
        instr.SetUpdate(m.state("last_weight_bank"), m.state(GetVarName("group0_", NVDLA_CSC_D_WEIGHT_BANK)));

        instr.SetUpdate(m.state(GetVarName("group0_", NVDLA_CSC_D_OP_ENABLE)), BvConst(0,1));
    }

    { // Busy2Idle1
        auto instr = m.NewInstr("Busy2Idle_1");
        instr.SetDecode(csc_state == BUSY & m.input("done") & consumer == BvConst(1,1));

        instr.SetUpdate(csc_state, IDLE);
        instr.SetUpdate(consumer, BvConst(0,1));
        instr.SetUpdate(m.state("last_data_bank"), m.state(GetVarName("group1_", NVDLA_CSC_D_DATA_BANK)));
        instr.SetUpdate(m.state("last_weight_bank"), m.state(GetVarName("group1_", NVDLA_CSC_D_WEIGHT_BANK)));

        instr.SetUpdate(m.state(GetVarName("group1_", NVDLA_CSC_D_OP_ENABLE)), BvConst(0,1));
    }

}


} // namespace ilang