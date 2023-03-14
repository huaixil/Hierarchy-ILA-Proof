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

// File: main.cc
#include <conv.h>
#include <csc.h>
#include <cacc_ila.h>
#include <cmac_ila.h>

#include <ilang/ilang++.h>
#include <ilang/util/log.h>
#include <iostream>
#include <ilang/vtarget-out/vtarget_gen.h>
using namespace std;

using namespace ilang;

/// the function to generate configuration
VerilogVerificationTargetGenerator::vtg_config_t SetConfiguration();

void verify_conv_hierarchy(Ila& model, 
  VerilogVerificationTargetGenerator::vtg_config_t vtg_cfg,
  const std::vector<std::string> & design_files); 

int main(int argc, char* argv[]) {
  SetToStdErr(1);

  cout << "start";
  // get the ILA model for sub-modules
  auto csc = GetCSCIla("csc");
  NVDLA_CACC cacc_model;
  NVDLA_CMAC cmac_model;

  // generate the verilog for ila models
  std::string verilog_file_name = "cacc_ila.v";
  std::ofstream fw_verilog(verilog_file_name);
  cacc_model.model.ExportToVerilog(fw_verilog);
  fw_verilog.close();

  // verilog_file_name = "cmac_ila.v";
  // fw_verilog.open(verilog_file_name);
  // cmac_model.model.ExportToVerilog(fw_verilog);
  // fw_verilog.close();

  // verilog_file_name = "csc_ila.v";
  // fw_verilog.open(verilog_file_name);
  // csc.ExportToVerilog(fw_verilog);
  // fw_verilog.close();

  auto conv = GetConvIla("conv");
  // for (auto i = 0; i < conv.instr_num(); i++) {
  //   ILA_INFO << conv.instr(i);
  // }

  // for (auto i = 0; i < conv.state_num(); i++) {
  //   ILA_INFO << conv.state(i);
  // }

  // for (auto i = 0; i < conv.input_num(); i++) {
  //   ILA_INFO << conv.input(i);
  // }
  std::vector<std::string> conv_design_files = {
    "conv.v",
    "cacc_ila.v",
    "cmac_ila.v",
    "csc_ila.v"
  };

  auto vtg_cfg = SetConfiguration();

  verify_conv_hierarchy(conv, vtg_cfg, conv_design_files);

  return 0;
}

void verify_conv_hierarchy(
  Ila& model, 
  VerilogVerificationTargetGenerator::vtg_config_t vtg_cfg,
  const std::vector<std::string> & design_files
   ) {
  VerilogGeneratorBase::VlgGenConfig vlg_cfg;
  vlg_cfg.pass_node_name = true;
  vtg_cfg.ForceInstCheckReset = true;
  vtg_cfg.MemAbsReadAbstraction = true;

  std::string RootPath    = "..";
  std::string VerilogPath = RootPath    + "/nvdla_ila_composition/";
  std::string IncludePath = VerilogPath + "include/";
  std::string RefrelPath  = RootPath    + "/refinement/";
  std::string OutputPath  = RootPath    + "/verification/";

  std::vector<std::string> path_to_design_files;
  for(auto && f : design_files)
    path_to_design_files.push_back( VerilogPath + f );
  

  VerilogVerificationTargetGenerator vg(
      {IncludePath},                                         // one include path
      path_to_design_files,                                  // designs
      "NV_NVDLA_conv",                               // top_module_name
      RefrelPath + "ref-rel-var-map-conv-comp.json",                // variable mapping
      RefrelPath + "ref-rel-inst-cond-conv-comp.json",              // conditions of start/ready
      OutputPath,                                            // output path
      model.get(),                                           // model
      VerilogVerificationTargetGenerator::backend_selector::JASPERGOLD, // backend: JASPERGOLD
      vtg_cfg,  // target generator configuration
      vlg_cfg); // verilog generator configuration

  vg.GenerateTargets();
}

VerilogVerificationTargetGenerator::vtg_config_t SetConfiguration() {

  // set ilang option, operators like '<' will refer to unsigned arithmetics
  SetUnsignedComparison(true); 
  
  VerilogVerificationTargetGenerator::vtg_config_t ret;
  ret.CosaSolver = "btor";
  ret.CosaPyEnvironment = "~/cosaEnv/bin/activate";
  ret.CosaPath = "~/CoSA";
  ret.CosaGenTraceVcd = true;
  ret.CosaAddKeep = false;

  /// other configurations
  ret.PortDeclStyle = VlgVerifTgtGenBase::vtg_config_t::NEW;
  ret.CosaGenJgTesterScript = true;
  //ret.CosaOtherSolverOptions = "--blackbox-array";
  //ret.ForceInstCheckReset = true;

  return ret;
}
