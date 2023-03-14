// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CSC_sg.v
module NV_NVDLA_CSC_sg (
   nvdla_core_clk //|< i
  ,nvdla_core_ng_clk //|< i
  ,nvdla_core_rstn //|< i
  ,accu2sc_credit_size //|< i
  ,accu2sc_credit_vld //|< i
  ,cdma2sc_dat_entries //|< i *
  ,cdma2sc_dat_pending_ack //|< i
  ,cdma2sc_dat_slices //|< i
  ,cdma2sc_dat_updt //|< i
  ,cdma2sc_wmb_entries //|< i *
  ,cdma2sc_wt_entries //|< i *
  ,cdma2sc_wt_kernels //|< i
  ,cdma2sc_wt_pending_ack //|< i
  ,cdma2sc_wt_updt //|< i
  ,pwrbus_ram_pd //|< i
  ,reg2dp_atomics //|< i
  ,reg2dp_batches //|< i
  ,reg2dp_conv_mode //|< i
  ,reg2dp_data_bank //|< i
  ,reg2dp_data_reuse //|< i
  ,reg2dp_datain_format //|< i
  ,reg2dp_datain_height_ext //|< i
  ,reg2dp_dataout_height //|< i
  ,reg2dp_dataout_width //|< i
  ,reg2dp_op_en //|< i
  ,reg2dp_proc_precision //|< i
  ,reg2dp_rls_slices //|< i
  ,reg2dp_skip_data_rls //|< i
  ,reg2dp_skip_weight_rls //|< i
  ,reg2dp_weight_bank //|< i
  ,reg2dp_weight_channel_ext //|< i
  ,reg2dp_weight_height_ext //|< i
  ,reg2dp_weight_kernel //|< i
  ,reg2dp_weight_reuse //|< i
  ,reg2dp_weight_width_ext //|< i
  ,reg2dp_y_extension //|< i
  ,dp2reg_done //|> o
  ,sc2cdma_dat_pending_req //|> o
  ,sc2cdma_wt_pending_req //|> o
  ,sc_state //|> o
  ,sg2dl_pd //|> o
  ,sg2dl_pvld //|> o
  ,sg2dl_reuse_rls //|> o
  ,sg2wl_pd //|> o
  ,sg2wl_pvld //|> o
  ,sg2wl_reuse_rls //|> o
  );
