/// \file the ila example of EMESH-AXI-Bridge
///  Hongce Zhang (hongcez@princeton.edu)
///

#include "emesh_axi_top.h"


EmeshAxiTop::EmeshAxiTop()
    : // construct the model
  wmodel("AXI_Write"),
  // global reset
  axi_aresetn_w (wmodel.NewBvInput("axi_aresetn",1)),

  // AXI -- Write address
  write_addr_valid (wmodel.NewBvInput("write_addr_valid", 1)),
  awaddr (wmodel.NewBvInput("awaddr", 32)),
  awlen  (wmodel.NewBvInput("awlen", 8)),
  awsize (wmodel.NewBvInput("awsize", 3)),
  awburst(wmodel.NewBvInput("awburst", 2)),
  // State
  tx_awaddr  (wmodel.NewBvState("tx_awaddr", 32)),
  tx_awlen   (wmodel.NewBvState("tx_awlen", 8)),
  tx_awsize  (wmodel.NewBvState("tx_awsize", 3)),
  tx_awburst (wmodel.NewBvState("tx_awburst", 2)),

  tx_wactive (wmodel.NewBvState("tx_wactive", 1)),
  tx_wlast   (wmodel.NewBvState("tx_wlast", 1)),
  tx_bwait   (wmodel.NewBvState("tx_bwait", 1)),
  // AXI -- Write data
  write_valid(wmodel.NewBvInput("write_valid", 1)),
  write_ready(wmodel.NewBvInput("write_ready", 1)),

  // AXI -- Write response
  bready(wmodel.NewBvInput("bready", 1)),

  // ------------------------------------------------------------------
  rmodel("AXI_Read"),
  axi_aresetn_r (rmodel.NewBvInput("axi_aresetn",1)),
  
  // AXI -- Read address
  araddr (rmodel.NewBvInput("araddr",  32)), 
  arlen  (rmodel.NewBvInput("arlen",   8)),   
  arsize (rmodel.NewBvInput("arsize",  3)),  
  arburst(rmodel.NewBvInput("arburst", 2)), 
  read_addr_valid(rmodel.NewBvInput("read_addr_valid", 1)),

  tx_ractive(rmodel.NewBvState("tx_ractive", 1)),
  tx_rlast  (rmodel.NewBvState("tx_rlast", 1)),

  tx_araddr(rmodel.NewBvState("tx_araddr", 32)),
  tx_arlen(rmodel.NewBvState("tx_arlen", 8)),
  tx_arsize(rmodel.NewBvState("tx_arsize", 3)),
  tx_arburst(rmodel.NewBvState("tx_arburst", 2)),

  // AXI -- Read data  
  // internal states -- may not have matches with the Verilog state
  // but necessary for modeling

  read_valid(rmodel.NewBvInput("read_valid", 1)),
  read_ready(rmodel.NewBvInput("read_ready", 1))

{

  // write data buffers

  // Write channel interface -- what corresponds to instruction

  // Valid instruction: what means to have valid command (valid = 1)
  wmodel.SetValid( /*always true*/ BoolConst(true) );

  { // W reset instruction
    auto instr = wmodel.NewInstr("W_Master_Reset");
    instr.SetDecode( axi_aresetn_w == 0 );
    instr.SetUpdate(tx_wactive, BvConst(0,1));
    instr.SetUpdate(tx_bwait,  BvConst(0,1));

    // instr.SetUpdate(tx_valid, BvConst(0,1)); this is not guaranteed
    // ready signals not specified and thus won't be checked
  }

  { // AW_SET
    auto instr = wmodel.NewInstr("AW_SET");

    instr.SetDecode( (write_addr_valid == 1) & (tx_wactive == 0) & (tx_bwait == 0) & ( axi_aresetn_w == 1 ) );

    // instr.SetUpdate(axi_awvalid, Ite(write_addr_valid == 1, BvConst(1,1), BvConst(0,1)));
    instr.SetUpdate(tx_awaddr,  awaddr);
    instr.SetUpdate(tx_awlen,   awlen);
    instr.SetUpdate(tx_awsize,  awsize);
    instr.SetUpdate(tx_awburst, awburst);
    instr.SetUpdate(tx_wactive, BvConst(1,1));
    instr.SetUpdate(tx_wlast, Ite(awlen == BvConst(0,8), BvConst(1,1), BvConst(0,1)) );
  }

  { // W_SENT
    auto instr = wmodel.NewInstr("W_SENT");
    instr.SetDecode( (write_valid == 1) & (write_ready == 1) & (tx_wactive == 1)  & (axi_aresetn_w == 1) );

    instr.SetUpdate( tx_awlen,   tx_awlen - BvConst(1,8));
    instr.SetUpdate( tx_wactive, Ite(tx_awlen == BvConst(1,8), BvConst(0,1), tx_wactive));
     instr.SetUpdate(tx_bwait, Ite(tx_awlen == BvConst(1,8), BvConst(1,1), tx_bwait));
    instr.SetUpdate( tx_wlast, Ite(tx_awlen == BvConst(1,8), BvConst(1,1), tx_wlast));
    instr.SetUpdate( tx_awaddr, Ite(tx_awburst == BURST_INCR, Concat(Extract(tx_awaddr,31,2) + BvConst(1,30) , BvConst(0,2)), tx_awaddr));
  }

  { // B_SET
    auto instr = wmodel.NewInstr("B_SET");

    instr.SetDecode( (tx_bwait == 1) & (bready == 1) & (axi_aresetn_w == 1 ));

    instr.SetUpdate(tx_bwait, BvConst(0,1));

  }

  // ----------------------------------------------------------------------------

  // Write channel interface -- what corresponds to instruction
  // Valid instruction: what means to have valid command (valid = 1)
  rmodel.SetValid( /*always true*/ BoolConst(true) );

  {// reset instruction
    auto instr = rmodel.NewInstr("R_Master_Reset");
    instr.SetDecode( axi_aresetn_r == 0 );
    instr.SetUpdate(tx_ractive, BvConst(0,1));
    instr.SetUpdate(tx_arlen,   BvConst(0,8));
  }

{ // AR_SET
    auto instr = rmodel.NewInstr("AR_SET");
    instr.SetDecode( (read_addr_valid == 1) & (tx_ractive == 0) & ( axi_aresetn_r == 1 ) );

    instr.SetUpdate(tx_ractive, BvConst(1,1));
    instr.SetUpdate(tx_araddr,  araddr);
    instr.SetUpdate(tx_arlen,   arlen);
    instr.SetUpdate(tx_arsize,  arsize);
    instr.SetUpdate(tx_arburst, arburst);
    instr.SetUpdate(tx_rlast, Ite(arlen == 0, BvConst(1,1), BvConst(0,1)) );
  }

  { // R_SENT
    auto instr = rmodel.NewInstr("R_SENT");
    instr.SetDecode( (axi_aresetn_r == 1) & (tx_ractive == 1) & (read_valid == 1) & (read_ready == 1));

    instr.SetUpdate(tx_arlen, tx_arlen - BvConst(1,8));
    instr.SetUpdate(tx_araddr, Ite(tx_arburst == BURST_INCR, 
                                  Concat(Extract(tx_araddr,31,2) + BvConst(1,30) , BvConst(0,2)), 
                                  tx_araddr));

    instr.SetUpdate(tx_rlast, Ite(tx_arlen == BvConst(1,8), BvConst(1,1), tx_rlast));
    instr.SetUpdate(tx_ractive, Ite(tx_rlast == BvConst(1,1), BvConst(0,1), tx_ractive));
  }

}