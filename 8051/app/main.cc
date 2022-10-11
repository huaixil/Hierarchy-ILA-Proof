#include <datapath.h>
#include <decoder.h>
#include <memory_interface_three_ports.h>

#include <ilang/vtarget-out/vtarget_gen.h>
#include <ilang/ilang++.h>
#include <ilang/target-json/interface.h>
#include <ilang/util/log.h>
#include <iostream>
#include <simple/lib.h>
using namespace std;

using namespace ilang;

/// the function to generate configuration
VerilogVerificationTargetGenerator::vtg_config_t SetConfiguration();
VerilogVerificationTargetGenerator::vtg_config_t HandleArguments(int argc, char **argv);
void verify_top_ilacomp(
  InstrLvlAbsPtr model, 
  VerilogVerificationTargetGenerator::vtg_config_t vtg_cfg,
  const std::vector<std::string> & design_files
   );

/// Build the model
int main(int argc, char **argv) {
  auto vtg_cfg = SetConfiguration();
  //auto vtg_cfg = HandleArguments(argc, argv);

  // Sub models for 8051
  DATAPATH datapath;
  DECODER decoder;
  MEMORY_INTERFACE_THREE_PORTS mem_interface;

  // Top level model for 8051
  auto proc_file = "../oc8051.json";
  auto proc_ila = IlaSerDesMngr::DesFromFile(proc_file);
  std::cout << "oc8051 loaded" << std::endl;

  // for (auto i = 0; i < proc_ila->instr_num(); i++) {
  //   ILA_INFO << proc_ila->instr(i);
  // }
  std::cout << "oc8051 states:" << std::endl;
  for (auto i = 0; i < proc_ila->state_num(); i++) {
    ILA_INFO << proc_ila->state(i);
  }
  std::cout << "oc8051 inputs:" << std::endl;
  for (auto i = 0; i < proc_ila->input_num(); i++) {
    ILA_INFO << proc_ila->input(i);
  }

  std::string verilog_file_name = "datapath_ila.v";
  std::ofstream fw_verilog(verilog_file_name);
  datapath.model.ExportToVerilog(fw_verilog);
  fw_verilog.close();

  verilog_file_name = "decoder_ila.v";
  fw_verilog.open(verilog_file_name);
  decoder.model.ExportToVerilog(fw_verilog);
  fw_verilog.close();

  verilog_file_name = "mem_interface_ila.v";
  fw_verilog.open(verilog_file_name);
  mem_interface.model.ExportToVerilog(fw_verilog);
  fw_verilog.close();

  verilog_file_name = "oc8051_ila.v";
  fw_verilog.open(verilog_file_name);
  VerilogGenerator vgen(VerilogGenerator::VlgGenConfig(
      true)); // overwrite default configuration : memory is external
  vgen.ExportIla(proc_ila);
  vgen.DumpToFile(fw_verilog);
  fw_verilog.close();

  std::vector<std::string> design_files = {
    "datapath_ila.v",
    "decoder_ila.v",
    "mem_interface_ila.v",
    "8051_ila_comp.v"
  };

  std::vector<ExprPtr> tmp_iram_elements;
  ModifyIramInterface(proc_ila, tmp_iram_elements);
  AddIromInputPort(proc_ila);
  AddXramOutPort(proc_ila);
  for (int i = 0; i < 255; i++) {
    Model8051RemapMemInterface(proc_ila, tmp_iram_elements, i);
    // cout << "instr " << i << " has done." << endl; 
  }

  verify_top_ilacomp(proc_ila, vtg_cfg, design_files);

  return 0;
}

void verify_top_ilacomp(
  InstrLvlAbsPtr model, 
  VerilogVerificationTargetGenerator::vtg_config_t vtg_cfg,
  const std::vector<std::string> & design_files
   ) {
  VerilogGeneratorBase::VlgGenConfig vlg_cfg;
  vlg_cfg.pass_node_name = true;
  vtg_cfg.ForceInstCheckReset = true;

  std::string RootPath    = "..";
  std::string VerilogPath = RootPath    + "/verilog/";
  std::string IncludePath = VerilogPath + "include/";
  std::string RefrelPath  = RootPath    + "/refinement/";
  std::string OutputPath  = RootPath    + "/verification/";

  std::vector<std::string> path_to_design_files;
  for(auto && f : design_files)
    path_to_design_files.push_back( VerilogPath + f );
  

  VerilogVerificationTargetGenerator vg(
      {IncludePath},                                         // one include path
      path_to_design_files,                                  // designs
      "ila_comp_8051",                               // top_module_name
      RefrelPath + "ref-rel-var-map.json",                // variable mapping
      RefrelPath + "ref-rel-inst-cond.json",              // conditions of start/ready
      OutputPath,                                            // output path
      model,                                           // model
      VerilogVerificationTargetGenerator::backend_selector::JASPERGOLD, // backend: JASPERGOLD
      vtg_cfg,  // target generator configuration
      vlg_cfg); // verilog generator configuration

  vg.GenerateTargets();
}


VerilogVerificationTargetGenerator::vtg_config_t HandleArguments(int argc, char **argv) {
  // the solver, the cosa environment
  // you can use a commandline parser if desired, but since it is not the main focus of
  // this demo, we skip it

  // set ilang option, operators like '<' will refer to unsigned arithmetics
  SetUnsignedComparison(true); 
  
  VerilogVerificationTargetGenerator::vtg_config_t ret;

  for(unsigned p = 1; p<argc; p++) {
    std::string arg = argv[p];
    auto split = arg.find("=");
    auto argName = arg.substr(0,split);
    auto param   = arg.substr(split+1);

    if(argName == "Solver")
      ret.CosaSolver = param;
    else if(argName == "Env")
      ret.CosaPyEnvironment = param;
    else if(argName == "Cosa")
      ret.CosaPath = param;
    // else unknown
    else {
      std::cerr<<"Unknown argument:" << argName << std::endl;
      std::cerr<<"Expecting Solver/Env/Cosa=???" << std::endl;
    }
  }

  ret.CosaGenTraceVcd = true;

  /// other configurations
  ret.PortDeclStyle = VlgVerifTgtGenBase::vtg_config_t::NEW;
  ret.CosaGenJgTesterScript = true;
  //ret.CosaOtherSolverOptions = "--blackbox-array";
  //ret.ForceInstCheckReset = true;

  return ret;
}

VerilogVerificationTargetGenerator::vtg_config_t SetConfiguration() {

  // set ilang option, operators like '<' will refer to unsigned arithmetics
  SetUnsignedComparison(true); 
  
  VerilogVerificationTargetGenerator::vtg_config_t ret;
  ret.CosaSolver = "z3";
  ret.CosaPyEnvironment = "/ibuild/ilang-env/bin/activate";
  ret.CosaPath = "/ibuild/CoSA";
  ret.CosaGenTraceVcd = true;

  /// other configurations
  ret.PortDeclStyle = VlgVerifTgtGenBase::vtg_config_t::NEW;
  ret.CosaGenJgTesterScript = true;
  //ret.CosaOtherSolverOptions = "--blackbox-array";
  //ret.ForceInstCheckReset = true;

  return ret;
}