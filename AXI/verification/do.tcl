analyze -sva  \
  emaxi_w.v \
  esaxi_w.v \
  top_w.v \
  emaxi_r.v \
  esaxi_r.v \
  top_r.v \
  axi_protocol.v \
  wrapper.v

elaborate -top wrapper
clock clk
reset rst

assert -name awready_assert {(fsm_axi_awready == ila_axi_awready)}
assert -name awvalid_assert {(fsm_axi_awvalid == ila_axi_awvalid)}
assert -name wready_assert  {(fsm_axi_wready  == ila_axi_wready)}
assert -name wvalid_assert  {(fsm_axi_wvalid  == ila_axi_wvalid)}
assert -name bready_assert  {(fsm_axi_bready  == ila_axi_bready)}
assert -name bvalid_assert  {(fsm_axi_bvalid  == ila_axi_bvalid)}

assert -name arready_assert  {(fsm_axi_arready  == ila_axi_arready)}
assert -name arvalid_assert  {(fsm_axi_arvalid  == ila_axi_arvalid)}

assert -name rready_assert  {(fsm_axi_rready  == ila_axi_rready)}
assert -name rvalid_assert  {(fsm_axi_rvalid  == ila_axi_rvalid)}

