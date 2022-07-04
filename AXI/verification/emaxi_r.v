module EmeshAxiMasterBridge_read(
__ILA_EmeshAxiMasterBridge_read_grant__,
araddr,
arburst,
arlen,
arsize,
clk,
m_axi_aresetn,
m_axi_arready,
m_axi_rdata,
m_axi_rid,
m_axi_rlast,
m_axi_rresp,
m_axi_rvalid,
nondet_unknown12_n20,
nondet_unknown13_n24,
nondet_unknown14_n28,
nondet_unknown15_n32,
read_ready,
read_valid,
rst,
__ILA_EmeshAxiMasterBridge_read_acc_decode__,
__ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__,
__ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__,
__ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__,
__ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Reset__,
__ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Wait__,
__ILA_EmeshAxiMasterBridge_read_valid__,
m_axi_arid,
m_axi_araddr,
m_axi_arlen,
m_axi_arsize,
m_axi_arburst,
m_axi_arlock,
m_axi_arcache,
m_axi_arprot,
m_axi_arqos,
m_axi_arvalid,
m_axi_rready
);
input      [4:0] __ILA_EmeshAxiMasterBridge_read_grant__;
input     [31:0] araddr;
input      [1:0] arburst;
input      [7:0] arlen;
input      [2:0] arsize;
input            clk;
input            m_axi_aresetn;
input            m_axi_arready;
input     [63:0] m_axi_rdata;
input     [11:0] m_axi_rid;
input            m_axi_rlast;
input      [1:0] m_axi_rresp;
input            m_axi_rvalid;
input     [31:0] nondet_unknown12_n20;
input      [7:0] nondet_unknown13_n24;
input      [2:0] nondet_unknown14_n28;
input      [1:0] nondet_unknown15_n32;
input            read_ready;
input            read_valid;
input            rst;
output      [4:0] __ILA_EmeshAxiMasterBridge_read_acc_decode__;
output            __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__;
output            __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__;
output            __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__;
output            __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Reset__;
output            __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Wait__;
output            __ILA_EmeshAxiMasterBridge_read_valid__;
output reg     [11:0] m_axi_arid;
output reg     [31:0] m_axi_araddr;
output reg      [7:0] m_axi_arlen;
output reg      [2:0] m_axi_arsize;
output reg      [1:0] m_axi_arburst;
output reg            m_axi_arlock;
output reg      [3:0] m_axi_arcache;
output reg      [2:0] m_axi_arprot;
output reg      [3:0] m_axi_arqos;
output reg            m_axi_arvalid;
output reg            m_axi_rready;
wire      [4:0] __ILA_EmeshAxiMasterBridge_read_acc_decode__;
wire            __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__;
wire            __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__;
wire            __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__;
wire            __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Reset__;
wire            __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Wait__;
wire      [4:0] __ILA_EmeshAxiMasterBridge_read_grant__;
wire            __ILA_EmeshAxiMasterBridge_read_valid__;
wire     [31:0] araddr;
wire      [1:0] arburst;
wire      [7:0] arlen;
wire      [2:0] arsize;
wire            bv_1_0_n0;
wire            bv_1_1_n3;
wire            clk;
wire            m_axi_aresetn;
wire            m_axi_arready;
wire     [63:0] m_axi_rdata;
wire     [11:0] m_axi_rid;
wire            m_axi_rlast;
wire      [1:0] m_axi_rresp;
wire            m_axi_rvalid;
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
wire     [31:0] n21;
wire     [31:0] n22;
wire            n23;
wire      [7:0] n25;
wire      [7:0] n26;
wire            n27;
wire      [2:0] n29;
wire      [2:0] n30;
wire            n31;
wire      [1:0] n33;
wire      [1:0] n34;
wire            n35;
wire            n36;
wire            n4;
wire            n5;
wire            n6;
wire            n7;
wire            n8;
wire            n9;
wire     [31:0] nondet_unknown12_n20;
wire      [7:0] nondet_unknown13_n24;
wire      [2:0] nondet_unknown14_n28;
wire      [1:0] nondet_unknown15_n32;
wire            read_ready;
wire            read_valid;
wire            rst;
assign __ILA_EmeshAxiMasterBridge_read_valid__ = 1'b1 ;
assign bv_1_0_n0 = 1'h0 ;
assign n1 =  ( m_axi_aresetn ) == ( bv_1_0_n0 )  ;
assign __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Reset__ = n1 ;
assign __ILA_EmeshAxiMasterBridge_read_acc_decode__[0] = __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Reset__ ;
assign n2 =  ( m_axi_arvalid ) == ( bv_1_0_n0 )  ;
assign bv_1_1_n3 = 1'h1 ;
assign n4 =  ( read_valid ) == ( bv_1_1_n3 )  ;
assign n5 =  ( n2 ) & (n4 )  ;
assign n6 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n7 =  ( n5 ) & (n6 )  ;
assign __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__ = n7 ;
assign __ILA_EmeshAxiMasterBridge_read_acc_decode__[1] = __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__ ;
assign n8 =  ( m_axi_arvalid ) == ( bv_1_1_n3 )  ;
assign n9 =  ( m_axi_arready ) == ( bv_1_0_n0 )  ;
assign n10 =  ( n8 ) & (n9 )  ;
assign n11 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n12 =  ( n10 ) & (n11 )  ;
assign __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__ = n12 ;
assign __ILA_EmeshAxiMasterBridge_read_acc_decode__[2] = __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__ ;
assign n13 =  ( m_axi_arvalid ) == ( bv_1_1_n3 )  ;
assign n14 =  ( m_axi_arready ) == ( bv_1_1_n3 )  ;
assign n15 =  ( n13 ) & (n14 )  ;
assign n16 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n17 =  ( n15 ) & (n16 )  ;
assign __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__ = n17 ;
assign __ILA_EmeshAxiMasterBridge_read_acc_decode__[3] = __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__ ;
assign n18 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Wait__ = n18 ;
assign __ILA_EmeshAxiMasterBridge_read_acc_decode__[4] = __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Wait__ ;
assign n19 =  ( read_valid ) == ( bv_1_1_n3 )  ;
assign n21 = nondet_unknown12_n20 ;
assign n22 =  ( n19 ) ? ( araddr ) : ( n21 ) ;
assign n23 =  ( read_valid ) == ( bv_1_1_n3 )  ;
assign n25 = nondet_unknown13_n24 ;
assign n26 =  ( n23 ) ? ( arlen ) : ( n25 ) ;
assign n27 =  ( read_valid ) == ( bv_1_1_n3 )  ;
assign n29 = nondet_unknown14_n28 ;
assign n30 =  ( n27 ) ? ( arsize ) : ( n29 ) ;
assign n31 =  ( read_valid ) == ( bv_1_1_n3 )  ;
assign n33 = nondet_unknown15_n32 ;
assign n34 =  ( n31 ) ? ( arburst ) : ( n33 ) ;
assign n35 =  ( read_valid ) == ( bv_1_1_n3 )  ;
assign n36 =  ( n35 ) ? ( bv_1_1_n3 ) : ( bv_1_0_n0 ) ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_EmeshAxiMasterBridge_read_valid__) begin
       if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__ && __ILA_EmeshAxiMasterBridge_read_grant__[2] ) begin
           m_axi_arid <= m_axi_arid;
       end
       if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__ && __ILA_EmeshAxiMasterBridge_read_grant__[1] ) begin
           m_axi_araddr <= araddr;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__ && __ILA_EmeshAxiMasterBridge_read_grant__[2] ) begin
           m_axi_araddr <= m_axi_araddr;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__ && __ILA_EmeshAxiMasterBridge_read_grant__[3] ) begin
           m_axi_araddr <= n22;
       end
       if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__ && __ILA_EmeshAxiMasterBridge_read_grant__[1] ) begin
           m_axi_arlen <= arlen;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__ && __ILA_EmeshAxiMasterBridge_read_grant__[2] ) begin
           m_axi_arlen <= m_axi_arlen;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__ && __ILA_EmeshAxiMasterBridge_read_grant__[3] ) begin
           m_axi_arlen <= n26;
       end
       if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__ && __ILA_EmeshAxiMasterBridge_read_grant__[1] ) begin
           m_axi_arsize <= arsize;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__ && __ILA_EmeshAxiMasterBridge_read_grant__[2] ) begin
           m_axi_arsize <= m_axi_arsize;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__ && __ILA_EmeshAxiMasterBridge_read_grant__[3] ) begin
           m_axi_arsize <= n30;
       end
       if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__ && __ILA_EmeshAxiMasterBridge_read_grant__[1] ) begin
           m_axi_arburst <= arburst;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__ && __ILA_EmeshAxiMasterBridge_read_grant__[2] ) begin
           m_axi_arburst <= m_axi_arburst;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__ && __ILA_EmeshAxiMasterBridge_read_grant__[3] ) begin
           m_axi_arburst <= n34;
       end
       if ( __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Reset__ && __ILA_EmeshAxiMasterBridge_read_grant__[0] ) begin
           m_axi_arvalid <= bv_1_0_n0;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__ && __ILA_EmeshAxiMasterBridge_read_grant__[1] ) begin
           m_axi_arvalid <= bv_1_1_n3;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__ && __ILA_EmeshAxiMasterBridge_read_grant__[2] ) begin
           m_axi_arvalid <= m_axi_arvalid;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__ && __ILA_EmeshAxiMasterBridge_read_grant__[3] ) begin
           m_axi_arvalid <= n36;
       end
       if ( __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Reset__ && __ILA_EmeshAxiMasterBridge_read_grant__[0] ) begin
           m_axi_rready <= bv_1_0_n0;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Wait__ && __ILA_EmeshAxiMasterBridge_read_grant__[4] ) begin
           m_axi_rready <= read_ready;
       end
   end
end
endmodule
