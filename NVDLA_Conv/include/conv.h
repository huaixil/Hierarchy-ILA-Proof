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

// File: conv.h

#ifndef NVDLA_CONV_H__
#define NVDLA_CONV_H__

#include <string>
#include <vector>
#include <ilang/ilang++.h>
#include <csc_config.h>
#include <cacc_config.h>
#include <cmac_config.h>

namespace ilang {

    #define NVDLA_CONV_WEIGHT_WIDTH 1024
    #define NVDLA_CONV_INPUT_DATA_WIDTH 1024
    #define NVDLA_CONV_OUTPUT_DATA_WIDTH 64

// CONV
Ila GetConvIla(const std::string& model_name = "conv");
void DefineConvInput(Ila& m);
void DefineConvOutput(Ila& m);
void DefineConvState(Ila& m);
void DefineConvInstrs(Ila& m);

} // namespace ilang

#endif // NVDLA_CONV_H__