//
// NV_NVDLA_CSC_sg_ports.v
//
input nvdla_core_clk; /* done_dp2reg, dat_up_cdma2sc, wt_up_cdma2sc, sg2dl_pkg, sg2wl_pkg, accu2sc_credit, sc_state, sc2cdma_dat_pending, sc2cdma_wt_pending, cdma2sc_dat_pending, cdma2sc_wt_pending, sg2dl_reuse, sg2wl_reuse */
input nvdla_core_rstn; /* done_dp2reg, dat_up_cdma2sc, wt_up_cdma2sc, sg2dl_pkg, sg2wl_pkg, accu2sc_credit, sc_state, sc2cdma_dat_pending, sc2cdma_wt_pending, cdma2sc_dat_pending, cdma2sc_wt_pending, sg2dl_reuse, sg2wl_reuse */
input [31:0] pwrbus_ram_pd;
output dp2reg_done;
input cdma2sc_dat_updt; /* data valid */
input [11:0] cdma2sc_dat_entries;
input [11:0] cdma2sc_dat_slices;
input cdma2sc_wt_updt; /* data valid */
input [13:0] cdma2sc_wt_kernels;
input [11:0] cdma2sc_wt_entries;
input [8:0] cdma2sc_wmb_entries;
output sg2dl_pvld; /* data valid */
output [30:0] sg2dl_pd;
output sg2wl_pvld; /* data valid */
output [17:0] sg2wl_pd;
input accu2sc_credit_vld; /* data valid */
input [2:0] accu2sc_credit_size;
output [1:0] sc_state;
output sc2cdma_dat_pending_req;
output sc2cdma_wt_pending_req;
input cdma2sc_dat_pending_ack;
input cdma2sc_wt_pending_ack;
output sg2dl_reuse_rls;
output sg2wl_reuse_rls;
input nvdla_core_ng_clk;
input [0:0] reg2dp_op_en;
input [0:0] reg2dp_conv_mode;
input [1:0] reg2dp_proc_precision;
input [0:0] reg2dp_data_reuse;
input [0:0] reg2dp_skip_data_rls;
input [0:0] reg2dp_weight_reuse;
input [0:0] reg2dp_skip_weight_rls;
input [4:0] reg2dp_batches;
input [0:0] reg2dp_datain_format;
input [12:0] reg2dp_datain_height_ext;
input [1:0] reg2dp_y_extension;
input [4:0] reg2dp_weight_width_ext;
input [4:0] reg2dp_weight_height_ext;
input [12:0] reg2dp_weight_channel_ext;
input [12:0] reg2dp_weight_kernel;
input [12:0] reg2dp_dataout_width;
input [12:0] reg2dp_dataout_height;
input [3:0] reg2dp_data_bank;
input [3:0] reg2dp_weight_bank;
input [20:0] reg2dp_atomics;
input [11:0] reg2dp_rls_slices;
wire [30:0] dat_pkg_pd;
wire [32:0] dat_pop_data;
wire dat_pop_req;
wire dat_push_empty;
wire dat_push_ready;
wire [1:0] dbg_cur_prec;
wire sg2dat_block_end;
wire sg2dat_channel_end;
wire [6:0] sg2dat_channel_size;
wire [1:0] sg2dat_cur_sub_h;
wire sg2dat_dat_release;
wire sg2dat_group_end;
wire [4:0] sg2dat_h_offset;
wire sg2dat_layer_end;
wire [6:0] sg2dat_stripe_length;
wire [4:0] sg2dat_w_offset;
wire sg2wt_channel_end;
wire [1:0] sg2wt_cur_sub_h;
wire sg2wt_group_end;
wire [5:0] sg2wt_kernel_size;
wire [6:0] sg2wt_weight_size;
wire sg2wt_wt_release;
wire [6:0] stripe_length_w;
wire wt_pkg_channel_end;
wire wt_pkg_group_end;
wire [17:0] wt_pkg_pd;
wire [19:0] wt_pop_data;
wire wt_pop_req;
wire wt_push_empty;
wire wt_push_ready;
reg [6:0] batch_delta;
reg [6:0] batch_delta_w;
reg [6:0] c_fetch_size;
reg cbuf_ready;
reg [13:0] channel_up_cnt;
reg [13:0] channel_up_cnt_inc;
reg [13:0] channel_up_cnt_w;
reg [8:0] credit_cnt;
reg [3:0] credit_cnt_add;
reg [8:0] credit_cnt_dec;
reg [8:0] credit_cnt_w;
reg credit_ready;
reg [8:0] credit_req_size;
reg [2:0] credit_size;
reg credit_vld;
reg [6:0] cur_channel;
reg [5:0] cur_kernel;
reg [2:0] cur_mode;
reg [2:0] cur_r;
reg [1:0] cur_state;
reg [6:0] cur_stripe;
reg [6:0] cur_stripe_inc;
reg dat_bank_change;
reg dat_cbuf_ready;
reg [8:0] dat_impact_cnt;
reg [6:0] dat_max_cycles;
reg dat_pending_ack;
reg dat_pending_clr;
reg dat_pending_clr_w;
reg dat_pending_req;
reg dat_pending_req_w;
reg dat_pkg_block_end;
reg dat_pkg_channel_end;
reg [6:0] dat_pkg_channel_size;
reg [2:0] dat_pkg_cur_sub_h;
reg dat_pkg_dat_release;
reg dat_pkg_group_end;
reg [4:0] dat_pkg_h_offset;
reg dat_pkg_layer_end;
reg [6:0] dat_pkg_stripe_length;
reg [4:0] dat_pkg_w_offset;
reg [1:0] dat_pop_idx;
reg [30:0] dat_pop_pd;
reg dat_pop_ready;
reg [32:0] dat_push_data;
reg dat_push_req;
reg dat_release;
reg dat_reuse_release;
reg [5:0] dat_stripe_batch_size_w;
reg [6:0] dat_stripe_img_length_w;
reg [6:0] dat_stripe_img_size_w;
reg [6:0] dat_stripe_length;
reg [6:0] dat_stripe_length_w;
reg [6:0] dat_stripe_size;
reg [6:0] dat_stripe_size_w;
reg [5:0] data_batch;
reg [5:0] data_batch_w;
reg [13:0] data_in_height;
reg [13:0] data_in_height_w;
reg [21:0] data_out_atomic;
reg [21:0] data_out_atomic_w;
reg [12:0] dataout_h_up_cnt;
reg [12:0] dataout_h_up_cnt_w;
reg [1:0] dbg_pre_prec;
reg dp2reg_done;
reg fifo_is_clear;
reg fifo_push_ready;
reg [7:0] flush_cycles;
reg [7:0] flush_cycles_w;
reg [9:0] group_up_cnt;
reg [9:0] group_up_cnt_inc;
reg [9:0] group_up_cnt_w;
reg is_conv;
reg is_dc;
reg is_done;
reg is_idle;
reg is_img;
reg is_img_d1;
reg is_int8;
reg is_int8_d1;
reg is_last_block;
reg is_last_channel;
reg is_last_do_h;
reg is_last_group;
reg is_last_r;
reg is_last_s;
reg is_last_stripe;
reg is_mode_change;
reg is_nxt_done;
reg is_nxt_pending;
reg is_pending;
reg is_pixel;
reg is_running;
reg is_winograd;
reg is_winograd_d1;
reg [14:0] kernels_avl;
reg [13:0] kernels_avl_add;
reg [13:0] kernels_avl_sub;
reg [14:0] kernels_avl_w;
reg [3:0] last_data_bank;
reg [13:0] last_kernels;
reg [2:0] last_mode;
reg last_skip_weight_rls;
reg [13:0] last_slices;
reg [3:0] last_weight_bank;
reg layer_done;
reg layer_done_w;
reg layer_st;
reg [6:0] lower_limit;
reg [6:0] lower_limit_w;
reg [5:0] max_cycles;
reg mon_channel_up_cnt_inc;
reg mon_credit_cnt_w;
reg mon_credit_req_size;
reg mon_cur_stripe_inc;
reg [5:0] mon_dat_stripe_batch_size_w;
reg mon_dat_stripe_img_length_w;
reg mon_dataout_h_up_cnt_w;
reg mon_group_up_cnt_inc;
reg [0:0] mon_kernels_avl_w;
reg [1:0] mon_max_cycles;
reg mon_pkg_idx_w;
reg mon_pop_cnt_dec;
reg mon_required_kernels_inc;
reg mon_rls_slices_w;
reg mon_sg2wt_kernel_size_inc;
reg mon_sg_dn_cnt_w;
reg [1:0] mon_slice_left_w;
reg [1:0] mon_slices_avl_w;
reg mon_stripe_up_cnt_inc;
reg mon_stripe_up_cnt_w;
reg [2:0] mon_weight_r_add_w;
reg mon_weight_s_up_cnt_inc;
reg need_pending;
reg [1:0] nxt_state;
reg op_channel_en;
reg op_do_h_en;
reg op_group_en;
reg op_layer_en;
reg op_r_en;
reg op_s_en;
reg op_stripe_en;
reg pending_done;
reg pkg_adv;
reg pkg_block_end_w;
reg pkg_channel_end_w;
reg pkg_group_end_w;
reg [1:0] pkg_idx;
reg [1:0] pkg_idx_w;
reg pkg_layer_end_w;
reg pkg_vld;
reg pkg_vld_w;
reg [6:0] pkg_weight_size_w;
reg [5:0] pop_cnt;
reg [5:0] pop_cnt_dec;
reg [5:0] pop_cnt_w;
reg [13:0] required_kernels;
reg [13:0] required_kernels_inc;
reg [13:0] required_kernels_w;
reg [11:0] rls_slices;
reg [11:0] rls_slices_w;
reg [1:0] sc_state;
reg [30:0] sg2dl_pd;
reg sg2dl_pvld;
reg sg2dl_reuse_rls;
reg [17:0] sg2wl_pd;
reg sg2wl_pvld;
reg sg2wl_reuse_rls;
reg [5:0] sg2wt_kernel_size_inc;
reg [7:0] sg_dn_cnt;
reg [7:0] sg_dn_cnt_w;
reg [13:0] slice_left;
reg [13:0] slice_left_w;
reg [11:0] slices_avl;
reg [11:0] slices_avl_add;
reg [11:0] slices_avl_sub;
reg [11:0] slices_avl_w;
reg [21:0] stripe_up_cnt;
reg [21:0] stripe_up_cnt_inc;
reg [21:0] stripe_up_cnt_w;
reg [6:0] upper_limit;
reg [6:0] upper_limit_w;
reg [13:0] weight_channel;
reg [13:0] weight_channel_w;
reg [9:0] weight_groups;
reg [9:0] weight_groups_w;
reg [4:0] weight_height_cmp;
reg [4:0] weight_height_cmp_w;
reg [2:0] weight_r_add;
reg [2:0] weight_r_add_w;
reg [2:0] weight_r_last;
reg [2:0] weight_r_last_w;
reg [4:0] weight_r_up_cnt;
reg [5:0] weight_r_up_cnt_inc;
reg [4:0] weight_r_up_cnt_w;
reg [4:0] weight_s_up_cnt;
reg [4:0] weight_s_up_cnt_inc;
reg [4:0] weight_s_up_cnt_w;
reg [4:0] weight_width_cmp;
reg [4:0] weight_width_cmp_w;
reg wt_bank_change;
reg wt_cbuf_ready;
reg [4:0] wt_cycles;
reg [5:0] wt_max_cycles;
reg wt_pending_ack;
reg wt_pending_clr;
reg wt_pending_clr_w;
reg wt_pending_req;
reg wt_pending_req_w;
reg [2:0] wt_pkg_cur_sub_h;
reg [5:0] wt_pkg_kernel_size;
reg [6:0] wt_pkg_weight_size;
reg wt_pkg_wt_release;
reg [1:0] wt_pop_idx;
reg [17:0] wt_pop_pd;
reg wt_pop_ready;
reg wt_pop_ready_d1;
reg [19:0] wt_push_data;
reg wt_push_req;
reg wt_release;
reg wt_reuse_release;
// synoff nets
// monitor nets
// debug nets
// tie high nets
// tie low nets
// no connect nets
// not all bits used nets
// todo nets
////////////////////////////////////////////////////////////////////////
// CSC control FSM //
////////////////////////////////////////////////////////////////////////
//## fsm (1) output
//|)
//## fsm (1) defines
localparam SG_STATE_IDLE = 2'b00;
localparam SG_STATE_PEND = 2'b01;
localparam SG_STATE_BUSY = 2'b10;
localparam SG_STATE_DONE = 2'b11;
//## fsm (1) com block
always @(
  cur_state
  or reg2dp_op_en
  or need_pending
  or pending_done
  or layer_done
  or fifo_is_clear
  or pkg_vld
  or dp2reg_done
  ) begin
  nxt_state = cur_state;
  begin
    casez (cur_state)
      SG_STATE_IDLE: begin
        if ((reg2dp_op_en & need_pending)) begin
          nxt_state = SG_STATE_PEND;
        end
        else if (reg2dp_op_en) begin
          nxt_state = SG_STATE_BUSY;
        end
      end
      SG_STATE_PEND: begin
        if (pending_done) begin
          nxt_state = SG_STATE_BUSY;
        end
      end
      SG_STATE_BUSY: begin
        if (layer_done & fifo_is_clear & ~pkg_vld) begin
          nxt_state = SG_STATE_DONE;
        end
      end
      SG_STATE_DONE: begin
        if (dp2reg_done) begin
          nxt_state = SG_STATE_IDLE;
        end
      end
      default: begin
        nxt_state = SG_STATE_IDLE;
      end
    endcase
  end
