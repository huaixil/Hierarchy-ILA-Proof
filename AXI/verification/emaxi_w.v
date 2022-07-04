module ILA_Master_write(
__ILA_ILA_Master_write_grant__,
awaddr,
awburst,
awlen,
awsize,
bready,
clk,
m_axi_aresetn,
m_axi_awready,
m_axi_bid,
m_axi_bresp,
m_axi_bvalid,
m_axi_wready,
nondet_unknown0_n31,
nondet_unknown10_n71,
nondet_unknown11_n79,
nondet_unknown1_n39,
nondet_unknown2_n47,
nondet_unknown3_n55,
nondet_unknown4_n35,
nondet_unknown5_n43,
nondet_unknown6_n51,
nondet_unknown7_n59,
nondet_unknown8_n67,
nondet_unknown9_n75,
rst,
wdata,
write_addr_valid,
write_valid,
wstrb,
__ILA_ILA_Master_write_acc_decode__,
__ILA_ILA_Master_write_decode_of_AW_Master_Asserted__,
__ILA_ILA_Master_write_decode_of_AW_Master_Commit__,
__ILA_ILA_Master_write_decode_of_AW_Master_Prepare__,
__ILA_ILA_Master_write_decode_of_B_Master_Wait__,
__ILA_ILA_Master_write_decode_of_W_Master_Asserted__,
__ILA_ILA_Master_write_decode_of_W_Master_Busy__,
__ILA_ILA_Master_write_decode_of_W_Master_Prepare__,
__ILA_ILA_Master_write_decode_of_W_Master_Reset__,
__ILA_ILA_Master_write_valid__,
m_axi_awid,
m_axi_awaddr,
m_axi_awlen,
m_axi_awsize,
m_axi_awburst,
m_axi_awlock,
m_axi_awcache,
m_axi_awprot,
m_axi_awqos,
m_axi_awvalid,
m_axi_wid,
m_axi_wdata,
m_axi_wstrb,
m_axi_wlast,
m_axi_wvalid,
m_axi_bready,
tx_wactive,
tx_bwait,
tx_awlen
);
input      [7:0] __ILA_ILA_Master_write_grant__;
input     [31:0] awaddr;
input      [1:0] awburst;
input      [7:0] awlen;
input      [2:0] awsize;
input            bready;
input            clk;
input            m_axi_aresetn;
input            m_axi_awready;
input     [11:0] m_axi_bid;
input      [1:0] m_axi_bresp;
input            m_axi_bvalid;
input            m_axi_wready;
input     [31:0] nondet_unknown0_n31;
input     [63:0] nondet_unknown10_n71;
input      [7:0] nondet_unknown11_n79;
input      [7:0] nondet_unknown1_n39;
input      [2:0] nondet_unknown2_n47;
input      [1:0] nondet_unknown3_n55;
input     [31:0] nondet_unknown4_n35;
input      [7:0] nondet_unknown5_n43;
input      [2:0] nondet_unknown6_n51;
input      [1:0] nondet_unknown7_n59;
input     [63:0] nondet_unknown8_n67;
input      [7:0] nondet_unknown9_n75;
input            rst;
input     [63:0] wdata;
input            write_addr_valid;
input            write_valid;
input      [7:0] wstrb;
output      [7:0] __ILA_ILA_Master_write_acc_decode__;
output            __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__;
output            __ILA_ILA_Master_write_decode_of_AW_Master_Commit__;
output            __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__;
output            __ILA_ILA_Master_write_decode_of_B_Master_Wait__;
output            __ILA_ILA_Master_write_decode_of_W_Master_Asserted__;
output            __ILA_ILA_Master_write_decode_of_W_Master_Busy__;
output            __ILA_ILA_Master_write_decode_of_W_Master_Prepare__;
output            __ILA_ILA_Master_write_decode_of_W_Master_Reset__;
output            __ILA_ILA_Master_write_valid__;
output reg     [11:0] m_axi_awid;
output reg     [31:0] m_axi_awaddr;
output reg      [7:0] m_axi_awlen;
output reg      [2:0] m_axi_awsize;
output reg      [1:0] m_axi_awburst;
output reg            m_axi_awlock;
output reg      [3:0] m_axi_awcache;
output reg      [2:0] m_axi_awprot;
output reg      [3:0] m_axi_awqos;
output reg            m_axi_awvalid;
output reg     [11:0] m_axi_wid;
output reg     [63:0] m_axi_wdata;
output reg      [7:0] m_axi_wstrb;
output reg            m_axi_wlast;
output reg            m_axi_wvalid;
output reg            m_axi_bready;
output reg            tx_wactive;
output reg            tx_bwait;
output reg      [7:0] tx_awlen;
wire      [7:0] __ILA_ILA_Master_write_acc_decode__;
wire            __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__;
wire            __ILA_ILA_Master_write_decode_of_AW_Master_Commit__;
wire            __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__;
wire            __ILA_ILA_Master_write_decode_of_B_Master_Wait__;
wire            __ILA_ILA_Master_write_decode_of_W_Master_Asserted__;
wire            __ILA_ILA_Master_write_decode_of_W_Master_Busy__;
wire            __ILA_ILA_Master_write_decode_of_W_Master_Prepare__;
wire            __ILA_ILA_Master_write_decode_of_W_Master_Reset__;
wire      [7:0] __ILA_ILA_Master_write_grant__;
wire            __ILA_ILA_Master_write_valid__;
wire     [31:0] awaddr;
wire      [1:0] awburst;
wire      [7:0] awlen;
wire      [2:0] awsize;
wire            bready;
wire            bv_1_0_n0;
wire            bv_1_1_n3;
wire      [7:0] bv_8_0_n82;
wire      [7:0] bv_8_1_n85;
wire            clk;
wire            m_axi_aresetn;
wire            m_axi_awready;
wire     [11:0] m_axi_bid;
wire      [1:0] m_axi_bresp;
wire            m_axi_bvalid;
wire            m_axi_wready;
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
wire     [31:0] n32;
wire     [31:0] n33;
wire            n34;
wire     [31:0] n36;
wire     [31:0] n37;
wire            n38;
wire            n4;
wire      [7:0] n40;
wire      [7:0] n41;
wire            n42;
wire      [7:0] n44;
wire      [7:0] n45;
wire            n46;
wire      [2:0] n48;
wire      [2:0] n49;
wire            n5;
wire            n50;
wire      [2:0] n52;
wire      [2:0] n53;
wire            n54;
wire      [1:0] n56;
wire      [1:0] n57;
wire            n58;
wire            n6;
wire      [1:0] n60;
wire      [1:0] n61;
wire            n62;
wire            n63;
wire            n64;
wire            n65;
wire            n66;
wire     [63:0] n68;
wire     [63:0] n69;
wire            n7;
wire            n70;
wire     [63:0] n72;
wire     [63:0] n73;
wire            n74;
wire      [7:0] n76;
wire      [7:0] n77;
wire            n78;
wire            n8;
wire      [7:0] n80;
wire      [7:0] n81;
wire            n83;
wire            n84;
wire            n86;
wire            n87;
wire            n88;
wire            n89;
wire            n9;
wire            n90;
wire            n91;
wire            n92;
wire            n93;
wire      [7:0] n94;
wire     [31:0] nondet_unknown0_n31;
wire     [63:0] nondet_unknown10_n71;
wire      [7:0] nondet_unknown11_n79;
wire      [7:0] nondet_unknown1_n39;
wire      [2:0] nondet_unknown2_n47;
wire      [1:0] nondet_unknown3_n55;
wire     [31:0] nondet_unknown4_n35;
wire      [7:0] nondet_unknown5_n43;
wire      [2:0] nondet_unknown6_n51;
wire      [1:0] nondet_unknown7_n59;
wire     [63:0] nondet_unknown8_n67;
wire      [7:0] nondet_unknown9_n75;
wire            rst;
wire     [63:0] wdata;
wire            write_addr_valid;
wire            write_valid;
wire      [7:0] wstrb;
assign __ILA_ILA_Master_write_valid__ = 1'b1 ;
assign bv_1_0_n0 = 1'h0 ;
assign n1 =  ( m_axi_aresetn ) == ( bv_1_0_n0 )  ;
assign __ILA_ILA_Master_write_decode_of_W_Master_Reset__ = n1 ;
assign __ILA_ILA_Master_write_acc_decode__[0] = __ILA_ILA_Master_write_decode_of_W_Master_Reset__ ;
assign n2 =  ( m_axi_awvalid ) == ( bv_1_0_n0 )  ;
assign bv_1_1_n3 = 1'h1 ;
assign n4 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n5 =  ( n2 ) & (n4 )  ;
assign __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__ = n5 ;
assign __ILA_ILA_Master_write_acc_decode__[1] = __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__ ;
assign n6 =  ( m_axi_awvalid ) == ( bv_1_1_n3 )  ;
assign n7 =  ( m_axi_awready ) == ( bv_1_0_n0 )  ;
assign n8 =  ( n6 ) & (n7 )  ;
assign n9 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n10 =  ( n8 ) & (n9 )  ;
assign __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ = n10 ;
assign __ILA_ILA_Master_write_acc_decode__[2] = __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ ;
assign n11 =  ( m_axi_awvalid ) == ( bv_1_1_n3 )  ;
assign n12 =  ( m_axi_awready ) == ( bv_1_1_n3 )  ;
assign n13 =  ( n11 ) & (n12 )  ;
assign n14 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n15 =  ( n13 ) & (n14 )  ;
assign __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ = n15 ;
assign __ILA_ILA_Master_write_acc_decode__[3] = __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ ;
assign n16 =  ( m_axi_wvalid ) == ( bv_1_0_n0 )  ;
assign n17 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n18 =  ( n16 ) & (n17 )  ;
assign __ILA_ILA_Master_write_decode_of_W_Master_Prepare__ = n18 ;
assign __ILA_ILA_Master_write_acc_decode__[4] = __ILA_ILA_Master_write_decode_of_W_Master_Prepare__ ;
assign n19 =  ( m_axi_wvalid ) == ( bv_1_1_n3 )  ;
assign n20 =  ( m_axi_wready ) == ( bv_1_0_n0 )  ;
assign n21 =  ( n19 ) & (n20 )  ;
assign n22 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n23 =  ( n21 ) & (n22 )  ;
assign __ILA_ILA_Master_write_decode_of_W_Master_Asserted__ = n23 ;
assign __ILA_ILA_Master_write_acc_decode__[5] = __ILA_ILA_Master_write_decode_of_W_Master_Asserted__ ;
assign n24 =  ( m_axi_wvalid ) == ( bv_1_1_n3 )  ;
assign n25 =  ( m_axi_wready ) == ( bv_1_1_n3 )  ;
assign n26 =  ( n24 ) & (n25 )  ;
assign n27 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n28 =  ( n26 ) & (n27 )  ;
assign __ILA_ILA_Master_write_decode_of_W_Master_Busy__ = n28 ;
assign __ILA_ILA_Master_write_acc_decode__[6] = __ILA_ILA_Master_write_decode_of_W_Master_Busy__ ;
assign n29 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign __ILA_ILA_Master_write_decode_of_B_Master_Wait__ = n29 ;
assign __ILA_ILA_Master_write_acc_decode__[7] = __ILA_ILA_Master_write_decode_of_B_Master_Wait__ ;
assign n30 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n32 = nondet_unknown0_n31 ;
assign n33 =  ( n30 ) ? ( awaddr ) : ( n32 ) ;
assign n34 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n36 = nondet_unknown4_n35 ;
assign n37 =  ( n34 ) ? ( awaddr ) : ( n36 ) ;
assign n38 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n40 = nondet_unknown1_n39 ;
assign n41 =  ( n38 ) ? ( awlen ) : ( n40 ) ;
assign n42 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n44 = nondet_unknown5_n43 ;
assign n45 =  ( n42 ) ? ( awlen ) : ( n44 ) ;
assign n46 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n48 = nondet_unknown2_n47 ;
assign n49 =  ( n46 ) ? ( awsize ) : ( n48 ) ;
assign n50 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n52 = nondet_unknown6_n51 ;
assign n53 =  ( n50 ) ? ( awsize ) : ( n52 ) ;
assign n54 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n56 = nondet_unknown3_n55 ;
assign n57 =  ( n54 ) ? ( awburst ) : ( n56 ) ;
assign n58 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n60 = nondet_unknown7_n59 ;
assign n61 =  ( n58 ) ? ( awburst ) : ( n60 ) ;
assign n62 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n63 =  ( n62 ) ? ( bv_1_1_n3 ) : ( bv_1_0_n0 ) ;
assign n64 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n65 =  ( n64 ) ? ( bv_1_1_n3 ) : ( bv_1_0_n0 ) ;
assign n66 =  ( write_valid ) == ( bv_1_1_n3 )  ;
assign n68 = nondet_unknown8_n67 ;
assign n69 =  ( n66 ) ? ( wdata ) : ( n68 ) ;
assign n70 =  ( write_valid ) == ( bv_1_1_n3 )  ;
assign n72 = nondet_unknown10_n71 ;
assign n73 =  ( n70 ) ? ( wdata ) : ( n72 ) ;
assign n74 =  ( write_valid ) == ( bv_1_1_n3 )  ;
assign n76 = nondet_unknown9_n75 ;
assign n77 =  ( n74 ) ? ( wstrb ) : ( n76 ) ;
assign n78 =  ( write_valid ) == ( bv_1_1_n3 )  ;
assign n80 = nondet_unknown11_n79 ;
assign n81 =  ( n78 ) ? ( wstrb ) : ( n80 ) ;
assign bv_8_0_n82 = 8'h0 ;
assign n83 =  ( m_axi_awlen ) == ( bv_8_0_n82 )  ;
assign n84 =  ( n83 ) ? ( bv_1_1_n3 ) : ( bv_1_0_n0 ) ;
assign bv_8_1_n85 = 8'h1 ;
assign n86 =  ( tx_awlen ) == ( bv_8_1_n85 )  ;
assign n87 =  ( n86 ) ? ( bv_1_1_n3 ) : ( m_axi_wlast ) ;
assign n88 =  ( write_valid ) == ( bv_1_1_n3 )  ;
assign n89 =  ( n88 ) ? ( bv_1_1_n3 ) : ( bv_1_0_n0 ) ;
assign n90 =  ( write_valid ) == ( bv_1_1_n3 )  ;
assign n91 =  ( n90 ) ? ( bv_1_1_n3 ) : ( bv_1_0_n0 ) ;
assign n92 =  ( tx_awlen ) == ( bv_8_1_n85 )  ;
assign n93 =  ( n92 ) ? ( bv_1_0_n0 ) : ( tx_wactive ) ;
assign n94 =  ( tx_awlen ) - ( bv_8_1_n85 )  ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_ILA_Master_write_valid__) begin
       if ( __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awid <= m_axi_awid;
       end
       if ( __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__ && __ILA_ILA_Master_write_grant__[1] ) begin
           m_axi_awaddr <= n33;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awaddr <= m_axi_awaddr;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ && __ILA_ILA_Master_write_grant__[3] ) begin
           m_axi_awaddr <= n37;
       end
       if ( __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__ && __ILA_ILA_Master_write_grant__[1] ) begin
           m_axi_awlen <= n41;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awlen <= m_axi_awlen;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ && __ILA_ILA_Master_write_grant__[3] ) begin
           m_axi_awlen <= n45;
       end
       if ( __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__ && __ILA_ILA_Master_write_grant__[1] ) begin
           m_axi_awsize <= n49;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awsize <= m_axi_awsize;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ && __ILA_ILA_Master_write_grant__[3] ) begin
           m_axi_awsize <= n53;
       end
       if ( __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__ && __ILA_ILA_Master_write_grant__[1] ) begin
           m_axi_awburst <= n57;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awburst <= m_axi_awburst;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ && __ILA_ILA_Master_write_grant__[3] ) begin
           m_axi_awburst <= n61;
       end
       if ( __ILA_ILA_Master_write_decode_of_W_Master_Reset__ && __ILA_ILA_Master_write_grant__[0] ) begin
           m_axi_awvalid <= bv_1_0_n0;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__ && __ILA_ILA_Master_write_grant__[1] ) begin
           m_axi_awvalid <= n63;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awvalid <= m_axi_awvalid;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ && __ILA_ILA_Master_write_grant__[3] ) begin
           m_axi_awvalid <= n65;
       end
       if ( __ILA_ILA_Master_write_decode_of_W_Master_Prepare__ && __ILA_ILA_Master_write_grant__[4] ) begin
           m_axi_wdata <= n69;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Asserted__ && __ILA_ILA_Master_write_grant__[5] ) begin
           m_axi_wdata <= m_axi_wdata;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Busy__ && __ILA_ILA_Master_write_grant__[6] ) begin
           m_axi_wdata <= n73;
       end
       if ( __ILA_ILA_Master_write_decode_of_W_Master_Prepare__ && __ILA_ILA_Master_write_grant__[4] ) begin
           m_axi_wstrb <= n77;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Asserted__ && __ILA_ILA_Master_write_grant__[5] ) begin
           m_axi_wstrb <= m_axi_wstrb;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Busy__ && __ILA_ILA_Master_write_grant__[6] ) begin
           m_axi_wstrb <= n81;
       end
       if ( __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ && __ILA_ILA_Master_write_grant__[3] ) begin
           m_axi_wlast <= n84;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Busy__ && __ILA_ILA_Master_write_grant__[6] ) begin
           m_axi_wlast <= n87;
       end
       if ( __ILA_ILA_Master_write_decode_of_W_Master_Reset__ && __ILA_ILA_Master_write_grant__[0] ) begin
           m_axi_wvalid <= bv_1_0_n0;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Prepare__ && __ILA_ILA_Master_write_grant__[4] ) begin
           m_axi_wvalid <= n89;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Asserted__ && __ILA_ILA_Master_write_grant__[5] ) begin
           m_axi_wvalid <= m_axi_wvalid;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Busy__ && __ILA_ILA_Master_write_grant__[6] ) begin
           m_axi_wvalid <= n91;
       end
       if ( __ILA_ILA_Master_write_decode_of_B_Master_Wait__ && __ILA_ILA_Master_write_grant__[7] ) begin
           m_axi_bready <= bready;
       end
       if ( __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ && __ILA_ILA_Master_write_grant__[3] ) begin
           tx_wactive <= bv_1_1_n3;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Busy__ && __ILA_ILA_Master_write_grant__[6] ) begin
           tx_wactive <= n93;
       end
       if ( __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ && __ILA_ILA_Master_write_grant__[3] ) begin
           tx_awlen <= m_axi_awlen;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Busy__ && __ILA_ILA_Master_write_grant__[6] ) begin
           tx_awlen <= n94;
       end
   end
end
endmodule
