//#############################################################################
//# Function: FSM of AXI Protocol                                             #
//#############################################################################
//# Author:   Huaixi Lu                                                       #
//# Email:    huaixil@princeton.edu                                           # 
//#############################################################################
module axi_protocol (
    axi_aclk,rst,

    awaddr_in, awburst_in, awlen_in, awsize_in, awvalid_in,
    axi_awaddr, axi_awlen, axi_awsize, axi_awburst, axi_awvalid, axi_awready,

    wdata_in, wstrb_in, wvalid_in, wready_in,
    axi_wdata, axi_wlast, axi_wstrb, axi_wvalid, axi_wready,

    bready_in, axi_bresp, axi_bvalid, axi_bready,

    araddr_in, arburst_in, arlen_in, arsize_in, arvalid_in,
    axi_araddr, axi_arlen,axi_arsize, axi_arburst, axi_arvalid, axi_arready,

    rdata_in, rvalid_in, rready_in,
    axi_rdata, axi_rlast, axi_rvalid, axi_rready
);

    parameter IDW = 12; // ID
    parameter AW  = 32; // Addr
    parameter DW  = 32; 
                        
   input              axi_aclk;    // global clock signal.
   input              rst; // global reset singal.

   //Write address channel
   input  [AW-1 : 0] awaddr_in;
   input  [7 : 0]    awlen_in;
   input  [2 : 0]    awsize_in;
   input  [1 : 0]    awburst_in;
   input             awvalid_in;

   output reg [AW-1 : 0] axi_awaddr;  // master interface write address   
   output reg [7 : 0]    axi_awlen;   // burst length.
   output reg [2 : 0]    axi_awsize;  // burst size.
   output reg [1 : 0]    axi_awburst; // burst type.
   output reg           axi_awvalid; // write address valid
   output reg            axi_awready; // write address ready

   //Write data channel
   input  [63 : 0]   wdata_in;
   input  [7 : 0]    wstrb_in;
   input             wvalid_in;
   input             wready_in;

   output reg [63 : 0]   axi_wdata;   // master interface write data.
   output reg [7 : 0]    axi_wstrb;   // byte write strobes
   output reg            axi_wlast;   // last transfer in a write burst.
   output reg            axi_wvalid;  // indicates data is ready to go
   output reg            axi_wready;  // slave is ready for data

   //Write response channel
   input             bready_in;
   output reg [1 : 0]    axi_bresp;   // status of the write transaction.
   output reg            axi_bvalid;  // channel is a valid write response
   output reg            axi_bready;  // master can accept write response.

   //Read address channel
    input  [AW-1 : 0] araddr_in;
    input  [7 : 0]    arlen_in;
    input  [2 : 0]    arsize_in;
    input  [1 : 0]    arburst_in;
    input             arvalid_in;

   output reg [AW-1 :0]  axi_araddr;  // initial address of a read burst
   output reg [7 : 0]    axi_arlen;   // burst length
   output reg [2 : 0]    axi_arsize;  // burst size
   output reg [1 : 0]    axi_arburst; // burst type
   output reg            axi_arvalid; // valid read address
   output reg            axi_arready; // slave is ready to accept an address

   //Read data channel
   input  [63 : 0]   rdata_in;
   input             rvalid_in;
   input             rready_in;

   output reg [63 : 0]   axi_rdata;   // master read data
   output reg            axi_rlast;   // last transfer in a read burst
   output reg            axi_rvalid;  // signaling the required read data
   output reg            axi_rready;  // master can accept the readback data

localparam WAIT   = 2'b00;
localparam COMMIT = 2'b01; // ready == 1 && valid == 1
localparam ASSERT = 2'b10; // ready == 0 && valid == 1

// -----------------//
//  AW Channel FSM  //
// -----------------//

// internal states
reg w_active;
reg b_wait;
reg [AW-1:0] aw_addr;
reg [7  : 0] aw_len;
reg [2  : 0] aw_size;
reg [1  : 0] aw_burst;

