module EmeshAxiSlaveBridge_read(
__ILA_EmeshAxiSlaveBridge_read_grant__,
clk,
read_data_15_0,
read_data_31_0,
read_data_7_0,
read_resp,
read_valid,
rst,
s_axi_araddr,
s_axi_arburst,
s_axi_arcache,
s_axi_aresetn,
s_axi_arid,
s_axi_arlen,
s_axi_arlock,
s_axi_arprot,
s_axi_arqos,
s_axi_arsize,
s_axi_arvalid,
s_axi_rready,
__ILA_EmeshAxiSlaveBridge_read_acc_decode__,
__ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__,
__ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Wait__,
__ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Asserted__,
__ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__,
__ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Prepare__,
__ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__,
__ILA_EmeshAxiSlaveBridge_read_valid__,
s_axi_arready,
s_axi_rid,
s_axi_rdata,
s_axi_rlast,
s_axi_rresp,
s_axi_rvalid,
tx_ractive,
tx_arlen,
tx_arsize,
tx_araddr,
tx_arburst
);
input      [5:0] __ILA_EmeshAxiSlaveBridge_read_grant__;
input            clk;
input     [15:0] read_data_15_0;
input     [31:0] read_data_31_0;
input      [7:0] read_data_7_0;
input      [1:0] read_resp;
input            read_valid;
input            rst;
input     [31:0] s_axi_araddr;
input      [1:0] s_axi_arburst;
input      [3:0] s_axi_arcache;
input            s_axi_aresetn;
input     [11:0] s_axi_arid;
input      [7:0] s_axi_arlen;
input            s_axi_arlock;
input      [2:0] s_axi_arprot;
input      [3:0] s_axi_arqos;
input      [2:0] s_axi_arsize;
input            s_axi_arvalid;
input            s_axi_rready;
output      [5:0] __ILA_EmeshAxiSlaveBridge_read_acc_decode__;
output            __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__;
output            __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Wait__;
output            __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Asserted__;
output            __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__;
output            __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Prepare__;
output            __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__;
output            __ILA_EmeshAxiSlaveBridge_read_valid__;
output reg            s_axi_arready;
output reg     [11:0] s_axi_rid;
output reg     [31:0] s_axi_rdata;
output reg            s_axi_rlast;
output reg      [1:0] s_axi_rresp;
output reg            s_axi_rvalid;
output reg            tx_ractive;
output reg      [7:0] tx_arlen;
output reg      [2:0] tx_arsize;
output reg     [31:0] tx_araddr;
output reg      [1:0] tx_arburst;
wire      [5:0] __ILA_EmeshAxiSlaveBridge_read_acc_decode__;
wire            __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__;
wire            __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Wait__;
wire            __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Asserted__;
wire            __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__;
wire            __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Prepare__;
wire            __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__;
wire      [5:0] __ILA_EmeshAxiSlaveBridge_read_grant__;
wire            __ILA_EmeshAxiSlaveBridge_read_valid__;
wire     [11:0] bv_12_0_n26;
wire            bv_1_0_n0;
wire            bv_1_1_n2;
wire      [1:0] bv_2_0_n31;
wire      [1:0] bv_2_1_n37;
wire     [29:0] bv_30_1_n66;
wire     [31:0] bv_32_0_n27;
wire      [2:0] bv_3_0_n63;
wire      [7:0] bv_8_0_n44;
wire      [7:0] bv_8_1_n47;
wire            clk;
wire            n1;
wire            n10;
wire            n11;
wire            n12;
wire            n13;
wire            n14;
wire            n15;
wire            n16;
wire            n17;
wire            n18;
wire            n19;
wire            n20;
wire            n21;
wire            n22;
wire            n23;
wire            n24;
wire            n25;
wire            n28;
wire            n29;
wire            n3;
wire      [1:0] n30;
wire            n32;
wire     [15:0] n33;
wire     [15:0] n34;
wire     [31:0] n35;
wire      [1:0] n36;
wire            n38;
wire     [31:0] n39;
wire            n4;
wire     [31:0] n40;
wire     [31:0] n41;
wire     [31:0] n42;
wire     [31:0] n43;
wire            n45;
wire            n46;
wire            n48;
wire            n49;
wire            n5;
wire            n50;
wire      [1:0] n51;
wire            n52;
wire            n53;
wire            n54;
wire            n55;
wire            n56;
wire            n57;
wire            n58;
wire            n59;
wire            n6;
wire            n60;
wire            n61;
wire      [7:0] n62;
wire            n64;
wire     [29:0] n65;
wire     [29:0] n67;
wire     [31:0] n68;
wire     [31:0] n69;
wire            n7;
wire            n8;
wire            n9;
wire     [15:0] read_data_15_0;
wire     [31:0] read_data_31_0;
wire      [7:0] read_data_7_0;
wire      [1:0] read_resp;
wire            read_valid;
wire            rst;
wire     [31:0] s_axi_araddr;
wire      [1:0] s_axi_arburst;
wire      [3:0] s_axi_arcache;
wire            s_axi_aresetn;
wire     [11:0] s_axi_arid;
wire      [7:0] s_axi_arlen;
wire            s_axi_arlock;
wire      [2:0] s_axi_arprot;
wire      [3:0] s_axi_arqos;
wire      [2:0] s_axi_arsize;
wire            s_axi_arvalid;
wire            s_axi_rready;
assign __ILA_EmeshAxiSlaveBridge_read_valid__ = 1'b1 ;
assign bv_1_0_n0 = 1'h0 ;
assign n1 =  ( s_axi_aresetn ) == ( bv_1_0_n0 )  ;
assign __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ = n1 ;
assign __ILA_EmeshAxiSlaveBridge_read_acc_decode__[0] = __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ ;
assign bv_1_1_n2 = 1'h1 ;
assign n3 =  ( s_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign n4 =  ( s_axi_arready ) == ( bv_1_0_n0 )  ;
assign n5 =  ( n3 ) & (n4 )  ;
assign __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Wait__ = n5 ;
assign __ILA_EmeshAxiSlaveBridge_read_acc_decode__[1] = __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Wait__ ;
assign n6 =  ( s_axi_arvalid ) == ( bv_1_1_n2 )  ;
assign n7 =  ( s_axi_arready ) == ( bv_1_1_n2 )  ;
assign n8 =  ( n6 ) & (n7 )  ;
assign n9 =  ( s_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign n10 =  ( n8 ) & (n9 )  ;
assign __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ = n10 ;
assign __ILA_EmeshAxiSlaveBridge_read_acc_decode__[2] = __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ ;
assign n11 =  ( s_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign n12 =  ( s_axi_rvalid ) == ( bv_1_0_n0 )  ;
assign n13 =  ( n11 ) & (n12 )  ;
assign __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Prepare__ = n13 ;
assign __ILA_EmeshAxiSlaveBridge_read_acc_decode__[3] = __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Prepare__ ;
assign n14 =  ( s_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign n15 =  ( s_axi_rready ) == ( bv_1_0_n0 )  ;
assign n16 =  ( n14 ) & (n15 )  ;
assign n17 =  ( s_axi_rvalid ) == ( bv_1_1_n2 )  ;
assign n18 =  ( n16 ) & (n17 )  ;
assign __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Asserted__ = n18 ;
assign __ILA_EmeshAxiSlaveBridge_read_acc_decode__[4] = __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Asserted__ ;
assign n19 =  ( s_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign n20 =  ( s_axi_rready ) == ( bv_1_1_n2 )  ;
assign n21 =  ( n19 ) & (n20 )  ;
assign n22 =  ( s_axi_rvalid ) == ( bv_1_1_n2 )  ;
assign n23 =  ( n21 ) & (n22 )  ;
assign __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__ = n23 ;
assign __ILA_EmeshAxiSlaveBridge_read_acc_decode__[5] = __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__ ;
assign n24 =  ( tx_ractive ) == ( bv_1_0_n0 )  ;
assign n25 =  ( n24 ) ? ( bv_1_1_n2 ) : ( s_axi_arready ) ;
assign bv_12_0_n26 = 12'h0 ;
assign bv_32_0_n27 = 32'h0 ;
assign n28 =  ( tx_ractive ) == ( bv_1_1_n2 )  ;
assign n29 =  ( read_valid ) == ( bv_1_1_n2 )  ;
assign n30 = tx_arsize[1:0] ;
assign bv_2_0_n31 = 2'h0 ;
assign n32 =  ( n30 ) == ( bv_2_0_n31 )  ;
assign n33 =  { ( read_data_7_0 ) , ( read_data_7_0 ) }  ;
assign n34 =  { ( read_data_7_0 ) , ( read_data_7_0 ) }  ;
assign n35 =  { ( n33 ) , ( n34 ) }  ;
assign n36 = tx_arsize[1:0] ;
assign bv_2_1_n37 = 2'h1 ;
assign n38 =  ( n36 ) == ( bv_2_1_n37 )  ;
assign n39 =  { ( read_data_15_0 ) , ( read_data_15_0 ) }  ;
assign n40 =  ( n38 ) ? ( n39 ) : ( read_data_31_0 ) ;
assign n41 =  ( n32 ) ? ( n35 ) : ( n40 ) ;
assign n42 =  ( n29 ) ? ( n41 ) : ( s_axi_rdata ) ;
assign n43 =  ( n28 ) ? ( n42 ) : ( s_axi_rdata ) ;
assign bv_8_0_n44 = 8'h0 ;
assign n45 =  ( s_axi_arlen ) == ( bv_8_0_n44 )  ;
assign n46 =  ( n45 ) ? ( bv_1_1_n2 ) : ( bv_1_0_n0 ) ;
assign bv_8_1_n47 = 8'h1 ;
assign n48 =  ( tx_arlen ) == ( bv_8_1_n47 )  ;
assign n49 =  ( n48 ) ? ( bv_1_1_n2 ) : ( s_axi_rlast ) ;
assign n50 =  ( read_valid ) == ( bv_1_1_n2 )  ;
assign n51 =  ( n50 ) ? ( read_resp ) : ( s_axi_rresp ) ;
assign n52 =  ( tx_ractive ) == ( bv_1_1_n2 )  ;
assign n53 =  ( read_valid ) == ( bv_1_1_n2 )  ;
assign n54 =  ( n53 ) ? ( bv_1_1_n2 ) : ( s_axi_rvalid ) ;
assign n55 =  ( n52 ) ? ( n54 ) : ( s_axi_rvalid ) ;
assign n56 =  ( s_axi_rlast ) == ( bv_1_1_n2 )  ;
assign n57 =  ( read_valid ) == ( bv_1_1_n2 )  ;
assign n58 =  ( n57 ) ? ( bv_1_1_n2 ) : ( bv_1_0_n0 ) ;
assign n59 =  ( n56 ) ? ( bv_1_0_n0 ) : ( n58 ) ;
assign n60 =  ( s_axi_rlast ) == ( bv_1_1_n2 )  ;
assign n61 =  ( n60 ) ? ( bv_1_0_n0 ) : ( tx_ractive ) ;
assign n62 =  ( tx_arlen ) - ( bv_8_1_n47 )  ;
assign bv_3_0_n63 = 3'h0 ;
assign n64 =  ( tx_arburst ) == ( bv_2_1_n37 )  ;
assign n65 = tx_araddr[31:2] ;
assign bv_30_1_n66 = 30'h1 ;
assign n67 =  ( n65 ) + ( bv_30_1_n66 )  ;
assign n68 =  { ( n67 ) , ( bv_2_0_n31 ) }  ;
assign n69 =  ( n64 ) ? ( n68 ) : ( tx_araddr ) ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_EmeshAxiSlaveBridge_read_valid__) begin
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           s_axi_arready <= bv_1_1_n2;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Wait__ && __ILA_EmeshAxiSlaveBridge_read_grant__[1] ) begin
           s_axi_arready <= n25;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ && __ILA_EmeshAxiSlaveBridge_read_grant__[2] ) begin
           s_axi_arready <= bv_1_0_n0;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           s_axi_rid <= bv_12_0_n26;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ && __ILA_EmeshAxiSlaveBridge_read_grant__[2] ) begin
           s_axi_rid <= s_axi_arid;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           s_axi_rdata <= bv_32_0_n27;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Prepare__ && __ILA_EmeshAxiSlaveBridge_read_grant__[3] ) begin
           s_axi_rdata <= n43;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Asserted__ && __ILA_EmeshAxiSlaveBridge_read_grant__[4] ) begin
           s_axi_rdata <= s_axi_rdata;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           s_axi_rlast <= bv_1_0_n0;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ && __ILA_EmeshAxiSlaveBridge_read_grant__[2] ) begin
           s_axi_rlast <= n46;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__ && __ILA_EmeshAxiSlaveBridge_read_grant__[5] ) begin
           s_axi_rlast <= n49;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           s_axi_rresp <= bv_2_0_n31;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__ && __ILA_EmeshAxiSlaveBridge_read_grant__[5] ) begin
           s_axi_rresp <= n51;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           s_axi_rvalid <= bv_1_0_n0;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Prepare__ && __ILA_EmeshAxiSlaveBridge_read_grant__[3] ) begin
           s_axi_rvalid <= n55;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Asserted__ && __ILA_EmeshAxiSlaveBridge_read_grant__[4] ) begin
           s_axi_rvalid <= s_axi_rvalid;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__ && __ILA_EmeshAxiSlaveBridge_read_grant__[5] ) begin
           s_axi_rvalid <= n59;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           tx_ractive <= bv_1_0_n0;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ && __ILA_EmeshAxiSlaveBridge_read_grant__[2] ) begin
           tx_ractive <= bv_1_1_n2;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__ && __ILA_EmeshAxiSlaveBridge_read_grant__[5] ) begin
           tx_ractive <= n61;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           tx_arlen <= bv_8_0_n44;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ && __ILA_EmeshAxiSlaveBridge_read_grant__[2] ) begin
           tx_arlen <= s_axi_arlen;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__ && __ILA_EmeshAxiSlaveBridge_read_grant__[5] ) begin
           tx_arlen <= n62;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           tx_arsize <= bv_3_0_n63;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ && __ILA_EmeshAxiSlaveBridge_read_grant__[2] ) begin
           tx_arsize <= s_axi_arsize;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           tx_araddr <= bv_32_0_n27;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ && __ILA_EmeshAxiSlaveBridge_read_grant__[2] ) begin
           tx_araddr <= s_axi_araddr;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__ && __ILA_EmeshAxiSlaveBridge_read_grant__[5] ) begin
           tx_araddr <= n69;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           tx_arburst <= bv_2_0_n31;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ && __ILA_EmeshAxiSlaveBridge_read_grant__[2] ) begin
           tx_arburst <= s_axi_arburst;
       end
   end
end
endmodule
