module NVDLA_CACC(
__ILA_NVDLA_CACC_grant__,
abuf0,
abuf1,
abuf2,
abuf3,
act_i_a0,
act_i_a1,
act_i_a2,
act_i_a3,
act_i_a4,
act_i_a5,
act_i_a6,
act_i_a7,
act_i_b0,
act_i_b1,
act_i_b2,
act_i_b3,
act_i_b4,
act_i_b5,
act_i_b6,
act_i_b7,
bbuf4,
bbuf5,
bbuf6,
bbuf7,
cacc2sdp_ready_i,
clk,
csb_req_pd_i,
csb_req_valid_i,
mask_a_i,
mask_b_i,
mode_a_i,
mode_b_i,
nondet_act_func_n251,
pd_a_i,
pd_b_i,
rst,
valid_a_i,
valid_b_i,
__ILA_NVDLA_CACC_acc_decode__,
__ILA_NVDLA_CACC_decode_of_compute__,
__ILA_NVDLA_CACC_decode_of_send_credit__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__batch_number_0__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__batch_number_1__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__cfg_0__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__cfg_1__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__clip_cfg_0__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__clip_cfg_1__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_addr_0__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_addr_1__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_map_0__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_map_1__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_00__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_01__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_10__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_11__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__line_stride_0__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__line_stride_1__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__op_enable_0__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__op_enable_1__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__pointer__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__surf_stride_0__,
__ILA_NVDLA_CACC_decode_of_set__SPACE__surf_stride_1__,
__ILA_NVDLA_CACC_valid__,
producer,
conv_mode0,
conv_mode1,
proc_precision0,
proc_precision1,
op_en0,
op_en1,
dataout_width_0,
dataout_width_1,
dataout_height_0,
dataout_height_1,
dataout_channel_0,
dataout_channel_1,
dataout_addr_0,
dataout_addr_1,
batch_number_0,
batch_number_1,
line_stride_0,
line_stride_1,
surf_stride_0,
surf_stride_1,
line_packed_0,
line_packed_1,
surf_packed_0,
surf_packed_1,
clip_cfg_0,
clip_cfg_1,
csb_req_ready_o,
ready_a_o,
ready_b_o,
cacc2sdp_pd_o,
cacc2sdp_valid_o,
cacc2sc_credit_valid_o,
cacc2sc_credit_pd_o
);
input     [22:0] __ILA_NVDLA_CACC_grant__;
input    [767:0] abuf0;
input    [767:0] abuf1;
input    [767:0] abuf2;
input    [767:0] abuf3;
input    [175:0] act_i_a0;
input    [175:0] act_i_a1;
input    [175:0] act_i_a2;
input    [175:0] act_i_a3;
input    [175:0] act_i_a4;
input    [175:0] act_i_a5;
input    [175:0] act_i_a6;
input    [175:0] act_i_a7;
input    [175:0] act_i_b0;
input    [175:0] act_i_b1;
input    [175:0] act_i_b2;
input    [175:0] act_i_b3;
input    [175:0] act_i_b4;
input    [175:0] act_i_b5;
input    [175:0] act_i_b6;
input    [175:0] act_i_b7;
input    [543:0] bbuf4;
input    [543:0] bbuf5;
input    [543:0] bbuf6;
input    [543:0] bbuf7;
input            cacc2sdp_ready_i;
input            clk;
input     [62:0] csb_req_pd_i;
input            csb_req_valid_i;
input    [175:0] mask_a_i;
input    [175:0] mask_b_i;
input      [7:0] mode_a_i;
input      [7:0] mode_b_i;
input    [513:0] nondet_act_func_n251;
input      [8:0] pd_a_i;
input      [8:0] pd_b_i;
input            rst;
input            valid_a_i;
input            valid_b_i;
output     [22:0] __ILA_NVDLA_CACC_acc_decode__;
output            __ILA_NVDLA_CACC_decode_of_compute__;
output            __ILA_NVDLA_CACC_decode_of_send_credit__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__batch_number_0__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__batch_number_1__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__cfg_0__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__cfg_1__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__clip_cfg_0__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__clip_cfg_1__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_addr_0__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_addr_1__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_map_0__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_map_1__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_00__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_01__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_10__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_11__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__line_stride_0__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__line_stride_1__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__op_enable_0__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__op_enable_1__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__pointer__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__surf_stride_0__;
output            __ILA_NVDLA_CACC_decode_of_set__SPACE__surf_stride_1__;
output            __ILA_NVDLA_CACC_valid__;
output reg            producer;
output reg            conv_mode0;
output reg            conv_mode1;
output reg      [1:0] proc_precision0;
output reg      [1:0] proc_precision1;
output reg            op_en0;
output reg            op_en1;
output reg     [12:0] dataout_width_0;
output reg     [12:0] dataout_width_1;
output reg     [12:0] dataout_height_0;
output reg     [12:0] dataout_height_1;
output reg     [12:0] dataout_channel_0;
output reg     [12:0] dataout_channel_1;
output reg     [26:0] dataout_addr_0;
output reg     [26:0] dataout_addr_1;
output reg      [4:0] batch_number_0;
output reg      [4:0] batch_number_1;
output reg     [18:0] line_stride_0;
output reg     [18:0] line_stride_1;
output reg     [18:0] surf_stride_0;
output reg     [18:0] surf_stride_1;
output reg            line_packed_0;
output reg            line_packed_1;
output reg            surf_packed_0;
output reg            surf_packed_1;
output reg      [4:0] clip_cfg_0;
output reg      [4:0] clip_cfg_1;
output reg            csb_req_ready_o;
output reg            ready_a_o;
output reg            ready_b_o;
output reg    [513:0] cacc2sdp_pd_o;
output reg            cacc2sdp_valid_o;
output reg            cacc2sc_credit_valid_o;
output reg      [2:0] cacc2sc_credit_pd_o;
wire     [22:0] __ILA_NVDLA_CACC_acc_decode__;
wire            __ILA_NVDLA_CACC_decode_of_compute__;
wire            __ILA_NVDLA_CACC_decode_of_send_credit__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__batch_number_0__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__batch_number_1__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__cfg_0__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__cfg_1__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__clip_cfg_0__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__clip_cfg_1__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_addr_0__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_addr_1__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_map_0__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_map_1__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_00__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_01__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_10__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_11__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__line_stride_0__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__line_stride_1__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__op_enable_0__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__op_enable_1__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__pointer__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__surf_stride_0__;
wire            __ILA_NVDLA_CACC_decode_of_set__SPACE__surf_stride_1__;
wire     [22:0] __ILA_NVDLA_CACC_grant__;
wire            __ILA_NVDLA_CACC_valid__;
wire    [767:0] abuf0;
wire    [767:0] abuf1;
wire    [767:0] abuf2;
wire    [767:0] abuf3;
wire    [175:0] act_i_a0;
wire    [175:0] act_i_a1;
wire    [175:0] act_i_a2;
wire    [175:0] act_i_a3;
wire    [175:0] act_i_a4;
wire    [175:0] act_i_a5;
wire    [175:0] act_i_a6;
wire    [175:0] act_i_a7;
wire    [175:0] act_i_b0;
wire    [175:0] act_i_b1;
wire    [175:0] act_i_b2;
wire    [175:0] act_i_b3;
wire    [175:0] act_i_b4;
wire    [175:0] act_i_b5;
wire    [175:0] act_i_b6;
wire    [175:0] act_i_b7;
wire    [543:0] bbuf4;
wire    [543:0] bbuf5;
wire    [543:0] bbuf6;
wire    [543:0] bbuf7;
wire     [11:0] bv_12_12_n35;
wire     [11:0] bv_12_16_n56;
wire     [11:0] bv_12_20_n77;
wire     [11:0] bv_12_24_n98;
wire     [11:0] bv_12_28_n119;
wire     [11:0] bv_12_32_n140;
wire     [11:0] bv_12_36_n161;
wire     [11:0] bv_12_40_n182;
wire     [11:0] bv_12_44_n203;
wire     [11:0] bv_12_4_n5;
wire     [11:0] bv_12_8_n14;
wire            bv_1_1_n8;
wire      [1:0] bv_2_0_n2;
wire      [2:0] bv_3_1_n253;
wire            cacc2sdp_ready_i;
wire            clk;
wire     [62:0] csb_req_pd_i;
wire            csb_req_valid_i;
wire    [175:0] mask_a_i;
wire    [175:0] mask_b_i;
wire      [7:0] mode_a_i;
wire      [7:0] mode_b_i;
wire     [21:0] n0;
wire     [21:0] n1;
wire            n10;
wire            n100;
wire            n101;
wire            n102;
wire            n103;
wire            n104;
wire            n105;
wire            n106;
wire            n107;
wire     [11:0] n108;
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
wire     [11:0] n118;
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
wire     [11:0] n129;
wire     [11:0] n13;
wire            n130;
wire            n131;
wire            n132;
wire            n133;
wire            n134;
wire            n135;
wire            n136;
wire            n137;
wire            n138;
wire     [11:0] n139;
wire            n141;
wire            n142;
wire            n143;
wire            n144;
wire            n145;
wire            n146;
wire            n147;
wire            n148;
wire            n149;
wire            n15;
wire     [11:0] n150;
wire            n151;
wire            n152;
wire            n153;
wire            n154;
wire            n155;
wire            n156;
wire            n157;
wire            n158;
wire            n159;
wire            n16;
wire     [11:0] n160;
wire            n162;
wire            n163;
wire            n164;
wire            n165;
wire            n166;
wire            n167;
wire            n168;
wire            n169;
wire            n17;
wire            n170;
wire     [11:0] n171;
wire            n172;
wire            n173;
wire            n174;
wire            n175;
wire            n176;
wire            n177;
wire            n178;
wire            n179;
wire            n18;
wire            n180;
wire     [11:0] n181;
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
wire     [11:0] n192;
wire            n193;
wire            n194;
wire            n195;
wire            n196;
wire            n197;
wire            n198;
wire            n199;
wire            n20;
wire            n200;
wire            n201;
wire     [11:0] n202;
wire            n204;
wire            n205;
wire            n206;
wire            n207;
wire            n208;
wire            n209;
wire            n21;
wire            n210;
wire            n211;
wire            n212;
wire     [11:0] n213;
wire            n214;
wire            n215;
wire            n216;
wire            n217;
wire            n218;
wire            n219;
wire            n22;
wire            n220;
wire            n221;
wire            n222;
wire            n223;
wire            n224;
wire     [31:0] n225;
wire            n226;
wire            n227;
wire            n228;
wire      [1:0] n229;
wire            n23;
wire      [1:0] n230;
wire     [12:0] n231;
wire     [12:0] n232;
wire     [12:0] n233;
wire     [12:0] n234;
wire     [12:0] n235;
wire     [12:0] n236;
wire     [26:0] n237;
wire     [26:0] n238;
wire      [4:0] n239;
wire     [11:0] n24;
wire      [4:0] n240;
wire     [18:0] n241;
wire     [18:0] n242;
wire     [18:0] n243;
wire     [18:0] n244;
wire            n245;
wire            n246;
wire            n247;
wire            n248;
wire      [4:0] n249;
wire            n25;
wire      [4:0] n250;
wire    [513:0] n252;
wire            n26;
wire            n27;
wire            n28;
wire            n29;
wire     [23:0] n3;
wire            n30;
wire            n31;
wire            n32;
wire            n33;
wire     [11:0] n34;
wire            n36;
wire            n37;
wire            n38;
wire            n39;
wire     [11:0] n4;
wire            n40;
wire            n41;
wire            n42;
wire            n43;
wire            n44;
wire     [11:0] n45;
wire            n46;
wire            n47;
wire            n48;
wire            n49;
wire            n50;
wire            n51;
wire            n52;
wire            n53;
wire            n54;
wire     [11:0] n55;
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
wire     [11:0] n66;
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
wire     [11:0] n76;
wire            n78;
wire            n79;
wire            n80;
wire            n81;
wire            n82;
wire            n83;
wire            n84;
wire            n85;
wire            n86;
wire     [11:0] n87;
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
wire     [11:0] n97;
wire            n99;
wire    [513:0] nondet_act_func_n251;
wire      [8:0] pd_a_i;
wire      [8:0] pd_b_i;
wire            rst;
wire            valid_a_i;
wire            valid_b_i;
assign __ILA_NVDLA_CACC_valid__ = 1'b1 ;
assign n0 = csb_req_pd_i[21:0] ;
assign n1 = n0[21:0] ;
assign bv_2_0_n2 = 2'h0 ;
assign n3 =  { ( n1 ) , ( bv_2_0_n2 ) }  ;
assign n4 = n3[11:0] ;
assign bv_12_4_n5 = 12'h4 ;
assign n6 =  ( n4 ) == ( bv_12_4_n5 )  ;
assign n7 = csb_req_pd_i[54:54] ;
assign bv_1_1_n8 = 1'h1 ;
assign n9 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n10 =  ( n6 ) & (n9 )  ;
assign n11 =  ( n10 ) & (csb_req_valid_i )  ;
assign n12 =  ( n11 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__pointer__ = n12 ;
assign __ILA_NVDLA_CACC_acc_decode__[0] = __ILA_NVDLA_CACC_decode_of_set__SPACE__pointer__ ;
assign n13 = n3[11:0] ;
assign bv_12_8_n14 = 12'h8 ;
assign n15 =  ( n13 ) == ( bv_12_8_n14 )  ;
assign n16 =  ( producer ) == ( 1'b0 )  ;
assign n17 =  ( n15 ) & (n16 )  ;
assign n18 =  ( op_en0 ) == ( 1'b0 )  ;
assign n19 =  ( n17 ) & (n18 )  ;
assign n20 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n21 =  ( n19 ) & (n20 )  ;
assign n22 =  ( n21 ) & (csb_req_valid_i )  ;
assign n23 =  ( n22 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__op_enable_0__ = n23 ;
assign __ILA_NVDLA_CACC_acc_decode__[1] = __ILA_NVDLA_CACC_decode_of_set__SPACE__op_enable_0__ ;
assign n24 = n3[11:0] ;
assign n25 =  ( n24 ) == ( bv_12_8_n14 )  ;
assign n26 =  ( producer ) == ( 1'b1 )  ;
assign n27 =  ( n25 ) & (n26 )  ;
assign n28 =  ( op_en1 ) == ( 1'b0 )  ;
assign n29 =  ( n27 ) & (n28 )  ;
assign n30 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n31 =  ( n29 ) & (n30 )  ;
assign n32 =  ( n31 ) & (csb_req_valid_i )  ;
assign n33 =  ( n32 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__op_enable_1__ = n33 ;
assign __ILA_NVDLA_CACC_acc_decode__[2] = __ILA_NVDLA_CACC_decode_of_set__SPACE__op_enable_1__ ;
assign n34 = n3[11:0] ;
assign bv_12_12_n35 = 12'hc ;
assign n36 =  ( n34 ) == ( bv_12_12_n35 )  ;
assign n37 =  ( producer ) == ( 1'b0 )  ;
assign n38 =  ( n36 ) & (n37 )  ;
assign n39 =  ( op_en0 ) == ( 1'b0 )  ;
assign n40 =  ( n38 ) & (n39 )  ;
assign n41 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n42 =  ( n40 ) & (n41 )  ;
assign n43 =  ( n42 ) & (csb_req_valid_i )  ;
assign n44 =  ( n43 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__cfg_0__ = n44 ;
assign __ILA_NVDLA_CACC_acc_decode__[3] = __ILA_NVDLA_CACC_decode_of_set__SPACE__cfg_0__ ;
assign n45 = n3[11:0] ;
assign n46 =  ( n45 ) == ( bv_12_12_n35 )  ;
assign n47 =  ( producer ) == ( 1'b1 )  ;
assign n48 =  ( n46 ) & (n47 )  ;
assign n49 =  ( op_en1 ) == ( 1'b0 )  ;
assign n50 =  ( n48 ) & (n49 )  ;
assign n51 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n52 =  ( n50 ) & (n51 )  ;
assign n53 =  ( n52 ) & (csb_req_valid_i )  ;
assign n54 =  ( n53 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__cfg_1__ = n54 ;
assign __ILA_NVDLA_CACC_acc_decode__[4] = __ILA_NVDLA_CACC_decode_of_set__SPACE__cfg_1__ ;
assign n55 = n3[11:0] ;
assign bv_12_16_n56 = 12'h10 ;
assign n57 =  ( n55 ) == ( bv_12_16_n56 )  ;
assign n58 =  ( producer ) == ( 1'b0 )  ;
assign n59 =  ( n57 ) & (n58 )  ;
assign n60 =  ( op_en0 ) == ( 1'b0 )  ;
assign n61 =  ( n59 ) & (n60 )  ;
assign n62 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n63 =  ( n61 ) & (n62 )  ;
assign n64 =  ( n63 ) & (csb_req_valid_i )  ;
assign n65 =  ( n64 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_00__ = n65 ;
assign __ILA_NVDLA_CACC_acc_decode__[5] = __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_00__ ;
assign n66 = n3[11:0] ;
assign n67 =  ( n66 ) == ( bv_12_16_n56 )  ;
assign n68 =  ( producer ) == ( 1'b1 )  ;
assign n69 =  ( n67 ) & (n68 )  ;
assign n70 =  ( op_en1 ) == ( 1'b0 )  ;
assign n71 =  ( n69 ) & (n70 )  ;
assign n72 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n73 =  ( n71 ) & (n72 )  ;
assign n74 =  ( n73 ) & (csb_req_valid_i )  ;
assign n75 =  ( n74 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_01__ = n75 ;
assign __ILA_NVDLA_CACC_acc_decode__[6] = __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_01__ ;
assign n76 = n3[11:0] ;
assign bv_12_20_n77 = 12'h14 ;
assign n78 =  ( n76 ) == ( bv_12_20_n77 )  ;
assign n79 =  ( producer ) == ( 1'b0 )  ;
assign n80 =  ( n78 ) & (n79 )  ;
assign n81 =  ( op_en0 ) == ( 1'b0 )  ;
assign n82 =  ( n80 ) & (n81 )  ;
assign n83 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n84 =  ( n82 ) & (n83 )  ;
assign n85 =  ( n84 ) & (csb_req_valid_i )  ;
assign n86 =  ( n85 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_10__ = n86 ;
assign __ILA_NVDLA_CACC_acc_decode__[7] = __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_10__ ;
assign n87 = n3[11:0] ;
assign n88 =  ( n87 ) == ( bv_12_20_n77 )  ;
assign n89 =  ( producer ) == ( 1'b1 )  ;
assign n90 =  ( n88 ) & (n89 )  ;
assign n91 =  ( op_en1 ) == ( 1'b0 )  ;
assign n92 =  ( n90 ) & (n91 )  ;
assign n93 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n94 =  ( n92 ) & (n93 )  ;
assign n95 =  ( n94 ) & (csb_req_valid_i )  ;
assign n96 =  ( n95 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_11__ = n96 ;
assign __ILA_NVDLA_CACC_acc_decode__[8] = __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_11__ ;
assign n97 = n3[11:0] ;
assign bv_12_24_n98 = 12'h18 ;
assign n99 =  ( n97 ) == ( bv_12_24_n98 )  ;
assign n100 =  ( producer ) == ( 1'b0 )  ;
assign n101 =  ( n99 ) & (n100 )  ;
assign n102 =  ( op_en0 ) == ( 1'b0 )  ;
assign n103 =  ( n101 ) & (n102 )  ;
assign n104 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n105 =  ( n103 ) & (n104 )  ;
assign n106 =  ( n105 ) & (csb_req_valid_i )  ;
assign n107 =  ( n106 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_addr_0__ = n107 ;
assign __ILA_NVDLA_CACC_acc_decode__[9] = __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_addr_0__ ;
assign n108 = n3[11:0] ;
assign n109 =  ( n108 ) == ( bv_12_24_n98 )  ;
assign n110 =  ( producer ) == ( 1'b1 )  ;
assign n111 =  ( n109 ) & (n110 )  ;
assign n112 =  ( op_en1 ) == ( 1'b0 )  ;
assign n113 =  ( n111 ) & (n112 )  ;
assign n114 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n115 =  ( n113 ) & (n114 )  ;
assign n116 =  ( n115 ) & (csb_req_valid_i )  ;
assign n117 =  ( n116 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_addr_1__ = n117 ;
assign __ILA_NVDLA_CACC_acc_decode__[10] = __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_addr_1__ ;
assign n118 = n3[11:0] ;
assign bv_12_28_n119 = 12'h1c ;
assign n120 =  ( n118 ) == ( bv_12_28_n119 )  ;
assign n121 =  ( producer ) == ( 1'b0 )  ;
assign n122 =  ( n120 ) & (n121 )  ;
assign n123 =  ( op_en0 ) == ( 1'b0 )  ;
assign n124 =  ( n122 ) & (n123 )  ;
assign n125 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n126 =  ( n124 ) & (n125 )  ;
assign n127 =  ( n126 ) & (csb_req_valid_i )  ;
assign n128 =  ( n127 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__batch_number_0__ = n128 ;
assign __ILA_NVDLA_CACC_acc_decode__[11] = __ILA_NVDLA_CACC_decode_of_set__SPACE__batch_number_0__ ;
assign n129 = n3[11:0] ;
assign n130 =  ( n129 ) == ( bv_12_28_n119 )  ;
assign n131 =  ( producer ) == ( 1'b1 )  ;
assign n132 =  ( n130 ) & (n131 )  ;
assign n133 =  ( op_en1 ) == ( 1'b0 )  ;
assign n134 =  ( n132 ) & (n133 )  ;
assign n135 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n136 =  ( n134 ) & (n135 )  ;
assign n137 =  ( n136 ) & (csb_req_valid_i )  ;
assign n138 =  ( n137 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__batch_number_1__ = n138 ;
assign __ILA_NVDLA_CACC_acc_decode__[12] = __ILA_NVDLA_CACC_decode_of_set__SPACE__batch_number_1__ ;
assign n139 = n3[11:0] ;
assign bv_12_32_n140 = 12'h20 ;
assign n141 =  ( n139 ) == ( bv_12_32_n140 )  ;
assign n142 =  ( producer ) == ( 1'b0 )  ;
assign n143 =  ( n141 ) & (n142 )  ;
assign n144 =  ( op_en0 ) == ( 1'b0 )  ;
assign n145 =  ( n143 ) & (n144 )  ;
assign n146 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n147 =  ( n145 ) & (n146 )  ;
assign n148 =  ( n147 ) & (csb_req_valid_i )  ;
assign n149 =  ( n148 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__line_stride_0__ = n149 ;
assign __ILA_NVDLA_CACC_acc_decode__[13] = __ILA_NVDLA_CACC_decode_of_set__SPACE__line_stride_0__ ;
assign n150 = n3[11:0] ;
assign n151 =  ( n150 ) == ( bv_12_32_n140 )  ;
assign n152 =  ( producer ) == ( 1'b1 )  ;
assign n153 =  ( n151 ) & (n152 )  ;
assign n154 =  ( op_en1 ) == ( 1'b0 )  ;
assign n155 =  ( n153 ) & (n154 )  ;
assign n156 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n157 =  ( n155 ) & (n156 )  ;
assign n158 =  ( n157 ) & (csb_req_valid_i )  ;
assign n159 =  ( n158 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__line_stride_1__ = n159 ;
assign __ILA_NVDLA_CACC_acc_decode__[14] = __ILA_NVDLA_CACC_decode_of_set__SPACE__line_stride_1__ ;
assign n160 = n3[11:0] ;
assign bv_12_36_n161 = 12'h24 ;
assign n162 =  ( n160 ) == ( bv_12_36_n161 )  ;
assign n163 =  ( producer ) == ( 1'b0 )  ;
assign n164 =  ( n162 ) & (n163 )  ;
assign n165 =  ( op_en0 ) == ( 1'b0 )  ;
assign n166 =  ( n164 ) & (n165 )  ;
assign n167 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n168 =  ( n166 ) & (n167 )  ;
assign n169 =  ( n168 ) & (csb_req_valid_i )  ;
assign n170 =  ( n169 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__surf_stride_0__ = n170 ;
assign __ILA_NVDLA_CACC_acc_decode__[15] = __ILA_NVDLA_CACC_decode_of_set__SPACE__surf_stride_0__ ;
assign n171 = n3[11:0] ;
assign n172 =  ( n171 ) == ( bv_12_36_n161 )  ;
assign n173 =  ( producer ) == ( 1'b1 )  ;
assign n174 =  ( n172 ) & (n173 )  ;
assign n175 =  ( op_en1 ) == ( 1'b0 )  ;
assign n176 =  ( n174 ) & (n175 )  ;
assign n177 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n178 =  ( n176 ) & (n177 )  ;
assign n179 =  ( n178 ) & (csb_req_valid_i )  ;
assign n180 =  ( n179 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__surf_stride_1__ = n180 ;
assign __ILA_NVDLA_CACC_acc_decode__[16] = __ILA_NVDLA_CACC_decode_of_set__SPACE__surf_stride_1__ ;
assign n181 = n3[11:0] ;
assign bv_12_40_n182 = 12'h28 ;
assign n183 =  ( n181 ) == ( bv_12_40_n182 )  ;
assign n184 =  ( producer ) == ( 1'b0 )  ;
assign n185 =  ( n183 ) & (n184 )  ;
assign n186 =  ( op_en0 ) == ( 1'b0 )  ;
assign n187 =  ( n185 ) & (n186 )  ;
assign n188 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n189 =  ( n187 ) & (n188 )  ;
assign n190 =  ( n189 ) & (csb_req_valid_i )  ;
assign n191 =  ( n190 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_map_0__ = n191 ;
assign __ILA_NVDLA_CACC_acc_decode__[17] = __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_map_0__ ;
assign n192 = n3[11:0] ;
assign n193 =  ( n192 ) == ( bv_12_40_n182 )  ;
assign n194 =  ( producer ) == ( 1'b1 )  ;
assign n195 =  ( n193 ) & (n194 )  ;
assign n196 =  ( op_en1 ) == ( 1'b0 )  ;
assign n197 =  ( n195 ) & (n196 )  ;
assign n198 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n199 =  ( n197 ) & (n198 )  ;
assign n200 =  ( n199 ) & (csb_req_valid_i )  ;
assign n201 =  ( n200 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_map_1__ = n201 ;
assign __ILA_NVDLA_CACC_acc_decode__[18] = __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_map_1__ ;
assign n202 = n3[11:0] ;
assign bv_12_44_n203 = 12'h2c ;
assign n204 =  ( n202 ) == ( bv_12_44_n203 )  ;
assign n205 =  ( producer ) == ( 1'b0 )  ;
assign n206 =  ( n204 ) & (n205 )  ;
assign n207 =  ( op_en0 ) == ( 1'b0 )  ;
assign n208 =  ( n206 ) & (n207 )  ;
assign n209 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n210 =  ( n208 ) & (n209 )  ;
assign n211 =  ( n210 ) & (csb_req_valid_i )  ;
assign n212 =  ( n211 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__clip_cfg_0__ = n212 ;
assign __ILA_NVDLA_CACC_acc_decode__[19] = __ILA_NVDLA_CACC_decode_of_set__SPACE__clip_cfg_0__ ;
assign n213 = n3[11:0] ;
assign n214 =  ( n213 ) == ( bv_12_44_n203 )  ;
assign n215 =  ( producer ) == ( 1'b1 )  ;
assign n216 =  ( n214 ) & (n215 )  ;
assign n217 =  ( op_en1 ) == ( 1'b0 )  ;
assign n218 =  ( n216 ) & (n217 )  ;
assign n219 =  ( n7 ) == ( bv_1_1_n8 )  ;
assign n220 =  ( n218 ) & (n219 )  ;
assign n221 =  ( n220 ) & (csb_req_valid_i )  ;
assign n222 =  ( n221 ) & (csb_req_ready_o )  ;
assign __ILA_NVDLA_CACC_decode_of_set__SPACE__clip_cfg_1__ = n222 ;
assign __ILA_NVDLA_CACC_acc_decode__[20] = __ILA_NVDLA_CACC_decode_of_set__SPACE__clip_cfg_1__ ;
assign n223 =  ( cacc2sdp_valid_o ) & (cacc2sdp_ready_i )  ;
assign __ILA_NVDLA_CACC_decode_of_send_credit__ = n223 ;
assign __ILA_NVDLA_CACC_acc_decode__[21] = __ILA_NVDLA_CACC_decode_of_send_credit__ ;
assign n224 =  ( valid_a_i ) & (valid_b_i )  ;
assign __ILA_NVDLA_CACC_decode_of_compute__ = n224 ;
assign __ILA_NVDLA_CACC_acc_decode__[22] = __ILA_NVDLA_CACC_decode_of_compute__ ;
assign n225 = csb_req_pd_i[53:22] ;
assign n226 = n225[0:0] ;
assign n227 = n225[0:0] ;
assign n228 = n225[0:0] ;
assign n229 = n225[13:12] ;
assign n230 = n225[13:12] ;
assign n231 = n225[12:0] ;
assign n232 = n225[12:0] ;
assign n233 = n225[28:16] ;
assign n234 = n225[28:16] ;
assign n235 = n225[12:0] ;
assign n236 = n225[12:0] ;
assign n237 = n225[31:5] ;
assign n238 = n225[31:5] ;
assign n239 = n225[4:0] ;
assign n240 = n225[4:0] ;
assign n241 = n225[23:5] ;
assign n242 = n225[23:5] ;
assign n243 = n225[23:5] ;
assign n244 = n225[23:5] ;
assign n245 = n225[16:16] ;
assign n246 = n225[0:0] ;
assign n247 = n225[0:0] ;
assign n248 = n225[16:16] ;
assign n249 = n225[4:0] ;
assign n250 = n225[4:0] ;
assign n252 = nondet_act_func_n251 ;
assign bv_3_1_n253 = 3'h1 ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_NVDLA_CACC_valid__) begin
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__pointer__ && __ILA_NVDLA_CACC_grant__[0] ) begin
           producer <= n226;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__cfg_0__ && __ILA_NVDLA_CACC_grant__[3] ) begin
           conv_mode0 <= n227;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__cfg_1__ && __ILA_NVDLA_CACC_grant__[4] ) begin
           conv_mode1 <= n228;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__cfg_0__ && __ILA_NVDLA_CACC_grant__[3] ) begin
           proc_precision0 <= n229;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__cfg_1__ && __ILA_NVDLA_CACC_grant__[4] ) begin
           proc_precision1 <= n230;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__op_enable_0__ && __ILA_NVDLA_CACC_grant__[1] ) begin
           op_en0 <= 1'b1;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__op_enable_1__ && __ILA_NVDLA_CACC_grant__[2] ) begin
           op_en1 <= 1'b1;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_00__ && __ILA_NVDLA_CACC_grant__[5] ) begin
           dataout_width_0 <= n231;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_01__ && __ILA_NVDLA_CACC_grant__[6] ) begin
           dataout_width_1 <= n232;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_00__ && __ILA_NVDLA_CACC_grant__[5] ) begin
           dataout_height_0 <= n233;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_01__ && __ILA_NVDLA_CACC_grant__[6] ) begin
           dataout_height_1 <= n234;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_10__ && __ILA_NVDLA_CACC_grant__[7] ) begin
           dataout_channel_0 <= n235;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_size_11__ && __ILA_NVDLA_CACC_grant__[8] ) begin
           dataout_channel_1 <= n236;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_addr_0__ && __ILA_NVDLA_CACC_grant__[9] ) begin
           dataout_addr_0 <= n237;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_addr_1__ && __ILA_NVDLA_CACC_grant__[10] ) begin
           dataout_addr_1 <= n238;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__batch_number_0__ && __ILA_NVDLA_CACC_grant__[11] ) begin
           batch_number_0 <= n239;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__batch_number_1__ && __ILA_NVDLA_CACC_grant__[12] ) begin
           batch_number_1 <= n240;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__line_stride_0__ && __ILA_NVDLA_CACC_grant__[13] ) begin
           line_stride_0 <= n241;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__line_stride_1__ && __ILA_NVDLA_CACC_grant__[14] ) begin
           line_stride_1 <= n242;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__surf_stride_0__ && __ILA_NVDLA_CACC_grant__[15] ) begin
           surf_stride_0 <= n243;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__surf_stride_1__ && __ILA_NVDLA_CACC_grant__[16] ) begin
           surf_stride_1 <= n244;
       end else if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_map_1__ && __ILA_NVDLA_CACC_grant__[18] ) begin
           surf_stride_1 <= n245;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_map_0__ && __ILA_NVDLA_CACC_grant__[17] ) begin
           line_packed_0 <= n246;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_map_1__ && __ILA_NVDLA_CACC_grant__[18] ) begin
           line_packed_1 <= n247;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__dataout_map_0__ && __ILA_NVDLA_CACC_grant__[17] ) begin
           surf_packed_0 <= n248;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__clip_cfg_0__ && __ILA_NVDLA_CACC_grant__[19] ) begin
           clip_cfg_0 <= n249;
       end
       if ( __ILA_NVDLA_CACC_decode_of_set__SPACE__clip_cfg_1__ && __ILA_NVDLA_CACC_grant__[20] ) begin
           clip_cfg_1 <= n250;
       end
       if ( __ILA_NVDLA_CACC_decode_of_compute__ && __ILA_NVDLA_CACC_grant__[22] ) begin
           cacc2sdp_pd_o <= n252;
       end
       if ( __ILA_NVDLA_CACC_decode_of_send_credit__ && __ILA_NVDLA_CACC_grant__[21] ) begin
           cacc2sdp_valid_o <= 1'b0;
       end else if ( __ILA_NVDLA_CACC_decode_of_compute__ && __ILA_NVDLA_CACC_grant__[22] ) begin
           cacc2sdp_valid_o <= valid_a_i;
       end
       if ( __ILA_NVDLA_CACC_decode_of_send_credit__ && __ILA_NVDLA_CACC_grant__[21] ) begin
           cacc2sc_credit_valid_o <= 1'b1;
       end
       if ( __ILA_NVDLA_CACC_decode_of_send_credit__ && __ILA_NVDLA_CACC_grant__[21] ) begin
           cacc2sc_credit_pd_o <= bv_3_1_n253;
       end
   end
end
endmodule
