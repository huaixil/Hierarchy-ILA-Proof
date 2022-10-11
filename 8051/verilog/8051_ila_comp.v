module ila_comp_8051(
clk, rst,
op_in, eq, irom_out_of_rst,
dack_i
);

input clk, rst;
input [7:0] op_in; 
input eq, irom_out_of_rst;
input dack_i;

wire wait_data;
// mem interface & decoder
wire mem_wait;
wire mem_act;

// decoder & datapath
wire [3:0] alu_op;
wire [1:0] cy_sel;
wire [1:0] psw_set;
wire wr;
wire [1:0] wr_fsr;

wire [2:0] src_sel1;
wire [1:0] src_sel2;
wire src_sel3;

wire [2:0] ram_wr_sel;
wire [2:0] ram_rd_sel;

// datapath & mem_interface
wire [15:0] pc;

wire pc_change = (decoder.state == 0) && !(decoder.mem_wait || decoder.wait_data) && decoder.irom_out_of_rst;

DECODER decoder(
.__ILA_DECODER_grant__(5'b11111),
.clk(clk),
.eq(eq),
.irom_out_of_rst(irom_out_of_rst),
.mem_wait(mem_wait),
.op_in(op_in),
.rst(rst),
.wait_data(wait_data),

.state(),
.op(),
.mem_act(mem_act),

.ram_wr_sel(ram_wr_sel),
.ram_rd_sel_r(ram_rd_sel),

.src_sel1(src_sel1),
.src_sel2(src_sel2),
.src_sel3(src_sel3),

.alu_op(alu_op),
.cy_sel(cy_sel),
.psw(psw_set),
.wr(wr),
.wr_sfr(wr_fsr)
);

DATAPATH datapath(
.__ILA_DATAPATH_grant__(20'hfffff),
.clk(clk),
.rst(rst),
.alu_op(alu_op),
.cy_sel(cy_sel),
.psw_set(psw_set),
.bit_addr(),
.bit_in(),

.op2(),
.op3(),
.p(),
.pc(pc),

.ram_rd_sel(ram_rd_sel),
.ram_wr_sel(ram_wr_sel),

.rd_addr(),

.src_sel1(src_sel1),
.src_sel2(src_sel2),
.src_sel3(src_sel3),

.wr(wr),
.wr_addr(),
.wr_ind(),
.wr_sfr(wr_fsr),

// State
.bit_addr_r(),
.wait_data(wait_data),
.bit_address(),
.ram_rd_data(),
.sfr_rd_data(),
.sfr_bit_rd_data(),
.ram_bit_rd_data(),
.rd_addr_r(),
.wr_addr_r(),
.wr_bit_r(),
.ram_wr_sel_r(),
.sfr_wr_addr_r(),
.rd_ind(),
// states
.acc(),
.b_reg(),
.sp(),
// .pop(),
.dptr_hi(),
.dptr_lo(),
.psw(),
.p0(),
.p1(),
.p2(),
.p3(),
.tcon(),
.scon(),
.ip(),
.ie(),
.pcon(),
.sbuf(),
.th0(),
.th1(),
.tl0(),
.tl1(),
.tmod(),
// states
.op2_reg(),
.op3_reg()
);

MEMORY_INTERFACE_THREE_PORTS mem_interface(
.__ILA_MEMORY_INTERFACE_THREE_PORTS_grant__(12'hfff),
// inputs
.clk(clk),
.rst(rst),

// xram
.mem_act(mem_act),
.dack_i(dack_i),
.ddat_i(),
.dptr(),
.ri(),
.acc(),
// irom
.iack_i(),
.idat_i(),
// pc
.rd(),
.pc_wr(),
.pc_wr_sel(),
.idat_onchip(),
.rn(),
.ram_rd_sel(),
.sp(),
.des2(),
.des_acc(),

//states
.istb_t(),
.iadr_t(),
.idat_ir(),
.imem_wait(),

.dstb_o(), // XRAM_valid
.ddat_o(), // XRAM_DATA_OUT
.dadr_o(), // XRAM_ADDR
.dack_ir(),
.ddat_ir(),
.dwe_o(),
.mem_wait(mem_wait),

.pc(pc),

.idat_cur(),
.idat_old(),
.op2_buff(),
.op3_buff(),
.op_pos(),
.reti(),
.pc_wr_r(),
.pc_wr_r2(),
.imm_r(),
.imm2_r(),
.rn_r(),
.ri_r(),
.rd_ind(),
.rd_addr_r(),
.cdata(),
.cdone()
);


endmodule