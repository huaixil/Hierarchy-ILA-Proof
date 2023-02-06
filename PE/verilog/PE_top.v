//
// ------------------------------------------------------------------
//  Design Unit:    PEModule_rtl
// ------------------------------------------------------------------

module PEModule_rtl (
  clk, rst, start_msg, start_val, start_rdy, done_msg, done_val, done_rdy, rva_in_msg,
      rva_in_val, rva_in_rdy, rva_out_msg, rva_out_val, rva_out_rdy, input_port_msg,
      input_port_val, input_port_rdy, output_port_msg, output_port_val, output_port_rdy
);
  input clk;
  input rst;
  input start_msg;
  input start_val;
  output start_rdy;
  output done_msg;
  output done_val;
  input done_rdy;
  input [168:0] rva_in_msg;
  input rva_in_val;
  output rva_in_rdy;
  output [127:0] rva_out_msg;
  output rva_out_val;
  input rva_out_rdy;
  input [137:0] input_port_msg;
  input input_port_val;
  output input_port_rdy;
  output [137:0] output_port_msg;
  output output_port_val;
  input output_port_rdy;

  // Interconnect Declarations
  wire pe_start_msg;
  wire pe_start_val;
  wire pe_start_rdy;
  wire [168:0] pe_rva_in_msg;
  wire pe_rva_in_val;
  wire pe_rva_in_rdy;
  wire [127:0] pe_rva_out_msg;
  wire pe_rva_out_val;
  wire pe_rva_out_rdy;
  wire act_start_msg;
  wire act_start_val;
  wire act_start_rdy;
  wire [168:0] act_rva_in_msg;
  wire act_rva_in_val;
  wire act_rva_in_rdy;
  wire [127:0] act_rva_out_msg;
  wire act_rva_out_val;
  wire act_rva_out_rdy;
  wire [319:0] act_port_msg;
  wire act_port_val;
  wire act_port_rdy;
  wire [31:0] SC_SRAM_CONFIG;

  
  PECore pecore_inst (
      .clk(clk),
      .rst(rst),
      .start_msg(start_msg),
      .start_val(start_val),
      .start_rdy(pe_start_rdy),
      .input_port_msg(input_port_msg),
      .input_port_val(input_port_val),
      .input_port_rdy(input_port_rdy),
      .rva_in_msg(rva_in_msg),
      .rva_in_val(rva_in_val),
      .rva_in_rdy(pe_rva_in_rdy),
      .rva_out_msg(pe_rva_out_msg),
      .rva_out_val(pe_rva_out_val),
      .rva_out_rdy(pe_rva_out_rdy),
      .act_port_msg(act_port_msg),
      .act_port_val(act_port_val),
      .act_port_rdy(act_port_rdy),
      .SC_SRAM_CONFIG(SC_SRAM_CONFIG)
    );

  ActUnit act_inst (
      .clk(clk),
      .rst(rst),
      .start_msg(start_msg),
      .start_val(start_val),
      .start_rdy(act_start_rdy),
      .act_port_msg(act_port_msg),
      .act_port_val(act_port_val),
      .act_port_rdy(act_port_rdy),
      .rva_in_msg(rva_in_msg),
      .rva_in_val(rva_in_val),
      .rva_in_rdy(act_rva_in_rdy),
      .rva_out_msg(act_rva_out_msg),
      .rva_out_val(act_rva_out_val),
      .rva_out_rdy(act_rva_out_rdy),
      .output_port_msg(output_port_msg),
      .output_port_val(output_port_val),
      .output_port_rdy(output_port_rdy),
      .done_msg(done_msg),
      .done_val(done_val),
      .done_rdy(done_rdy)
    );
endmodule