set_global_assignment -name OPTIMIZE_HOLD_TIMING "ALL PATHS"
set_instance_assignment -name IO_STANDARD "HCSL" -to refclk
set_instance_assignment -name INPUT_TERMINATION OFF -to refclk
set_instance_assignment -name VIRTUAL_PIN ON -to app_int_sts
set_instance_assignment -name VIRTUAL_PIN ON -to app_msi_num
set_instance_assignment -name VIRTUAL_PIN ON -to app_msi_req
set_instance_assignment -name VIRTUAL_PIN ON -to app_msi_tc
set_instance_assignment -name VIRTUAL_PIN ON -to busy_altgxb_reconfig
set_instance_assignment -name VIRTUAL_PIN ON -to cal_blk_clk
set_instance_assignment -name VIRTUAL_PIN ON -to cpl_err
set_instance_assignment -name VIRTUAL_PIN ON -to cpl_pending
set_instance_assignment -name VIRTUAL_PIN ON -to crst
set_instance_assignment -name VIRTUAL_PIN ON -to fixedclk_serdes
set_instance_assignment -name VIRTUAL_PIN ON -to gxb_powerdown
set_instance_assignment -name VIRTUAL_PIN ON -to hpg_ctrler
set_instance_assignment -name VIRTUAL_PIN ON -to lmi_addr
set_instance_assignment -name VIRTUAL_PIN ON -to lmi_din
set_instance_assignment -name VIRTUAL_PIN ON -to lmi_rden
set_instance_assignment -name VIRTUAL_PIN ON -to lmi_wren
set_instance_assignment -name VIRTUAL_PIN ON -to pclk_in
set_instance_assignment -name VIRTUAL_PIN ON -to pex_msi_num
set_instance_assignment -name VIRTUAL_PIN ON -to phystatus_ext
set_instance_assignment -name VIRTUAL_PIN ON -to pld_clk
set_instance_assignment -name VIRTUAL_PIN ON -to pll_powerdown
set_instance_assignment -name VIRTUAL_PIN ON -to pm_auxpwr
set_instance_assignment -name VIRTUAL_PIN ON -to pm_data
set_instance_assignment -name VIRTUAL_PIN ON -to pm_event
set_instance_assignment -name VIRTUAL_PIN ON -to pme_to_cr
set_instance_assignment -name VIRTUAL_PIN ON -to reconfig_clk
set_instance_assignment -name VIRTUAL_PIN ON -to reconfig_togxb
set_instance_assignment -name VIRTUAL_PIN ON -to rx_st_mask0
set_instance_assignment -name VIRTUAL_PIN ON -to rx_st_ready0
set_instance_assignment -name VIRTUAL_PIN ON -to rxdata0_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxdata1_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxdata2_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxdata3_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxdata4_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxdata5_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxdata6_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxdata7_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxdatak0_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxdatak1_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxdatak2_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxdatak3_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxdatak4_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxdatak5_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxdatak6_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxdatak7_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxelecidle0_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxelecidle1_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxelecidle2_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxelecidle3_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxelecidle4_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxelecidle5_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxelecidle6_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxelecidle7_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxstatus0_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxstatus1_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxstatus2_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxstatus3_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxstatus4_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxstatus5_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxstatus6_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxstatus7_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxvalid0_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxvalid1_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxvalid2_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxvalid3_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxvalid4_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxvalid5_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxvalid6_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxvalid7_ext
set_instance_assignment -name VIRTUAL_PIN ON -to srst
set_instance_assignment -name VIRTUAL_PIN ON -to test_in
set_instance_assignment -name VIRTUAL_PIN ON -to tx_st_data0
set_instance_assignment -name VIRTUAL_PIN ON -to tx_st_empty0
set_instance_assignment -name VIRTUAL_PIN ON -to tx_st_eop0
set_instance_assignment -name VIRTUAL_PIN ON -to tx_st_err0
set_instance_assignment -name VIRTUAL_PIN ON -to tx_st_sop0
set_instance_assignment -name VIRTUAL_PIN ON -to tx_st_valid0
set_instance_assignment -name VIRTUAL_PIN ON -to app_int_ack
set_instance_assignment -name VIRTUAL_PIN ON -to app_msi_ack
set_instance_assignment -name VIRTUAL_PIN ON -to clk250_out
set_instance_assignment -name VIRTUAL_PIN ON -to clk500_out
set_instance_assignment -name VIRTUAL_PIN ON -to core_clk_out
set_instance_assignment -name VIRTUAL_PIN ON -to derr_cor_ext_rcv0
set_instance_assignment -name VIRTUAL_PIN ON -to derr_cor_ext_rpl
set_instance_assignment -name VIRTUAL_PIN ON -to derr_rpl
set_instance_assignment -name VIRTUAL_PIN ON -to dlup_exit
set_instance_assignment -name VIRTUAL_PIN ON -to hotrst_exit
set_instance_assignment -name VIRTUAL_PIN ON -to ko_cpl_spc_vc0
set_instance_assignment -name VIRTUAL_PIN ON -to l2_exit
set_instance_assignment -name VIRTUAL_PIN ON -to lane_act
set_instance_assignment -name VIRTUAL_PIN ON -to lmi_ack
set_instance_assignment -name VIRTUAL_PIN ON -to lmi_dout
set_instance_assignment -name VIRTUAL_PIN ON -to ltssm
set_instance_assignment -name VIRTUAL_PIN ON -to npd_alloc_1cred_vc0
set_instance_assignment -name VIRTUAL_PIN ON -to npd_cred_vio_vc0
set_instance_assignment -name VIRTUAL_PIN ON -to nph_alloc_1cred_vc0
set_instance_assignment -name VIRTUAL_PIN ON -to nph_cred_vio_vc0
set_instance_assignment -name VIRTUAL_PIN ON -to pme_to_sr
set_instance_assignment -name VIRTUAL_PIN ON -to powerdown_ext
set_instance_assignment -name VIRTUAL_PIN ON -to r2c_err0
set_instance_assignment -name VIRTUAL_PIN ON -to rate_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rc_pll_locked
set_instance_assignment -name VIRTUAL_PIN ON -to rc_rx_digitalreset
set_instance_assignment -name VIRTUAL_PIN ON -to reconfig_fromgxb
set_instance_assignment -name VIRTUAL_PIN ON -to reset_status
set_instance_assignment -name VIRTUAL_PIN ON -to rx_fifo_empty0
set_instance_assignment -name VIRTUAL_PIN ON -to rx_fifo_full0
set_instance_assignment -name VIRTUAL_PIN ON -to rx_st_bardec0
set_instance_assignment -name VIRTUAL_PIN ON -to rx_st_be0
set_instance_assignment -name VIRTUAL_PIN ON -to rx_st_data0
set_instance_assignment -name VIRTUAL_PIN ON -to rx_st_empty0
set_instance_assignment -name VIRTUAL_PIN ON -to rx_st_eop0
set_instance_assignment -name VIRTUAL_PIN ON -to rx_st_err0
set_instance_assignment -name VIRTUAL_PIN ON -to rx_st_sop0
set_instance_assignment -name VIRTUAL_PIN ON -to rx_st_valid0
set_instance_assignment -name VIRTUAL_PIN ON -to rxpolarity0_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxpolarity1_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxpolarity2_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxpolarity3_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxpolarity4_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxpolarity5_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxpolarity6_ext
set_instance_assignment -name VIRTUAL_PIN ON -to rxpolarity7_ext
set_instance_assignment -name VIRTUAL_PIN ON -to suc_spd_neg
set_instance_assignment -name VIRTUAL_PIN ON -to test_out
set_instance_assignment -name VIRTUAL_PIN ON -to tl_cfg_add
set_instance_assignment -name VIRTUAL_PIN ON -to tl_cfg_ctl
set_instance_assignment -name VIRTUAL_PIN ON -to tl_cfg_ctl_wr
set_instance_assignment -name VIRTUAL_PIN ON -to tl_cfg_sts
set_instance_assignment -name VIRTUAL_PIN ON -to tl_cfg_sts_wr
set_instance_assignment -name VIRTUAL_PIN ON -to tx_cred0
set_instance_assignment -name VIRTUAL_PIN ON -to tx_fifo_empty0
set_instance_assignment -name VIRTUAL_PIN ON -to tx_fifo_full0
set_instance_assignment -name VIRTUAL_PIN ON -to tx_fifo_rdptr0
set_instance_assignment -name VIRTUAL_PIN ON -to tx_fifo_wrptr0
set_instance_assignment -name VIRTUAL_PIN ON -to tx_st_ready0
set_instance_assignment -name VIRTUAL_PIN ON -to txcompl0_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txcompl1_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txcompl2_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txcompl3_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txcompl4_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txcompl5_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txcompl6_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txcompl7_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdata0_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdata1_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdata2_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdata3_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdata4_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdata5_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdata6_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdata7_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdatak0_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdatak1_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdatak2_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdatak3_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdatak4_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdatak5_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdatak6_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdatak7_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txdetectrx_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txelecidle0_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txelecidle1_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txelecidle2_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txelecidle3_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txelecidle4_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txelecidle5_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txelecidle6_ext
set_instance_assignment -name VIRTUAL_PIN ON -to txelecidle7_ext
