module NV_NVDLA_conv (
    nvdla_core_clk
    ,nvdla_core_rst

    ,weight_i_valid
    ,data_i_valid

    ,cacc2sdp_valid
    ,sdp2cacc_ready
);

input nvdla_core_clk;
input nvdla_core_rst;

input weight_i_valid;
input data_i_valid;

input sdp2cacc_ready;
output cacc2sdp_valid;

NVDLA_CSC csc(
.__ILA_csc_grant__ (12'hfff),
.clk (nvdla_core_clk),
.csb_addr (),
.csb_data (),
.csb_vld (),
.csb_write (),
.rst (nvdla_core_rst),
.sg2dl_vld (data_i_valid),
.sg2wt_vld (weight_i_valid),

.data_valid (data_valid),
.weight_valid (weight_valid)
);

wire data_valid;
wire weight_valid;

NVDLA_CMAC cmac(
.__ILA_NVDLA_CMAC_grant__ (6'h3f),
.clk (nvdla_core_clk),
.rst (nvdla_core_rst),

.data_valid_i (data_valid),
.weight_valid_i (weight_valid),
.data_ready_o (),

.data_valid_o (cmac2cacc_data_valid)
);

wire cmac2cacc_data_valid;

NVDLA_CACC cacc (
.__ILA_NVDLA_CACC_grant__ (23'h7fffff),
.clk(nvdla_core_clk),
.rst(nvdla_core_rst),
.valid_a_i(cmac2cacc_data_valid),
.valid_b_i(cmac2cacc_data_valid),

.ready_a_o(),
.ready_b_o(),
.cacc2sdp_valid_o(cacc2sdp_valid),
.cacc2sdp_ready_i(sdp2cacc_ready)
);

endmodule