end
//## fsm (1) seq block
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    cur_state <= SG_STATE_IDLE;
  end else begin
  cur_state <= nxt_state;
  end
end
////////////////////////////////////////////////////////////////////////
// FSM input signals //
////////////////////////////////////////////////////////////////////////
always @(
  dat_pop_req
  or wt_pop_req
  or dat_push_empty
  or wt_push_empty
  ) begin
    fifo_is_clear = ~dat_pop_req & ~wt_pop_req & dat_push_empty & wt_push_empty;
end
always @(
  last_data_bank
  or reg2dp_data_bank
  ) begin
    dat_bank_change = (last_data_bank != reg2dp_data_bank);
end
always @(
  last_weight_bank
  or reg2dp_weight_bank
  ) begin
    wt_bank_change = (last_weight_bank != reg2dp_weight_bank);
end
always @(
  dat_bank_change
  or wt_bank_change
  ) begin
    need_pending = (dat_bank_change | wt_bank_change);
end
always @(
  is_pending
  or dat_pending_clr
  or dat_pending_req
  or wt_pending_clr
  or wt_pending_req
  ) begin
    pending_done = is_pending & (dat_pending_clr ~^ dat_pending_req) & (wt_pending_clr ~^ wt_pending_req);
end
always @(
  dat_stripe_size
  ) begin
    flush_cycles_w = dat_stripe_size + 6'h30 ;
