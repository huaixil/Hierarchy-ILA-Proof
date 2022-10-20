/*
 * oc8051_memarbiter
 *
 * Written by Pramod Subramanyan.
 * psubrama@princeton.edu
 *
 * 3-port arbiter for the OC8051 XRAM.
 *
 */

// synopsys translate_off
`include "oc8051_timescale.v"
// synopsys translate_on

module oc8051_memarbiter(
    clk, 
    rst, 
    // port A.
    stb_A,
    wr_A, 
    ack_A,
    addr_A, 
    data_in_A, 
    data_out_A,
    // port B.
    stb_B,
    wr_B, 
    ack_B,
    addr_B, 
    data_in_B, 
    data_out_B,
    // port C.
    stb_C,
    wr_C,
    ack_C,
    addr_C,
    data_in_C,
    data_out_C,
    // memory (XRAM) port.
    stb,
    wr,
    ack,
    addr,
    data_in,
    data_out
);
input           clk;
input           rst;

// port A.
input           stb_A;
output          ack_A;
input           wr_A;
input [15:0]    addr_A;
input [7:0]     data_in_A;
output [7:0]    data_out_A;

// port B.
input           stb_B;
output          ack_B;
input           wr_B;
input [15:0]    addr_B;
input [7:0]     data_in_B;
output [7:0]    data_out_B;

// port C.
input           stb_C;
output          ack_C;
input           wr_C;
input [15:0]    addr_C;
input [7:0]     data_in_C;
output [7:0]    data_out_C;

// XRAM (memory) port.
output          stb;
output          wr;
input           ack;
output [15:0]   addr;
output [7:0]    data_in;
input [7:0]     data_out;

localparam PORT_A = 2'd0;
localparam PORT_B = 2'd1;
localparam PORT_C = 2'd2;

wire [1:0] selected_port;

// Is the arbiter already held, or is it going to make a new choice?
reg arbiter_state;      

// arbitration muxes.
wire stb        = selected_port == PORT_A ? stb_A     : stb_B; 
                  //selected_port == PORT_B ? stb_B     : stb_C;

wire wr         = selected_port == PORT_A ? wr_A      : wr_B; 
                  //selected_port == PORT_B ? wr_B      : wr_C;

wire [15:0] addr = selected_port == PORT_A ? addr_A    :addr_B; 
                   //selected_port == PORT_B ? addr_B    : addr_C;

wire [7:0] data_in = selected_port == PORT_A ? data_in_A : data_in_B; 
                     //selected_port == PORT_B ? data_in_B : data_in_C;

wire ack_A      = selected_port == PORT_A ? ack : 1'b0;
wire ack_B      = selected_port == PORT_B ? ack : 1'b0;
wire ack_C      = selected_port == PORT_C ? ack : 1'b0;

wire [7:0] data_out_A = data_out;
wire [7:0] data_out_B = data_out;
wire [7:0] data_out_C = data_out;

// selection logic.
localparam STATE_INUSE = 1'd1;
localparam STATE_IDLE  = 1'd0;

// The next state of the arbiter.
// If currently in use, and we got an ack, then transition to idle.
wire arbiter_state_inuse_next = ack ? STATE_IDLE : STATE_INUSE;

// If current idle and someone made a request, transition to inuse.
wire arbiter_state_idle_next  = 
        ((stb_A || stb_B) && !ack) ? STATE_INUSE : STATE_IDLE;

        //((stb_A || stb_B || stb_C) && !ack) ? STATE_INUSE : STATE_IDLE;
// Next state of the arbiter.
wire arbiter_state_next = 
        (arbiter_state == STATE_IDLE)  ? arbiter_state_idle_next  :
        (arbiter_state == STATE_INUSE) ? arbiter_state_inuse_next : 1'bX;

// Do we select a new winner for the arbitration? Answer is yes if we are
// currently idle and won't be idle in the next cycle.
wire arbit_select_winner = (arbiter_state == STATE_IDLE) && (arbiter_state_next == STATE_INUSE);

// Who is the new winner? C has the lowest priority, then B then A.
//wire [1:0] arbit_winner = (!stb_A && !stb_B && stb_C) ? PORT_C :
wire [1:0] arbit_winner = (!stb_A && stb_B)? PORT_B : PORT_A;
// Who is the current holder of the arbitration?
reg [1:0] arbit_holder;       
wire [1:0] arbit_holder_next = arbit_select_winner ? arbit_winner : arbit_holder;

// The selected port is the current cycle winner if we are idle
// and the current holder if we are in use.
assign selected_port = (arbiter_state == STATE_IDLE) ? arbit_winner : arbit_holder;

always @(posedge clk)
begin
    if (rst) begin
        arbiter_state       <= STATE_IDLE;
        arbit_holder        <= PORT_A;
    end
    else begin
        arbiter_state       <= arbiter_state_next;
        arbit_holder        <= arbit_holder_next;
    end
end
endmodule
