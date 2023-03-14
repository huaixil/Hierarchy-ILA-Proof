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

// File: csc_config.h

#ifndef NVDLA_CSC_CONFIG_H__
#define NVDLA_CSC_CONFIG_H__

namespace ilang {

inline std::string GetVarName(const std::string& var_name0, const std::string& var_name1) {
 
  return var_name0 + var_name1;
}

/**********************************************************************/
// ********************** CONFIG REGISTERS ***************************//
/**********************************************************************/

// 6000
#define NVDLA_CSC_S_STATUS_0 "csc_s_status0" // read_only
#define NVDLA_CSC_S_STATUS_1 "csc_s_status1" // read_only
#define NVDLA_CSC_S_STATUS_WIDTH 2

// 6004
#define NVDLA_CSC_S_PRODUCER "csc_s_producer"
#define NVDLA_CSC_S_PRODUCER_WIDTH 1
#define NVDLA_CSC_S_CONSUMER "csc_s_consumer"
#define NVDLA_CSC_S_CONSUMER_WIDTH 1

// 6008
#define NVDLA_CSC_D_OP_ENABLE "csc_d_op_en_trigger"
#define NVDLA_CSC_D_OP_ENABLE_WIDTH 1

// 600c
#define NVDLA_CSC_D_MISC_CFG  "csc_d_misc_cfg"
#define NVDLA_CSC_D_MISC_CFG_WIDTH 32

// 6010
#define NVDLA_CSC_D_DATAIN_FORMAT "csc_d_datain_format"
#define NVDLA_CSC_D_DATAIN_FORMAT_WIDTH 1

// 6014
#define NVDLA_CSC_D_DATAIN_HEIGHT_EXT "csc_d_datain_height_ext"
#define NVDLA_CSC_D_DATAIN_WIDTH_EXT "csc_d_datain_width_ext"
// 6018
#define NVDLA_CSC_D_DATAIN_CHANNEL_EXT "csc_d_datain_channel_ext"
#define NVDLA_CSC_D_DATAIN_SIZE_EXT_WIDTH 13

// 601c
#define NVDLA_CSC_D_BATCH_NUMBER "csc_d_batches"
#define NVDLA_CSC_D_BATCH_NUMBER_WIDTH 5

// 6020
#define NVDLA_CSC_D_POST_Y_EXTENSION "csc_d_y_extension"
#define NVDLA_CSC_D_POST_Y_EXTENSION_WIDTH 2

// 6024
#define NVDLA_CSC_D_ENTRY_PER_SLICE "csc_d_entries"
#define NVDLA_CSC_D_ENTRY_PER_SLICE_WIDTH 12

// 6028
#define NVDLA_CSC_D_WEIGHT_FORMAT "csc_d_weight_format"
#define NVDLA_CSC_D_WEIGHT_FORMAT_WIDTH 1

// 602c
#define NVDLA_CSC_D_WEIGHT_HEIGHT_EXT "csc_d_weight_height_ext"
#define NVDLA_CSC_D_WEIGHT_WIDTH_EXT "csc_d_weight_width_ext"
#define NVDLA_CSC_D_WEIGHT_SIZE_EXT_0_WIDTH 5
// 6030
#define NVDLA_CSC_D_WEIGHT_CHANNEL_EXT "csc_d_weight_channel_ext"
#define NVDLA_CSC_D_WEIGHT_KERNEL "csc_d_weight_kernel"
#define NVDLA_CSC_D_WEIGHT_SIZE_EXT_1_WIDTH 13

// 6034
#define NVDLA_CSC_D_WEIGHT_BYTES "csc_d_weight_bytes"
#define NVDLA_CSC_D_WEIGHT_BYTES_WIDTH 25

// 6038
#define NVDLA_CSC_D_WMB_BYTES "csc_d_wmb_bytes"
#define NVDLA_CSC_D_WMB_BYTES_WIDTH 21

// 603c
#define NVDLA_CSC_D_DATAOUT_WIDTH "csc_d_dataout_width"
#define NVDLA_CSC_D_DATAOUT_HEIGHT "csc_d_dataout_height"
// 6040
#define NVDLA_CSC_D_DATAOUT_CHANNEL "csc_d_dataout_channel"
#define NVDLA_CSC_D_DATAOUT_SIZE_WIDTH 13

// 6044
#define NVDLA_CSC_D_ATOMICS "csc_d_atomics"
#define NVDLA_CSC_D_ATOMICS_WIDTH 21

// 6048
#define NVDLA_CSC_D_RELEASE "csc_d_rls_sclies"
#define NVDLA_CSC_D_RELEASE_WIDTH 12

// 604c
#define NVDLA_CSC_D_CONV_X_STRIDE_EXT "csc_d_conv_x_stride_ext"
#define NVDLA_CSC_D_CONV_Y_STRIDE_EXT "csc_d_conv_y_stride_ext"
#define NVDLA_CSC_D_CONV_STRIDE_EXT_WIDTH 3

// 6050
#define NVDLA_CSC_D_X_DILATION_EXT "csc_d_x_dilation_ext"
#define NVDLA_CSC_D_Y_DILATION_EXT "csc_d_y_dilation_ext"
#define NVDLA_CSC_D_DILATION_EXT_WIDTH 5

// 6054
#define NVDLA_CSC_D_ZERO_PADDING_LEFT "csc_d_pad_left"
#define NVDLA_CSC_D_ZERO_PADDING_TOP  "csc_d_pad_top"
#define NVDLA_CSC_D_ZERO_PADDING_WIDTH 5

// 6058
#define NVDLA_CSC_D_ZERO_PADDING_VALUE "csc_d_pad_value"
#define NVDLA_CSC_D_ZERO_PADDING_VALUE_WIDTH 16

// 605c
#define NVDLA_CSC_D_DATA_BANK   "csc_d_data_bank"
#define NVDLA_CSC_D_WEIGHT_BANK "csc_d_weight_bank"
#define NVDLA_CSC_D_BANK_WIDTH 4

// 6060
#define NVDLA_CSC_D_PRA_CFG "csc_d_pra_truncate"
#define NVDLA_CSC_D_PRA_CFG_WIDTH 2

// states
#define IDLE BvConst(0,2)
#define PEND BvConst(1,2)
#define BUSY BvConst(2,2)
#define DONE BvConst(3,2)

} // namespace ilang

#endif // NVDLA_CSC_CONFIG_H__
