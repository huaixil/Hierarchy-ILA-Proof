module ILA_Slave_write(
__ILA_ILA_Slave_write_grant__,
clk,
rst,
s_axi_aresetn,
s_axi_awaddr,
s_axi_awburst,
s_axi_awcache,
s_axi_awid,
s_axi_awlen,
s_axi_awlock,
s_axi_awprot,
s_axi_awqos,
s_axi_awsize,
s_axi_awvalid,
s_axi_bready,
s_axi_wdata,
s_axi_wid,
s_axi_wlast,
s_axi_wstrb,
s_axi_wvalid,
write_ready,
__ILA_ILA_Slave_write_acc_decode__,
__ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__,
__ILA_ILA_Slave_write_decode_of_AW_Slave_Wait__,
__ILA_ILA_Slave_write_decode_of_B_Slave_Commit__,
__ILA_ILA_Slave_write_decode_of_W_Slave_Busy__,
__ILA_ILA_Slave_write_decode_of_W_Slave_Reset__,
__ILA_ILA_Slave_write_decode_of_W_Slave_Wait__,
__ILA_ILA_Slave_write_valid__,
s_axi_awready,
s_axi_wready,
s_axi_bid,
s_axi_bresp,
s_axi_bvalid,
tx_wactive,
tx_bwait,
tx_awlen,
tx_awsize,
tx_awaddr,
tx_awburst
);
input      [5:0] __ILA_ILA_Slave_write_grant__;
input            clk;
input            rst;
input            s_axi_aresetn;
input     [31:0] s_axi_awaddr;
input      [1:0] s_axi_awburst;
input      [3:0] s_axi_awcache;
input     [11:0] s_axi_awid;
input      [7:0] s_axi_awlen;
input            s_axi_awlock;
input      [2:0] s_axi_awprot;
input      [3:0] s_axi_awqos;
input      [2:0] s_axi_awsize;
input            s_axi_awvalid;
input            s_axi_bready;
input     [31:0] s_axi_wdata;
input     [11:0] s_axi_wid;
input            s_axi_wlast;
input      [3:0] s_axi_wstrb;
input            s_axi_wvalid;
input            write_ready;
output      [5:0] __ILA_ILA_Slave_write_acc_decode__;
output            __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__;
output            __ILA_ILA_Slave_write_decode_of_AW_Slave_Wait__;
output            __ILA_ILA_Slave_write_decode_of_B_Slave_Commit__;
output            __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__;
output            __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__;
output            __ILA_ILA_Slave_write_decode_of_W_Slave_Wait__;
output            __ILA_ILA_Slave_write_valid__;
output reg            s_axi_awready;
output reg            s_axi_wready;
output reg     [11:0] s_axi_bid;
output reg      [1:0] s_axi_bresp;
output reg            s_axi_bvalid;
output reg            tx_wactive;
output reg            tx_bwait;
output reg      [7:0] tx_awlen;
output reg      [2:0] tx_awsize;
output reg     [31:0] tx_awaddr;
output reg      [1:0] tx_awburst;
wire      [5:0] __ILA_ILA_Slave_write_acc_decode__;
wire            __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__;
wire            __ILA_ILA_Slave_write_decode_of_AW_Slave_Wait__;
wire            __ILA_ILA_Slave_write_decode_of_B_Slave_Commit__;
wire            __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__;
wire            __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__;
wire            __ILA_ILA_Slave_write_decode_of_W_Slave_Wait__;
wire      [5:0] __ILA_ILA_Slave_write_grant__;
wire            __ILA_ILA_Slave_write_valid__;
wire     [11:0] bv_12_0_n36;
wire            bv_1_0_n0;
wire            bv_1_1_n3;
wire      [1:0] bv_2_0_n37;
wire      [1:0] bv_2_1_n51;
wire     [29:0] bv_30_1_n54;
wire     [31:0] bv_32_0_n50;
wire      [2:0] bv_3_0_n49;
wire      [7:0] bv_8_0_n46;
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
wire            n2;
wire            n20;
wire            n21;
wire            n22;
wire            n23;
wire            n24;
wire            n25;
wire            n26;
wire            n27;
wire            n28;
wire            n29;
wire            n30;
wire            n31;
wire            n32;
wire            n33;
wire            n34;
wire            n35;
wire            n38;
wire      [1:0] n39;
wire            n4;
wire            n40;
wire            n41;
wire            n42;
wire            n43;
wire            n44;
wire            n45;
wire      [7:0] n48;
wire            n5;
wire            n52;
wire     [29:0] n53;
wire     [29:0] n55;
wire     [31:0] n56;
wire     [31:0] n57;
wire            n6;
wire            n7;
wire            n8;
wire            n9;
wire            rst;
wire            s_axi_aresetn;
wire     [31:0] s_axi_awaddr;
wire      [1:0] s_axi_awburst;
wire      [3:0] s_axi_awcache;
wire     [11:0] s_axi_awid;
wire      [7:0] s_axi_awlen;
wire            s_axi_awlock;
wire      [2:0] s_axi_awprot;
wire      [3:0] s_axi_awqos;
wire      [2:0] s_axi_awsize;
wire            s_axi_awvalid;
wire            s_axi_bready;
wire     [31:0] s_axi_wdata;
wire     [11:0] s_axi_wid;
wire            s_axi_wlast;
wire      [3:0] s_axi_wstrb;
wire            s_axi_wvalid;
wire            write_ready;
assign __ILA_ILA_Slave_write_valid__ = 1'b1 ;
assign bv_1_0_n0 = 1'h0 ;
assign n1 =  ( s_axi_aresetn ) == ( bv_1_0_n0 )  ;
assign __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ = n1 ;
assign __ILA_ILA_Slave_write_acc_decode__[0] = __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ ;
assign n2 =  ( s_axi_awready ) == ( bv_1_0_n0 )  ;
assign bv_1_1_n3 = 1'h1 ;
assign n4 =  ( s_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n5 =  ( n2 ) & (n4 )  ;
assign __ILA_ILA_Slave_write_decode_of_AW_Slave_Wait__ = n5 ;
assign __ILA_ILA_Slave_write_acc_decode__[1] = __ILA_ILA_Slave_write_decode_of_AW_Slave_Wait__ ;
assign n6 =  ( s_axi_awready ) == ( bv_1_1_n3 )  ;
assign n7 =  ( s_axi_awvalid ) == ( bv_1_1_n3 )  ;
assign n8 =  ( n6 ) & (n7 )  ;
assign n9 =  ( s_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n10 =  ( n8 ) & (n9 )  ;
assign __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ = n10 ;
assign __ILA_ILA_Slave_write_acc_decode__[2] = __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ ;
assign n11 =  ( s_axi_wvalid ) == ( bv_1_0_n0 )  ;
assign n12 =  ( s_axi_wvalid ) == ( bv_1_1_n3 )  ;
assign n13 =  ( s_axi_wready ) == ( bv_1_0_n0 )  ;
assign n14 =  ( n12 ) & (n13 )  ;
assign n15 =  ( n11 ) | ( n14 )  ;
assign n16 =  ( s_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n17 =  ( n15 ) & (n16 )  ;
assign __ILA_ILA_Slave_write_decode_of_W_Slave_Wait__ = n17 ;
assign __ILA_ILA_Slave_write_acc_decode__[3] = __ILA_ILA_Slave_write_decode_of_W_Slave_Wait__ ;
assign n18 =  ( s_axi_wready ) == ( bv_1_1_n3 )  ;
assign n19 =  ( s_axi_wvalid ) == ( bv_1_1_n3 )  ;
assign n20 =  ( n18 ) & (n19 )  ;
assign n21 =  ( s_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n22 =  ( n20 ) & (n21 )  ;
assign __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ = n22 ;
assign __ILA_ILA_Slave_write_acc_decode__[4] = __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ ;
assign n23 =  ( s_axi_bvalid ) == ( bv_1_1_n3 )  ;
assign n24 =  ( s_axi_bready ) == ( bv_1_1_n3 )  ;
assign n25 =  ( n23 ) & (n24 )  ;
assign n26 =  ( s_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n27 =  ( n25 ) & (n26 )  ;
assign __ILA_ILA_Slave_write_decode_of_B_Slave_Commit__ = n27 ;
assign __ILA_ILA_Slave_write_acc_decode__[5] = __ILA_ILA_Slave_write_decode_of_B_Slave_Commit__ ;
assign n28 =  ( tx_wactive ) == ( bv_1_0_n0 )  ;
assign n29 =  ( tx_bwait ) == ( bv_1_0_n0 )  ;
assign n30 =  ( n28 ) & (n29 )  ;
assign n31 =  ( n30 ) ? ( bv_1_1_n3 ) : ( bv_1_0_n0 ) ;
assign n32 =  ( tx_wactive ) == ( bv_1_1_n3 )  ;
assign n33 =  ( n32 ) ? ( write_ready ) : ( s_axi_wready ) ;
assign n34 =  ( s_axi_wlast ) == ( bv_1_1_n3 )  ;
assign n35 =  ( n34 ) ? ( bv_1_0_n0 ) : ( write_ready ) ;
assign bv_12_0_n36 = 12'h0 ;
assign bv_2_0_n37 = 2'h0 ;
assign n38 =  ( s_axi_wlast ) == ( bv_1_1_n3 )  ;
assign n39 =  ( n38 ) ? ( bv_2_0_n37 ) : ( s_axi_bresp ) ;
assign n40 =  ( s_axi_wlast ) == ( bv_1_1_n3 )  ;
assign n41 =  ( n40 ) ? ( bv_1_1_n3 ) : ( s_axi_bvalid ) ;
assign n42 =  ( s_axi_wlast ) == ( bv_1_1_n3 )  ;
assign n43 =  ( n42 ) ? ( bv_1_0_n0 ) : ( tx_wactive ) ;
assign n44 =  ( s_axi_wlast ) == ( bv_1_1_n3 )  ;
assign n45 =  ( n44 ) ? ( bv_1_1_n3 ) : ( tx_bwait ) ;
assign bv_8_0_n46 = 8'h0 ;
assign bv_8_1_n47 = 8'h1 ;
assign n48 =  ( tx_awlen ) - ( bv_8_1_n47 )  ;
assign bv_3_0_n49 = 3'h0 ;
assign bv_32_0_n50 = 32'h0 ;
assign bv_2_1_n51 = 2'h1 ;
assign n52 =  ( tx_awburst ) == ( bv_2_1_n51 )  ;
assign n53 = tx_awaddr[31:2] ;
assign bv_30_1_n54 = 30'h1 ;
assign n55 =  ( n53 ) + ( bv_30_1_n54 )  ;
assign n56 =  { ( n55 ) , ( bv_2_0_n37 ) }  ;
assign n57 =  ( n52 ) ? ( n56 ) : ( tx_awaddr ) ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_ILA_Slave_write_valid__) begin
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           s_axi_awready <= bv_1_1_n3;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Wait__ && __ILA_ILA_Slave_write_grant__[1] ) begin
           s_axi_awready <= n31;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           s_axi_awready <= bv_1_0_n0;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Wait__ && __ILA_ILA_Slave_write_grant__[3] ) begin
           s_axi_wready <= n33;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           s_axi_wready <= n35;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           s_axi_bid <= bv_12_0_n36;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           s_axi_bid <= s_axi_awid;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           s_axi_bresp <= bv_2_0_n37;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           s_axi_bresp <= n39;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           s_axi_bvalid <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           s_axi_bvalid <= n41;
       end else if ( __ILA_ILA_Slave_write_decode_of_B_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[5] ) begin
           s_axi_bvalid <= bv_1_0_n0;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_wactive <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           tx_wactive <= bv_1_1_n3;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           tx_wactive <= n43;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_bwait <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           tx_bwait <= n45;
       end else if ( __ILA_ILA_Slave_write_decode_of_B_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[5] ) begin
           tx_bwait <= bv_1_0_n0;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_awlen <= bv_8_0_n46;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           tx_awlen <= s_axi_awlen;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           tx_awlen <= n48;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_awsize <= bv_3_0_n49;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           tx_awsize <= s_axi_awsize;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_awaddr <= bv_32_0_n50;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           tx_awaddr <= s_axi_awaddr;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           tx_awaddr <= n57;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_awburst <= bv_2_0_n37;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           tx_awburst <= s_axi_awburst;
       end
   end
end
endmodule
