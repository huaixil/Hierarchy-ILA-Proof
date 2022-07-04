//#############################################################################
//# Function: Combination of FSM and ILA model                                #
//#############################################################################
//# Author:   Huaixi Lu                                                       #
//# Email:    huaixil@princeton.edu                                           # 
//#############################################################################
module wrapper #(parameter IDW =  12, // ID
    parameter AW  =  32, // Addr
    parameter DW  =  32 )
(

    input              clk,   // global clock signal.
    input              rst, // global reset singal.
    //Write address channel
    input  [AW-1 : 0] awaddr_in,
    input  [7 : 0]    awlen_in,
    input  [2 : 0]    awsize_in,
    input  [1 : 0]    awburst_in,
    input             awvalid_in,

    //Write data channel
    input  [63 : 0]   wdata_in,
    input  [7 : 0]    wstrb_in,
    input             wvalid_in,
    input             wready_in,
    //Write response channel
    input             bready_in,

    //Read Address Channel
    input  [AW-1 : 0] araddr_in,
    input  [7 : 0]    arlen_in,
    input  [2 : 0]    arsize_in,
    input  [1 : 0]    arburst_in,
    input             arvalid_in,
    
    //Read data channel
    input  [63 : 0]   rdata_in,
    input             rvalid_in,
    input             rready_in

);

// FSM interface
wire [AW-1 : 0] fsm_axi_awaddr;  // master interface write address   
wire [7 : 0]    fsm_axi_awlen; // burst length.
wire [2 : 0]    fsm_axi_awsize;  // burst size.
wire [1 : 0]    fsm_axi_awburst; // burst type.
wire            fsm_axi_awvalid; // write address valid
wire            fsm_axi_awready; // write address ready

wire [63 : 0]   fsm_axi_wdata;   // master interface write data.
wire [7 : 0]    fsm_axi_wstrb;   // byte write strobes
wire            fsm_axi_wlast;   // last transfer in a write burst.
wire            fsm_axi_wvalid;  // indicates data is ready to go
wire            fsm_axi_wready;  // slave is ready for data

wire [1 : 0]    fsm_axi_bresp;  // status of the write transaction.
wire            fsm_axi_bvalid;  // channel is a valid write response
wire            fsm_axi_bready; // master can accept write response.

wire [AW-1 : 0] fsm_axi_araddr;  // master interface write address   
wire [7 : 0]    fsm_axi_arlen; // burst length.
wire [2 : 0]    fsm_axi_arsize;  // burst size.
wire [1 : 0]    fsm_axi_arburst; // burst type.
wire            fsm_axi_arvalid; // write address valid
wire            fsm_axi_arready; // write address ready

wire [63 : 0]   fsm_axi_rdata;   // master interface write data.
wire            fsm_axi_rlast;   // last transfer in a write burst.
wire            fsm_axi_rvalid;  // indicates data is ready to go
wire            fsm_axi_rready;  // slave is ready for data

//ILA interface
wire [AW-1 : 0] ila_axi_awaddr;  // master interface write address   
wire [7 : 0]    ila_axi_awlen; // burst length.
wire [2 : 0]    ila_axi_awsize;  // burst size.
wire [1 : 0]    ila_axi_awburst; // burst type.
wire            ila_axi_awvalid; // write address valid
wire            ila_axi_awready; // write address ready

wire [63 : 0]   ila_axi_wdata;   // master interface write data.
wire [7 : 0]    ila_axi_wstrb;   // byte write strobes
wire            ila_axi_wlast;   // last transfer in a write burst.
wire            ila_axi_wvalid;  // indicates data is ready to go
wire            ila_axi_wready;  // slave is ready for data

wire [1 : 0]    ila_axi_bresp;  // status of the write transaction.
wire            ila_axi_bvalid;  // channel is a valid write response
wire            ila_axi_bready; // master can accept write response.

wire [AW-1 : 0] ila_axi_araddr;  // master interface write address   
wire [7 : 0]    ila_axi_arlen; // burst length.
wire [2 : 0]    ila_axi_arsize;  // burst size.
wire [1 : 0]    ila_axi_arburst; // burst type.
wire            ila_axi_arvalid; // write address valid
wire            ila_axi_arready; // write address ready

wire [63 : 0]   ila_axi_rdata;   // master interface write data.
wire            ila_axi_rlast;   // last transfer in a write burst.
wire            ila_axi_rvalid;  // indicates data is ready to go
wire            ila_axi_rready;  // slave is ready for data


wire resetn;

assign resetn = ~rst;

