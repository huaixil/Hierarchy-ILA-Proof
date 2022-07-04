module Read_Channel #(parameter IDW =  12, // ID
    parameter AW  =  32, // Addr
    parameter DW  =  32 )
   (
   input              clk,   // global clock signal.
   input              resetn, // global reset singal.
   //Read address channel
   input  [AW-1 : 0] araddr_in,
   input  [7 : 0]    arlen_in,
   input  [2 : 0]    arsize_in,
   input  [1 : 0]    arburst_in,
   input             arvalid_in,

   output [AW-1 : 0] axi_araddr,  // master interface read address   
   output [7 : 0]    axi_arlen,  // burst length.
   output [2 : 0]    axi_arsize,  // burst size.
   output [1 : 0]    axi_arburst, // burst type.
   output            axi_arvalid, // read address valid
   output            axi_arready, // read address ready

   //Read data channel
   input  [63 : 0]   rdata_in,
   input             rvalid_in,
   input             rready_in,

   output [63 : 0]   axi_rdata,   // slave interface read data.
   output            axi_rlast,   // last transfer in a read burst.
   output            axi_rvalid,  // indicates data is ready to go
   output            axi_rready  // master is ready for data

   );
                        
EmeshAxiMasterBridge_read m_r(
    .__ILA_EmeshAxiMasterBridge_read_grant__(5'b11111),
    .araddr     (araddr_in),
    .arburst    (arburst_in),
    .arlen      (arlen_in),
    .arsize     (arsize_in),
    .clk (clk),
    .m_axi_aresetn(resetn),
    .m_axi_arready      (axi_arready),
    .m_axi_rdata        (axi_rdata),
    .m_axi_rid          (),
    .m_axi_rlast        (axi_rlast),
    .m_axi_rresp        (),
    .m_axi_rvalid       (axi_rvalid),

    .nondet_unknown12_n20(),
    .nondet_unknown13_n24(),
    .nondet_unknown14_n28(),
    .nondet_unknown15_n32(),
    
    .read_ready(rready_in),
    .read_valid(arvalid_in),
    .rst(1'b0),
    
    .__ILA_EmeshAxiMasterBridge_read_acc_decode__(),
    .__ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__(),
    .__ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__(),
    .__ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__(),
    .__ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Reset__(),
    .__ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Wait__(),
    .__ILA_EmeshAxiMasterBridge_read_valid__(),

    .m_axi_arid(),
    .m_axi_araddr   (axi_araddr),
    .m_axi_arlen    (axi_arlen),
    .m_axi_arsize   (axi_arsize),
    .m_axi_arburst  (axi_arburst),
    .m_axi_arlock (),
    .m_axi_arcache(),
    .m_axi_arprot (),
    .m_axi_arqos  (),
    .m_axi_arvalid  (axi_arvalid),
    .m_axi_rready   (axi_rready)
);

EmeshAxiSlaveBridge_read s_r(
    .__ILA_EmeshAxiSlaveBridge_read_grant__(6'b111111),
    .clk(clk),
    .read_data_15_0 (rdata_in[15:0]),
    .read_data_31_0 (rdata_in[31:0]),
    .read_data_7_0 (rdata_in[7:0]),
    .read_resp (),
    .read_valid (rvalid_in),
    .rst (1'b0),

    .s_axi_araddr   (axi_araddr),
    .s_axi_arburst  (axi_arburst),
    .s_axi_arcache  (),
    .s_axi_aresetn  (resetn),
    .s_axi_arid     (),
    .s_axi_arlen    (axi_arlen),
    .s_axi_arlock   (),
    .s_axi_arprot   (),
    .s_axi_arqos    (),
    .s_axi_arsize   (axi_arsize),
    .s_axi_arvalid  (axi_arvalid),
    .s_axi_rready   (axi_rready),
    
    .__ILA_EmeshAxiSlaveBridge_read_acc_decode__(),
    .__ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__(),
    .__ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Wait__(),
    .__ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Asserted__(),
    .__ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__(),
    .__ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Prepare__(),
    .__ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__(),
    .__ILA_EmeshAxiSlaveBridge_read_valid__(),

    .s_axi_arready  (axi_arready),
    .s_axi_rid  (),
    .s_axi_rdata    (axi_rdata),
    .s_axi_rlast    (axi_rlast),
    .s_axi_rresp (),
    .s_axi_rvalid   (axi_rvalid),
    .tx_ractive (),
    .tx_arlen (),
    .tx_arsize (),
    .tx_araddr (),
    .tx_arburst()
);

endmodule
