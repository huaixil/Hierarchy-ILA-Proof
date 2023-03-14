clear -all
elaborate -clear 

analyze -sva  \
    ../csc/NV_NVDLA_CSC_dl.v \
    ../csc/NV_NVDLA_CSC_dual_reg.v \
    ../csc/NV_NVDLA_CSC_pra_cell.v \
    ../csc/NV_NVDLA_CSC_regfile.v \
    ../csc/NV_NVDLA_CSC_SG_dat_fifo.v \
    ../csc/NV_NVDLA_CSC_SG_wt_fifo.v \
    ../csc/NV_NVDLA_CSC_sg.v \
    ../csc/NV_NVDLA_CSC_single_reg.v \
    ../csc/NV_NVDLA_CSC_slcg.v \
    ../csc/NV_NVDLA_CSC_WL_dec.v \
    ../csc/NV_NVDLA_CSC_wl.v \
    ../csc/NV_NVDLA_csc.v \
    ../cmac/NV_NVDLA_CMAC_CORE_active.v \
    ../cmac/NV_NVDLA_CMAC_CORE_cfg.v \
    ../cmac/NV_NVDLA_CMAC_CORE_MAC_exp.v \
    ../cmac/NV_NVDLA_CMAC_CORE_MAC_mul.v \
    ../cmac/NV_NVDLA_CMAC_CORE_MAC_nan.v \
    ../cmac/NV_NVDLA_CMAC_CORE_mac.v \
    ../cmac/NV_NVDLA_CMAC_CORE_rt_in.v \
    ../cmac/NV_NVDLA_CMAC_CORE_rt_out.v \
    ../cmac/NV_NVDLA_CMAC_CORE_slcg.v \
    ../cmac/NV_NVDLA_CMAC_core.v \
    ../cmac/NV_NVDLA_CMAC_REG_dual.v \
    ../cmac/NV_NVDLA_CMAC_REG_single.v \
    ../cmac/NV_NVDLA_CMAC_reg.v \
    ../cmac/NV_NVDLA_cmac.v \
    ../cacc/NV_NVDLA_CACC_assembly_buffer.v \
    ../cacc/NV_NVDLA_CACC_assembly_ctrl.v \
    ../cacc/NV_NVDLA_CACC_CALC_fp_48b.v \
    ../cacc/NV_NVDLA_CACC_CALC_int8.v \
    ../cacc/NV_NVDLA_CACC_CALC_int16.v \
    ../cacc/NV_NVDLA_CACC_calculator.v \
    ../cacc/NV_NVDLA_CACC_delivery_buffer.v \
    ../cacc/NV_NVDLA_CACC_delivery_ctrl.v \
    ../cacc/NV_NVDLA_CACC_dual_reg.v \
    ../cacc/NV_NVDLA_CACC_single_reg.v \
    ../cacc/NV_NVDLA_CACC_slcg.v \
    ../cacc/NV_NVDLA_CACC_regfile.v \
    ../cacc/NV_NVDLA_cacc.v \
    ../conv_module_no_rt/NV_NVDLA_conv.v

elaborate -top NV_NVDLA_conv -bbox_m NV_BLKBOX_SINK -bbox_m DW_minmax -bbox_m DW02_tree -bbox_m nv_ram_rws_32x768 -bbox_m nv_ram_rws_32x544 -bbox_m DW_lsd -bbox_m nv_ram_rws_32x512

clock nvdla_core_clk
reset ~nvdla_core_rstn

#assume {csc.sg2wl_pvld |=>  csc.u_wl.stripe_length == 10}
assume {csc.u_wl.is_stripe_end |-> csc.sg2dl_pvld}
assume {csc.sg2dl_pvld |-> dl_stripe_length > 3}
assume {csc.sg2dl_pvld |-> dl_end == 4'b1111}
# assume {dl.is_stipe_end..}
#dlv_vld
assert {csc.sc_state == 2'b10 & csc.sg2wl_pvld |-> ##[0:51] cacc.u_delivery_vtrl.dlv_valid}