axi_protocol #( .IDW(104), 
                .AW(32),
                .DW(32) )
fsm(
    .axi_aclk (clk),
    .rst (rst),
    
    .awaddr_in (awaddr_in), 
    .awburst_in (awburst_in), 
    .awlen_in (awlen_in), 
    .awsize_in (awsize_in), 
    .awvalid_in (awvalid_in),

    .axi_awaddr (fsm_axi_awaddr), 
    .axi_awlen (fsm_axi_awlen), 
    .axi_awsize (fsm_axi_awsize), 
    .axi_awburst (fsm_axi_awburst), 
    .axi_awvalid (fsm_axi_awvalid), 
    .axi_awready (fsm_axi_awready),

    .wdata_in (wdata_in), 
    .wstrb_in (wstrb_in), 
    .wvalid_in (wvalid_in), 
    .wready_in (wready_in),
    
    .axi_wdata (fsm_axi_wdata), 
    .axi_wlast (fsm_axi_wlast), 
    .axi_wstrb (fsm_axi_wstrb), 
    .axi_wvalid (fsm_axi_wvalid), 
    .axi_wready (fsm_axi_wready),

    .bready_in (bready_in), 
    
    .axi_bresp (fsm_axi_bresp), 
    .axi_bvalid (fsm_axi_bvalid), 
    .axi_bready (fsm_axi_bready),

    .araddr_in  (araddr_in),
    .arlen_in   (arlen_in),
    .arsize_in  (arsize_in),
    .arburst_in (arburst_in),
    .arvalid_in (arvalid_in),

    .axi_araddr (fsm_axi_araddr), 
    .axi_arlen  (fsm_axi_arlen),
    .axi_arsize (fsm_axi_arsize), 
    .axi_arburst (fsm_axi_arburst), 
    .axi_arvalid (fsm_axi_arvalid), 
    .axi_arready (fsm_axi_arready), 

    .rdata_in   (rdata_in),
    .rvalid_in  (rvalid_in),
    .rready_in  (rready_in),
    
    .axi_rdata  (fsm_axi_rdata), 
    .axi_rlast  (fsm_axi_rlast), 
    .axi_rvalid (fsm_axi_rvalid), 
    .axi_rready (fsm_axi_rready)
);

Write_Channel #( .IDW(104), 
                .AW(32),
                .DW(32) )
ila_w(
    .clk (clk),
    .resetn (resetn),
    
    .awaddr_in (awaddr_in), 
    .awburst_in (awburst_in), 
    .awlen_in (awlen_in), 
    .awsize_in (awsize_in), 
    .awvalid_in (awvalid_in),

    .axi_awaddr (ila_axi_awaddr), 
    .axi_awlen (ila_axi_awlen), 
    .axi_awsize (ila_axi_awsize), 
    .axi_awburst (ila_axi_awburst), 
    .axi_awvalid (ila_axi_awvalid), 
    .axi_awready (ila_axi_awready),

    .wdata_in (wdata_in), 
    .wstrb_in (wstrb_in), 
    .wvalid_in (wvalid_in), 
    .wready_in (wready_in),
    
    .axi_wdata (ila_axi_wdata), 
    .axi_wlast (ila_axi_wlast), 
    .axi_wstrb (ila_axi_wstrb), 
    .axi_wvalid (ila_axi_wvalid), 
    .axi_wready (ila_axi_wready),

    .bready_in (bready_in), 
    
    .axi_bresp (ila_axi_bresp), 
    .axi_bvalid (ila_axi_bvalid), 
    .axi_bready (ila_axi_bready)

);

Read_Channel #( .IDW(104), 
                .AW(32),
                .DW(32) )
ila_r(
    .clk (clk),
    .resetn (resetn),
    
    .araddr_in (araddr_in), 
    .arburst_in (arburst_in), 
    .arlen_in (arlen_in), 
    .arsize_in (arsize_in), 
    .arvalid_in (arvalid_in),

    .axi_araddr (ila_axi_araddr), 
    .axi_arlen (ila_axi_arlen), 
    .axi_arsize (ila_axi_arsize), 
    .axi_arburst (ila_axi_arburst), 
    .axi_arvalid (ila_axi_arvalid), 
    .axi_arready (ila_axi_arready),

    .rdata_in (rdata_in),
    .rvalid_in (rvalid_in), 
    .rready_in (rready_in),
    
    .axi_rdata (ila_axi_rdata), 
    .axi_rlast (ila_axi_rlast),
    .axi_rvalid (ila_axi_rvalid), 
    .axi_rready (ila_axi_rready)

);



endmodule

    