module soc_comp(
clk, rst
);

input clk, rst;
wire [7:0] pc_in;

oc8051 oc8051(
.__ILA_oc8051_grant__(256'hffffffffffffffff),
.clk (clk),
.oc8051_ROM_rdata_0 (pc_in),
.oc8051_ROM_rdata_1 (),
.oc8051_ROM_rdata_2 (),
.rst (rst),
.XRAM_ADDR (xram_addr),
.XRAM_DATA_IN (xram_data_in),
.XRAM_DATA_OUT (xram_data_out),
.XRAM_valid (xram_valid)
);

wire xram_valid;
wire [7:0] xram_data_in;
wire [7:0] xram_data_out;
wire [15:0] xram_addr;
wire cmd_write = (pc_in == 8'hf0 | pc_in == 8'hf2 | pc_in == 8'hf3);
wire cmd_read = (pc_in == 8'he0 | pc_in == 8'he2 | pc_in == 8'he3);
reg cmd_write_r;
reg cmd_read_r;

always @(posedge clk) 
begin
  if (rst) begin
    cmd_write_r <= 1'b0;
    cmd_read_r <= 1'b0;
  end
  else begin
    cmd_write_r <= cmd_write;
    cmd_read_r <= cmd_read;
  end
end

AES aes(
.__ILA_AES_grant__ (10'b1111111111),
.clk(clk),
.cmd({cmd_write_r, cmd_read_r}),
.cmdaddr (xram_addr),
.cmddata (xram_data_out),
.rst (rst),
.outdata (xram_data_in)
);

endmodule
