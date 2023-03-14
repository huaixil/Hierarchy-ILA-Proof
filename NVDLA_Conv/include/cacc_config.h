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

// File: cacc_config.h

#ifndef NVDLA_CACC_CONFIG_H__
#define NVDLA_CACC_CONFIG_H__

namespace ilang {

/**********************************************************************/
// ********************** CONFIG REGISTERS ***************************//
/**********************************************************************/

// 9000
#define NVDLA_CACC_S_STATUS_0 "cacc_s_status0" // read_only
#define NVDLA_CACC_S_STATUS_1 "cacc_s_status1" // read_only
#define NVDLA_CACC_S_STATUS_WIDTH 2

// 9004
#define NVDLA_CACC_S_PRODUCER "cacc_s_producer"
#define NVDLA_CACC_S_PRODUCER_WIDTH 1
#define NVDLA_CACC_S_CONSUMER "cacc_s_consumer"
#define NVDLA_CACC_S_CONSUMER_WIDTH 1

// 9008
#define NVDLA_CACC_D_OP_ENABLE "cacc_d_op_en_trigger"
#define NVDLA_CACC_D_OP_ENABLE_WIDTH 1

// 900c
#define NVDLA_CACC_D_MISC_CFG  "cacc_d_misc_cfg"
#define NVDLA_CACC_D_MISC_CFG_WIDTH 32

// 9010
#define NVDLA_CACC_D_DATAIN_HEIGHT_EXT "cacc_d_datain_height_ext"
#define NVDLA_CACC_D_DATAIN_WIDTH_EXT "cacc_d_datain_width_ext"
// 9014
#define NVDLA_CACC_D_DATAIN_CHANNEL_EXT "cacc_d_datain_channel_ext"
#define NVDLA_CACC_D_DATAIN_SIZE_EXT_WIDTH 13

// 9018
#define NVDLA_CACC_D_DATAOUT_ADDR "cacc_d_dataout_addr"
#define NVDLA_CACC_D_DATAOUT_ADDR_WIDTH 13

// 901c
#define NVDLA_CACC_D_BATCH_NUMBER "cacc_d_batches"
#define NVDLA_CACC_D_BATCH_NUMBER_WIDTH 5

// 9020
#define NVDLA_CACC_D_LINE_STRIDE "cacc_d_line_stride"
// 9024
#define NVDLA_CACC_D_SURFACE_STRIDE "cacc_d_surface_stride"
#define NVDLA_CACC_D_STRIDE_WIDTH 19

// 9028
#define NVDLA_CACC_D_LINE_PACKED "cacc_d_line_packed"
#define NVDLA_CACC_D_SURF_PACKED "cacc_d_surf_packed"
#define NVDLA_CACC_D_DATAOUT_MAP_WIDTH 1

// 902c
#define NVDLA_CACC_D_CLIP_CFG "cacc_d_clip_cfg"
#define NVDLA_CACC_D_CLIP_CFG_WIDTH 5

// 9030 not generated from csb but from outside. used as output
#define NVDLA_CACC_D_OUT_SATURATION "cacc_d_out_saturation"
#define NVDLA_CACC_D_OUT_SATURATION_WIDTH 31

} // namespace ilang

#endif // NVDLA_CSC_CONFIG_H__
