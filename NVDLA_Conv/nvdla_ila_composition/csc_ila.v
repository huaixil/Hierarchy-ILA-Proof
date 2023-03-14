module NVDLA_CSC(
__ILA_csc_grant__,
clk,
csb_addr,
csb_data,
csb_vld,
csb_write,
done,
fifo_clr,
pending_clr,
rst,
sg2dl_vld,
sg2wt_vld,
__ILA_csc_acc_decode__,
__ILA_csc_decode_of_Busy2Done__,
__ILA_csc_decode_of_Data_Output__,
__ILA_csc_decode_of_Done2Idle_0__,
__ILA_csc_decode_of_Done2Idle_1__,
__ILA_csc_decode_of_Pend2Busy__,
__ILA_csc_decode_of_Set_Bank_Group0__,
__ILA_csc_decode_of_Set_Bank_Group1__,
__ILA_csc_decode_of_Set_Producer__,
__ILA_csc_decode_of_Set_Start_Group0__,
__ILA_csc_decode_of_Set_Start_Group1__,
__ILA_csc_decode_of_Start__,
__ILA_csc_decode_of_Weight_Output__,
__ILA_csc_valid__,
data_valid,
weight_valid,
csb_rdy,
csc_s_producer,
csc_s_consumer,
group0_csc_d_op_en_trigger,
group0_csc_d_data_bank,
group0_csc_d_weight_bank,
group1_csc_d_op_en_trigger,
group1_csc_d_data_bank,
group1_csc_d_weight_bank,
csc_state,
last_weight_bank,
last_data_bank
);
input     [11:0] __ILA_csc_grant__;
input            clk;
input     [21:0] csb_addr;
input     [31:0] csb_data;
input            csb_vld;
input            csb_write;
input            done;
input            fifo_clr;
input            pending_clr;
input            rst;
input            sg2dl_vld;
input            sg2wt_vld;
output     [11:0] __ILA_csc_acc_decode__;
output            __ILA_csc_decode_of_Busy2Done__;
output            __ILA_csc_decode_of_Data_Output__;
output            __ILA_csc_decode_of_Done2Idle_0__;
output            __ILA_csc_decode_of_Done2Idle_1__;
output            __ILA_csc_decode_of_Pend2Busy__;
output            __ILA_csc_decode_of_Set_Bank_Group0__;
output            __ILA_csc_decode_of_Set_Bank_Group1__;
output            __ILA_csc_decode_of_Set_Producer__;
output            __ILA_csc_decode_of_Set_Start_Group0__;
output            __ILA_csc_decode_of_Set_Start_Group1__;
output            __ILA_csc_decode_of_Start__;
output            __ILA_csc_decode_of_Weight_Output__;
output            __ILA_csc_valid__;
output reg            data_valid;
output reg            weight_valid;
output reg            csb_rdy;
output reg            csc_s_producer;
output reg            csc_s_consumer;
output reg            group0_csc_d_op_en_trigger;
output reg      [3:0] group0_csc_d_data_bank;
output reg      [3:0] group0_csc_d_weight_bank;
output reg            group1_csc_d_op_en_trigger;
output reg      [3:0] group1_csc_d_data_bank;
output reg      [3:0] group1_csc_d_weight_bank;
output reg      [1:0] csc_state;
output reg      [3:0] last_weight_bank;
output reg      [3:0] last_data_bank;
wire     [11:0] __ILA_csc_acc_decode__;
wire            __ILA_csc_decode_of_Busy2Done__;
wire            __ILA_csc_decode_of_Data_Output__;
wire            __ILA_csc_decode_of_Done2Idle_0__;
wire            __ILA_csc_decode_of_Done2Idle_1__;
wire            __ILA_csc_decode_of_Pend2Busy__;
wire            __ILA_csc_decode_of_Set_Bank_Group0__;
wire            __ILA_csc_decode_of_Set_Bank_Group1__;
wire            __ILA_csc_decode_of_Set_Producer__;
wire            __ILA_csc_decode_of_Set_Start_Group0__;
wire            __ILA_csc_decode_of_Set_Start_Group1__;
wire            __ILA_csc_decode_of_Start__;
wire            __ILA_csc_decode_of_Weight_Output__;
wire     [11:0] __ILA_csc_grant__;
wire            __ILA_csc_valid__;
wire     [11:0] bv_12_4_n3;
wire     [11:0] bv_12_8_n28;
wire     [11:0] bv_12_92_n12;
wire            bv_1_0_n16;
wire            bv_1_1_n5;
wire      [1:0] bv_2_0_n0;
wire      [1:0] bv_2_1_n50;
wire      [1:0] bv_2_2_n54;
wire      [1:0] bv_2_3_n64;
wire            clk;
wire     [21:0] csb_addr;
wire     [31:0] csb_data;
wire            csb_vld;
wire            csb_write;
wire            done;
wire            fifo_clr;
wire     [23:0] n1;
wire            n10;
wire            n11;
wire            n13;
wire            n14;
wire            n15;
wire            n17;
wire            n18;
wire            n19;
wire     [11:0] n2;
wire            n20;
wire            n21;
wire            n22;
wire            n23;
wire            n24;
wire            n25;
wire            n26;
wire            n27;
wire            n29;
wire            n30;
wire            n31;
wire            n32;
wire            n33;
wire            n34;
wire            n35;
wire            n36;
wire            n37;
wire            n38;
wire            n39;
wire            n4;
wire            n40;
wire            n41;
wire            n42;
wire            n43;
wire            n44;
wire            n45;
wire            n46;
wire            n47;
wire            n48;
wire            n49;
wire            n51;
wire            n52;
wire            n53;
wire            n55;
wire            n56;
wire            n57;
wire            n58;
wire            n59;
wire            n6;
wire            n60;
wire            n61;
wire            n62;
wire            n63;
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
wire      [3:0] n77;
wire      [3:0] n78;
wire            n79;
wire            n8;
wire      [3:0] n80;
wire      [3:0] n81;
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
wire      [1:0] n97;
wire            pending_clr;
wire            rst;
wire            sg2dl_vld;
wire            sg2wt_vld;
assign __ILA_csc_valid__ = 1'b1 ;
assign bv_2_0_n0 = 2'h0 ;
assign n1 =  { ( csb_addr ) , ( bv_2_0_n0 ) }  ;
assign n2 = n1[11:0] ;
assign bv_12_4_n3 = 12'h4 ;
assign n4 =  ( n2 ) == ( bv_12_4_n3 )  ;
assign bv_1_1_n5 = 1'h1 ;
assign n6 =  ( csb_rdy ) == ( bv_1_1_n5 )  ;
assign n7 =  ( csb_vld ) == ( bv_1_1_n5 )  ;
assign n8 =  ( n6 ) & (n7 )  ;
assign n9 =  ( n4 ) & (n8 )  ;
assign n10 =  ( csb_write ) == ( bv_1_1_n5 )  ;
assign n11 =  ( n9 ) & (n10 )  ;
assign __ILA_csc_decode_of_Set_Producer__ = n11 ;
assign __ILA_csc_acc_decode__[0] = __ILA_csc_decode_of_Set_Producer__ ;
assign bv_12_92_n12 = 12'h5c ;
assign n13 =  ( n2 ) == ( bv_12_92_n12 )  ;
assign n14 =  ( n13 ) & (n8 )  ;
assign n15 =  ( n14 ) & (n10 )  ;
assign bv_1_0_n16 = 1'h0 ;
assign n17 =  ( csc_s_producer ) == ( bv_1_0_n16 )  ;
assign n18 =  ( n15 ) & (n17 )  ;
assign n19 =  ( group0_csc_d_op_en_trigger ) == ( bv_1_0_n16 )  ;
assign n20 =  ( n18 ) & (n19 )  ;
assign __ILA_csc_decode_of_Set_Bank_Group0__ = n20 ;
assign __ILA_csc_acc_decode__[1] = __ILA_csc_decode_of_Set_Bank_Group0__ ;
assign n21 =  ( n2 ) == ( bv_12_92_n12 )  ;
assign n22 =  ( n21 ) & (n8 )  ;
assign n23 =  ( n22 ) & (n10 )  ;
assign n24 =  ( csc_s_producer ) == ( bv_1_1_n5 )  ;
assign n25 =  ( n23 ) & (n24 )  ;
assign n26 =  ( group1_csc_d_op_en_trigger ) == ( bv_1_0_n16 )  ;
assign n27 =  ( n25 ) & (n26 )  ;
assign __ILA_csc_decode_of_Set_Bank_Group1__ = n27 ;
assign __ILA_csc_acc_decode__[2] = __ILA_csc_decode_of_Set_Bank_Group1__ ;
assign bv_12_8_n28 = 12'h8 ;
assign n29 =  ( n2 ) == ( bv_12_8_n28 )  ;
assign n30 =  ( n29 ) & (n8 )  ;
assign n31 =  ( n30 ) & (n10 )  ;
assign n32 =  ( csc_s_producer ) == ( bv_1_0_n16 )  ;
assign n33 =  ( n31 ) & (n32 )  ;
assign n34 =  ( n33 ) & (n19 )  ;
assign __ILA_csc_decode_of_Set_Start_Group0__ = n34 ;
assign __ILA_csc_acc_decode__[3] = __ILA_csc_decode_of_Set_Start_Group0__ ;
assign n35 =  ( n2 ) == ( bv_12_8_n28 )  ;
assign n36 =  ( n35 ) & (n8 )  ;
assign n37 =  ( n36 ) & (n10 )  ;
assign n38 =  ( csc_s_producer ) == ( bv_1_1_n5 )  ;
assign n39 =  ( n37 ) & (n38 )  ;
assign n40 =  ( n39 ) & (n26 )  ;
assign __ILA_csc_decode_of_Set_Start_Group1__ = n40 ;
assign __ILA_csc_acc_decode__[4] = __ILA_csc_decode_of_Set_Start_Group1__ ;
assign n41 =  ( csc_state ) == ( bv_2_0_n0 )  ;
assign n42 =  ( csc_s_consumer ) == ( bv_1_0_n16 )  ;
assign n43 =  ( group0_csc_d_op_en_trigger ) == ( bv_1_1_n5 )  ;
assign n44 =  ( n42 ) & (n43 )  ;
assign n45 =  ( csc_s_consumer ) == ( bv_1_1_n5 )  ;
assign n46 =  ( group1_csc_d_op_en_trigger ) == ( bv_1_1_n5 )  ;
assign n47 =  ( n45 ) & (n46 )  ;
assign n48 =  ( n44 ) | ( n47 )  ;
assign n49 =  ( n41 ) & (n48 )  ;
assign __ILA_csc_decode_of_Start__ = n49 ;
assign __ILA_csc_acc_decode__[5] = __ILA_csc_decode_of_Start__ ;
assign bv_2_1_n50 = 2'h1 ;
assign n51 =  ( csc_state ) == ( bv_2_1_n50 )  ;
assign n52 =  ( pending_clr ) == ( bv_1_1_n5 )  ;
assign n53 =  ( n51 ) & (n52 )  ;
assign __ILA_csc_decode_of_Pend2Busy__ = n53 ;
assign __ILA_csc_acc_decode__[6] = __ILA_csc_decode_of_Pend2Busy__ ;
assign bv_2_2_n54 = 2'h2 ;
assign n55 =  ( csc_state ) == ( bv_2_2_n54 )  ;
assign n56 =  ( sg2dl_vld ) == ( bv_1_1_n5 )  ;
assign n57 =  ( n55 ) & (n56 )  ;
assign __ILA_csc_decode_of_Data_Output__ = n57 ;
assign __ILA_csc_acc_decode__[7] = __ILA_csc_decode_of_Data_Output__ ;
assign n58 =  ( csc_state ) == ( bv_2_2_n54 )  ;
assign n59 =  ( sg2wt_vld ) == ( bv_1_1_n5 )  ;
assign n60 =  ( n58 ) & (n59 )  ;
assign __ILA_csc_decode_of_Weight_Output__ = n60 ;
assign __ILA_csc_acc_decode__[8] = __ILA_csc_decode_of_Weight_Output__ ;
assign n61 =  ( csc_state ) == ( bv_2_2_n54 )  ;
assign n62 =  ( fifo_clr ) == ( bv_1_1_n5 )  ;
assign n63 =  ( n61 ) & (n62 )  ;
assign __ILA_csc_decode_of_Busy2Done__ = n63 ;
assign __ILA_csc_acc_decode__[9] = __ILA_csc_decode_of_Busy2Done__ ;
assign bv_2_3_n64 = 2'h3 ;
assign n65 =  ( csc_state ) == ( bv_2_3_n64 )  ;
assign n66 =  ( done ) == ( bv_1_1_n5 )  ;
assign n67 =  ( n65 ) & (n66 )  ;
assign n68 =  ( csc_s_consumer ) == ( bv_1_0_n16 )  ;
assign n69 =  ( n67 ) & (n68 )  ;
assign __ILA_csc_decode_of_Done2Idle_0__ = n69 ;
assign __ILA_csc_acc_decode__[10] = __ILA_csc_decode_of_Done2Idle_0__ ;
assign n70 =  ( csc_state ) == ( bv_2_3_n64 )  ;
assign n71 =  ( done ) == ( bv_1_1_n5 )  ;
assign n72 =  ( n70 ) & (n71 )  ;
assign n73 =  ( csc_s_consumer ) == ( bv_1_1_n5 )  ;
assign n74 =  ( n72 ) & (n73 )  ;
assign __ILA_csc_decode_of_Done2Idle_1__ = n74 ;
assign __ILA_csc_acc_decode__[11] = __ILA_csc_decode_of_Done2Idle_1__ ;
assign n75 = csb_data[0:0] ;
assign n76 = csb_data[0:0] ;
assign n77 = csb_data[3:0] ;
assign n78 = csb_data[19:16] ;
assign n79 = csb_data[0:0] ;
assign n80 = csb_data[3:0] ;
assign n81 = csb_data[19:16] ;
assign n82 =  ( csc_s_consumer ) == ( bv_1_0_n16 )  ;
assign n83 =  ( group0_csc_d_data_bank ) == ( last_data_bank )  ;
assign n84 = ~ ( n83 )  ;
assign n85 =  ( group0_csc_d_weight_bank ) == ( last_weight_bank )  ;
assign n86 = ~ ( n85 )  ;
assign n87 =  ( n84 ) | ( n86 )  ;
assign n88 =  ( n82 ) & (n87 )  ;
assign n89 =  ( csc_s_consumer ) == ( bv_1_1_n5 )  ;
assign n90 =  ( group1_csc_d_data_bank ) == ( last_data_bank )  ;
assign n91 = ~ ( n90 )  ;
assign n92 =  ( group1_csc_d_weight_bank ) == ( last_weight_bank )  ;
assign n93 = ~ ( n92 )  ;
assign n94 =  ( n91 ) | ( n93 )  ;
assign n95 =  ( n89 ) & (n94 )  ;
assign n96 =  ( n88 ) | ( n95 )  ;
assign n97 =  ( n96 ) ? ( bv_2_1_n50 ) : ( bv_2_2_n54 ) ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_csc_valid__) begin
       if ( __ILA_csc_decode_of_Data_Output__ && __ILA_csc_grant__[7] ) begin
           data_valid <= bv_1_1_n5;
       end
       if ( __ILA_csc_decode_of_Weight_Output__ && __ILA_csc_grant__[8] ) begin
           weight_valid <= bv_1_1_n5;
       end
       if ( __ILA_csc_decode_of_Set_Producer__ && __ILA_csc_grant__[0] ) begin
           csc_s_producer <= n75;
       end
       if ( __ILA_csc_decode_of_Done2Idle_0__ && __ILA_csc_grant__[10] ) begin
           csc_s_consumer <= bv_1_1_n5;
       end else if ( __ILA_csc_decode_of_Done2Idle_1__ && __ILA_csc_grant__[11] ) begin
           csc_s_consumer <= bv_1_0_n16;
       end
       if ( __ILA_csc_decode_of_Set_Start_Group0__ && __ILA_csc_grant__[3] ) begin
           group0_csc_d_op_en_trigger <= n76;
       end else if ( __ILA_csc_decode_of_Done2Idle_0__ && __ILA_csc_grant__[10] ) begin
           group0_csc_d_op_en_trigger <= bv_1_0_n16;
       end
       if ( __ILA_csc_decode_of_Set_Bank_Group0__ && __ILA_csc_grant__[1] ) begin
           group0_csc_d_data_bank <= n77;
       end
       if ( __ILA_csc_decode_of_Set_Bank_Group0__ && __ILA_csc_grant__[1] ) begin
           group0_csc_d_weight_bank <= n78;
       end
       if ( __ILA_csc_decode_of_Set_Start_Group1__ && __ILA_csc_grant__[4] ) begin
           group1_csc_d_op_en_trigger <= n79;
       end else if ( __ILA_csc_decode_of_Done2Idle_1__ && __ILA_csc_grant__[11] ) begin
           group1_csc_d_op_en_trigger <= bv_1_0_n16;
       end
       if ( __ILA_csc_decode_of_Set_Bank_Group1__ && __ILA_csc_grant__[2] ) begin
           group1_csc_d_data_bank <= n80;
       end
       if ( __ILA_csc_decode_of_Set_Bank_Group1__ && __ILA_csc_grant__[2] ) begin
           group1_csc_d_weight_bank <= n81;
       end
       if ( __ILA_csc_decode_of_Start__ && __ILA_csc_grant__[5] ) begin
           csc_state <= n97;
       end else if ( __ILA_csc_decode_of_Pend2Busy__ && __ILA_csc_grant__[6] ) begin
           csc_state <= bv_2_2_n54;
       end else if ( __ILA_csc_decode_of_Busy2Done__ && __ILA_csc_grant__[9] ) begin
           csc_state <= bv_2_3_n64;
       end else if ( __ILA_csc_decode_of_Done2Idle_0__ && __ILA_csc_grant__[10] ) begin
           csc_state <= bv_2_0_n0;
       end else if ( __ILA_csc_decode_of_Done2Idle_1__ && __ILA_csc_grant__[11] ) begin
           csc_state <= bv_2_0_n0;
       end
       if ( __ILA_csc_decode_of_Done2Idle_0__ && __ILA_csc_grant__[10] ) begin
           last_weight_bank <= group0_csc_d_weight_bank;
       end else if ( __ILA_csc_decode_of_Done2Idle_1__ && __ILA_csc_grant__[11] ) begin
           last_weight_bank <= group1_csc_d_weight_bank;
       end
       if ( __ILA_csc_decode_of_Done2Idle_0__ && __ILA_csc_grant__[10] ) begin
           last_data_bank <= group0_csc_d_data_bank;
       end else if ( __ILA_csc_decode_of_Done2Idle_1__ && __ILA_csc_grant__[11] ) begin
           last_data_bank <= group1_csc_d_data_bank;
       end
   end
end
endmodule
