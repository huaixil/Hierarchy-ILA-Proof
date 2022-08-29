module MEMORY_INTERFACE_THREE_PORTS(
__ILA_MEMORY_INTERFACE_THREE_PORTS_grant__,
acc,
clk,
dack_i,
ddat_i,
des2,
des_acc,
dptr,
iack_i,
idat_i,
idat_onchip,
mem_act,
pc_wr,
pc_wr_sel,
ram_rd_sel,
rd,
ri,
rn,
rst,
sp,
__ILA_MEMORY_INTERFACE_THREE_PORTS_acc_decode__,
__ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__,
__ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__,
__ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__,
__ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_0__,
__ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_1__,
__ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_2__,
__ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_0__,
__ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_1__,
__ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_2__,
__ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_0__,
__ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_1__,
__ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_2__,
__ILA_MEMORY_INTERFACE_THREE_PORTS_valid__,
istb_t,
iadr_t,
idat_ir,
imem_wait,
dstb_o,
ddat_o,
dadr_o,
dack_ir,
ddat_ir,
dwe_o,
mem_wait,
pc,
pc_buf,
idat_cur,
idat_old,
op2_buff,
op3_buff,
op_pos,
reti,
pc_wr_r,
pc_wr_r2,
imm_r,
imm2_r,
rn_r,
ri_r,
rd_ind,
rd_addr_r,
cdata,
cdone
);
input     [11:0] __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__;
input      [7:0] acc;
input            clk;
input            dack_i;
input      [7:0] ddat_i;
input      [7:0] des2;
input      [7:0] des_acc;
input     [15:0] dptr;
input            iack_i;
input      [7:0] idat_i;
input     [31:0] idat_onchip;
input      [2:0] mem_act;
input            pc_wr;
input      [2:0] pc_wr_sel;
input      [2:0] ram_rd_sel;
input            rd;
input      [7:0] ri;
input      [4:0] rn;
input            rst;
input      [7:0] sp;
output     [11:0] __ILA_MEMORY_INTERFACE_THREE_PORTS_acc_decode__;
output            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__;
output            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__;
output            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__;
output            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_0__;
output            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_1__;
output            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_2__;
output            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_0__;
output            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_1__;
output            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_2__;
output            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_0__;
output            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_1__;
output            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_2__;
output            __ILA_MEMORY_INTERFACE_THREE_PORTS_valid__;
output reg            istb_t;
output reg     [15:0] iadr_t;
output reg      [7:0] idat_ir;
output reg            imem_wait;
output reg            dstb_o;
output reg      [7:0] ddat_o;
output reg     [15:0] dadr_o;
output reg            dack_ir;
output reg      [7:0] ddat_ir;
output reg            dwe_o;
output reg            mem_wait;
output reg     [15:0] pc;
output reg     [15:0] pc_buf;
output reg     [31:0] idat_cur;
output reg     [31:0] idat_old;
output reg      [7:0] op2_buff;
output reg      [7:0] op3_buff;
output reg      [2:0] op_pos;
output reg            reti;
output reg            pc_wr_r;
output reg            pc_wr_r2;
output reg      [7:0] imm_r;
output reg      [7:0] imm2_r;
output reg      [4:0] rn_r;
output reg      [7:0] ri_r;
output reg            rd_ind;
output reg            rd_addr_r;
output reg      [7:0] cdata;
output reg            cdone;
wire     [11:0] __ILA_MEMORY_INTERFACE_THREE_PORTS_acc_decode__;
wire            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__;
wire            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__;
wire            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__;
wire            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_0__;
wire            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_1__;
wire            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_2__;
wire            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_0__;
wire            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_1__;
wire            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_2__;
wire            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_0__;
wire            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_1__;
wire            __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_2__;
wire     [11:0] __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__;
wire            __ILA_MEMORY_INTERFACE_THREE_PORTS_valid__;
wire      [7:0] acc;
wire     [15:0] bv_16_2_n429;
wire     [15:0] bv_16_4_n500;
wire     [15:0] bv_16_8_n197;
wire            bv_1_0_n10;
wire            bv_1_1_n1;
wire      [1:0] bv_2_1_n407;
wire      [1:0] bv_2_2_n406;
wire      [1:0] bv_2_3_n4;
wire      [2:0] bv_3_0_n44;
wire      [2:0] bv_3_1_n49;
wire      [2:0] bv_3_2_n46;
wire      [2:0] bv_3_3_n52;
wire      [2:0] bv_3_4_n24;
wire      [2:0] bv_3_5_n97;
wire      [2:0] bv_3_6_n100;
wire      [2:0] bv_3_7_n103;
wire      [4:0] bv_5_15_n281;
wire      [4:0] bv_5_17_n270;
wire      [4:0] bv_5_1_n272;
wire      [4:0] bv_5_21_n278;
wire      [4:0] bv_5_23_n221;
wire      [4:0] bv_5_27_n275;
wire      [6:0] bv_7_0_n478;
wire      [6:0] bv_7_59_n292;
wire      [6:0] bv_7_67_n286;
wire      [6:0] bv_7_83_n289;
wire      [6:0] bv_7_91_n224;
wire      [7:0] bv_8_0_n156;
wire      [7:0] bv_8_100_n400;
wire      [7:0] bv_8_101_n397;
wire      [7:0] bv_8_112_n340;
wire      [7:0] bv_8_114_n370;
wire      [7:0] bv_8_116_n349;
wire      [7:0] bv_8_117_n257;
wire      [7:0] bv_8_128_n385;
wire      [7:0] bv_8_130_n316;
wire      [7:0] bv_8_133_n254;
wire      [7:0] bv_8_144_n260;
wire      [7:0] bv_8_146_n358;
wire      [7:0] bv_8_148_n391;
wire      [7:0] bv_8_149_n388;
wire      [7:0] bv_8_160_n373;
wire      [7:0] bv_8_162_n355;
wire      [7:0] bv_8_16_n242;
wire      [7:0] bv_8_176_n319;
wire      [7:0] bv_8_178_n325;
wire      [7:0] bv_8_180_n233;
wire      [7:0] bv_8_181_n230;
wire      [7:0] bv_8_18_n248;
wire      [7:0] bv_8_192_n379;
wire      [7:0] bv_8_194_n322;
wire      [7:0] bv_8_197_n394;
wire      [7:0] bv_8_208_n376;
wire      [7:0] bv_8_210_n382;
wire      [7:0] bv_8_213_n236;
wire      [7:0] bv_8_21_n328;
wire      [7:0] bv_8_229_n346;
wire      [7:0] bv_8_245_n352;
wire      [7:0] bv_8_2_n251;
wire      [7:0] bv_8_32_n239;
wire      [7:0] bv_8_36_n298;
wire      [7:0] bv_8_37_n295;
wire      [7:0] bv_8_48_n245;
wire      [7:0] bv_8_50_n517;
wire      [7:0] bv_8_52_n304;
wire      [7:0] bv_8_53_n301;
wire      [7:0] bv_8_5_n331;
wire      [7:0] bv_8_64_n334;
wire      [7:0] bv_8_66_n367;
wire      [7:0] bv_8_67_n263;
wire      [7:0] bv_8_68_n364;
wire      [7:0] bv_8_69_n361;
wire      [7:0] bv_8_80_n337;
wire      [7:0] bv_8_82_n313;
wire      [7:0] bv_8_83_n227;
wire      [7:0] bv_8_84_n310;
wire      [7:0] bv_8_85_n307;
wire      [7:0] bv_8_96_n343;
wire      [7:0] bv_8_98_n403;
wire      [7:0] bv_8_99_n266;
wire            clk;
wire            dack_i;
wire      [7:0] ddat_i;
wire      [7:0] des2;
wire      [7:0] des_acc;
wire     [15:0] dptr;
wire            iack_i;
wire      [7:0] idat_i;
wire     [31:0] idat_onchip;
wire      [2:0] mem_act;
wire            n0;
wire            n101;
wire            n102;
wire            n104;
wire            n105;
wire            n106;
wire            n107;
wire            n108;
wire            n109;
wire            n11;
wire            n110;
wire            n111;
wire            n112;
wire            n113;
wire            n114;
wire            n115;
wire            n116;
wire            n117;
wire            n118;
wire            n119;
wire            n12;
wire            n120;
wire            n121;
wire            n122;
wire            n123;
wire            n124;
wire            n125;
wire            n126;
wire            n127;
wire            n128;
wire            n129;
wire      [1:0] n13;
wire            n130;
wire            n131;
wire            n132;
wire            n133;
wire            n134;
wire            n135;
wire            n136;
wire            n137;
wire            n138;
wire            n139;
wire            n14;
wire            n140;
wire            n141;
wire            n142;
wire            n143;
wire            n144;
wire            n145;
wire      [7:0] n146;
wire            n147;
wire            n148;
wire      [7:0] n149;
wire            n15;
wire            n150;
wire            n151;
wire      [7:0] n152;
wire            n153;
wire            n154;
wire            n155;
wire      [7:0] n157;
wire            n158;
wire            n159;
wire            n16;
wire            n160;
wire      [7:0] n161;
wire            n162;
wire            n163;
wire            n164;
wire      [7:0] n165;
wire            n166;
wire            n167;
wire            n168;
wire     [15:0] n169;
wire            n17;
wire     [15:0] n170;
wire            n171;
wire            n172;
wire            n173;
wire     [15:0] n174;
wire     [15:0] n175;
wire            n176;
wire            n177;
wire            n178;
wire     [15:0] n179;
wire            n18;
wire     [15:0] n180;
wire            n181;
wire            n182;
wire            n183;
wire            n184;
wire            n185;
wire            n186;
wire            n187;
wire            n188;
wire            n189;
wire            n19;
wire            n190;
wire            n191;
wire            n192;
wire            n193;
wire            n194;
wire            n195;
wire            n196;
wire     [15:0] n198;
wire     [15:0] n199;
wire            n2;
wire            n20;
wire     [15:0] n200;
wire            n201;
wire            n202;
wire      [7:0] n203;
wire            n204;
wire      [7:0] n205;
wire            n206;
wire      [7:0] n207;
wire            n208;
wire      [7:0] n209;
wire            n21;
wire            n210;
wire      [7:0] n211;
wire      [7:0] n212;
wire      [7:0] n213;
wire      [7:0] n214;
wire      [7:0] n215;
wire      [7:0] n216;
wire      [7:0] n217;
wire      [7:0] n218;
wire      [7:0] n219;
wire            n22;
wire      [4:0] n220;
wire            n222;
wire      [6:0] n223;
wire            n225;
wire            n226;
wire            n228;
wire            n229;
wire            n23;
wire            n231;
wire            n232;
wire            n234;
wire            n235;
wire            n237;
wire            n238;
wire            n240;
wire            n241;
wire            n243;
wire            n244;
wire            n246;
wire            n247;
wire            n249;
wire            n25;
wire            n250;
wire            n252;
wire            n253;
wire            n255;
wire            n256;
wire            n258;
wire            n259;
wire            n26;
wire            n261;
wire            n262;
wire            n264;
wire            n265;
wire            n267;
wire            n268;
wire      [4:0] n269;
wire            n27;
wire            n271;
wire            n273;
wire            n274;
wire            n276;
wire            n277;
wire            n279;
wire            n28;
wire            n280;
wire            n282;
wire            n283;
wire            n284;
wire            n285;
wire            n287;
wire            n288;
wire            n29;
wire            n290;
wire            n291;
wire            n293;
wire            n294;
wire            n296;
wire            n297;
wire            n299;
wire      [1:0] n3;
wire            n30;
wire            n300;
wire            n302;
wire            n303;
wire            n305;
wire            n306;
wire            n308;
wire            n309;
wire            n31;
wire            n311;
wire            n312;
wire            n314;
wire            n315;
wire            n317;
wire            n318;
wire            n32;
wire            n320;
wire            n321;
wire            n323;
wire            n324;
wire            n326;
wire            n327;
wire            n329;
wire            n33;
wire            n330;
wire            n332;
wire            n333;
wire            n335;
wire            n336;
wire            n338;
wire            n339;
wire            n34;
wire            n341;
wire            n342;
wire            n344;
wire            n345;
wire            n347;
wire            n348;
wire            n35;
wire            n350;
wire            n351;
wire            n353;
wire            n354;
wire            n356;
wire            n357;
wire            n359;
wire            n36;
wire            n360;
wire            n362;
wire            n363;
wire            n365;
wire            n366;
wire            n368;
wire            n369;
wire            n37;
wire            n371;
wire            n372;
wire            n374;
wire            n375;
wire            n377;
wire            n378;
wire            n38;
wire            n380;
wire            n381;
wire            n383;
wire            n384;
wire            n386;
wire            n387;
wire            n389;
wire            n39;
wire            n390;
wire            n392;
wire            n393;
wire            n395;
wire            n396;
wire            n398;
wire            n399;
wire            n40;
wire            n401;
wire            n402;
wire            n404;
wire            n405;
wire      [1:0] n408;
wire      [1:0] n409;
wire            n41;
wire     [15:0] n410;
wire     [15:0] n411;
wire     [15:0] n412;
wire     [15:0] n413;
wire     [15:0] n414;
wire     [15:0] n415;
wire     [15:0] n416;
wire     [15:0] n417;
wire     [15:0] n418;
wire            n419;
wire            n42;
wire            n420;
wire     [15:0] n421;
wire            n422;
wire      [7:0] n423;
wire     [15:0] n424;
wire            n425;
wire      [7:0] n426;
wire     [15:0] n427;
wire            n428;
wire            n43;
wire     [15:0] n430;
wire      [4:0] n431;
wire      [2:0] n432;
wire      [7:0] n433;
wire            n434;
wire      [7:0] n435;
wire            n436;
wire      [7:0] n437;
wire            n438;
wire      [7:0] n439;
wire            n440;
wire      [7:0] n441;
wire            n442;
wire      [7:0] n443;
wire      [7:0] n444;
wire      [7:0] n445;
wire      [7:0] n446;
wire      [7:0] n447;
wire      [7:0] n448;
wire      [7:0] n449;
wire            n45;
wire      [7:0] n450;
wire     [15:0] n451;
wire            n452;
wire            n453;
wire      [7:0] n454;
wire            n455;
wire      [7:0] n456;
wire            n457;
wire      [7:0] n458;
wire            n459;
wire      [7:0] n460;
wire            n461;
wire      [7:0] n462;
wire      [7:0] n463;
wire      [7:0] n464;
wire      [7:0] n465;
wire      [7:0] n466;
wire      [7:0] n467;
wire      [7:0] n468;
wire      [7:0] n469;
wire            n47;
wire     [15:0] n470;
wire            n471;
wire            n472;
wire            n473;
wire      [7:0] n474;
wire            n475;
wire            n476;
wire      [7:0] n477;
wire      [7:0] n479;
wire            n48;
wire      [8:0] n480;
wire      [8:0] n481;
wire      [8:0] n482;
wire            n483;
wire            n484;
wire      [7:0] n485;
wire      [7:0] n486;
wire      [7:0] n487;
wire     [15:0] n488;
wire     [15:0] n489;
wire     [15:0] n490;
wire     [15:0] n491;
wire            n492;
wire     [15:0] n493;
wire     [15:0] n494;
wire     [15:0] n495;
wire     [15:0] n496;
wire     [15:0] n497;
wire     [15:0] n498;
wire     [15:0] n499;
wire            n5;
wire            n50;
wire     [15:0] n501;
wire     [15:0] n502;
wire            n503;
wire     [15:0] n504;
wire      [7:0] n505;
wire      [7:0] n506;
wire            n507;
wire            n508;
wire            n509;
wire            n51;
wire            n510;
wire      [1:0] n511;
wire      [1:0] n512;
wire      [2:0] n513;
wire      [2:0] n514;
wire      [2:0] n515;
wire      [2:0] n516;
wire            n518;
wire            n519;
wire            n520;
wire            n521;
wire            n522;
wire            n523;
wire            n524;
wire            n525;
wire            n526;
wire            n527;
wire            n528;
wire            n529;
wire            n53;
wire            n530;
wire            n531;
wire            n532;
wire            n533;
wire            n534;
wire            n535;
wire            n536;
wire            n537;
wire            n538;
wire            n539;
wire            n54;
wire            n540;
wire            n541;
wire            n542;
wire            n543;
wire            n544;
wire            n545;
wire            n546;
wire            n547;
wire            n548;
wire            n549;
wire            n55;
wire            n550;
wire            n551;
wire            n552;
wire            n553;
wire            n554;
wire            n555;
wire            n556;
wire            n557;
wire            n558;
wire            n559;
wire            n56;
wire            n560;
wire      [7:0] n561;
wire      [7:0] n562;
wire            n563;
wire            n57;
wire            n58;
wire            n59;
wire            n6;
wire            n60;
wire            n61;
wire            n62;
wire            n63;
wire            n64;
wire            n65;
wire            n66;
wire            n67;
wire            n68;
wire            n69;
wire            n7;
wire            n70;
wire            n71;
wire            n72;
wire            n73;
wire            n74;
wire            n75;
wire            n76;
wire            n77;
wire            n78;
wire            n79;
wire            n8;
wire            n80;
wire            n81;
wire            n82;
wire            n83;
wire            n84;
wire            n85;
wire            n86;
wire            n87;
wire            n88;
wire            n89;
wire            n9;
wire            n90;
wire            n91;
wire            n92;
wire            n93;
wire            n94;
wire            n95;
wire            n96;
wire            n98;
wire            n99;
wire            pc_wr;
wire      [2:0] pc_wr_sel;
wire      [2:0] ram_rd_sel;
wire            rd;
wire      [7:0] ri;
wire      [4:0] rn;
wire            rst;
wire      [7:0] sp;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_valid__ = 1'b1 ;
assign n0 = op_pos[2:2] ;
assign bv_1_1_n1 = 1'h1 ;
assign n2 =  ( n0 ) == ( bv_1_1_n1 )  ;
assign n3 = op_pos[1:0] ;
assign bv_2_3_n4 = 2'h3 ;
assign n5 =  ( n3 ) == ( bv_2_3_n4 )  ;
assign n6 =  ( n2 ) | ( n5 )  ;
assign n7 =  ( n6 ) & (rd )  ;
assign n8 =  ( n7 ) | ( pc_wr_r2 )  ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ = n8 ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_acc_decode__[0] = __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ ;
assign n9 = op_pos[2:2] ;
assign bv_1_0_n10 = 1'h0 ;
assign n11 =  ( n9 ) == ( bv_1_0_n10 )  ;
assign n12 =  ( rd ) & (n11 )  ;
assign n13 = op_pos[1:0] ;
assign n14 =  ( n13 ) == ( bv_2_3_n4 )  ;
assign n15 = ~ ( n14 )  ;
assign n16 =  ( n12 ) & (n15 )  ;
assign n17 =  ( pc_wr_r2 ) == ( 1'b0 )  ;
assign n18 =  ( n16 ) & (n17 )  ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ = n18 ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_acc_decode__[1] = __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ ;
assign n19 = ~ ( n8 )  ;
assign n20 = ~ ( rd )  ;
assign n21 =  ( n19 ) & (n20 )  ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__ = n21 ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_acc_decode__[2] = __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__ ;
assign n22 =  ( dack_i ) == ( 1'b1 )  ;
assign n23 =  ( 1'b1 ) & (n22 )  ;
assign bv_3_4_n24 = 3'h4 ;
assign n25 =  ( mem_act ) == ( bv_3_4_n24 )  ;
assign n26 =  ( n23 ) & (n25 )  ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_0__ = n26 ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_acc_decode__[3] = __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_0__ ;
assign n27 =  ( dack_i ) == ( 1'b1 )  ;
assign n28 =  ( 1'b1 ) & (n27 )  ;
assign n29 =  ( mem_act ) == ( bv_3_4_n24 )  ;
assign n30 =  ( 1'b0 ) == ( n29 )  ;
assign n31 =  ( imem_wait ) == ( 1'b1 )  ;
assign n32 =  ( n30 ) & (n31 )  ;
assign n33 =  ( n28 ) & (n32 )  ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_1__ = n33 ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_acc_decode__[4] = __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_1__ ;
assign n34 =  ( dack_i ) == ( 1'b1 )  ;
assign n35 =  ( 1'b1 ) & (n34 )  ;
assign n36 =  ( mem_act ) == ( bv_3_4_n24 )  ;
assign n37 =  ( 1'b0 ) == ( n36 )  ;
assign n38 =  ( imem_wait ) == ( 1'b0 )  ;
assign n39 =  ( n37 ) & (n38 )  ;
assign n40 =  ( n35 ) & (n39 )  ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_2__ = n40 ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_acc_decode__[5] = __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_2__ ;
assign n41 =  ( dack_i ) == ( 1'b0 )  ;
assign n42 =  ( dstb_o ) == ( 1'b0 )  ;
assign n43 =  ( n41 ) & (n42 )  ;
assign bv_3_0_n44 = 3'h0 ;
assign n45 =  ( mem_act ) == ( bv_3_0_n44 )  ;
assign bv_3_2_n46 = 3'h2 ;
assign n47 =  ( mem_act ) == ( bv_3_2_n46 )  ;
assign n48 =  ( n45 ) | ( n47 )  ;
assign bv_3_1_n49 = 3'h1 ;
assign n50 =  ( mem_act ) == ( bv_3_1_n49 )  ;
assign n51 =  ( n48 ) | ( n50 )  ;
assign bv_3_3_n52 = 3'h3 ;
assign n53 =  ( mem_act ) == ( bv_3_3_n52 )  ;
assign n54 =  ( n51 ) | ( n53 )  ;
assign n55 =  ( n43 ) & (n54 )  ;
assign n56 =  ( 1'b1 ) & (n55 )  ;
assign n57 =  ( mem_act ) == ( bv_3_4_n24 )  ;
assign n58 =  ( n56 ) & (n57 )  ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_0__ = n58 ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_acc_decode__[6] = __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_0__ ;
assign n59 =  ( dack_i ) == ( 1'b0 )  ;
assign n60 =  ( dstb_o ) == ( 1'b0 )  ;
assign n61 =  ( n59 ) & (n60 )  ;
assign n62 =  ( mem_act ) == ( bv_3_0_n44 )  ;
assign n63 =  ( mem_act ) == ( bv_3_2_n46 )  ;
assign n64 =  ( n62 ) | ( n63 )  ;
assign n65 =  ( mem_act ) == ( bv_3_1_n49 )  ;
assign n66 =  ( n64 ) | ( n65 )  ;
assign n67 =  ( mem_act ) == ( bv_3_3_n52 )  ;
assign n68 =  ( n66 ) | ( n67 )  ;
assign n69 =  ( n61 ) & (n68 )  ;
assign n70 =  ( 1'b1 ) & (n69 )  ;
assign n71 =  ( mem_act ) == ( bv_3_4_n24 )  ;
assign n72 =  ( 1'b0 ) == ( n71 )  ;
assign n73 =  ( imem_wait ) == ( 1'b1 )  ;
assign n74 =  ( n72 ) & (n73 )  ;
assign n75 =  ( n70 ) & (n74 )  ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_1__ = n75 ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_acc_decode__[7] = __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_1__ ;
assign n76 =  ( dack_i ) == ( 1'b0 )  ;
assign n77 =  ( dstb_o ) == ( 1'b0 )  ;
assign n78 =  ( n76 ) & (n77 )  ;
assign n79 =  ( mem_act ) == ( bv_3_0_n44 )  ;
assign n80 =  ( mem_act ) == ( bv_3_2_n46 )  ;
assign n81 =  ( n79 ) | ( n80 )  ;
assign n82 =  ( mem_act ) == ( bv_3_1_n49 )  ;
assign n83 =  ( n81 ) | ( n82 )  ;
assign n84 =  ( mem_act ) == ( bv_3_3_n52 )  ;
assign n85 =  ( n83 ) | ( n84 )  ;
assign n86 =  ( n78 ) & (n85 )  ;
assign n87 =  ( 1'b1 ) & (n86 )  ;
assign n88 =  ( mem_act ) == ( bv_3_4_n24 )  ;
assign n89 =  ( 1'b0 ) == ( n88 )  ;
assign n90 =  ( imem_wait ) == ( 1'b0 )  ;
assign n91 =  ( n89 ) & (n90 )  ;
assign n92 =  ( n87 ) & (n91 )  ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_2__ = n92 ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_acc_decode__[8] = __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_2__ ;
assign n93 =  ( dack_i ) == ( 1'b0 )  ;
assign n94 =  ( dstb_o ) == ( 1'b1 )  ;
assign n95 =  ( mem_act ) == ( bv_3_4_n24 )  ;
assign n96 =  ( n94 ) | ( n95 )  ;
assign bv_3_5_n97 = 3'h5 ;
assign n98 =  ( mem_act ) == ( bv_3_5_n97 )  ;
assign n99 =  ( n96 ) | ( n98 )  ;
assign bv_3_6_n100 = 3'h6 ;
assign n101 =  ( mem_act ) == ( bv_3_6_n100 )  ;
assign n102 =  ( n99 ) | ( n101 )  ;
assign bv_3_7_n103 = 3'h7 ;
assign n104 =  ( mem_act ) == ( bv_3_7_n103 )  ;
assign n105 =  ( n102 ) | ( n104 )  ;
assign n106 =  ( n93 ) & (n105 )  ;
assign n107 =  ( 1'b1 ) & (n106 )  ;
assign n108 =  ( mem_act ) == ( bv_3_4_n24 )  ;
assign n109 =  ( n107 ) & (n108 )  ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_0__ = n109 ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_acc_decode__[9] = __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_0__ ;
assign n110 =  ( dack_i ) == ( 1'b0 )  ;
assign n111 =  ( dstb_o ) == ( 1'b1 )  ;
assign n112 =  ( mem_act ) == ( bv_3_4_n24 )  ;
assign n113 =  ( n111 ) | ( n112 )  ;
assign n114 =  ( mem_act ) == ( bv_3_5_n97 )  ;
assign n115 =  ( n113 ) | ( n114 )  ;
assign n116 =  ( mem_act ) == ( bv_3_6_n100 )  ;
assign n117 =  ( n115 ) | ( n116 )  ;
assign n118 =  ( mem_act ) == ( bv_3_7_n103 )  ;
assign n119 =  ( n117 ) | ( n118 )  ;
assign n120 =  ( n110 ) & (n119 )  ;
assign n121 =  ( 1'b1 ) & (n120 )  ;
assign n122 =  ( mem_act ) == ( bv_3_4_n24 )  ;
assign n123 =  ( 1'b0 ) == ( n122 )  ;
assign n124 =  ( imem_wait ) == ( 1'b1 )  ;
assign n125 =  ( n123 ) & (n124 )  ;
assign n126 =  ( n121 ) & (n125 )  ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_1__ = n126 ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_acc_decode__[10] = __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_1__ ;
assign n127 =  ( dack_i ) == ( 1'b0 )  ;
assign n128 =  ( dstb_o ) == ( 1'b1 )  ;
assign n129 =  ( mem_act ) == ( bv_3_4_n24 )  ;
assign n130 =  ( n128 ) | ( n129 )  ;
assign n131 =  ( mem_act ) == ( bv_3_5_n97 )  ;
assign n132 =  ( n130 ) | ( n131 )  ;
assign n133 =  ( mem_act ) == ( bv_3_6_n100 )  ;
assign n134 =  ( n132 ) | ( n133 )  ;
assign n135 =  ( mem_act ) == ( bv_3_7_n103 )  ;
assign n136 =  ( n134 ) | ( n135 )  ;
assign n137 =  ( n127 ) & (n136 )  ;
assign n138 =  ( 1'b1 ) & (n137 )  ;
assign n139 =  ( mem_act ) == ( bv_3_4_n24 )  ;
assign n140 =  ( 1'b0 ) == ( n139 )  ;
assign n141 =  ( imem_wait ) == ( 1'b0 )  ;
assign n142 =  ( n140 ) & (n141 )  ;
assign n143 =  ( n138 ) & (n142 )  ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_2__ = n143 ;
assign __ILA_MEMORY_INTERFACE_THREE_PORTS_acc_decode__[11] = __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_2__ ;
assign n144 =  ( iack_i ) == ( 1'b0 )  ;
assign n145 =  ( istb_t ) | ( n144 )  ;
assign n146 =  ( n145 ) ? ( idat_ir ) : ( idat_i ) ;
assign n147 =  ( iack_i ) == ( 1'b0 )  ;
assign n148 =  ( istb_t ) | ( n147 )  ;
assign n149 =  ( n148 ) ? ( idat_ir ) : ( idat_i ) ;
assign n150 =  ( iack_i ) == ( 1'b0 )  ;
assign n151 =  ( istb_t ) | ( n150 )  ;
assign n152 =  ( n151 ) ? ( idat_ir ) : ( idat_i ) ;
assign n153 =  ( mem_act ) == ( bv_3_0_n44 )  ;
assign n154 =  ( mem_act ) == ( bv_3_2_n46 )  ;
assign n155 =  ( n153 ) | ( n154 )  ;
assign bv_8_0_n156 = 8'h0 ;
assign n157 =  ( n155 ) ? ( bv_8_0_n156 ) : ( acc ) ;
assign n158 =  ( mem_act ) == ( bv_3_0_n44 )  ;
assign n159 =  ( mem_act ) == ( bv_3_2_n46 )  ;
assign n160 =  ( n158 ) | ( n159 )  ;
assign n161 =  ( n160 ) ? ( bv_8_0_n156 ) : ( acc ) ;
assign n162 =  ( mem_act ) == ( bv_3_0_n44 )  ;
assign n163 =  ( mem_act ) == ( bv_3_2_n46 )  ;
assign n164 =  ( n162 ) | ( n163 )  ;
assign n165 =  ( n164 ) ? ( bv_8_0_n156 ) : ( acc ) ;
assign n166 =  ( mem_act ) == ( bv_3_0_n44 )  ;
assign n167 =  ( mem_act ) == ( bv_3_1_n49 )  ;
assign n168 =  ( n166 ) | ( n167 )  ;
assign n169 =  { ( bv_8_0_n156 ) , ( ri ) }  ;
assign n170 =  ( n168 ) ? ( dptr ) : ( n169 ) ;
assign n171 =  ( mem_act ) == ( bv_3_0_n44 )  ;
assign n172 =  ( mem_act ) == ( bv_3_1_n49 )  ;
assign n173 =  ( n171 ) | ( n172 )  ;
assign n174 =  { ( bv_8_0_n156 ) , ( ri ) }  ;
assign n175 =  ( n173 ) ? ( dptr ) : ( n174 ) ;
assign n176 =  ( mem_act ) == ( bv_3_0_n44 )  ;
assign n177 =  ( mem_act ) == ( bv_3_1_n49 )  ;
assign n178 =  ( n176 ) | ( n177 )  ;
assign n179 =  { ( bv_8_0_n156 ) , ( ri ) }  ;
assign n180 =  ( n178 ) ? ( dptr ) : ( n179 ) ;
assign n181 =  ( mem_act ) == ( bv_3_1_n49 )  ;
assign n182 =  ( mem_act ) == ( bv_3_3_n52 )  ;
assign n183 =  ( n181 ) | ( n182 )  ;
assign n184 =  ( n183 ) ? ( 1'b1 ) : ( 1'b0 )  ;
assign n185 =  ( mem_act ) == ( bv_3_1_n49 )  ;
assign n186 =  ( mem_act ) == ( bv_3_3_n52 )  ;
assign n187 =  ( n185 ) | ( n186 )  ;
assign n188 =  ( n187 ) ? ( 1'b1 ) : ( 1'b0 )  ;
assign n189 =  ( mem_act ) == ( bv_3_1_n49 )  ;
assign n190 =  ( mem_act ) == ( bv_3_3_n52 )  ;
assign n191 =  ( n189 ) | ( n190 )  ;
assign n192 =  ( n191 ) ? ( 1'b1 ) : ( 1'b0 )  ;
assign n193 =  ( dstb_o ) | ( pc_wr_r )  ;
assign n194 =  ( dstb_o ) | ( pc_wr_r )  ;
assign n195 =  ( pc_wr_r2 ) == ( 1'b1 )  ;
assign n196 =  ( rd ) == ( 1'b1 )  ;
assign bv_16_8_n197 = 16'h8 ;
assign n198 =  ( pc_buf ) - ( bv_16_8_n197 )  ;
assign n199 =  {13'd0 , op_pos}  ;
assign n200 =  ( n198 ) + ( n199 )  ;
assign n201 =  ( dack_ir ) == ( 1'b1 )  ;
assign n202 =  ( op_pos ) == ( bv_3_0_n44 )  ;
assign n203 = idat_old[7:0] ;
assign n204 =  ( op_pos ) == ( bv_3_1_n49 )  ;
assign n205 = idat_old[15:8] ;
assign n206 =  ( op_pos ) == ( bv_3_2_n46 )  ;
assign n207 = idat_old[23:16] ;
assign n208 =  ( op_pos ) == ( bv_3_3_n52 )  ;
assign n209 = idat_old[31:24] ;
assign n210 =  ( op_pos ) == ( bv_3_4_n24 )  ;
assign n211 = idat_cur[7:0] ;
assign n212 = idat_cur[15:8] ;
assign n213 =  ( n210 ) ? ( n211 ) : ( n212 ) ;
assign n214 =  ( n208 ) ? ( n209 ) : ( n213 ) ;
assign n215 =  ( n206 ) ? ( n207 ) : ( n214 ) ;
assign n216 =  ( n204 ) ? ( n205 ) : ( n215 ) ;
assign n217 =  ( n202 ) ? ( n203 ) : ( n216 ) ;
assign n218 =  ( cdone ) ? ( cdata ) : ( n217 ) ;
assign n219 =  ( n201 ) ? ( ddat_ir ) : ( n218 ) ;
assign n220 = n219[7:3] ;
assign bv_5_23_n221 = 5'h17 ;
assign n222 =  ( n220 ) == ( bv_5_23_n221 )  ;
assign n223 = n219[7:1] ;
assign bv_7_91_n224 = 7'h5b ;
assign n225 =  ( n223 ) == ( bv_7_91_n224 )  ;
assign n226 =  ( n222 ) | ( n225 )  ;
assign bv_8_83_n227 = 8'h53 ;
assign n228 =  ( n219 ) == ( bv_8_83_n227 )  ;
assign n229 =  ( n226 ) | ( n228 )  ;
assign bv_8_181_n230 = 8'hb5 ;
assign n231 =  ( n219 ) == ( bv_8_181_n230 )  ;
assign n232 =  ( n229 ) | ( n231 )  ;
assign bv_8_180_n233 = 8'hb4 ;
assign n234 =  ( n219 ) == ( bv_8_180_n233 )  ;
assign n235 =  ( n232 ) | ( n234 )  ;
assign bv_8_213_n236 = 8'hd5 ;
assign n237 =  ( n219 ) == ( bv_8_213_n236 )  ;
assign n238 =  ( n235 ) | ( n237 )  ;
assign bv_8_32_n239 = 8'h20 ;
assign n240 =  ( n219 ) == ( bv_8_32_n239 )  ;
assign n241 =  ( n238 ) | ( n240 )  ;
assign bv_8_16_n242 = 8'h10 ;
assign n243 =  ( n219 ) == ( bv_8_16_n242 )  ;
assign n244 =  ( n241 ) | ( n243 )  ;
assign bv_8_48_n245 = 8'h30 ;
assign n246 =  ( n219 ) == ( bv_8_48_n245 )  ;
assign n247 =  ( n244 ) | ( n246 )  ;
assign bv_8_18_n248 = 8'h12 ;
assign n249 =  ( n219 ) == ( bv_8_18_n248 )  ;
assign n250 =  ( n247 ) | ( n249 )  ;
assign bv_8_2_n251 = 8'h2 ;
assign n252 =  ( n219 ) == ( bv_8_2_n251 )  ;
assign n253 =  ( n250 ) | ( n252 )  ;
assign bv_8_133_n254 = 8'h85 ;
assign n255 =  ( n219 ) == ( bv_8_133_n254 )  ;
assign n256 =  ( n253 ) | ( n255 )  ;
assign bv_8_117_n257 = 8'h75 ;
assign n258 =  ( n219 ) == ( bv_8_117_n257 )  ;
assign n259 =  ( n256 ) | ( n258 )  ;
assign bv_8_144_n260 = 8'h90 ;
assign n261 =  ( n219 ) == ( bv_8_144_n260 )  ;
assign n262 =  ( n259 ) | ( n261 )  ;
assign bv_8_67_n263 = 8'h43 ;
assign n264 =  ( n219 ) == ( bv_8_67_n263 )  ;
assign n265 =  ( n262 ) | ( n264 )  ;
assign bv_8_99_n266 = 8'h63 ;
assign n267 =  ( n219 ) == ( bv_8_99_n266 )  ;
assign n268 =  ( n265 ) | ( n267 )  ;
assign n269 = n219[4:0] ;
assign bv_5_17_n270 = 5'h11 ;
assign n271 =  ( n269 ) == ( bv_5_17_n270 )  ;
assign bv_5_1_n272 = 5'h1 ;
assign n273 =  ( n269 ) == ( bv_5_1_n272 )  ;
assign n274 =  ( n271 ) | ( n273 )  ;
assign bv_5_27_n275 = 5'h1b ;
assign n276 =  ( n220 ) == ( bv_5_27_n275 )  ;
assign n277 =  ( n274 ) | ( n276 )  ;
assign bv_5_21_n278 = 5'h15 ;
assign n279 =  ( n220 ) == ( bv_5_21_n278 )  ;
assign n280 =  ( n277 ) | ( n279 )  ;
assign bv_5_15_n281 = 5'hf ;
assign n282 =  ( n220 ) == ( bv_5_15_n281 )  ;
assign n283 =  ( n280 ) | ( n282 )  ;
assign n284 =  ( n220 ) == ( bv_5_17_n270 )  ;
assign n285 =  ( n283 ) | ( n284 )  ;
assign bv_7_67_n286 = 7'h43 ;
assign n287 =  ( n223 ) == ( bv_7_67_n286 )  ;
assign n288 =  ( n285 ) | ( n287 )  ;
assign bv_7_83_n289 = 7'h53 ;
assign n290 =  ( n223 ) == ( bv_7_83_n289 )  ;
assign n291 =  ( n288 ) | ( n290 )  ;
assign bv_7_59_n292 = 7'h3b ;
assign n293 =  ( n223 ) == ( bv_7_59_n292 )  ;
assign n294 =  ( n291 ) | ( n293 )  ;
assign bv_8_37_n295 = 8'h25 ;
assign n296 =  ( n219 ) == ( bv_8_37_n295 )  ;
assign n297 =  ( n294 ) | ( n296 )  ;
assign bv_8_36_n298 = 8'h24 ;
assign n299 =  ( n219 ) == ( bv_8_36_n298 )  ;
assign n300 =  ( n297 ) | ( n299 )  ;
assign bv_8_53_n301 = 8'h35 ;
assign n302 =  ( n219 ) == ( bv_8_53_n301 )  ;
assign n303 =  ( n300 ) | ( n302 )  ;
assign bv_8_52_n304 = 8'h34 ;
assign n305 =  ( n219 ) == ( bv_8_52_n304 )  ;
assign n306 =  ( n303 ) | ( n305 )  ;
assign bv_8_85_n307 = 8'h55 ;
assign n308 =  ( n219 ) == ( bv_8_85_n307 )  ;
assign n309 =  ( n306 ) | ( n308 )  ;
assign bv_8_84_n310 = 8'h54 ;
assign n311 =  ( n219 ) == ( bv_8_84_n310 )  ;
assign n312 =  ( n309 ) | ( n311 )  ;
assign bv_8_82_n313 = 8'h52 ;
assign n314 =  ( n219 ) == ( bv_8_82_n313 )  ;
assign n315 =  ( n312 ) | ( n314 )  ;
assign bv_8_130_n316 = 8'h82 ;
assign n317 =  ( n219 ) == ( bv_8_130_n316 )  ;
assign n318 =  ( n315 ) | ( n317 )  ;
assign bv_8_176_n319 = 8'hb0 ;
assign n320 =  ( n219 ) == ( bv_8_176_n319 )  ;
assign n321 =  ( n318 ) | ( n320 )  ;
assign bv_8_194_n322 = 8'hc2 ;
assign n323 =  ( n219 ) == ( bv_8_194_n322 )  ;
assign n324 =  ( n321 ) | ( n323 )  ;
assign bv_8_178_n325 = 8'hb2 ;
assign n326 =  ( n219 ) == ( bv_8_178_n325 )  ;
assign n327 =  ( n324 ) | ( n326 )  ;
assign bv_8_21_n328 = 8'h15 ;
assign n329 =  ( n219 ) == ( bv_8_21_n328 )  ;
assign n330 =  ( n327 ) | ( n329 )  ;
assign bv_8_5_n331 = 8'h5 ;
assign n332 =  ( n219 ) == ( bv_8_5_n331 )  ;
assign n333 =  ( n330 ) | ( n332 )  ;
assign bv_8_64_n334 = 8'h40 ;
assign n335 =  ( n219 ) == ( bv_8_64_n334 )  ;
assign n336 =  ( n333 ) | ( n335 )  ;
assign bv_8_80_n337 = 8'h50 ;
assign n338 =  ( n219 ) == ( bv_8_80_n337 )  ;
assign n339 =  ( n336 ) | ( n338 )  ;
assign bv_8_112_n340 = 8'h70 ;
assign n341 =  ( n219 ) == ( bv_8_112_n340 )  ;
assign n342 =  ( n339 ) | ( n341 )  ;
assign bv_8_96_n343 = 8'h60 ;
assign n344 =  ( n219 ) == ( bv_8_96_n343 )  ;
assign n345 =  ( n342 ) | ( n344 )  ;
assign bv_8_229_n346 = 8'he5 ;
assign n347 =  ( n219 ) == ( bv_8_229_n346 )  ;
assign n348 =  ( n345 ) | ( n347 )  ;
assign bv_8_116_n349 = 8'h74 ;
assign n350 =  ( n219 ) == ( bv_8_116_n349 )  ;
assign n351 =  ( n348 ) | ( n350 )  ;
assign bv_8_245_n352 = 8'hf5 ;
assign n353 =  ( n219 ) == ( bv_8_245_n352 )  ;
assign n354 =  ( n351 ) | ( n353 )  ;
assign bv_8_162_n355 = 8'ha2 ;
assign n356 =  ( n219 ) == ( bv_8_162_n355 )  ;
assign n357 =  ( n354 ) | ( n356 )  ;
assign bv_8_146_n358 = 8'h92 ;
assign n359 =  ( n219 ) == ( bv_8_146_n358 )  ;
assign n360 =  ( n357 ) | ( n359 )  ;
assign bv_8_69_n361 = 8'h45 ;
assign n362 =  ( n219 ) == ( bv_8_69_n361 )  ;
assign n363 =  ( n360 ) | ( n362 )  ;
assign bv_8_68_n364 = 8'h44 ;
assign n365 =  ( n219 ) == ( bv_8_68_n364 )  ;
assign n366 =  ( n363 ) | ( n365 )  ;
assign bv_8_66_n367 = 8'h42 ;
assign n368 =  ( n219 ) == ( bv_8_66_n367 )  ;
assign n369 =  ( n366 ) | ( n368 )  ;
assign bv_8_114_n370 = 8'h72 ;
assign n371 =  ( n219 ) == ( bv_8_114_n370 )  ;
assign n372 =  ( n369 ) | ( n371 )  ;
assign bv_8_160_n373 = 8'ha0 ;
assign n374 =  ( n219 ) == ( bv_8_160_n373 )  ;
assign n375 =  ( n372 ) | ( n374 )  ;
assign bv_8_208_n376 = 8'hd0 ;
assign n377 =  ( n219 ) == ( bv_8_208_n376 )  ;
assign n378 =  ( n375 ) | ( n377 )  ;
assign bv_8_192_n379 = 8'hc0 ;
assign n380 =  ( n219 ) == ( bv_8_192_n379 )  ;
assign n381 =  ( n378 ) | ( n380 )  ;
assign bv_8_210_n382 = 8'hd2 ;
assign n383 =  ( n219 ) == ( bv_8_210_n382 )  ;
assign n384 =  ( n381 ) | ( n383 )  ;
assign bv_8_128_n385 = 8'h80 ;
assign n386 =  ( n219 ) == ( bv_8_128_n385 )  ;
assign n387 =  ( n384 ) | ( n386 )  ;
assign bv_8_149_n388 = 8'h95 ;
assign n389 =  ( n219 ) == ( bv_8_149_n388 )  ;
assign n390 =  ( n387 ) | ( n389 )  ;
assign bv_8_148_n391 = 8'h94 ;
assign n392 =  ( n219 ) == ( bv_8_148_n391 )  ;
assign n393 =  ( n390 ) | ( n392 )  ;
assign bv_8_197_n394 = 8'hc5 ;
assign n395 =  ( n219 ) == ( bv_8_197_n394 )  ;
assign n396 =  ( n393 ) | ( n395 )  ;
assign bv_8_101_n397 = 8'h65 ;
assign n398 =  ( n219 ) == ( bv_8_101_n397 )  ;
assign n399 =  ( n396 ) | ( n398 )  ;
assign bv_8_100_n400 = 8'h64 ;
assign n401 =  ( n219 ) == ( bv_8_100_n400 )  ;
assign n402 =  ( n399 ) | ( n401 )  ;
assign bv_8_98_n403 = 8'h62 ;
assign n404 =  ( n219 ) == ( bv_8_98_n403 )  ;
assign n405 =  ( n402 ) | ( n404 )  ;
assign bv_2_2_n406 = 2'h2 ;
assign bv_2_1_n407 = 2'h1 ;
assign n408 =  ( n405 ) ? ( bv_2_2_n406 ) : ( bv_2_1_n407 ) ;
assign n409 =  ( n268 ) ? ( bv_2_3_n4 ) : ( n408 ) ;
assign n410 =  {14'd0 , n409}  ;
assign n411 =  ( n200 ) + ( n410 )  ;
assign n412 =  ( n196 ) ? ( n411 ) : ( pc ) ;
assign n413 =  ( n195 ) ? ( pc_buf ) : ( n412 ) ;
assign n414 =  ( pc_buf ) - ( bv_16_8_n197 )  ;
assign n415 =  {13'd0 , op_pos}  ;
assign n416 =  ( n414 ) + ( n415 )  ;
assign n417 =  {14'd0 , n409}  ;
assign n418 =  ( n416 ) + ( n417 )  ;
assign n419 =  ( pc_wr ) == ( 1'b1 )  ;
assign n420 =  ( pc_wr_sel ) == ( bv_3_6_n100 )  ;
assign n421 =  { ( des2 ) , ( des_acc ) }  ;
assign n422 =  ( pc_wr_sel ) == ( bv_3_0_n44 )  ;
assign n423 = pc_buf[15:8] ;
assign n424 =  { ( n423 ) , ( des_acc ) }  ;
assign n425 =  ( pc_wr_sel ) == ( bv_3_1_n49 )  ;
assign n426 = pc_buf[7:0] ;
assign n427 =  { ( des_acc ) , ( n426 ) }  ;
assign n428 =  ( pc_wr_sel ) == ( bv_3_4_n24 )  ;
assign bv_16_2_n429 = 16'h2 ;
assign n430 =  ( pc ) + ( bv_16_2_n429 )  ;
assign n431 = n430[15:11] ;
assign n432 = n219[7:5] ;
assign n433 =  { ( n431 ) , ( n432 ) }  ;
assign n434 =  ( op_pos ) == ( bv_3_0_n44 )  ;
assign n435 = idat_old[15:8] ;
assign n436 =  ( op_pos ) == ( bv_3_1_n49 )  ;
assign n437 = idat_old[23:16] ;
assign n438 =  ( op_pos ) == ( bv_3_2_n46 )  ;
assign n439 = idat_old[31:24] ;
assign n440 =  ( op_pos ) == ( bv_3_3_n52 )  ;
assign n441 = idat_cur[7:0] ;
assign n442 =  ( op_pos ) == ( bv_3_4_n24 )  ;
assign n443 = idat_cur[15:8] ;
assign n444 = idat_cur[23:16] ;
assign n445 =  ( n442 ) ? ( n443 ) : ( n444 ) ;
assign n446 =  ( n440 ) ? ( n441 ) : ( n445 ) ;
assign n447 =  ( n438 ) ? ( n439 ) : ( n446 ) ;
assign n448 =  ( n436 ) ? ( n437 ) : ( n447 ) ;
assign n449 =  ( n434 ) ? ( n435 ) : ( n448 ) ;
assign n450 =  ( rd ) ? ( n449 ) : ( op2_buff ) ;
assign n451 =  { ( n433 ) , ( n450 ) }  ;
assign n452 =  ( pc_wr_sel ) == ( bv_3_5_n97 )  ;
assign n453 =  ( op_pos ) == ( bv_3_0_n44 )  ;
assign n454 = idat_old[23:16] ;
assign n455 =  ( op_pos ) == ( bv_3_1_n49 )  ;
assign n456 = idat_old[31:24] ;
assign n457 =  ( op_pos ) == ( bv_3_2_n46 )  ;
assign n458 = idat_cur[7:0] ;
assign n459 =  ( op_pos ) == ( bv_3_3_n52 )  ;
assign n460 = idat_cur[15:8] ;
assign n461 =  ( op_pos ) == ( bv_3_4_n24 )  ;
assign n462 = idat_cur[23:16] ;
assign n463 = idat_cur[31:24] ;
assign n464 =  ( n461 ) ? ( n462 ) : ( n463 ) ;
assign n465 =  ( n459 ) ? ( n460 ) : ( n464 ) ;
assign n466 =  ( n457 ) ? ( n458 ) : ( n465 ) ;
assign n467 =  ( n455 ) ? ( n456 ) : ( n466 ) ;
assign n468 =  ( n453 ) ? ( n454 ) : ( n467 ) ;
assign n469 =  ( rd ) ? ( n468 ) : ( op3_buff ) ;
assign n470 =  { ( n450 ) , ( n469 ) }  ;
assign n471 =  ( pc_wr_sel ) == ( bv_3_2_n46 )  ;
assign n472 = pc_wr_sel[0:0] ;
assign n473 =  ( n472 ) == ( bv_1_1_n1 )  ;
assign n474 =  ( n473 ) ? ( n469 ) : ( n450 ) ;
assign n475 = n474[7:7] ;
assign n476 =  ( n475 ) == ( bv_1_1_n1 )  ;
assign n477 = pc[15:8] ;
assign bv_7_0_n478 = 7'h0 ;
assign n479 = pc[7:0] ;
assign n480 =  { ( bv_1_0_n10 ) , ( n479 ) }  ;
assign n481 =  { ( bv_1_0_n10 ) , ( n474 ) }  ;
assign n482 =  ( n480 ) + ( n481 )  ;
assign n483 = n482[8:8] ;
assign n484 = ~ ( n483 ) ;
assign n485 =  { ( bv_7_0_n478 ) , ( n484 ) }  ;
assign n486 =  ( n477 ) - ( n485 )  ;
assign n487 = n482[7:0] ;
assign n488 =  { ( n486 ) , ( n487 ) }  ;
assign n489 =  { ( bv_8_0_n156 ) , ( n474 ) }  ;
assign n490 =  ( pc ) + ( n489 )  ;
assign n491 =  ( n476 ) ? ( n488 ) : ( n490 ) ;
assign n492 =  ( pc_wr_sel ) == ( bv_3_3_n52 )  ;
assign n493 =  ( n492 ) ? ( n491 ) : ( pc_buf ) ;
assign n494 =  ( n471 ) ? ( n491 ) : ( n493 ) ;
assign n495 =  ( n452 ) ? ( n470 ) : ( n494 ) ;
assign n496 =  ( n428 ) ? ( n451 ) : ( n495 ) ;
assign n497 =  ( n425 ) ? ( n427 ) : ( n496 ) ;
assign n498 =  ( n422 ) ? ( n424 ) : ( n497 ) ;
assign n499 =  ( n420 ) ? ( n421 ) : ( n498 ) ;
assign bv_16_4_n500 = 16'h4 ;
assign n501 =  ( pc_buf ) + ( bv_16_4_n500 )  ;
assign n502 =  ( n419 ) ? ( n499 ) : ( n501 ) ;
assign n503 =  ( pc_wr ) == ( 1'b1 )  ;
assign n504 =  ( n503 ) ? ( n499 ) : ( pc_buf ) ;
assign n505 =  ( rd ) ? ( n449 ) : ( op2_buff ) ;
assign n506 =  ( rd ) ? ( n468 ) : ( op3_buff ) ;
assign n507 =  ( op_pos ) == ( bv_3_5_n97 )  ;
assign n508 =  ( n409 ) == ( bv_2_3_n4 )  ;
assign n509 =  ( n507 ) & (n508 )  ;
assign n510 =  ( n509 ) ? ( bv_1_1_n1 ) : ( bv_1_0_n10 ) ;
assign n511 = op_pos[1:0] ;
assign n512 =  ( n511 ) + ( n409 )  ;
assign n513 =  { ( n510 ) , ( n512 ) }  ;
assign n514 =  ( pc_wr_r2 ) ? ( bv_3_4_n24 ) : ( n513 ) ;
assign n515 =  { ( bv_1_0_n10 ) , ( n409 ) }  ;
assign n516 =  ( op_pos ) + ( n515 )  ;
assign bv_8_50_n517 = 8'h32 ;
assign n518 =  ( n217 ) == ( bv_8_50_n517 )  ;
assign n519 =  ( mem_wait ) == ( 1'b0 )  ;
assign n520 =  ( n518 ) & (n519 )  ;
assign n521 =  ( n520 ) ? ( 1'b1 ) : ( 1'b0 )  ;
assign n522 =  ( n217 ) == ( bv_8_50_n517 )  ;
assign n523 =  ( mem_wait ) == ( 1'b0 )  ;
assign n524 =  ( n522 ) & (n523 )  ;
assign n525 =  ( n524 ) ? ( 1'b1 ) : ( 1'b0 )  ;
assign n526 =  ( pc_wr_sel ) == ( bv_3_1_n49 )  ;
assign n527 = ~ ( n526 )  ;
assign n528 =  ( pc_wr ) & (n527 )  ;
assign n529 =  ( pc_wr_sel ) == ( bv_3_1_n49 )  ;
assign n530 = ~ ( n529 )  ;
assign n531 =  ( pc_wr ) & (n530 )  ;
assign n532 =  ( pc_wr_sel ) == ( bv_3_1_n49 )  ;
assign n533 = ~ ( n532 )  ;
assign n534 =  ( pc_wr ) & (n533 )  ;
assign n535 =  ( ram_rd_sel ) == ( bv_3_1_n49 )  ;
assign n536 =  ( ram_rd_sel ) == ( bv_3_3_n52 )  ;
assign n537 =  ( n535 ) | ( n536 )  ;
assign n538 =  ( n537 ) ? ( 1'b1 ) : ( 1'b0 )  ;
assign n539 =  ( ram_rd_sel ) == ( bv_3_0_n44 )  ;
assign n540 =  ( ram_rd_sel ) == ( bv_3_1_n49 )  ;
assign n541 = ri[7:7] ;
assign n542 =  ( bv_1_1_n1 ) == ( n541 )  ;
assign n543 =  ( ram_rd_sel ) == ( bv_3_2_n46 )  ;
assign n544 = n450[7:7] ;
assign n545 =  ( bv_1_1_n1 ) == ( n544 )  ;
assign n546 =  ( ram_rd_sel ) == ( bv_3_3_n52 )  ;
assign n547 = sp[7:7] ;
assign n548 =  ( bv_1_1_n1 ) == ( n547 )  ;
assign n549 =  ( ram_rd_sel ) == ( bv_3_4_n24 )  ;
assign n550 =  ( ram_rd_sel ) == ( bv_3_5_n97 )  ;
assign n551 =  ( ram_rd_sel ) == ( bv_3_6_n100 )  ;
assign n552 =  ( ram_rd_sel ) == ( bv_3_7_n103 )  ;
assign n553 =  ( n552 ) ? ( 1'b1 ) : ( 1'b0 )  ;
assign n554 =  ( n551 ) ? ( 1'b1 ) : ( n553 )  ;
assign n555 =  ( n550 ) ? ( 1'b1 ) : ( n554 )  ;
assign n556 =  ( n549 ) ? ( 1'b1 ) : ( n555 )  ;
assign n557 =  ( n546 ) ? ( n548 ) : ( n556 )  ;
assign n558 =  ( n543 ) ? ( n545 ) : ( n557 )  ;
assign n559 =  ( n540 ) ? ( n542 ) : ( n558 )  ;
assign n560 =  ( n539 ) ? ( 1'b0 ) : ( n559 )  ;
assign n561 = idat_onchip[7:0] ;
assign n562 =  ( istb_t ) ? ( n561 ) : ( cdata ) ;
assign n563 =  ( istb_t ) ? ( bv_1_1_n1 ) : ( bv_1_0_n10 ) ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_MEMORY_INTERFACE_THREE_PORTS_valid__) begin
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[3] ) begin
           istb_t <= 1'b1;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[5] ) begin
           istb_t <= 1'b0;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[6] ) begin
           istb_t <= 1'b1;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[8] ) begin
           istb_t <= 1'b0;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[9] ) begin
           istb_t <= 1'b1;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[11] ) begin
           istb_t <= 1'b0;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[5] ) begin
           idat_ir <= n146;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[8] ) begin
           idat_ir <= n149;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[11] ) begin
           idat_ir <= n152;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[3] ) begin
           imem_wait <= 1'b1;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_1__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[4] ) begin
           imem_wait <= 1'b0;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[6] ) begin
           imem_wait <= 1'b1;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_1__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[7] ) begin
           imem_wait <= 1'b0;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[9] ) begin
           imem_wait <= 1'b1;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_1__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[10] ) begin
           imem_wait <= 1'b0;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[3] ) begin
           dstb_o <= 1'b0;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_1__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[4] ) begin
           dstb_o <= 1'b0;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[5] ) begin
           dstb_o <= 1'b0;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[6] ) begin
           dstb_o <= 1'b1;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_1__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[7] ) begin
           dstb_o <= 1'b1;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[8] ) begin
           dstb_o <= 1'b1;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[6] ) begin
           ddat_o <= n157;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_1__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[7] ) begin
           ddat_o <= n161;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[8] ) begin
           ddat_o <= n165;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[6] ) begin
           dadr_o <= n170;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_1__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[7] ) begin
           dadr_o <= n175;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[8] ) begin
           dadr_o <= n180;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[3] ) begin
           dack_ir <= 1'b1;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_1__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[4] ) begin
           dack_ir <= 1'b1;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[5] ) begin
           dack_ir <= 1'b1;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[6] ) begin
           dack_ir <= 1'b0;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_1__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[7] ) begin
           dack_ir <= 1'b0;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[8] ) begin
           dack_ir <= 1'b0;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[9] ) begin
           dack_ir <= 1'b0;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_1__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[10] ) begin
           dack_ir <= 1'b0;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[11] ) begin
           dack_ir <= 1'b0;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[3] ) begin
           ddat_ir <= ddat_i;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_1__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[4] ) begin
           ddat_ir <= ddat_i;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[5] ) begin
           ddat_ir <= ddat_i;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[3] ) begin
           dwe_o <= 1'b0;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_1__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[4] ) begin
           dwe_o <= 1'b0;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[5] ) begin
           dwe_o <= 1'b0;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[6] ) begin
           dwe_o <= n184;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_1__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[7] ) begin
           dwe_o <= n188;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[8] ) begin
           dwe_o <= n192;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[3] ) begin
           mem_wait <= 1'b1;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_1__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[4] ) begin
           mem_wait <= pc_wr_r;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_0_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[5] ) begin
           mem_wait <= pc_wr_r;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[6] ) begin
           mem_wait <= 1'b1;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_1__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[7] ) begin
           mem_wait <= 1'b1;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_1_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[8] ) begin
           mem_wait <= 1'b1;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_0__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[9] ) begin
           mem_wait <= 1'b1;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_1__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[10] ) begin
           mem_wait <= n193;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_xram_2_irom_2__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[11] ) begin
           mem_wait <= n194;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           pc <= n413;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[1] ) begin
           pc <= n418;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[2] ) begin
           pc <= pc;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           pc_buf <= n502;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[1] ) begin
           pc_buf <= n504;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           idat_cur <= idat_onchip;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           idat_old <= idat_cur;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           op2_buff <= n505;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[1] ) begin
           op2_buff <= n449;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           op3_buff <= n506;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[1] ) begin
           op3_buff <= n468;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           op_pos <= n514;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[1] ) begin
           op_pos <= n516;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[2] ) begin
           op_pos <= op_pos;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           reti <= n521;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[1] ) begin
           reti <= n525;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           pc_wr_r <= n528;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[1] ) begin
           pc_wr_r <= n531;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[2] ) begin
           pc_wr_r <= n534;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           pc_wr_r2 <= pc_wr_r;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[1] ) begin
           pc_wr_r2 <= pc_wr_r;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[2] ) begin
           pc_wr_r2 <= pc_wr_r;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           imm_r <= n450;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[1] ) begin
           imm_r <= n450;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[2] ) begin
           imm_r <= n450;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           imm2_r <= n469;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[1] ) begin
           imm2_r <= n469;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[2] ) begin
           imm2_r <= n469;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           rn_r <= rn;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[1] ) begin
           rn_r <= rn;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[2] ) begin
           rn_r <= rn;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           ri_r <= ri;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[1] ) begin
           ri_r <= ri;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[2] ) begin
           ri_r <= ri;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           rd_ind <= n538;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[1] ) begin
           rd_ind <= n538;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[2] ) begin
           rd_ind <= n538;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           rd_addr_r <= n560;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[1] ) begin
           rd_addr_r <= n560;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[2] ) begin
           rd_addr_r <= n560;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           cdata <= n562;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[1] ) begin
           cdata <= n562;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[2] ) begin
           cdata <= n562;
       end
       if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_load_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[0] ) begin
           cdone <= n563;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_new_inst__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[1] ) begin
           cdone <= n563;
       end else if ( __ILA_MEMORY_INTERFACE_THREE_PORTS_decode_of_multi_cycle__ && __ILA_MEMORY_INTERFACE_THREE_PORTS_grant__[2] ) begin
           cdone <= n563;
       end
   end
end
endmodule
