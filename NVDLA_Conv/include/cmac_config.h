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

// File: cmac_config.h

#ifndef NVDLA_CMAC_CONFIG_H__
#define NVDLA_CMAC_CONFIG_H__

namespace ilang {

/**********************************************************************/
// ********************** CONFIG REGISTERS ***************************//
/**********************************************************************/

// 7000
#define NVDLA_CMAC_S_STATUS_0 "cmac_s_status0" // read_only
#define NVDLA_CMAC_S_STATUS_1 "cmac_s_status1" // read_only
#define NVDLA_CMAC_S_STATUS_WIDTH 2

// 7004
#define NVDLA_CMAC_S_PRODUCER "cmac_s_producer"
#define NVDLA_CMAC_S_PRODUCER_WIDTH 1
#define NVDLA_CMAC_S_CONSUMER "cmac_s_consumer"
#define NVDLA_CMAC_S_CONSUMER_WIDTH 1

// 6008
#define NVDLA_CMAC_D_OP_ENABLE "cmac_d_op_en_trigger"
#define NVDLA_CMAC_D_OP_ENABLE_WIDTH 1

// 600c
#define NVDLA_CMAC_D_MISC_CFG  "cmac_d_misc_cfg"
#define NVDLA_CMAC_D_MISC_CFG_WIDTH 32

} // namespace ilang

#endif // NVDLA_CMAC_CONFIG_H__