end
always @(
  is_done
  or is_nxt_done
  or flush_cycles
  or sg_dn_cnt
  ) begin
    {mon_sg_dn_cnt_w,
     sg_dn_cnt_w} = (~is_done & is_nxt_done) ? {1'b0, flush_cycles} :
                    sg_dn_cnt - 1'b1;
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    sg_dn_cnt <= {8{1'b0}};
  end else begin
  if ((is_nxt_done) == 1'b1) begin
    sg_dn_cnt <= sg_dn_cnt_w;
  end
  end
end

always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dat_pending_ack <= 1'b0;
  end else begin
  dat_pending_ack <= cdma2sc_dat_pending_ack;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    wt_pending_ack <= 1'b0;
  end else begin
  wt_pending_ack <= cdma2sc_wt_pending_ack;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    flush_cycles <= {8{1'b0}};
  end else begin
  if ((dat_pop_req & dat_pop_ready & sg2dat_layer_end) == 1'b1) begin
    flush_cycles <= flush_cycles_w;
  end
  end

////////////////////////////////////////////////////////////////////////
// FSM output signals //
////////////////////////////////////////////////////////////////////////
always @(
  reg2dp_op_en
  or cur_state
  ) begin
    layer_st = reg2dp_op_en && (cur_state == SG_STATE_IDLE);
end
//
//&Always;
// layer_end = (cur_state == SG_STATE_DONE);
//&End;
always @(
  cur_state
  ) begin
    is_idle = (cur_state == SG_STATE_IDLE);
end
always @(
  cur_state
  ) begin
    is_pending = (cur_state == SG_STATE_PEND);
end
always @(
  cur_state
  ) begin
    is_running = (cur_state == SG_STATE_BUSY);
end
always @(
  cur_state
  ) begin
    is_done = (cur_state == SG_STATE_DONE);
end
always @(
  nxt_state
  ) begin
    is_nxt_done = (nxt_state == SG_STATE_DONE);
end
always @(
  nxt_state
  ) begin
    is_nxt_pending = (nxt_state == SG_STATE_PEND);
end
always @(
  is_idle
  or is_pending
  or is_running
  ) begin
    sc_state = is_idle ? 0 :
               is_pending ? 1 :
               is_running ? 2 :
               3 ;
end
always @(
  is_nxt_pending
  or dat_bank_change
  or dat_pending_req
  ) begin
    dat_pending_req_w = (is_nxt_pending & dat_bank_change) ? 1'b1 :
                        (~is_nxt_pending) ? 1'b0 :
                        dat_pending_req;
end
always @(
  is_nxt_pending
  or wt_pending_req
  ) begin
    wt_pending_req_w = (is_nxt_pending) ? 1'b1 :
                       (~is_nxt_pending) ? 1'b0 :
                       wt_pending_req;
end
always @(
  last_mode
  or cur_mode
  ) begin
    is_mode_change = (last_mode != cur_mode);
end
always @(
  is_pending
  or dat_pending_ack
  or is_nxt_pending
  or dat_pending_clr
  ) begin
    dat_pending_clr_w = (is_pending & dat_pending_ack) ? 1'b1 :
                        ~is_nxt_pending ? 1'b0 :
                        dat_pending_clr;
end
always @(
  is_pending
  or wt_pending_ack
  or is_nxt_pending
  or wt_pending_clr
  ) begin
    wt_pending_clr_w = (is_pending & wt_pending_ack) ? 1'b1 :
                       ~is_nxt_pending ? 1'b0 :
                       wt_pending_clr;
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dp2reg_done <= 1'b0;
  end else begin
  dp2reg_done <= is_done && (sg_dn_cnt == 6'b1);
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dat_pending_req <= 1'b0;
  end else begin
  dat_pending_req <= dat_pending_req_w;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    wt_pending_req <= 1'b0;
  end else begin
  wt_pending_req <= wt_pending_req_w;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dat_pending_clr <= 1'b0;
  end else begin
  dat_pending_clr <= dat_pending_clr_w;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    wt_pending_clr <= 1'b0;
  end else begin
  wt_pending_clr <= wt_pending_clr_w;
  end
end
assign sc2cdma_dat_pending_req = dat_pending_req;
assign sc2cdma_wt_pending_req = wt_pending_req;
////////////////////////////////////////////////////////////////////////
// registers to keep last layer status //
////////////////////////////////////////////////////////////////////////
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    last_data_bank <= {4{1'b1}};
  end else begin
  if ((dp2reg_done) == 1'b1) begin
    last_data_bank <= reg2dp_data_bank;
  end
  end
end

always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    last_weight_bank <= {4{1'b1}};
  end else begin
  if ((dp2reg_done) == 1'b1) begin
    last_weight_bank <= reg2dp_weight_bank;
  end
  end
end

always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    last_slices <= {14{1'b0}};
  end else begin
  if ((dp2reg_done) == 1'b1) begin
    last_slices <= slice_left;
  end
  end
end

always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    last_kernels <= {14{1'b0}};
  end else begin
  if ((dp2reg_done) == 1'b1) begin
    last_kernels <= reg2dp_weight_kernel + 1'b1;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    last_skip_weight_rls <= 1'b0;
  end else begin
  if ((dp2reg_done) == 1'b1) begin
    last_skip_weight_rls <= reg2dp_skip_weight_rls;
  end
  end
end

always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    last_mode <= {3{1'b0}};
  end else begin
  if ((dp2reg_done) == 1'b1) begin
    last_mode <= cur_mode;
  end
  end
end
////////////////////////////////////////////////////////////////////////
// registers to calculate local values //
////////////////////////////////////////////////////////////////////////
always @(
  reg2dp_proc_precision
  ) begin
    is_int8 = (reg2dp_proc_precision == 2'h0 );
end
always @(
  reg2dp_datain_format
  ) begin
    is_pixel = (reg2dp_datain_format == 1'h1 );
end
always @(
  reg2dp_conv_mode
  ) begin
    is_conv = (reg2dp_conv_mode == 1'h0 );
end
always @(
  is_conv
  or is_pixel
  ) begin
    is_dc = is_conv & ~is_pixel;
end
always @(
  reg2dp_conv_mode
  ) begin
    is_winograd = (reg2dp_conv_mode == 1'h1 );
end
always @(
  is_conv
  or is_pixel
  ) begin
    is_img = is_conv & is_pixel;
end
always @(
  is_img
  or is_winograd
  or is_dc
  ) begin
    cur_mode = {is_img, is_winograd, is_dc};
end
always @(
  reg2dp_datain_height_ext
  ) begin
    data_in_height_w = reg2dp_datain_height_ext + 1'b1;
end
always @(
  is_img
  or reg2dp_dataout_width
  or is_winograd
  or reg2dp_atomics
  ) begin
    data_out_atomic_w = is_img ? reg2dp_dataout_width + 1'b1 :
                        is_winograd ? ({2'b0, reg2dp_atomics[20:2]} + 1'b1) :
                        reg2dp_atomics + 1'b1;
end
always @(
  is_winograd
  or is_img
  or reg2dp_weight_width_ext
  ) begin
    weight_width_cmp_w = (is_winograd | is_img) ? 5'b0 : reg2dp_weight_width_ext;
end
always @(
  is_winograd
  or reg2dp_weight_height_ext
  ) begin
    weight_height_cmp_w = is_winograd ? 5'b0 : reg2dp_weight_height_ext;
end
always @(
  reg2dp_weight_channel_ext
  ) begin
    weight_channel_w = reg2dp_weight_channel_ext + 1'b1;
end
always @(
  is_int8
  or reg2dp_weight_kernel
  ) begin
    weight_groups_w = is_int8 ? (reg2dp_weight_kernel[12:5] + 1'b1) :
                      (reg2dp_weight_kernel[12:4] + 1'b1);
end
always @(
  reg2dp_y_extension
  ) begin
    {weight_r_add_w,
     mon_weight_r_add_w} = (6'h9 << reg2dp_y_extension);
end
always @(
  weight_r_add_w
  or reg2dp_weight_height_ext
  ) begin
    weight_r_last_w = weight_r_add_w[0] ? 2'b0 :
                      weight_r_add_w[1] ? {1'b0, reg2dp_weight_height_ext[0]} :
                      reg2dp_weight_height_ext[1:0];
end
always @(
  reg2dp_rls_slices
  ) begin
    {mon_rls_slices_w,
     rls_slices_w} = reg2dp_rls_slices + 1'b1;
end
always @(
  reg2dp_skip_data_rls
  or reg2dp_datain_height_ext
  or reg2dp_rls_slices
  ) begin
    {mon_slice_left_w,
     slice_left_w} = reg2dp_skip_data_rls ? (reg2dp_datain_height_ext + 1'b1) :
                     reg2dp_datain_height_ext - reg2dp_rls_slices;
end
always @(
  is_img
  or is_winograd
  or reg2dp_batches
  ) begin
    lower_limit_w = is_img ? 7'h40 :
                    is_winograd ? 7'h10 :
                    (reg2dp_batches == 5'd0) ? 7'h10 :
                    (reg2dp_batches <= 5'd2) ? 7'h8 :
                    (reg2dp_batches <= 5'd6) ? 7'h4 :
                    (reg2dp_batches <= 5'd14) ? 7'h2 :
                    7'h1;
end
always @(
  is_img
  or is_winograd
  or reg2dp_batches
  ) begin
    upper_limit_w = is_img ? 7'h40 :
                    is_winograd ? 7'h20 :
                    (reg2dp_batches == 5'd0) ? 7'h20 :
                    (reg2dp_batches <= 5'd2) ? 7'h10 :
                    (reg2dp_batches <= 5'd6) ? 7'h8 :
                    (reg2dp_batches <= 5'd14) ? 7'h4 :
                    7'h1;
end
always @(
  is_winograd
  ) begin
    c_fetch_size = is_winograd ? 7'h4 : 7'h40;
end
always @(
  reg2dp_batches
  ) begin
    data_batch_w = reg2dp_batches + 1'b1;
end
always @(
  is_dc
  or reg2dp_batches
  or is_int8
  or data_batch_w
  ) begin
    batch_delta_w = (~is_dc | ~(|reg2dp_batches)) ? 7'b0 :
                    is_int8 ? {data_batch_w, 1'b0} :
                    {1'b0, data_batch_w};
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    data_in_height <= {14{1'b0}};
  end else begin
  if ((layer_st) == 1'b1) begin
    data_in_height <= data_in_height_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    data_out_atomic <= {22{1'b0}};
  end else begin
  if ((layer_st) == 1'b1) begin
    data_out_atomic <= data_out_atomic_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    data_batch <= {6{1'b0}};
  end else begin
  if ((layer_st) == 1'b1) begin
    data_batch <= data_batch_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    batch_delta <= {7{1'b0}};
  end else begin
  if ((layer_st) == 1'b1) begin
    batch_delta <= batch_delta_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    weight_width_cmp <= {5{1'b0}};
  end else begin
  if ((layer_st) == 1'b1) begin
    weight_width_cmp <= weight_width_cmp_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    weight_height_cmp <= {5{1'b0}};
  end else begin
  if ((layer_st) == 1'b1) begin
    weight_height_cmp <= weight_height_cmp_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    weight_channel <= {14{1'b0}};
  end else begin
  if ((layer_st) == 1'b1) begin
    weight_channel <= weight_channel_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    weight_groups <= {10{1'b0}};
  end else begin
  if ((layer_st) == 1'b1) begin
    weight_groups <= weight_groups_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    weight_r_add <= 3'h1;
  end else begin
  if ((layer_st) == 1'b1) begin
    weight_r_add <= weight_r_add_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    weight_r_last <= 3'h1;
  end else begin
  if ((layer_st) == 1'b1) begin
    weight_r_last <= weight_r_last_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    rls_slices <= {12{1'b0}};
  end else begin
  if ((layer_st) == 1'b1) begin
    rls_slices <= rls_slices_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    slice_left <= {14{1'b0}};
  end else begin
  if ((layer_st) == 1'b1) begin
    slice_left <= slice_left_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    is_img_d1 <= 1'b0;
  end else begin
  if ((layer_st) == 1'b1) begin
    is_img_d1 <= is_img;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    is_winograd_d1 <= 1'b0;
  end else begin
  if ((layer_st) == 1'b1) begin
    is_winograd_d1 <= is_winograd;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    is_int8_d1 <= 1'b0;
  end else begin
  if ((layer_st) == 1'b1) begin
    is_int8_d1 <= is_int8;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    lower_limit <= 7'h10;
  end else begin
  if ((layer_st) == 1'b1) begin
    lower_limit <= lower_limit_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    upper_limit <= 7'h20;
  end else begin
  if ((layer_st) == 1'b1) begin
    upper_limit <= upper_limit_w;
  end
  end
end
////////////////////////////////////////////////////////////////////////
// sequence generator for direct convolution //
////////////////////////////////////////////////////////////////////////
//---------------------------layer count -----------------------------//
always @(
  layer_st
  or is_last_group
  or layer_done
  ) begin
    layer_done_w = layer_st ? 1'b0 :
                   is_last_group ? 1'b1 :
                   layer_done;
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    layer_done <= 1'b0;
  end else begin
  if ((layer_st | op_layer_en) == 1'b1) begin
    layer_done <= layer_done_w;
  end
  end
end
//---------------------------kernel group count -----------------------------//
always @(
  group_up_cnt
  ) begin
   {mon_group_up_cnt_inc,
    group_up_cnt_inc} = group_up_cnt + 1'b1;
end
always @(
  group_up_cnt_inc
  or weight_groups
  ) begin
    is_last_group = (group_up_cnt_inc == weight_groups);
end
always @(
  layer_st
  or group_up_cnt_inc
  ) begin
    group_up_cnt_w = layer_st ? 10'b0 :
                     group_up_cnt_inc;
end
always @(
  is_last_group
  or is_int8_d1
  or reg2dp_weight_kernel
  ) begin
    cur_kernel = ~is_last_group ? (is_int8_d1 ? 6'h20 : 6'h10) :
                 is_int8_d1 ? (reg2dp_weight_kernel[4:0] + 1'b1) :
                 (reg2dp_weight_kernel[3:0] + 1'b1);
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    group_up_cnt <= {10{1'b0}};
  end else begin
  if ((layer_st | op_group_en) == 1'b1) begin
    group_up_cnt <= group_up_cnt_w;
  end
  end
end
//--------------------------- output height count, for image case only -----------------------------//
always @(
  is_img_d1
  or dataout_h_up_cnt
  or reg2dp_dataout_height
  ) begin
    is_last_do_h = ~is_img_d1 | (dataout_h_up_cnt == reg2dp_dataout_height);
end
always @(
  layer_st
  or is_last_do_h
  or dataout_h_up_cnt
  ) begin
    {mon_dataout_h_up_cnt_w,
     dataout_h_up_cnt_w} = layer_st ? 14'b0 :
                           is_last_do_h ? 14'b0 :
                           (dataout_h_up_cnt + 1'b1);
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dataout_h_up_cnt <= {13{1'b0}};
  end else begin
  if ((layer_st | op_do_h_en) == 1'b1) begin
    dataout_h_up_cnt <= dataout_h_up_cnt_w;
  end
  end
end
//--------------------------- output stripe count -----------------------------//
always @(
  stripe_up_cnt
  or upper_limit
  ) begin
    {mon_stripe_up_cnt_inc,
     stripe_up_cnt_inc} = stripe_up_cnt + upper_limit;
end
always @(
  stripe_up_cnt_inc
  or data_out_atomic
  ) begin
    is_last_stripe = (stripe_up_cnt_inc >= data_out_atomic);
end
always @(
  layer_st
  or is_last_stripe
  or stripe_up_cnt
  or lower_limit
  ) begin
    {mon_stripe_up_cnt_w,
     stripe_up_cnt_w} = layer_st ? 23'b0 :
                        is_last_stripe? 23'b0 :
                        (stripe_up_cnt + lower_limit);
end
always @(
  data_out_atomic
  or stripe_up_cnt
  ) begin
    {mon_cur_stripe_inc,
     cur_stripe_inc} = data_out_atomic[6:0] - stripe_up_cnt[6:0];
end
always @(
  is_last_stripe
  or cur_stripe_inc
  or lower_limit
  ) begin
    cur_stripe = is_last_stripe ? cur_stripe_inc :
                 lower_limit;
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    stripe_up_cnt <= {22{1'b0}};
  end else begin
  if ((layer_st | op_stripe_en) == 1'b1) begin
    stripe_up_cnt <= stripe_up_cnt_w;
  end
  end
end
//--------------------------- channel count -----------------------------//
always @(
  channel_up_cnt
  or c_fetch_size
  ) begin
    {mon_channel_up_cnt_inc,
     channel_up_cnt_inc} = channel_up_cnt + c_fetch_size;
end
always @(
  channel_up_cnt_inc
  or weight_channel
  ) begin
    is_last_channel = (channel_up_cnt_inc >= weight_channel);
end
always @(
  layer_st
  or is_last_channel
  or channel_up_cnt_inc
  ) begin
    channel_up_cnt_w = layer_st ? 14'b0 :
                       is_last_channel ? 14'b0 :
                       channel_up_cnt_inc;
end
always @(
  is_winograd_d1
  or is_last_channel
  or c_fetch_size
  or reg2dp_weight_channel_ext
  ) begin
    cur_channel = (is_winograd_d1 | ~is_last_channel) ? c_fetch_size :
                  (reg2dp_weight_channel_ext[5:0] + 1'b1);
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    channel_up_cnt <= {14{1'b0}};
  end else begin
  if ((layer_st | op_channel_en) == 1'b1) begin
    channel_up_cnt <= channel_up_cnt_w;
  end
  end
end
//--------------------------- weight block count -----------------------------//
always @(
  weight_s_up_cnt
  ) begin
    {mon_weight_s_up_cnt_inc,
     weight_s_up_cnt_inc} = weight_s_up_cnt + 1'b1;
end
always @(
  weight_r_up_cnt
  or weight_r_add
  ) begin
    weight_r_up_cnt_inc = weight_r_up_cnt + weight_r_add;
end
always @(
  weight_s_up_cnt
  or weight_width_cmp
  ) begin
    is_last_s = (weight_s_up_cnt == weight_width_cmp);
end
always @(
  weight_r_up_cnt_inc
  or weight_height_cmp
  ) begin
    is_last_r = (weight_r_up_cnt_inc > {1'b0, weight_height_cmp});
end
always @(
  is_last_r
  or weight_r_last
  or weight_r_add
  ) begin
    cur_r = is_last_r ? weight_r_last :
            weight_r_add[2] ? 2'h3 :
            weight_r_add[1] ? 2'h1 :
            2'h0;
end
always @(
  is_last_s
  or is_last_r
  ) begin
    is_last_block = is_last_s & is_last_r;
end
always @(
  layer_st
  or is_last_s
  or weight_s_up_cnt_inc
  ) begin
    weight_s_up_cnt_w = layer_st ? 5'b0 :
                        (is_last_s) ? 5'b0 :
                        weight_s_up_cnt_inc;
end
always @(
  layer_st
  or is_last_r
  or weight_r_up_cnt_inc
  ) begin
    weight_r_up_cnt_w = layer_st ? 5'b0 :
                        (is_last_r) ? 5'b0 :
                        weight_r_up_cnt_inc[4:0];
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    weight_s_up_cnt <= {5{1'b0}};
  end else begin
  if ((layer_st | op_s_en) == 1'b1) begin
    weight_s_up_cnt <= weight_s_up_cnt_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    weight_r_up_cnt <= {5{1'b0}};
  end else begin
  if ((layer_st | op_r_en) == 1'b1) begin
    weight_r_up_cnt <= weight_r_up_cnt_w;
  end
  end
end
//--------------------------- cbuf check logic -----------------------------//
always @(
  slices_avl
  or data_in_height
  ) begin
    dat_cbuf_ready = (slices_avl >= data_in_height[12 -1:0]);
end
always @(
  required_kernels
  or cur_kernel
  ) begin
    {mon_required_kernels_inc,
     required_kernels_inc} = required_kernels + cur_kernel;
end
always @(
  layer_st
  or is_last_group
  or reg2dp_skip_weight_rls
  or required_kernels_inc
  ) begin
    required_kernels_w = (layer_st | is_last_group | ~reg2dp_skip_weight_rls) ? 14'b0 :
                         required_kernels_inc;
end
always @(
  required_kernels_inc
  or kernels_avl
  ) begin
    wt_cbuf_ready = ({1'b0, required_kernels_inc} <= kernels_avl);
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    required_kernels <= {14{1'b0}};
  end else begin
  if ((layer_st | op_group_en) == 1'b1) begin
    required_kernels <= required_kernels_w;
  end
  end
end
//--------------------------- register enable signal -----------------------------//
always @(
  dat_push_ready
  or wt_push_ready
  ) begin
    fifo_push_ready = dat_push_ready & wt_push_ready;
end
always @(
  dat_cbuf_ready
  or wt_cbuf_ready
  ) begin
    cbuf_ready = dat_cbuf_ready & wt_cbuf_ready;
end
always @(
  is_running
  or cbuf_ready
  or layer_done
  or pkg_vld
  or fifo_push_ready
  ) begin
    pkg_adv = is_running & cbuf_ready & ~layer_done & (~pkg_vld | fifo_push_ready);
end
always @(
  pkg_adv
  ) begin
    op_s_en = pkg_adv;
end
always @(
  pkg_adv
  or is_last_s
  ) begin
    op_r_en = pkg_adv & is_last_s;
end
always @(
  pkg_adv
  or is_last_block
  ) begin
    op_channel_en = pkg_adv & is_last_block;
end
always @(
  pkg_adv
  or is_last_block
  or is_last_channel
  ) begin
    op_stripe_en = pkg_adv & is_last_block & is_last_channel;
end
always @(
  is_img_d1
  or pkg_adv
  or is_last_block
  or is_last_channel
  or is_last_stripe
  ) begin
    op_do_h_en = is_img_d1 & pkg_adv & is_last_block & is_last_channel & is_last_stripe;
end
always @(
  pkg_adv
  or is_last_block
  or is_last_channel
  or is_last_stripe
  or is_last_do_h
  ) begin
    op_group_en = pkg_adv & is_last_block & is_last_channel & is_last_stripe & is_last_do_h;
end
always @(
  pkg_adv
  or is_last_block
  or is_last_channel
  or is_last_stripe
  or is_last_do_h
  or is_last_group
  ) begin
    op_layer_en = pkg_adv & is_last_block & is_last_channel & is_last_stripe & is_last_do_h & is_last_group;
end
always @(
  is_running
  or cbuf_ready
  or layer_done
  or fifo_push_ready
  or pkg_vld
  ) begin
    pkg_vld_w = ~is_running ? 1'b0 :
                (cbuf_ready & ~layer_done) ? 1'b1 :
                fifo_push_ready ? 1'b0 :
                pkg_vld;
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    pkg_vld <= 1'b0;
  end else begin
  pkg_vld <= pkg_vld_w;
  end
end
//--------------------------- package registers -----------------------------//
always @(
  layer_st
  or pkg_idx
  ) begin
    {mon_pkg_idx_w,
     pkg_idx_w} = layer_st ? 2'h3 : (pkg_idx + 2'b1);
end
always @(
  is_winograd_d1
  or cur_channel
  ) begin
    pkg_weight_size_w = (is_winograd_d1) ? 7'h40 :
                        cur_channel;
end
assign stripe_length_w = cur_stripe;
always @(
  is_last_block
  ) begin
    pkg_block_end_w = is_last_block;
end
always @(
  is_last_block
  or is_last_channel
  ) begin
    pkg_channel_end_w = is_last_block & is_last_channel;
end
always @(
  is_last_block
  or is_last_channel
  or is_last_stripe
  or is_last_do_h
  ) begin
    pkg_group_end_w = is_last_block & is_last_channel & is_last_stripe & is_last_do_h;
end
always @(
  is_last_block
  or is_last_channel
  or is_last_stripe
  or is_last_do_h
  or is_last_group
  ) begin
    pkg_layer_end_w = is_last_block & is_last_channel & is_last_stripe & is_last_do_h & is_last_group;
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    pkg_idx <= {2{1'b1}};
  end else begin
  if ((layer_st | pkg_adv) == 1'b1) begin
    pkg_idx <= pkg_idx_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dat_pkg_w_offset <= {5{1'b0}};
  end else begin
  if ((pkg_adv) == 1'b1) begin
    dat_pkg_w_offset <= weight_s_up_cnt;
  end
  end
end

always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dat_pkg_h_offset <= {5{1'b0}};
  end else begin
  if ((pkg_adv) == 1'b1) begin
    dat_pkg_h_offset <= weight_r_up_cnt;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dat_pkg_channel_size <= {7{1'b0}};
  end else begin
  if ((pkg_adv) == 1'b1) begin
    dat_pkg_channel_size <= cur_channel;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dat_pkg_stripe_length <= {7{1'b0}};
  end else begin
  if ((pkg_adv) == 1'b1) begin
    dat_pkg_stripe_length <= stripe_length_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dat_pkg_cur_sub_h <= {3{1'b0}};
  end else begin
  if ((pkg_adv) == 1'b1) begin
    dat_pkg_cur_sub_h <= cur_r;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dat_pkg_block_end <= 1'b0;
  end else begin
  if ((pkg_adv) == 1'b1) begin
    dat_pkg_block_end <= pkg_block_end_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dat_pkg_channel_end <= 1'b0;
  end else begin
  if ((pkg_adv) == 1'b1) begin
    dat_pkg_channel_end <= pkg_channel_end_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dat_pkg_group_end <= 1'b0;
  end else begin
  if ((pkg_adv) == 1'b1) begin
    dat_pkg_group_end <= pkg_group_end_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dat_pkg_layer_end <= 1'b0;
  end else begin
  if ((pkg_adv) == 1'b1) begin
    dat_pkg_layer_end <= pkg_layer_end_w;
  end
  end
end

always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dat_pkg_dat_release <= 1'b0;
  end else begin
  if ((pkg_adv) == 1'b1) begin
    dat_pkg_dat_release <= ~reg2dp_skip_data_rls & pkg_layer_end_w;
  end
  end
end

// PKT_PACK_WIRE( csc_dat_pkg , dat_pkg_ , dat_pkg_pd )
assign dat_pkg_pd[4:0] = dat_pkg_w_offset[4:0];
assign dat_pkg_pd[9:5] = dat_pkg_h_offset[4:0];
assign dat_pkg_pd[16:10] = dat_pkg_channel_size[6:0];
assign dat_pkg_pd[23:17] = dat_pkg_stripe_length[6:0];
assign dat_pkg_pd[25:24] = dat_pkg_cur_sub_h[1:0];
assign dat_pkg_pd[26] = dat_pkg_block_end ;
assign dat_pkg_pd[27] = dat_pkg_channel_end ;
assign dat_pkg_pd[28] = dat_pkg_group_end ;
assign dat_pkg_pd[29] = dat_pkg_layer_end ;
assign dat_pkg_pd[30] = dat_pkg_dat_release ;
always @(
  pkg_idx
  or dat_pkg_pd
  ) begin
    dat_push_data = {pkg_idx, dat_pkg_pd};
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    wt_pkg_kernel_size <= {6{1'b0}};
  end else begin
  if ((pkg_adv) == 1'b1) begin
    wt_pkg_kernel_size <= cur_kernel;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    wt_pkg_weight_size <= {7{1'b0}};
  end else begin
  if ((pkg_adv) == 1'b1) begin
    wt_pkg_weight_size <= pkg_weight_size_w;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    wt_pkg_cur_sub_h <= {3{1'b0}};
  end else begin
  if ((pkg_adv) == 1'b1) begin
    wt_pkg_cur_sub_h <= cur_r;
  end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    wt_pkg_wt_release <= 1'b0;
  end else begin
  if ((pkg_adv) == 1'b1) begin
    wt_pkg_wt_release <= ~reg2dp_skip_weight_rls & pkg_group_end_w;
  end
  end
end
assign wt_pkg_channel_end = dat_pkg_channel_end;
assign wt_pkg_group_end = dat_pkg_group_end;
// PKT_PACK_WIRE( csc_wt_pkg , wt_pkg_ , wt_pkg_pd )
assign wt_pkg_pd[6:0] = wt_pkg_weight_size[6:0];
assign wt_pkg_pd[12:7] = wt_pkg_kernel_size[5:0];
assign wt_pkg_pd[14:13] = wt_pkg_cur_sub_h[1:0];
assign wt_pkg_pd[15] = wt_pkg_channel_end ;
assign wt_pkg_pd[16] = wt_pkg_group_end ;
assign wt_pkg_pd[17] = wt_pkg_wt_release ;
always @(
  pkg_idx
  or wt_pkg_pd
  ) begin
    wt_push_data = {pkg_idx, wt_pkg_pd};
end
////////////////////////////////////////////////////////////////////////
// package fifos //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_CSC_SG_dat_fifo u_dat_fifo (
   .clk (nvdla_core_clk) //|< i
  ,.reset_ (nvdla_core_rstn) //|< i
  ,.wr_ready (dat_push_ready) //|> w
  ,.wr_empty (dat_push_empty) //|> w
  ,.wr_req (dat_push_req) //|< r
  ,.wr_data (dat_push_data[32:0]) //|< r
  ,.rd_ready (dat_pop_ready) //|< r
  ,.rd_req (dat_pop_req) //|> w
  ,.rd_data (dat_pop_data[32:0]) //|> w
  ,.pwrbus_ram_pd (pwrbus_ram_pd[31:0]) //|< i
  );
NV_NVDLA_CSC_SG_wt_fifo u_wt_fifo (
   .clk (nvdla_core_clk) //|< i
  ,.reset_ (nvdla_core_rstn) //|< i
  ,.wr_ready (wt_push_ready) //|> w
  ,.wr_empty (wt_push_empty) //|> w
  ,.wr_req (wt_push_req) //|< r
  ,.wr_data (wt_push_data[19:0]) //|< r
  ,.rd_ready (wt_pop_ready) //|< r
  ,.rd_req (wt_pop_req) //|> w
  ,.rd_data (wt_pop_data[19:0]) //|> w
  ,.pwrbus_ram_pd (pwrbus_ram_pd[31:0]) //|< i
  );
always @(
  pkg_vld
  or wt_push_ready
  ) begin
    dat_push_req = pkg_vld & wt_push_ready;
end
always @(
  pkg_vld
  or dat_push_ready
  ) begin
    wt_push_req = pkg_vld & dat_push_ready;
end
////////////////////////////////////////////////////////////////////////
// issue control logic //
////////////////////////////////////////////////////////////////////////
always @(
  dat_pop_data
  ) begin
    {dat_pop_idx, dat_pop_pd} = dat_pop_data;
end
always @(
  wt_pop_data
  ) begin
    {wt_pop_idx, wt_pop_pd} = wt_pop_data;
end
// PKT_UNPACK_WIRE( csc_dat_pkg , sg2dat_ , dat_pop_pd )
assign sg2dat_w_offset[4:0] = dat_pop_pd[4:0];
assign sg2dat_h_offset[4:0] = dat_pop_pd[9:5];
assign sg2dat_channel_size[6:0] = dat_pop_pd[16:10];
assign sg2dat_stripe_length[6:0] = dat_pop_pd[23:17];
assign sg2dat_cur_sub_h[1:0] = dat_pop_pd[25:24];
assign sg2dat_block_end = dat_pop_pd[26];
assign sg2dat_channel_end = dat_pop_pd[27];
assign sg2dat_group_end = dat_pop_pd[28];
assign sg2dat_layer_end = dat_pop_pd[29];
assign sg2dat_dat_release = dat_pop_pd[30];
// PKT_UNPACK_WIRE( csc_wt_pkg , sg2wt_ , wt_pop_pd )
assign sg2wt_weight_size[6:0] = wt_pop_pd[6:0];
assign sg2wt_kernel_size[5:0] = wt_pop_pd[12:7];
assign sg2wt_cur_sub_h[1:0] = wt_pop_pd[14:13];
assign sg2wt_channel_end = wt_pop_pd[15];
assign sg2wt_group_end = wt_pop_pd[16];
assign sg2wt_wt_release = wt_pop_pd[17];
always @(
  sg2wt_kernel_size
  ) begin
    {mon_sg2wt_kernel_size_inc,
     sg2wt_kernel_size_inc} = sg2wt_kernel_size + 1'b1;
end
always @(
  sg2dat_stripe_length
  or data_batch
  ) begin
    {mon_dat_stripe_batch_size_w,
     dat_stripe_batch_size_w} = sg2dat_stripe_length * data_batch;
end
always @(
  sg2dat_stripe_length
  ) begin
    dat_stripe_img_size_w = sg2dat_stripe_length;
end
always @(
  is_img_d1
  or dat_stripe_img_size_w
  or dat_stripe_batch_size_w
  ) begin
    dat_stripe_size_w = is_img_d1 ? dat_stripe_img_size_w : {1'b0, dat_stripe_batch_size_w};
end
always @(
  is_img_d1
  or reg2dp_y_extension
  or sg2dat_stripe_length
  ) begin
    {mon_dat_stripe_img_length_w,
     dat_stripe_img_length_w} = ~is_img_d1 ? 8'b0 :
                                (reg2dp_y_extension == 2'h2) ? ((sg2dat_stripe_length + 2'h3) & 8'hfc) :
                                (reg2dp_y_extension == 2'h1) ? ((sg2dat_stripe_length + 2'h1) & 8'hfe) :
                                {1'b0, sg2dat_stripe_length};
end
always @(
  is_img_d1
  or dat_stripe_img_length_w
  or dat_stripe_batch_size_w
  ) begin
    dat_stripe_length_w = is_img_d1 ? dat_stripe_img_length_w : {1'b0, dat_stripe_batch_size_w};
end
//delay for one cycle
always @(
  dat_pop_ready
  or dat_stripe_length
  ) begin
    dat_max_cycles = ~dat_pop_ready ? 7'b0 :
                     (dat_stripe_length < 7'd10 ) ? 7'd10 :
                     dat_stripe_length;
end
always @(
  is_int8_d1
  or sg2wt_kernel_size_inc
  or sg2wt_kernel_size
  ) begin
    wt_cycles = is_int8_d1 ? sg2wt_kernel_size_inc[5:1] :
                sg2wt_kernel_size[4:0];
end
always @(
  wt_pop_ready
  or wt_cycles
  or pop_cnt
  ) begin
    wt_max_cycles = ~wt_pop_ready ? 6'b0 :
                    ((wt_cycles <= 5'b1) & (pop_cnt <= 6'b1)) ? 6'h2 :
                    ({1'b0, wt_cycles} > pop_cnt) ? {1'b0, wt_cycles} :
                    pop_cnt;
end
always @(
  dat_max_cycles
  or wt_max_cycles
  ) begin
    {mon_max_cycles,
     max_cycles} = (dat_max_cycles >= {1'b0, wt_max_cycles}) ? (dat_max_cycles - 1'b1) :
                   ({1'b0, wt_max_cycles} - 1'b1);
end
always @(
  pop_cnt
  ) begin
    {mon_pop_cnt_dec,
     pop_cnt_dec} = pop_cnt - 1'b1;
end
always @(
  dat_pop_ready
  or wt_pop_ready
  or max_cycles
  or pop_cnt
  or pop_cnt_dec
  ) begin
     pop_cnt_w = (dat_pop_ready | wt_pop_ready) ? max_cycles :
                 (pop_cnt == 6'h0) ? 6'h0 :
                 pop_cnt_dec;
end
always @(
  wt_pop_req
  or pop_cnt
  or credit_ready
  or dat_pop_idx
  or wt_pop_idx
  ) begin
    wt_pop_ready = wt_pop_req & (((pop_cnt == 6'b0) & credit_ready) | (dat_pop_idx == wt_pop_idx));
end
always @(
  dat_pop_req
  or pop_cnt
  or credit_ready
  or dat_pop_idx
  or wt_pop_idx
  or wt_pop_req
  ) begin
    dat_pop_ready = dat_pop_req & (pop_cnt == 6'b0) & credit_ready & ((dat_pop_idx != wt_pop_idx) | ~wt_pop_req);
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    wt_pop_ready_d1 <= 1'b0;
  end else begin
  wt_pop_ready_d1 <= wt_pop_ready;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dat_stripe_size <= {7{1'b0}};
  end else begin
  if ((wt_pop_ready_d1) == 1'b1) begin
    dat_stripe_size <= dat_stripe_size_w;
  end
  end
end

always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    dat_stripe_length <= {7{1'b0}};
  end else begin
  if ((wt_pop_ready_d1) == 1'b1) begin
    dat_stripe_length <= dat_stripe_length_w;
  end
  end
end

always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    pop_cnt <= {6{1'b0}};
  end else begin
  pop_cnt <= pop_cnt_w;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    sg2dl_pvld <= 1'b0;
  end else begin
  sg2dl_pvld <= dat_pop_ready;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    sg2dl_pd <= {31{1'b0}};
  end else begin
  if ((dat_pop_ready) == 1'b1) begin
    sg2dl_pd <= dat_pop_pd;
  end
  end
end

always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    sg2wl_pvld <= 1'b0;
  end else begin
  sg2wl_pvld <= wt_pop_ready;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    sg2wl_pd <= {18{1'b0}};
  end else begin
  if ((wt_pop_ready) == 1'b1) begin
    sg2wl_pd <= wt_pop_pd;
  end
  end
end

////////////////////////////////////////////////////////////////////////
// credit controll logic //
////////////////////////////////////////////////////////////////////////
//================ Non-SLCG clock domain ================//
//flop credit signal because it cross partition boundary
always @(posedge nvdla_core_ng_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    credit_vld <= 1'b0;
  end else begin
  credit_vld <= accu2sc_credit_vld;
  end
end
always @(posedge nvdla_core_ng_clk) begin
  if ((accu2sc_credit_vld) == 1'b1) begin
    credit_size <= accu2sc_credit_size;
  end
end
always @(
  is_winograd_d1
  or is_int8_d1
  or dat_stripe_size
  ) begin
    dat_impact_cnt = (is_winograd_d1 & is_int8_d1) ? {dat_stripe_size[5:0], 3'b0} :
                     (is_winograd_d1 & ~is_int8_d1) ? {1'b0, dat_stripe_size[5:0], 2'b0} :
                     (~is_winograd_d1 & is_int8_d1) ? {1'b0, dat_stripe_size, 1'b0} :
                     {2'b0, dat_stripe_size};
end
always @(
  dat_impact_cnt
  or batch_delta
  ) begin
    {mon_credit_req_size,
     credit_req_size} = dat_impact_cnt + batch_delta;
end
always @(
  credit_vld
  or credit_size
  ) begin
    credit_cnt_add = credit_vld ? credit_size : 4'b0;
end
always @(
  dat_pop_ready
  or sg2dat_channel_end
  or dat_impact_cnt
  ) begin
    credit_cnt_dec = (dat_pop_ready & sg2dat_channel_end) ? dat_impact_cnt : 9'b0;
end
always @(
  credit_cnt
  or credit_cnt_add
  or credit_cnt_dec
  ) begin
    {mon_credit_cnt_w,
     credit_cnt_w} = credit_cnt + credit_cnt_add - credit_cnt_dec;
end
always @(
  sg2dat_channel_end
  or credit_cnt
  or credit_req_size
  ) begin
    credit_ready = ~sg2dat_channel_end | (credit_cnt >= credit_req_size);
end
always @(posedge nvdla_core_ng_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    credit_cnt <= 9'h100;
  end else begin
  if ((dat_pop_ready | credit_vld) == 1'b1) begin
    credit_cnt <= credit_cnt_w;
  end
  end
end
//================ Non-SLCG clock domain end ================//
////////////////////////////////////////////////////////////////////////
// convolution buffer local status //
////////////////////////////////////////////////////////////////////////
//================ Non-SLCG clock domain ================//
always @(
  pkg_adv
  or pkg_layer_end_w
  or reg2dp_skip_data_rls
  ) begin
    dat_release = pkg_adv & pkg_layer_end_w & ~reg2dp_skip_data_rls;
end
always @(
  is_idle
  or reg2dp_op_en
  or reg2dp_data_reuse
  or is_mode_change
  or last_slices
  ) begin
    dat_reuse_release = is_idle & reg2dp_op_en & (~reg2dp_data_reuse | is_mode_change) & (|last_slices);
end
always @(
  cdma2sc_dat_updt
  or cdma2sc_dat_slices
  ) begin
    slices_avl_add = cdma2sc_dat_updt ? cdma2sc_dat_slices : 12'b0;
end
always @(
  dat_release
  or rls_slices
  or dat_reuse_release
  or last_slices
  ) begin
    slices_avl_sub = dat_release ? rls_slices :
                     dat_reuse_release ? last_slices[12 -1:0] :
                     12'b0;
end
always @(
  dat_pending_req
  or slices_avl
  or slices_avl_add
  or slices_avl_sub
  ) begin
    {mon_slices_avl_w,
     slices_avl_w} = (dat_pending_req) ? 14'b0 :
                     (slices_avl + slices_avl_add - slices_avl_sub);
end
always @(
  pkg_adv
  or reg2dp_skip_weight_rls
  or pkg_group_end_w
  ) begin
    wt_release = pkg_adv & ~reg2dp_skip_weight_rls & pkg_group_end_w;
end
always @(
  is_idle
  or reg2dp_op_en
  or reg2dp_weight_reuse
  or last_skip_weight_rls
  ) begin
    wt_reuse_release = is_idle & reg2dp_op_en & ~reg2dp_weight_reuse & last_skip_weight_rls;
end
always @(
  cdma2sc_wt_updt
  or cdma2sc_wt_kernels
  ) begin
    kernels_avl_add = cdma2sc_wt_updt ? cdma2sc_wt_kernels : 14'b0;
end
always @(
  wt_release
  or cur_kernel
  or wt_reuse_release
  or last_kernels
  ) begin
    kernels_avl_sub = wt_release ? {{8{1'b0}}, cur_kernel} :
                      wt_reuse_release ? last_kernels[13:0] :
                      14'b0;
end
always @(
  wt_pending_req
  or kernels_avl
  or kernels_avl_add
  or kernels_avl_sub
  ) begin
    {mon_kernels_avl_w,
     kernels_avl_w} = (wt_pending_req) ? 15'b0 :
                      kernels_avl + kernels_avl_add - kernels_avl_sub;
end
always @(posedge nvdla_core_ng_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    slices_avl <= {12{1'b0}};
  end else begin
  if ((dat_pending_req | dat_release | dat_reuse_release | cdma2sc_dat_updt) == 1'b1) begin
    slices_avl <= slices_avl_w;
  end
  end
end
always @(posedge nvdla_core_ng_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    kernels_avl <= {15{1'b0}};
  end else begin
  if ((wt_pending_req | wt_release | wt_reuse_release | cdma2sc_wt_updt) == 1'b1) begin
    kernels_avl <= kernels_avl_w;
  end
  end
end
always @(posedge nvdla_core_ng_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    sg2dl_reuse_rls <= 1'b0;
  end else begin
  sg2dl_reuse_rls <= dat_reuse_release;
  end
end
always @(posedge nvdla_core_ng_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    sg2wl_reuse_rls <= 1'b0;
  end else begin
  sg2wl_reuse_rls <= wt_reuse_release;
  end
end
//================ Non-SLCG clock domain end ================//
// ////////////////////////////////////////////////////////////////////////
// //  OBS connection                                                    //
// ////////////////////////////////////////////////////////////////////////
// assign obs_bus_csc_sg2dl_pvld = sg2dl_pvld;
// assign obs_bus_csc_sg2dl_pd = sg2dl_pd[28:0];
// assign obs_bus_csc_sg2dl_reuse_rls = sg2dl_reuse_rls;
// assign obs_bus_csc_sg2wl_reuse_rls = sg2wl_reuse_rls;
// assign obs_bus_csc_sg2wl_pvld = sg2wl_pvld;
// assign obs_bus_csc_sg2wl_pd = sg2wl_pd;
// assign obs_bus_csc_accu2sc_credit_vld = accu2sc_credit_vld;
// assign obs_bus_csc_dat_push_req = dat_push_req;
// assign obs_bus_csc_dat_push_ready = dat_push_ready;
// assign obs_bus_csc_dat_push_empty = dat_push_empty;
// assign obs_bus_csc_dat_pop_req = dat_pop_req;
// assign obs_bus_csc_dat_pop_ready = dat_pop_ready;
// assign obs_bus_csc_wt_push_req = wt_push_req;
// assign obs_bus_csc_wt_push_ready = wt_push_ready;
// assign obs_bus_csc_wt_push_empty = wt_push_empty;
// assign obs_bus_csc_wt_pop_req = wt_pop_req;
// assign obs_bus_csc_wt_pop_ready = wt_pop_ready;
// assign obs_bus_csc_cur_state = cur_state;
// assign obs_bus_csc_nxt_state = nxt_state;
// assign obs_bus_csc_dat_cbuf_ready = dat_cbuf_ready;
// assign obs_bus_csc_wt_cbuf_ready = wt_cbuf_ready;
//////////////////////////////////////////////////////////////
///// ecodonors                                          /////
//////////////////////////////////////////////////////////////
// pkg_idx
// {layer_done,pkg_vld}
// {dat_pkg_block_end,dat_pkg_channel_end}
// {dat_pkg_group_end,dat_pkg_layer_end}
// {dat_pkg_layer_end,wt_pkg_wt_release}
// pop_cnt[1:0]
// {wt_pop_ready_d1,credit_vld}
// {sg2dl_pvld,sg2wl_pvld}
// {sg2dl_reuse_rls,sg2wl_reuse_rls};
//////////////////////////////////////////////////////////////
///// functional point                                   /////
//////////////////////////////////////////////////////////////
assign dbg_cur_prec = reg2dp_proc_precision;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
    dbg_pre_prec <= {2{1'b1}};
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
  end else begin
  dbg_pre_prec <= reg2dp_proc_precision;
  end
end