always @(posedge axi_aclk) begin
    if (rst) begin
        w_active <= 1'b0;
        axi_wlast <= 1'b0;
    end
    else begin
        if(aw_state == COMMIT) begin
            w_active <= 1'b1;
            aw_addr  <= axi_awaddr;
            aw_len   <= axi_awlen; 
            aw_size  <= axi_awsize;
            aw_burst <= axi_awburst;
            if (axi_awlen == 8'b0)
                axi_wlast <= 1'b1;
            else
                axi_wlast <= 1'b0;
        end
        else if (w_state == COMMIT) begin
            aw_len <= aw_len - 1'b1;
            if (aw_len == 8'b1)
                axi_wlast <= 1'b1; 
            if (axi_wlast == 1'b1)
            w_active <= 1'b0;
        end
    end
end

reg [1:0] aw_state;

always @(posedge axi_aclk) 
begin
    if(rst) begin
        axi_awvalid <= 1'b0;        
        axi_awready <= 1'b1;
        aw_state <= WAIT;             
    end
    else 
    begin
        case(aw_state)
            WAIT:
                begin
                    if ( ((~w_active && ~b_wait) || axi_awready) && awvalid_in) begin
                        axi_awready <= 1'b1;
                        axi_awvalid <= 1'b1;
                        aw_state <= COMMIT;
                        axi_awaddr  <= awaddr_in;
                        axi_awlen   <= awlen_in; 
                        axi_awsize  <= awsize_in;
                        axi_awburst <= awburst_in;
                    end
                    else if (awvalid_in) begin
                        axi_awvalid <= 1'b1;
                        aw_state <= ASSERT;
                        axi_awaddr  <= awaddr_in;
                        axi_awlen   <= awlen_in; 
                        axi_awsize  <= awsize_in;
                        axi_awburst <= awburst_in;
                    end
                    else if (~w_active && ~b_wait) begin
                        axi_awready <= 1'b1;
                    end
                end

            COMMIT:
                begin
                    axi_awready <= 1'b0;
                    if (awvalid_in) begin 
                        aw_state <= ASSERT;
                        axi_awvalid <= 1'b1;
                        axi_awaddr  <= awaddr_in;
                        axi_awlen   <= awlen_in; 
                        axi_awsize  <= awsize_in;
                        axi_awburst <= awburst_in;
                    end
                    else begin
                        axi_awvalid <= 1'b0;
                        aw_state <= WAIT;
                    end
                end
            
            ASSERT:
                    if (~w_active && ~b_wait) begin
                        axi_awready <= 1'b1;
                        aw_state <= COMMIT;
                    end
        endcase
    end
end
// -----------------//
//  W Channel FSM  //
// -----------------//

// internal states
reg [1:0] w_state;

always @(posedge axi_aclk)
begin
    if(rst) begin
        axi_wvalid <= 1'b0;
        w_state <= WAIT;
    end
    else begin
        case(w_state)
            WAIT: // valid == 0
                if (w_active) begin
                    if(wvalid_in && wready_in) begin
                        axi_wvalid <= 1'b1;
                        axi_wready <= 1'b1;
                        axi_wdata  <= wdata_in;
                        axi_wstrb  <= wstrb_in;
                        w_state <= COMMIT;
                    end
                    else if(wvalid_in) begin
                        axi_wvalid <= 1'b1;
                        axi_wready <= 1'b0;
                        axi_wdata  <= wdata_in;
                        axi_wstrb  <= wstrb_in;
                        w_state <= ASSERT;
                    end
                    else
                        axi_wready <= wready_in;
                end
                else if(wvalid_in) begin
                    axi_wvalid <= 1'b1;
                    axi_wdata  <= wdata_in;
                    axi_wstrb  <= wstrb_in;
                    w_state <= ASSERT;
                end
            COMMIT: // ready && valid == 1
                begin
                   if(wvalid_in && wready_in) begin
                        axi_wdata  <= wdata_in;
                        axi_wstrb  <= wstrb_in;
                    end
                    else if(wvalid_in) begin
                        axi_wready <= 1'b0;
                        axi_wdata  <= wdata_in;
                        axi_wstrb  <= wstrb_in;
                        w_state <= ASSERT;
                    end
                    else begin
                        axi_wready <= wready_in;
                        axi_wvalid <= 1'b0;
                        w_state <= WAIT;
                    end
                    if (axi_wlast == 1'b1) begin
                        axi_wready <= 1'b0;
                        if (wvalid_in) begin
                            w_state <= ASSERT;
                            axi_wvalid <= 1'b1;
                            axi_wdata  <= wdata_in;
                            axi_wstrb  <= wstrb_in;
                        end
                        else begin 
                            w_state <= WAIT;
                            axi_wvalid <= 1'b0;
                        end
                    end
                end
            ASSERT: // valid == 1 && ready == 0
                if (w_active && wready_in) begin
                    w_state <= COMMIT;
                    axi_wready <= 1'b1;
                end
        endcase
    end
end

// -----------------//
//  B Channel FSM  //
// -----------------//

// internal states
reg [1:0] b_state;

always @(posedge axi_aclk)
begin
    if(rst) begin
        axi_bvalid <= 1'b0;
        b_wait <= 1'b0;
        b_state <= WAIT;
    end
    else begin
        case(b_state)
            WAIT:
                if (w_state == COMMIT && axi_wlast == 1 && bready_in ) begin
                    axi_bvalid <= 1'b1;
                    axi_bready <= 1'b1;
                    axi_bresp <= 2'b00;
                    b_state <= COMMIT;
                    b_wait <= 1'b1;
                end
                else if (w_state == COMMIT && axi_wlast == 1) begin
                    axi_bvalid <= 1'b1;
                    axi_bready <= 1'b0;
                    axi_bresp <= 2'b00;
                    b_state <= ASSERT;
                    b_wait <= 1'b1;
                end
                else
                    axi_bready <= bready_in;
            COMMIT: 
            begin
                b_wait <= 1'b0;
                b_state <= WAIT;
                axi_bvalid <= 1'b0;
                axi_bready <= bready_in;
            end

            ASSERT:
            if (bready_in) begin
                axi_bready <= 1'b1;
                b_state <= COMMIT;
            end
        endcase
    end
end

// -----------------//
//  AR Channel FSM  //
// -----------------//

// internal states
reg r_active;
reg [AW-1:0] ar_addr;
reg [7  : 0] ar_len;
reg [2  : 0] ar_size;
reg [1  : 0] ar_burst;

always @(posedge axi_aclk) begin
    if (rst) begin
        r_active <= 1'b0;
        axi_rlast <= 1'b0;
    end
    else begin
        if(ar_state == COMMIT) begin
            r_active <= 1'b1;
            ar_addr  <= axi_araddr;
            ar_len   <= axi_arlen; 
            ar_size  <= axi_arsize;
            ar_burst <= axi_arburst;
            if (axi_arlen == 8'b0)
                axi_rlast <= 1'b1;
            else
                axi_rlast <= 1'b0;
        end
        else if (r_state == COMMIT) begin
            ar_len <= ar_len - 1'b1;
            if (ar_len == 8'b1)
                axi_rlast <= 1'b1; 
            if (axi_rlast == 1'b1)
            r_active <= 1'b0;
        end
    end
end

reg [1:0] ar_state;

always @(posedge axi_aclk) 
begin
    if(rst) begin
        axi_arvalid <= 1'b0;        
        axi_arready <= 1'b1;
        ar_state <= WAIT;             
    end
    else 
    begin
        case(ar_state)
            WAIT:
                begin
                    if ( (~r_active || axi_arready) && arvalid_in) begin
                        axi_arready <= 1'b1;
                        axi_arvalid <= 1'b1;
                        ar_state <= COMMIT;
                        axi_araddr  <= araddr_in;
                        axi_arlen   <= arlen_in; 
                        axi_arsize  <= arsize_in;
                        axi_arburst <= arburst_in;
                    end
                    else if (arvalid_in) begin
                        axi_arvalid <= 1'b1;
                        ar_state <= ASSERT;
                        axi_araddr  <= araddr_in;
                        axi_arlen   <= arlen_in; 
                        axi_arsize  <= arsize_in;
                        axi_arburst <= arburst_in;
                    end
                    else if (~r_active) begin
                        axi_arready <= 1'b1;
                    end
                end

            COMMIT:
                begin
                    axi_arready <= 1'b0;
                    if (arvalid_in) begin 
                        ar_state <= ASSERT;
                        axi_arvalid <= 1'b1;
                        axi_araddr  <= araddr_in;
                        axi_arlen   <= arlen_in; 
                        axi_arsize  <= arsize_in;
                        axi_arburst <= arburst_in;
                    end
                    else begin
                        axi_arvalid <= 1'b0;
                        ar_state <= WAIT;
                    end
                end
            
            ASSERT:
                    if (~r_active) begin
                        axi_arready <= 1'b1;
                        ar_state <= COMMIT;
                    end
        endcase
    end
end
// -----------------//
//  R Channel FSM  //
// -----------------//

// internal states
reg [1:0] r_state;

always @(posedge axi_aclk)
begin
    if(rst) begin
        axi_rvalid <= 1'b0;
        r_state <= WAIT;
    end
    else begin
        case(r_state)
            WAIT: // valid == 0
            begin
                axi_rready <= rready_in;
                if (r_active) begin
                    if(rvalid_in && rready_in) begin
                        axi_rvalid <= 1'b1;
                        axi_rdata  <= rdata_in;
                        r_state <= COMMIT;
                    end
                    else if(rvalid_in) begin
                        axi_rvalid <= 1'b1;
                        axi_rdata  <= rdata_in;
                        r_state <= ASSERT;
                    end
                end
            end
            COMMIT: // ready && valid == 1 
                if (axi_rlast == 1'b1) begin
                    axi_rvalid <= 1'b0;
                    axi_rready <= rready_in;
                    r_state <= WAIT;
                end

                else begin
                   if(rvalid_in && rready_in) begin
                        axi_rdata  <= rdata_in;
                    end
                    else if(rvalid_in) begin
                        axi_rready <= 1'b0;
                        axi_rdata  <= rdata_in;
                        r_state <= ASSERT;
                    end
                    else begin
                        axi_rready <= rready_in;
                        axi_rvalid <= 1'b0;
                        r_state <= WAIT;
                    end
                   
                end
            ASSERT: // valid == 1 && ready == 0
                if (r_active && rready_in) begin
                    r_state <= COMMIT;
                    axi_rready <= 1'b1;
                end
        endcase
    end
end

endmodule // axi_protocol



