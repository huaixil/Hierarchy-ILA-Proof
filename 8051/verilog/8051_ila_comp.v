module 8051_ila_comp (
clk, rst,
op_in, mem_wait, eq, irom_out_of_rst, wait_data
);

input clk, rst;
input [7:0] op_in; 
input mem_wait, eq, irom_out_of_rst, wait_data;

wire alu_op;
wire cy_sel;
wire psw_set;
wire wr;
wire wr_fsr;

wire src_sel1;
wire src_sel2;
wire src_sel3;

wire ram_wr_sel;
wire ram_rd_sel;

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
.mem_act(),

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
.__ILA_DATAPATH_grant__(),
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
.pc(),

.ram_rd_sel(ram_rd_sel),
.ram_wr_sel(ram_wr_sel),

.rd_addr(),

.src_sel1(src_sel1),
.src_sel2(src_sel2),
.src_sel3(src_sel3),

.wr(wr),
.wr_addr(),
.wr_ind(),
.wr_sfr(wr_sfr),

.bit_addr_r(),
.wait_data(),
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
.acc(),
.b_reg(),
.sp(),
.pop(),
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
.op2_reg(),
.op3_reg(),

.iram_0(), .iram_1(), .iram_2(), .iram_3(), .iram_4(), .iram_5(), .iram_6(), .iram_7(),
.iram_8(), .iram_9(), .iram_10(), .iram_11(), .iram_12(), .iram_13(), .iram_14(), .iram_15(),
.iram_16(), .iram_17(), .iram_18(), .iram_19(), .iram_20(), .iram_21(), .iram_22(), .iram_23(),
.iram_24(), .iram_25(), .iram_26(), .iram_27(), .iram_28(), .iram_29(), .iram_30(), .iram_31(),
.iram_32(), 
.iram_33(),
.iram_34(),
.iram_35(),
.iram_36(),
.iram_37(),
.iram_38(),
.iram_39(),
.iram_40(),
.iram_41(),
.iram_42(),
.iram_43(),
.iram_44(),
.iram_45(),
.iram_46(),
.iram_47(),
.iram_48(),
.iram_49(),
.iram_50(),
.iram_51(),
.iram_52(),
.iram_53(),
.iram_54(),
.iram_55(),
.iram_56(),
.iram_57(),
.iram_58(),
.iram_59(),
.iram_60(),
.iram_61(),
.iram_62(),
.iram_63(),
.iram_64(),
.iram_65(),
.iram_66(),
.iram_67(),
.iram_68(),
.iram_69(),
.iram_70(),
.iram_71(),
.iram_72(),
.iram_73(),
.iram_74(),
.iram_75(),
.iram_76(),
.iram_77(),
.iram_78(),
.iram_79(),
.iram_80(),
.iram_81(),
.iram_82(),
.iram_83(),
.iram_84(),
.iram_85(),
.iram_86(),
.iram_87(),
.iram_88(),
.iram_89(),
.iram_90(),
.iram_91(),
.iram_92(),
.iram_93(),
.iram_94(),
.iram_95(),
.iram_96(),
.iram_97(),
.iram_98(),
.iram_99(),
.iram_100(),
.iram_101(),
.iram_102(),
.iram_103(),
.iram_104(),
.iram_105(),
.iram_106(),
.iram_107(),
.iram_108(),
.iram_109(),
.iram_110(),
.iram_111(),
.iram_112(),
.iram_113(),
.iram_114(),
.iram_115(),
.iram_116(),
.iram_117(),
.iram_118(),
.iram_119(),
.iram_120(),
.iram_121(),
.iram_122(),
.iram_123(),
.iram_124(),
.iram_125(),
.iram_126(),
.iram_127(),
.iram_128(),
.iram_129(),
.iram_130(),
.iram_131(),
.iram_132(),
.iram_133(),
.iram_134(),
.iram_135(),
.iram_136(),
.iram_137(),
.iram_138(),
.iram_139(),
.iram_140(),
.iram_141(),
.iram_142(),
.iram_143(),
.iram_144(),
.iram_145(),
.iram_146(),
.iram_147(),
.iram_148(),
.iram_149(),
.iram_150(),
.iram_151(),
.iram_152(),
.iram_153(),
.iram_154(),
.iram_155(),
.iram_156(),
.iram_157(),
.iram_158(),
.iram_159(),
.iram_160(),
.iram_161(),
.iram_162(),
.iram_163(),
.iram_164(),
.iram_165(),
.iram_166(),
.iram_167(),
.iram_168(),
.iram_169(),
.iram_170(),
.iram_171(),
.iram_172(),
.iram_173(),
.iram_174(),
.iram_175(),
.iram_176(),
.iram_177(),
.iram_178(),
.iram_179(),
.iram_180(),
.iram_181(),
.iram_182(),
.iram_183(),
.iram_184(),
.iram_185(),
.iram_186(),
.iram_187(),
.iram_188(),
.iram_189(),
.iram_190(),
.iram_191(),
.iram_192(),
.iram_193(),
.iram_194(),
.iram_195(),
.iram_196(),
.iram_197(),
.iram_198(),
.iram_199(),
.iram_200(),
.iram_201(),
.iram_202(),
.iram_203(),
.iram_204(),
.iram_205(),
.iram_206(),
.iram_207(),
.iram_208(),
.iram_209(),
.iram_210(),
.iram_211(),
.iram_212(),
.iram_213(),
.iram_214(),
.iram_215(),
.iram_216(),
.iram_217(),
.iram_218(),
.iram_219(),
.iram_220(),
.iram_221(),
.iram_222(),
.iram_223(),
.iram_224(),
.iram_225(),
.iram_226(),
.iram_227(),
.iram_228(),
.iram_229(),
.iram_230(),
.iram_231(),
.iram_232(),
.iram_233(),
.iram_234(),
.iram_235(),
.iram_236(),
.iram_237(),
.iram_238(),
.iram_239(),
.iram_240(),
.iram_241(),
.iram_242(),
.iram_243(),
.iram_244(),
.iram_245(),
.iram_246(),
.iram_247(),
.iram_248(),
.iram_249(),
.iram_250(),
.iram_251(),
.iram_252(),
.iram_253(),
.iram_254(),
.iram_255()
);


endmodule