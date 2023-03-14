// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CACC_assembly_ctrl.v
module NV_NVDLA_CACC_assembly_ctrl (
   nvdla_core_clk
  ,nvdla_core_rstn
  ,dp2reg_done
  ,mac_a2accu_pd
  ,mac_a2accu_pvld
  ,mac_b2accu_pd
  ,mac_b2accu_pvld
  ,reg2dp_clip_truncate
  ,reg2dp_conv_mode
  ,reg2dp_op_en
  ,reg2dp_proc_precision
  ,abuf_rd_addr
  ,abuf_rd_en
  ,accu_ctrl_pd
  ,accu_ctrl_ram_valid
  ,accu_ctrl_valid
  ,cfg_in_en_mask
  ,cfg_is_fp
  ,cfg_is_int
  ,cfg_is_int8
  ,cfg_is_wg
  ,cfg_truncate
  ,slcg_cell_en
  ,wait_for_op_en
  );
input [0:0] reg2dp_op_en;
input [0:0] reg2dp_conv_mode;
input [1:0] reg2dp_proc_precision;
input [4:0] reg2dp_clip_truncate;
input nvdla_core_clk;
input nvdla_core_rstn;
input dp2reg_done;
input [8:0] mac_a2accu_pd;
input mac_a2accu_pvld;
input [8:0] mac_b2accu_pd;
input mac_b2accu_pvld;
output [4:0] abuf_rd_addr;
output [7:0] abuf_rd_en;
output [339:0] accu_ctrl_pd;
output [191:0] accu_ctrl_ram_valid;
output accu_ctrl_valid;
output [191:0] cfg_in_en_mask;
output [24:0] cfg_is_fp;
output [24:0] cfg_is_int;
output [126:0] cfg_is_int8;
output [95:0] cfg_is_wg;
output [639:0] cfg_truncate;
output [3:0] slcg_cell_en;
output wait_for_op_en;
wire [4:0] accu_addr_d0;
wire [4:0] accu_batch_index;
wire accu_channel_end;
wire accu_channel_end_d0;
wire accu_ctrl_valid_d0;
wire accu_layer_end;
wire accu_layer_end_d0;
wire accu_ram_valid_d0;
wire [7:0] accu_rd_mask_d0;
wire accu_stripe_end;
wire accu_stripe_end_d0;
wire accu_stripe_st;
wire layer_st;
wire [4:0] pre_accu_addr;
wire pre_accu_channel_end;
wire pre_accu_ctrl_valid;
wire pre_accu_layer_end;
wire [3:0] pre_accu_mode;
wire pre_accu_ram_sel_0;
wire pre_accu_ram_sel_1;
wire pre_accu_ram_sel_2;
wire pre_accu_ram_sel_3;
wire pre_accu_ram_sel_4;
wire pre_accu_ram_sel_5;
wire pre_accu_ram_sel_6;
wire pre_accu_ram_sel_7;
wire pre_accu_ram_valid;
wire [7:0] pre_accu_rd_mask;
wire pre_accu_stripe_end;
reg [4:0] accu_addr;
reg [4:0] accu_addr_d1;
reg [4:0] accu_addr_d2;
reg accu_channel_end_d1;
reg accu_channel_end_d2;
reg [8:0] accu_channel_st;
reg accu_channel_st_w;
reg [6:0] accu_cnt;
reg [6:0] accu_cnt_inc;
reg [6:0] accu_cnt_w;
reg [4:0] accu_ctrl_addr;
reg accu_ctrl_channel_end;
reg [191:0] accu_ctrl_dlv_elem_mask;
reg accu_ctrl_layer_end;
reg [3:0] accu_ctrl_mode;
reg [15:0] accu_ctrl_ram_sel_0;
reg [15:0] accu_ctrl_ram_sel_1;
reg [15:0] accu_ctrl_ram_sel_2;
reg [15:0] accu_ctrl_ram_sel_3;
reg [15:0] accu_ctrl_ram_sel_4;
reg [15:0] accu_ctrl_ram_sel_5;
reg [15:0] accu_ctrl_ram_sel_6;
reg [15:0] accu_ctrl_ram_sel_7;
reg [191:0] accu_ctrl_ram_valid;
reg [7:0] accu_ctrl_rd_mask;
reg accu_ctrl_stripe_end;
reg accu_ctrl_valid;
reg accu_ctrl_valid_d1;
reg accu_ctrl_valid_d2;
reg accu_layer_end_d1;
reg accu_layer_end_d2;
reg [3:0] accu_mode_d0;
reg [3:0] accu_mode_d1;
reg [3:0] accu_mode_d2;
reg [8:0] accu_pd;
reg accu_ram_sel_0_d0;
reg accu_ram_sel_0_d1;
reg accu_ram_sel_0_d2;
reg accu_ram_sel_0_w;
reg accu_ram_sel_1_d0;
reg accu_ram_sel_1_d1;
reg accu_ram_sel_1_d2;
reg accu_ram_sel_1_w;
reg accu_ram_sel_2_d0;
reg accu_ram_sel_2_d1;
reg accu_ram_sel_2_d2;
reg accu_ram_sel_2_w;
reg accu_ram_sel_3_d0;
reg accu_ram_sel_3_d1;
reg accu_ram_sel_3_d2;
reg accu_ram_sel_3_w;
reg accu_ram_sel_4_d0;
reg accu_ram_sel_4_d1;
reg accu_ram_sel_4_d2;
reg accu_ram_sel_4_w;
reg accu_ram_sel_5_d0;
reg accu_ram_sel_5_d1;
reg accu_ram_sel_5_d2;
reg accu_ram_sel_5_w;
reg accu_ram_sel_6_d0;
reg accu_ram_sel_6_d1;
reg accu_ram_sel_6_d2;
reg accu_ram_sel_6_w;
reg accu_ram_sel_7_d0;
reg accu_ram_sel_7_d1;
reg accu_ram_sel_7_d2;
reg accu_ram_sel_7_w;
reg accu_ram_valid;
reg accu_ram_valid_d1;
reg accu_ram_valid_d2;
reg [7:0] accu_rd_en;
reg [7:0] accu_rd_mask;
reg [7:0] accu_rd_mask_d1;
reg [7:0] accu_rd_mask_d2;
reg [7:0] accu_rd_mask_w;
reg [3:0] accu_rd_sel_w;
reg accu_stripe_end_d1;
reg accu_stripe_end_d2;
reg [8:0] accu_valid;
reg [191:0] cfg_in_en_mask;
reg [191:0] cfg_in_en_mask_w;
reg [24:0] cfg_is_fp;
reg cfg_is_fp16;
reg [24:0] cfg_is_int;
reg [126:0] cfg_is_int8;
reg [95:0] cfg_is_wg;
reg [639:0] cfg_truncate;
reg cfg_winograd;
reg is_fp16;
reg is_int16;
reg is_int8;
reg is_winograd;
reg is_x1;
reg is_x2;
reg is_x4;
reg is_x8;
reg mon_accu_cnt_inc;
reg [3:0] slcg_cell_en_d1;
reg [3:0] slcg_cell_en_d2;
reg [3:0] slcg_cell_en_d3;
reg [3:0] slcg_cell_en_w;
reg wait_for_op_en;
reg wait_for_op_en_w;
// synoff nets
// monitor nets
// debug nets
// tie high nets
// tie low nets
// no connect nets
// not all bits used nets
// todo nets
//////////////////////////////////////////////////////////////
///// register input signal for accross power boundary   /////
//////////////////////////////////////////////////////////////
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_valid <= {9{1'b0}};
  end else begin
  accu_valid <= {9{mac_a2accu_pvld}};
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_pd <= {9{1'b0}};
  end else begin
  if ((mac_a2accu_pvld) == 1'b1) begin
    accu_pd <= mac_a2accu_pd;
  end
  end
end
//////////////////////////////////////////////////////////////
///// generator input status signal                      /////
//////////////////////////////////////////////////////////////
// PKT_UNPACK_WIRE( nvdla_stripe_info , accu_ , accu_pd )
assign accu_batch_index[4:0] = accu_pd[4:0];
assign accu_stripe_st = accu_pd[5];
assign accu_stripe_end = accu_pd[6];
assign accu_channel_end = accu_pd[7];
assign accu_layer_end = accu_pd[8];
always @(
  reg2dp_proc_precision
  ) begin
    is_int8 = (reg2dp_proc_precision == 2'h0 );
end
always @(
  reg2dp_proc_precision
  ) begin
    is_int16 = (reg2dp_proc_precision == 2'h1 );
end
always @(
  reg2dp_proc_precision
  ) begin
    is_fp16 = (reg2dp_proc_precision == 2'h2 );
end
always @(
  reg2dp_conv_mode
  ) begin
    is_winograd = (reg2dp_conv_mode == 1'h1 );
end
always @(
  is_int8
  or is_winograd
  ) begin
    is_x1 = ~is_int8 & ~is_winograd;
end
always @(
  is_int8
  or is_winograd
  ) begin
    is_x2 = is_int8 & ~is_winograd;
end
always @(
  is_int8
  or is_winograd
  ) begin
    is_x4 = ~is_int8 & is_winograd;
end
always @(
  is_int8
  or is_winograd
  ) begin
    is_x8 = is_int8 & is_winograd;
end
////////////////////////////////////////////////////////////////////////
// SLCG control signal //
////////////////////////////////////////////////////////////////////////
always @(
  reg2dp_op_en
  or is_fp16
  or is_winograd
  ) begin
    slcg_cell_en_w[0] = reg2dp_op_en & ~is_fp16;
    slcg_cell_en_w[1] = reg2dp_op_en & is_winograd & ~is_fp16;
    slcg_cell_en_w[2] = reg2dp_op_en & is_fp16;
    slcg_cell_en_w[3] = reg2dp_op_en & is_winograd & is_fp16;
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    slcg_cell_en_d1 <= {4{1'b0}};
  end else begin
  slcg_cell_en_d1 <= slcg_cell_en_w;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    slcg_cell_en_d2 <= {4{1'b0}};
  end else begin
  slcg_cell_en_d2 <= slcg_cell_en_d1;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    slcg_cell_en_d3 <= {4{1'b0}};
  end else begin
  slcg_cell_en_d3 <= slcg_cell_en_d2;
  end
end
assign slcg_cell_en = slcg_cell_en_d3;
//////////////////////////////////////////////////////////////
///// generator status control logic                     /////
//////////////////////////////////////////////////////////////
always @(
  dp2reg_done
  or reg2dp_op_en
  or wait_for_op_en
  ) begin
    wait_for_op_en_w = dp2reg_done ? 1'b1 :
                       reg2dp_op_en ? 1'b0 :
                       wait_for_op_en;
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    wait_for_op_en <= 1'b1;
  end else begin
  wait_for_op_en <= wait_for_op_en_w;
  end
end
//////////////////////////////////////////////////////////////
///// generator write address                            /////
//////////////////////////////////////////////////////////////
assign layer_st = wait_for_op_en & reg2dp_op_en;
always @(
  accu_cnt
  ) begin
    {mon_accu_cnt_inc,
     accu_cnt_inc} = accu_cnt + 1'b1;
end
always @(
  layer_st
  or accu_stripe_end
  or accu_cnt_inc
  ) begin
    accu_cnt_w = (layer_st | accu_stripe_end) ? 7'b0 :
                 accu_cnt_inc;
end
always @(
  cfg_winograd
  or accu_cnt
  ) begin
    accu_addr = (cfg_winograd) ? accu_cnt[4:0] :
                accu_cnt[6:2];
end
always @(
  accu_cnt_w
  ) begin
    accu_rd_sel_w[3:0] = {4'h1 << accu_cnt_w[1:0]};
end
always @(
  is_x8
  or is_x4
  or is_x2
  or accu_rd_sel_w
  ) begin
    accu_rd_mask_w = is_x8 ? 8'hff :
                     is_x4 ? 8'hf :
                     is_x2 ? {2{accu_rd_sel_w}} :
                     {4'b0, accu_rd_sel_w};
end
always @(
  layer_st
  or accu_valid
  or accu_stripe_end
  or accu_channel_end
  or accu_channel_st
  ) begin
    accu_channel_st_w = layer_st ? 1'b1 :
                        (accu_valid[8] & accu_stripe_end) ? accu_channel_end : accu_channel_st[8];
end
always @(
  accu_rd_mask_w
  or is_x1
  or is_x2
  ) begin
    accu_ram_sel_0_w = accu_rd_mask_w[0];
    accu_ram_sel_1_w = accu_rd_mask_w[1] & (is_x1 | is_x2);
    accu_ram_sel_2_w = accu_rd_mask_w[2] & (is_x1 | is_x2);
    accu_ram_sel_3_w = accu_rd_mask_w[3] & (is_x1 | is_x2);
    accu_ram_sel_4_w = accu_rd_mask_w[4];
    accu_ram_sel_5_w = accu_rd_mask_w[5] & is_x2;
    accu_ram_sel_6_w = accu_rd_mask_w[6] & is_x2;
    accu_ram_sel_7_w = accu_rd_mask_w[7] & is_x2;
end
always @(
  accu_valid
  or accu_channel_st
  or accu_rd_mask
  ) begin
    accu_rd_en = accu_valid[7:0] & (~accu_channel_st[7:0]) & accu_rd_mask;
end
always @(
  accu_valid
  or accu_channel_st
  ) begin
    accu_ram_valid = (accu_valid[8] & ~accu_channel_st[8]);
end
always @(
  is_fp16
  or is_x8
  or is_x4
  or is_x2
  or is_x1
  ) begin
    cfg_in_en_mask_w[127:0] = is_fp16 ? 128'b0 :
                              is_x8 ? {128{1'b1}} :
                              is_x4 ? {64'b0, {64{1'b1}}} :
                              is_x2 ? {48'b0, {16{1'b1}}, 48'b0, {16{1'b1}}} :
                              {112'b0, {16{1'b1}}};
    cfg_in_en_mask_w[191:128] = (~is_fp16) ? 64'b0 :
                                is_x1 ? {48'b0, {16{1'b1}}} :
                                {64{1'b1}};
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_cnt <= {7{1'b0}};
  end else begin
  if ((layer_st | accu_valid[8]) == 1'b1) begin
    accu_cnt <= accu_cnt_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_channel_st <= {9{1'b1}};
  end else begin
  if ((layer_st | accu_valid[8]) == 1'b1) begin
    accu_channel_st <= {9{accu_channel_st_w}};
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_rd_mask <= {8{1'b0}};
  end else begin
  if ((layer_st | accu_valid[8]) == 1'b1) begin
    accu_rd_mask <= accu_rd_mask_w;
  end
  end
end
assign accu_ctrl_valid_d0 = accu_valid[8];
assign accu_ram_valid_d0 = accu_ram_valid;
assign accu_addr_d0 = accu_addr;
assign accu_rd_mask_d0 = accu_rd_mask;
assign accu_stripe_end_d0 = accu_stripe_end;
assign accu_channel_end_d0 = accu_channel_end;
assign accu_layer_end_d0 = accu_layer_end;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_mode_d0 <= 4'b1;
  end else begin
  if ((layer_st) == 1'b1) begin
    accu_mode_d0 <= {is_x8, is_x4, is_x2, is_x1};
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_0_d0 <= 1'b0;
  end else begin
  if ((layer_st | accu_valid[8]) == 1'b1) begin
    accu_ram_sel_0_d0 <= accu_ram_sel_0_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_1_d0 <= 1'b0;
  end else begin
  if ((layer_st | accu_valid[8]) == 1'b1) begin
    accu_ram_sel_1_d0 <= accu_ram_sel_1_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_2_d0 <= 1'b0;
  end else begin
  if ((layer_st | accu_valid[8]) == 1'b1) begin
    accu_ram_sel_2_d0 <= accu_ram_sel_2_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_3_d0 <= 1'b0;
  end else begin
  if ((layer_st | accu_valid[8]) == 1'b1) begin
    accu_ram_sel_3_d0 <= accu_ram_sel_3_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_4_d0 <= 1'b0;
  end else begin
  if ((layer_st | accu_valid[8]) == 1'b1) begin
    accu_ram_sel_4_d0 <= accu_ram_sel_4_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_5_d0 <= 1'b0;
  end else begin
  if ((layer_st | accu_valid[8]) == 1'b1) begin
    accu_ram_sel_5_d0 <= accu_ram_sel_5_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_6_d0 <= 1'b0;
  end else begin
  if ((layer_st | accu_valid[8]) == 1'b1) begin
    accu_ram_sel_6_d0 <= accu_ram_sel_6_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_7_d0 <= 1'b0;
  end else begin
  if ((layer_st | accu_valid[8]) == 1'b1) begin
    accu_ram_sel_7_d0 <= accu_ram_sel_7_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    cfg_is_fp16 <= 1'b0;
  end else begin
  if ((layer_st) == 1'b1) begin
    cfg_is_fp16 <= is_fp16;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    cfg_winograd <= 1'b0;
  end else begin
  if ((layer_st) == 1'b1) begin
    cfg_winograd <= is_winograd;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    cfg_truncate <= {640{1'b0}};
  end else begin
  if ((layer_st) == 1'b1) begin
    cfg_truncate <= {128{reg2dp_clip_truncate}};
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    cfg_is_fp <= {25{1'b0}};
  end else begin
  if ((layer_st) == 1'b1) begin
    cfg_is_fp <= {25{is_fp16}};
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    cfg_is_int <= {25{1'b1}};
  end else begin
  if ((layer_st) == 1'b1) begin
    cfg_is_int <= {25{~is_fp16}};
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    cfg_is_wg <= {96{1'b0}};
  end else begin
  if ((layer_st) == 1'b1) begin
    cfg_is_wg <= {96{is_winograd}};
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    cfg_is_int8 <= {127{1'b0}};
  end else begin
  if ((layer_st) == 1'b1) begin
    cfg_is_int8 <= {127{is_int8}};
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    cfg_in_en_mask <= {192{1'b0}};
  end else begin
  if ((layer_st) == 1'b1) begin
    cfg_in_en_mask <= cfg_in_en_mask_w;
  end
  end
end
//////////////////////////////////////////////////////////////
///// generator misc controll logic                      /////
//////////////////////////////////////////////////////////////
assign abuf_rd_en = accu_rd_en;
assign abuf_rd_addr = accu_addr;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_valid_d1 <= 1'b0;
  end else begin
  accu_ctrl_valid_d1 <= accu_ctrl_valid_d0;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_valid_d1 <= 1'b0;
  end else begin
  accu_ram_valid_d1 <= accu_ram_valid_d0;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_addr_d1 <= {5{1'b0}};
  end else begin
  if ((accu_ctrl_valid_d0) == 1'b1) begin
    accu_addr_d1 <= accu_addr_d0;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_mode_d1 <= {4{1'b0}};
  end else begin
  if ((accu_ctrl_valid_d0) == 1'b1) begin
    accu_mode_d1 <= accu_mode_d0;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_rd_mask_d1 <= {8{1'b0}};
  end else begin
  if ((accu_ctrl_valid_d0) == 1'b1) begin
    accu_rd_mask_d1 <= accu_rd_mask_d0;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_stripe_end_d1 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d0) == 1'b1) begin
    accu_stripe_end_d1 <= accu_stripe_end_d0;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_channel_end_d1 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d0) == 1'b1) begin
    accu_channel_end_d1 <= accu_channel_end_d0;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_layer_end_d1 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d0) == 1'b1) begin
    accu_layer_end_d1 <= accu_layer_end_d0;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_0_d1 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d0) == 1'b1) begin
    accu_ram_sel_0_d1 <= accu_ram_sel_0_d0;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_1_d1 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d0) == 1'b1) begin
    accu_ram_sel_1_d1 <= accu_ram_sel_1_d0;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_2_d1 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d0) == 1'b1) begin
    accu_ram_sel_2_d1 <= accu_ram_sel_2_d0;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_3_d1 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d0) == 1'b1) begin
    accu_ram_sel_3_d1 <= accu_ram_sel_3_d0;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_4_d1 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d0) == 1'b1) begin
    accu_ram_sel_4_d1 <= accu_ram_sel_4_d0;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_5_d1 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d0) == 1'b1) begin
    accu_ram_sel_5_d1 <= accu_ram_sel_5_d0;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_6_d1 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d0) == 1'b1) begin
    accu_ram_sel_6_d1 <= accu_ram_sel_6_d0;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_7_d1 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d0) == 1'b1) begin
    accu_ram_sel_7_d1 <= accu_ram_sel_7_d0;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_valid_d2 <= 1'b0;
  end else begin
  accu_ctrl_valid_d2 <= accu_ctrl_valid_d1;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_valid_d2 <= 1'b0;
  end else begin
  accu_ram_valid_d2 <= accu_ram_valid_d1;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_addr_d2 <= {5{1'b0}};
  end else begin
  if ((accu_ctrl_valid_d1) == 1'b1) begin
    accu_addr_d2 <= accu_addr_d1;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_mode_d2 <= {4{1'b0}};
  end else begin
  if ((accu_ctrl_valid_d1) == 1'b1) begin
    accu_mode_d2 <= accu_mode_d1;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_rd_mask_d2 <= {8{1'b0}};
  end else begin
  if ((accu_ctrl_valid_d1) == 1'b1) begin
    accu_rd_mask_d2 <= accu_rd_mask_d1;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_stripe_end_d2 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d1) == 1'b1) begin
    accu_stripe_end_d2 <= accu_stripe_end_d1;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_channel_end_d2 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d1) == 1'b1) begin
    accu_channel_end_d2 <= accu_channel_end_d1;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_layer_end_d2 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d1) == 1'b1) begin
    accu_layer_end_d2 <= accu_layer_end_d1;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_0_d2 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d1) == 1'b1) begin
    accu_ram_sel_0_d2 <= accu_ram_sel_0_d1;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_1_d2 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d1) == 1'b1) begin
    accu_ram_sel_1_d2 <= accu_ram_sel_1_d1;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_2_d2 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d1) == 1'b1) begin
    accu_ram_sel_2_d2 <= accu_ram_sel_2_d1;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_3_d2 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d1) == 1'b1) begin
    accu_ram_sel_3_d2 <= accu_ram_sel_3_d1;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_4_d2 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d1) == 1'b1) begin
    accu_ram_sel_4_d2 <= accu_ram_sel_4_d1;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_5_d2 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d1) == 1'b1) begin
    accu_ram_sel_5_d2 <= accu_ram_sel_5_d1;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_6_d2 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d1) == 1'b1) begin
    accu_ram_sel_6_d2 <= accu_ram_sel_6_d1;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ram_sel_7_d2 <= 1'b0;
  end else begin
  if ((accu_ctrl_valid_d1) == 1'b1) begin
    accu_ram_sel_7_d2 <= accu_ram_sel_7_d1;
  end
  end
end
assign pre_accu_ctrl_valid = accu_ctrl_valid_d2;
assign pre_accu_ram_valid = accu_ram_valid_d2;
assign pre_accu_addr = accu_addr_d2;
assign pre_accu_mode = accu_mode_d2;
assign pre_accu_rd_mask = accu_rd_mask_d2;
assign pre_accu_stripe_end = accu_stripe_end_d2;
assign pre_accu_channel_end = accu_channel_end_d2;
assign pre_accu_layer_end = accu_layer_end_d2;
assign pre_accu_ram_sel_0 = accu_ram_sel_0_d2;
assign pre_accu_ram_sel_1 = accu_ram_sel_1_d2;
assign pre_accu_ram_sel_2 = accu_ram_sel_2_d2;
assign pre_accu_ram_sel_3 = accu_ram_sel_3_d2;
assign pre_accu_ram_sel_4 = accu_ram_sel_4_d2;
assign pre_accu_ram_sel_5 = accu_ram_sel_5_d2;
assign pre_accu_ram_sel_6 = accu_ram_sel_6_d2;
assign pre_accu_ram_sel_7 = accu_ram_sel_7_d2;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_valid <= 1'b0;
  end else begin
  accu_ctrl_valid <= pre_accu_ctrl_valid;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_ram_valid <= {192{1'b0}};
  end else begin
  accu_ctrl_ram_valid <= {192{pre_accu_ram_valid}};
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_addr <= {5{1'b0}};
  end else begin
  if ((pre_accu_ctrl_valid) == 1'b1) begin
    accu_ctrl_addr <= pre_accu_addr;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_mode <= {4{1'b0}};
  end else begin
  if ((pre_accu_ctrl_valid) == 1'b1) begin
    accu_ctrl_mode <= pre_accu_mode;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_rd_mask <= {8{1'b0}};
  end else begin
  if ((pre_accu_ctrl_valid) == 1'b1) begin
    accu_ctrl_rd_mask <= pre_accu_rd_mask;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_stripe_end <= 1'b0;
  end else begin
  if ((pre_accu_ctrl_valid) == 1'b1) begin
    accu_ctrl_stripe_end <= pre_accu_stripe_end;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_channel_end <= 1'b0;
  end else begin
  if ((pre_accu_ctrl_valid) == 1'b1) begin
    accu_ctrl_channel_end <= pre_accu_channel_end;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_layer_end <= 1'b0;
  end else begin
  if ((pre_accu_ctrl_valid) == 1'b1) begin
    accu_ctrl_layer_end <= pre_accu_layer_end;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_ram_sel_0 <= {16{1'b0}};
  end else begin
  if ((pre_accu_ctrl_valid) == 1'b1) begin
    accu_ctrl_ram_sel_0 <= {16{pre_accu_ram_sel_0}};
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_ram_sel_1 <= {16{1'b0}};
  end else begin
  if ((pre_accu_ctrl_valid) == 1'b1) begin
    accu_ctrl_ram_sel_1 <= {16{pre_accu_ram_sel_1}};
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_ram_sel_2 <= {16{1'b0}};
  end else begin
  if ((pre_accu_ctrl_valid) == 1'b1) begin
    accu_ctrl_ram_sel_2 <= {16{pre_accu_ram_sel_2}};
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_ram_sel_3 <= {16{1'b0}};
  end else begin
  if ((pre_accu_ctrl_valid) == 1'b1) begin
    accu_ctrl_ram_sel_3 <= {16{pre_accu_ram_sel_3}};
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_ram_sel_4 <= {16{1'b0}};
  end else begin
  if ((pre_accu_ctrl_valid) == 1'b1) begin
    accu_ctrl_ram_sel_4 <= {16{pre_accu_ram_sel_4}};
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_ram_sel_5 <= {16{1'b0}};
  end else begin
  if ((pre_accu_ctrl_valid) == 1'b1) begin
    accu_ctrl_ram_sel_5 <= {16{pre_accu_ram_sel_5}};
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_ram_sel_6 <= {16{1'b0}};
  end else begin
  if ((pre_accu_ctrl_valid) == 1'b1) begin
    accu_ctrl_ram_sel_6 <= {16{pre_accu_ram_sel_6}};
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_ram_sel_7 <= {16{1'b0}};
  end else begin
  if ((pre_accu_ctrl_valid) == 1'b1) begin
    accu_ctrl_ram_sel_7 <= {16{pre_accu_ram_sel_7}};
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    accu_ctrl_dlv_elem_mask <= {192{1'b0}};
  end else begin
  if ((pre_accu_ctrl_valid) == 1'b1) begin
    accu_ctrl_dlv_elem_mask <= {192{pre_accu_channel_end}};
  end
  end
end
// PKT_PACK_WIRE( nvdla_abuf_info , accu_ctrl_ , accu_ctrl_pd )
assign accu_ctrl_pd[4:0] = accu_ctrl_addr[4:0];
assign accu_ctrl_pd[8:5] = accu_ctrl_mode[3:0];
assign accu_ctrl_pd[16:9] = accu_ctrl_rd_mask[7:0];
assign accu_ctrl_pd[17] = accu_ctrl_stripe_end ;
assign accu_ctrl_pd[18] = accu_ctrl_channel_end ;
assign accu_ctrl_pd[19] = accu_ctrl_layer_end ;
assign accu_ctrl_pd[35:20] = accu_ctrl_ram_sel_0[15:0];
assign accu_ctrl_pd[51:36] = accu_ctrl_ram_sel_1[15:0];
assign accu_ctrl_pd[67:52] = accu_ctrl_ram_sel_2[15:0];
assign accu_ctrl_pd[83:68] = accu_ctrl_ram_sel_3[15:0];
assign accu_ctrl_pd[99:84] = accu_ctrl_ram_sel_4[15:0];
assign accu_ctrl_pd[115:100] = accu_ctrl_ram_sel_5[15:0];
assign accu_ctrl_pd[131:116] = accu_ctrl_ram_sel_6[15:0];
assign accu_ctrl_pd[147:132] = accu_ctrl_ram_sel_7[15:0];
assign accu_ctrl_pd[339:148] = accu_ctrl_dlv_elem_mask[191:0];
// //////////////////////////////////////////////////////////////
// ///// OBS connection                                     /////
// //////////////////////////////////////////////////////////////
// &Force output accu_ctrl_valid;
// &Force output accu_ctrl_pd;
// &Force output abuf_rd_en;
// &Force output abuf_rd_addr;
// &Force output slcg_cell_en;
// &Force output cfg_truncate;
//
// assign obs_bus_cacc_accu_ctrl_valid = accu_ctrl_valid;
// assign obs_bus_cacc_accu_ctrl_pd = accu_ctrl_pd[19:0];
// assign obs_bus_cacc_accu_cnt = accu_cnt[2:0];
// assign obs_bus_cacc_accu_stripe_st = accu_stripe_st;
// assign obs_bus_cacc_cfg_truncate = cfg_truncate[4:0];
// assign obs_bus_cacc_cfg_is_fp16 = cfg_is_fp16;
// assign obs_bus_cacc_abuf_rd_en = abuf_rd_en;
// assign obs_bus_cacc_abuf_rd_addr = abuf_rd_addr;
// assign obs_bus_cacc_slcg_cell_en = slcg_cell_en;
// assign obs_bus_cacc_mac_a2accu_pvld = mac_a2accu_pvld;
// assign obs_bus_cacc_mac_b2accu_pvld = mac_b2accu_pvld;
// assign obs_bus_cacc_mac_a2accu_pd = mac_a2accu_pd;
// assign obs_bus_cacc_dp2reg_done = dp2reg_done;
// assign obs_bus_cacc_reg2dp_op_en = reg2dp_op_en;
// assign obs_bus_cacc_reg2dp_conv_mode = reg2dp_conv_mode;
// assign obs_bus_cacc_reg2dp_proc_precision = reg2dp_proc_precision;
//////////////////////////////////////////////////////////////
///// ecodonors                                          /////
//////////////////////////////////////////////////////////////
// accu_cnt[3:2]
// accu_cnt[5:4]
// accu_rd_mask[1:0]
// accu_rd_mask[3:2]
// accu_rd_mask[5:4]
// accu_rd_mask[7:6];
//////////////////////////////////////////////////////////////
///// functional point                                   /////
//////////////////////////////////////////////////////////////
