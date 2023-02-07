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

  
  pe_core pecore_inst (
      .__ILA_pe_core_grant__(14'h3fff),
      .clk(clk),
      .rst(rst),
      
      .pe_start(start_msg),
      .pe_start_valid(start_val),
      .pe_start_ready(pe_start_rdy),

      .input_port_index(input_port_msg[137:136]),
      .input_port_addr(input_port_msg[135:128]),
      .input_port_data(input_port_msg[127:0]),
      .input_port_valid(input_port_val),
      .input_port_ready(input_port_rdy),

      .axi_rw(rva_in_msg[168]),
      .wstrb(rva_in_msg[167:152]),
      .addr(rva_in_msg[151:128]),
      .data_in_15(rva_in_msg[127:120]),
      .data_in_14(rva_in_msg[119:112]),
      .data_in_13(rva_in_msg[111:104]),
      .data_in_12(rva_in_msg[103:96]),
      .data_in_11(rva_in_msg[95:88]),
      .data_in_10(rva_in_msg[87:80]),
      .data_in_9(rva_in_msg[79:72]),
      .data_in_8(rva_in_msg[71:64]),
      .data_in_7(rva_in_msg[63:56]),
      .data_in_6(rva_in_msg[55:48]),
      .data_in_5(rva_in_msg[47:40]),
      .data_in_4(rva_in_msg[39:32]),
      .data_in_3(rva_in_msg[31:24]),
      .data_in_2(rva_in_msg[23:16]),
      .data_in_1(rva_in_msg[15:8]),
      .data_in_0(rva_in_msg[7:0]),
      .rva_in_valid(rva_in_val),
      .rva_in_ready(pe_rva_in_rdy),

      .PE0_core_act_vector_0(act_port_msg[19:0]),
      .PE0_core_act_vector_1(act_port_msg[39:20]),
      .PE0_core_act_vector_2(act_port_msg[59:40]),
      .PE0_core_act_vector_3(act_port_msg[79:60]),
      .PE0_core_act_vector_4(act_port_msg[99:80]),
      .PE0_core_act_vector_5(act_port_msg[119:100]),
      .PE0_core_act_vector_6(act_port_msg[139:120]),
      .PE0_core_act_vector_7(act_port_msg[159:140]),
      .PE0_core_act_vector_8(act_port_msg[179:160]),
      .PE0_core_act_vector_9(act_port_msg[199:180]),
      .PE0_core_act_vector_10(act_port_msg[219:200]),
      .PE0_core_act_vector_11(act_port_msg[239:220]),
      .PE0_core_act_vector_12(act_port_msg[259:240]),
      .PE0_core_act_vector_13(act_port_msg[279:260]),
      .PE0_core_act_vector_14(act_port_msg[299:280]),
      .PE0_core_act_vector_15(act_port_msg[319:300]),
      .pe0_act_reg_port_valid(act_port_val),
      .act_port_ready(act_port_rdy)

    );

  pe_act act_inst (
      .__ILA_pe_act_grant__(20'hfffff),
      .clk(clk),
      .rst(rst),

      .act_start(start_msg),
      .act_start_valid(start_val),
      .act_start_ready(act_start_rdy),

      .PE0_core_act_vector_0(act_port_msg[19:0]),
      .PE0_core_act_vector_1(act_port_msg[39:20]),
      .PE0_core_act_vector_2(act_port_msg[59:40]),
      .PE0_core_act_vector_3(act_port_msg[79:60]),
      .PE0_core_act_vector_4(act_port_msg[99:80]),
      .PE0_core_act_vector_5(act_port_msg[119:100]),
      .PE0_core_act_vector_6(act_port_msg[139:120]),
      .PE0_core_act_vector_7(act_port_msg[159:140]),
      .PE0_core_act_vector_8(act_port_msg[179:160]),
      .PE0_core_act_vector_9(act_port_msg[199:180]),
      .PE0_core_act_vector_10(act_port_msg[219:200]),
      .PE0_core_act_vector_11(act_port_msg[239:220]),
      .PE0_core_act_vector_12(act_port_msg[259:240]),
      .PE0_core_act_vector_13(act_port_msg[279:260]),
      .PE0_core_act_vector_14(act_port_msg[299:280]),
      .PE0_core_act_vector_15(act_port_msg[319:300]),
      .pe0_act_reg_port_valid(act_port_val),
      .act_port_ready(act_port_rdy),

      .axi_rw(rva_in_msg[168]),
      .wstrb(rva_in_msg[167:152]),
      .addr(rva_in_msg[151:128]),
      .data_in_15(rva_in_msg[127:120]),
      .data_in_14(rva_in_msg[119:112]),
      .data_in_13(rva_in_msg[111:104]),
      .data_in_12(rva_in_msg[103:96]),
      .data_in_11(rva_in_msg[95:88]),
      .data_in_10(rva_in_msg[87:80]),
      .data_in_9(rva_in_msg[79:72]),
      .data_in_8(rva_in_msg[71:64]),
      .data_in_7(rva_in_msg[63:56]),
      .data_in_6(rva_in_msg[55:48]),
      .data_in_5(rva_in_msg[47:40]),
      .data_in_4(rva_in_msg[39:32]),
      .data_in_3(rva_in_msg[31:24]),
      .data_in_2(rva_in_msg[23:16]),
      .data_in_1(rva_in_msg[15:8]),
      .data_in_0(rva_in_msg[7:0]),
      .rva_in_valid(rva_in_val),
      .rva_in_ready(act_rva_in_rdy),

      .output_port_data(output_port_msg[127:0]),
      .output_port_addr(output_port_msg[135:128]),
      .output_port_valid(output_port_val),
      .output_port_ready(output_port_rdy),

      .done(done_msg),
      .done_valid(done_val),
      .done_ready(done_rdy)
    );
endmodule