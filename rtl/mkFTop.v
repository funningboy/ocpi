//
// Generated by Bluespec Compiler, version 2010.10.beta1 (build 22431, 2010-10-28)
//
// On Thu Nov 18 15:15:05 EST 2010
//
//
// Ports:
// Name                         I/O  size props
// pcie_txp                       O     8
// pcie_txn                       O     8
// led                            O     3
// gps_ppsSyncOut                 O     1
// trnClk                         O     1 clock
// CLK_GATE_trnClk                O     1 const
// sys0_clkp                      I     1 clock
// sys0_clkn                      I     1 clock
// pci0_clkp                      I     1 clock
// pci0_clkn                      I     1 clock
// pci0_reset_n                   I     1 reset
// pcie_rxp_i                     I     8
// pcie_rxn_i                     I     8
// gps_ppsSyncIn_x                I     1 reg
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module mkFTop(sys0_clkp,
	      sys0_clkn,
	      pci0_clkp,
	      pci0_clkn,
	      pci0_reset_n,

	      pcie_rxp_i,

	      pcie_rxn_i,

	      pcie_txp,

	      pcie_txn,

	      led,

	      gps_ppsSyncIn_x,

	      gps_ppsSyncOut,

	      trnClk,
	      CLK_GATE_trnClk);
  input  sys0_clkp;
  input  sys0_clkn;
  input  pci0_clkp;
  input  pci0_clkn;
  input  pci0_reset_n;

  // action method pcie_rxp
  input  [7 : 0] pcie_rxp_i;

  // action method pcie_rxn
  input  [7 : 0] pcie_rxn_i;

  // value method pcie_txp
  output [7 : 0] pcie_txp;

  // value method pcie_txn
  output [7 : 0] pcie_txn;

  // value method led
  output [2 : 0] led;

  // action method gps_ppsSyncIn
  input  gps_ppsSyncIn_x;

  // value method gps_ppsSyncOut
  output gps_ppsSyncOut;

  // oscillator and gates for output clock trnClk
  output trnClk;
  output CLK_GATE_trnClk;

  // signals for module outputs
  wire [7 : 0] pcie_txn, pcie_txp;
  wire [2 : 0] led;
  wire CLK_GATE_trnClk, gps_ppsSyncOut, trnClk;

  // inlined wires
  wire [63 : 0] pci0_wTrnTxDat$wget;
  wire [7 : 0] pci0_wTrnTxRem$wget, pcie_irq_wInterruptDo$wget;
  wire pci0_pwTrnRx$whas,
       pci0_pwTrnTx$whas,
       pci0_wTrnRxCplS$wget,
       pci0_wTrnRxCplS$whas,
       pci0_wTrnRxNpOk$wget,
       pci0_wTrnRxNpOk$whas,
       pci0_wTrnTxDat$whas,
       pci0_wTrnTxDsc$wget,
       pci0_wTrnTxDsc$whas,
       pci0_wTrnTxEof$wget,
       pci0_wTrnTxEof$whas,
       pci0_wTrnTxRem$whas,
       pci0_wTrnTxSof$wget,
       pci0_wTrnTxSof$whas,
       pcie_irq_wInterruptDo$whas,
       pcie_irq_wInterruptRdyN$wget,
       pcie_irq_wInterruptRdyN$whas;

  // register Prelude_inst_changeSpecialWires_1_rg
  reg [81 : 0] Prelude_inst_changeSpecialWires_1_rg;
  wire [81 : 0] Prelude_inst_changeSpecialWires_1_rg$D_IN;
  wire Prelude_inst_changeSpecialWires_1_rg$EN;

  // register Prelude_inst_changeSpecialWires_rg
  reg [81 : 0] Prelude_inst_changeSpecialWires_rg;
  wire [81 : 0] Prelude_inst_changeSpecialWires_rg$D_IN;
  wire Prelude_inst_changeSpecialWires_rg$EN;

  // register pcie_irq_rInterruptDi
  reg [7 : 0] pcie_irq_rInterruptDi;
  wire [7 : 0] pcie_irq_rInterruptDi$D_IN;
  wire pcie_irq_rInterruptDi$EN;

  // register pcie_irq_rInterruptN
  reg pcie_irq_rInterruptN;
  wire pcie_irq_rInterruptN$D_IN, pcie_irq_rInterruptN$EN;

  // register pcie_irq_rInterrupting
  reg pcie_irq_rInterrupting;
  wire pcie_irq_rInterrupting$D_IN, pcie_irq_rInterrupting$EN;

  // register pcie_irq_rMMEnabled
  reg [2 : 0] pcie_irq_rMMEnabled;
  wire [2 : 0] pcie_irq_rMMEnabled$D_IN;
  wire pcie_irq_rMMEnabled$EN;

  // register pcie_irq_rMSIEnabled
  reg pcie_irq_rMSIEnabled;
  wire pcie_irq_rMSIEnabled$D_IN, pcie_irq_rMSIEnabled$EN;

  // ports of submodule ctop
  wire [152 : 0] ctop$server_request_put, ctop$server_response_get;
  wire [127 : 0] ctop$wmemiM_SData;
  wire [31 : 0] ctop$wci_m_0_SData,
		ctop$wci_m_1_SData,
		ctop$wci_m_2_SData,
		ctop$wci_m_3_SData,
		ctop$wci_m_4_SData,
		ctop$wsi_s_adc_MData;
  wire [11 : 0] ctop$wsi_s_adc_MBurstLength;
  wire [7 : 0] ctop$wsi_s_adc_MReqInfo;
  wire [3 : 0] ctop$wsi_s_adc_MByteEn;
  wire [2 : 0] ctop$switch_x, ctop$wsi_s_adc_MCmd;
  wire [1 : 0] ctop$led,
	       ctop$wci_m_0_SFlag,
	       ctop$wci_m_0_SResp,
	       ctop$wci_m_1_SFlag,
	       ctop$wci_m_1_SResp,
	       ctop$wci_m_2_SFlag,
	       ctop$wci_m_2_SResp,
	       ctop$wci_m_3_SFlag,
	       ctop$wci_m_3_SResp,
	       ctop$wci_m_4_SFlag,
	       ctop$wci_m_4_SResp,
	       ctop$wmemiM_SResp;
  wire ctop$EN_server_request_put,
       ctop$EN_server_response_get,
       ctop$RDY_server_request_put,
       ctop$RDY_server_response_get,
       ctop$gps_ppsSyncIn_x,
       ctop$gps_ppsSyncOut,
       ctop$wci_m_0_SThreadBusy,
       ctop$wci_m_1_SThreadBusy,
       ctop$wci_m_2_SThreadBusy,
       ctop$wci_m_3_SThreadBusy,
       ctop$wci_m_4_SThreadBusy,
       ctop$wmemiM_SCmdAccept,
       ctop$wmemiM_SDataAccept,
       ctop$wmemiM_SRespLast,
       ctop$wsi_m_dac_SReset_n,
       ctop$wsi_m_dac_SThreadBusy,
       ctop$wsi_s_adc_MBurstPrecise,
       ctop$wsi_s_adc_MReqLast,
       ctop$wsi_s_adc_MReset_n;

  // ports of submodule fI2P
  wire [80 : 0] fI2P$D_IN, fI2P$D_OUT;
  wire fI2P$CLR, fI2P$DEQ, fI2P$EMPTY_N, fI2P$ENQ, fI2P$FULL_N;

  // ports of submodule fP2I
  wire [80 : 0] fP2I$D_IN, fP2I$D_OUT;
  wire fP2I$CLR, fP2I$DEQ, fP2I$EMPTY_N, fP2I$ENQ, fP2I$FULL_N;

  // ports of submodule infLed
  wire [1 : 0] infLed$WGET, infLed$WVAL;

  // ports of submodule pci0_clk
  wire pci0_clk$O;

  // ports of submodule pci0_pcie_ep
  wire [63 : 0] pci0_pcie_ep$cfg_dsn,
		pci0_pcie_ep$trn_rd,
		pci0_pcie_ep$trn_td;
  wire [47 : 0] pci0_pcie_ep$cfg_err_tlp_cpl_header;
  wire [31 : 0] pci0_pcie_ep$cfg_di;
  wire [9 : 0] pci0_pcie_ep$cfg_dwaddr;
  wire [7 : 0] pci0_pcie_ep$cfg_bus_number,
	       pci0_pcie_ep$cfg_interrupt_di,
	       pci0_pcie_ep$cfg_interrupt_do,
	       pci0_pcie_ep$pci_exp_rxn,
	       pci0_pcie_ep$pci_exp_rxp,
	       pci0_pcie_ep$pci_exp_txn,
	       pci0_pcie_ep$pci_exp_txp,
	       pci0_pcie_ep$trn_rrem_n,
	       pci0_pcie_ep$trn_trem_n;
  wire [6 : 0] pci0_pcie_ep$trn_rbar_hit_n;
  wire [4 : 0] pci0_pcie_ep$cfg_device_number;
  wire [3 : 0] pci0_pcie_ep$cfg_byte_en_n;
  wire [2 : 0] pci0_pcie_ep$cfg_function_number,
	       pci0_pcie_ep$cfg_interrupt_mmenable;
  wire pci0_pcie_ep$cfg_err_cor_n,
       pci0_pcie_ep$cfg_err_cpl_abort_n,
       pci0_pcie_ep$cfg_err_cpl_timeout_n,
       pci0_pcie_ep$cfg_err_cpl_unexpect_n,
       pci0_pcie_ep$cfg_err_ecrc_n,
       pci0_pcie_ep$cfg_err_locked_n,
       pci0_pcie_ep$cfg_err_posted_n,
       pci0_pcie_ep$cfg_err_ur_n,
       pci0_pcie_ep$cfg_interrupt_assert_n,
       pci0_pcie_ep$cfg_interrupt_msienable,
       pci0_pcie_ep$cfg_interrupt_n,
       pci0_pcie_ep$cfg_interrupt_rdy_n,
       pci0_pcie_ep$cfg_pm_wake_n,
       pci0_pcie_ep$cfg_rd_en_n,
       pci0_pcie_ep$cfg_trn_pending_n,
       pci0_pcie_ep$cfg_wr_en_n,
       pci0_pcie_ep$trn_clk,
       pci0_pcie_ep$trn_lnk_up_n,
       pci0_pcie_ep$trn_rcpl_streaming_n,
       pci0_pcie_ep$trn_rdst_rdy_n,
       pci0_pcie_ep$trn_reof_n,
       pci0_pcie_ep$trn_reset_n,
       pci0_pcie_ep$trn_rnp_ok_n,
       pci0_pcie_ep$trn_rsof_n,
       pci0_pcie_ep$trn_rsrc_rdy_n,
       pci0_pcie_ep$trn_tdst_rdy_n,
       pci0_pcie_ep$trn_teof_n,
       pci0_pcie_ep$trn_terrfwd_n,
       pci0_pcie_ep$trn_tsof_n,
       pci0_pcie_ep$trn_tsrc_dsc_n,
       pci0_pcie_ep$trn_tsrc_rdy_n;

  // ports of submodule pci0_rst
  wire pci0_rst$O;

  // ports of submodule pciLinkUpResetGen
  wire pciLinkUpResetGen$ASSERT_IN;

  // ports of submodule pcie_irq_fifoAssert
  wire [7 : 0] pcie_irq_fifoAssert$dD_OUT, pcie_irq_fifoAssert$sD_IN;
  wire pcie_irq_fifoAssert$dDEQ,
       pcie_irq_fifoAssert$dEMPTY_N,
       pcie_irq_fifoAssert$sENQ;

  // ports of submodule sys0_clk
  wire sys0_clk$O;

  // ports of submodule sys0_rst
  wire sys0_rst$OUT_RST_N;

  // ports of submodule trn_rst_n
  wire trn_rst_n$OUT_RST_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect1,
       CAN_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect2,
       CAN_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect1,
       CAN_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect2,
       CAN_FIRE_RL_connect,
       CAN_FIRE_RL_connect_1,
       CAN_FIRE_RL_connect_interrupt_1,
       CAN_FIRE_RL_connect_interrupt_do,
       CAN_FIRE_RL_connect_interrupt_mmenable,
       CAN_FIRE_RL_connect_interrupt_msienable,
       CAN_FIRE_RL_connect_interrupt_rdy_n,
       CAN_FIRE_RL_every,
       CAN_FIRE_RL_infLed_clock_domain_crossing,
       CAN_FIRE_RL_pci0_connect_trn_rx,
       CAN_FIRE_RL_pci0_connect_trn_tx,
       CAN_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt,
       CAN_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt_done,
       CAN_FIRE_RL_plr,
       CAN_FIRE_RL_tie_off_inputs,
       CAN_FIRE_RL_tie_off_inputs_1,
       CAN_FIRE_gps_ppsSyncIn,
       CAN_FIRE_pcie_rxn,
       CAN_FIRE_pcie_rxp,
       WILL_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect1,
       WILL_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect2,
       WILL_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect1,
       WILL_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect2,
       WILL_FIRE_RL_connect,
       WILL_FIRE_RL_connect_1,
       WILL_FIRE_RL_connect_interrupt_1,
       WILL_FIRE_RL_connect_interrupt_do,
       WILL_FIRE_RL_connect_interrupt_mmenable,
       WILL_FIRE_RL_connect_interrupt_msienable,
       WILL_FIRE_RL_connect_interrupt_rdy_n,
       WILL_FIRE_RL_every,
       WILL_FIRE_RL_infLed_clock_domain_crossing,
       WILL_FIRE_RL_pci0_connect_trn_rx,
       WILL_FIRE_RL_pci0_connect_trn_tx,
       WILL_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt,
       WILL_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt_done,
       WILL_FIRE_RL_plr,
       WILL_FIRE_RL_tie_off_inputs,
       WILL_FIRE_RL_tie_off_inputs_1,
       WILL_FIRE_gps_ppsSyncIn,
       WILL_FIRE_pcie_rxn,
       WILL_FIRE_pcie_rxp;

  // inputs to muxes for submodule ports
  wire [152 : 0] MUX_ctop$server_request_put_1__VAL_1,
		 MUX_ctop$server_request_put_1__VAL_2;
  wire [81 : 0] MUX_Prelude_inst_changeSpecialWires_1_rg$write_1__VAL_1,
		MUX_Prelude_inst_changeSpecialWires_rg$write_1__VAL_1;
  wire [80 : 0] MUX_fI2P$enq_1__VAL_1;
  wire MUX_Prelude_inst_changeSpecialWires_1_rg$write_1__SEL_1,
       MUX_Prelude_inst_changeSpecialWires_rg$write_1__SEL_1,
       MUX_ctop$server_request_put_1__SEL_1;

  // remaining internal signals
  wire [127 : 0] put_data__h4056, wOut_data__h4134;
  wire [15 : 0] pci0_pcie_ep_cfg_bus_number__39_CONCAT_pci0_pc_ETC___d153,
		put_be__h4055,
		wOut_be__h4133;

  // oscillator and gates for output clock trnClk
  assign trnClk = pci0_pcie_ep$trn_clk ;
  assign CLK_GATE_trnClk = 1'b1 ;

  // action method pcie_rxp
  assign CAN_FIRE_pcie_rxp = 1'd1 ;
  assign WILL_FIRE_pcie_rxp = 1'd1 ;

  // action method pcie_rxn
  assign CAN_FIRE_pcie_rxn = 1'd1 ;
  assign WILL_FIRE_pcie_rxn = 1'd1 ;

  // value method pcie_txp
  assign pcie_txp = pci0_pcie_ep$pci_exp_txp ;

  // value method pcie_txn
  assign pcie_txn = pci0_pcie_ep$pci_exp_txn ;

  // value method led
  assign led = { ~infLed$WGET, ~(!pci0_pcie_ep$trn_lnk_up_n) } ;

  // action method gps_ppsSyncIn
  assign CAN_FIRE_gps_ppsSyncIn = 1'd1 ;
  assign WILL_FIRE_gps_ppsSyncIn = 1'd1 ;

  // value method gps_ppsSyncOut
  assign gps_ppsSyncOut = ctop$gps_ppsSyncOut ;

  // submodule ctop
  mkCTop4B ctop(.pciDevice(pci0_pcie_ep_cfg_bus_number__39_CONCAT_pci0_pc_ETC___d153),
		.CLK_sys0_clk(sys0_clk$O),
		.RST_N_sys0_rst(sys0_rst$OUT_RST_N),
		.CLK(pci0_pcie_ep$trn_clk),
		.RST_N(trn_rst_n$OUT_RST_N),
		.gps_ppsSyncIn_x(ctop$gps_ppsSyncIn_x),
		.server_request_put(ctop$server_request_put),
		.switch_x(ctop$switch_x),
		.wci_m_0_SData(ctop$wci_m_0_SData),
		.wci_m_0_SFlag(ctop$wci_m_0_SFlag),
		.wci_m_0_SResp(ctop$wci_m_0_SResp),
		.wci_m_1_SData(ctop$wci_m_1_SData),
		.wci_m_1_SFlag(ctop$wci_m_1_SFlag),
		.wci_m_1_SResp(ctop$wci_m_1_SResp),
		.wci_m_2_SData(ctop$wci_m_2_SData),
		.wci_m_2_SFlag(ctop$wci_m_2_SFlag),
		.wci_m_2_SResp(ctop$wci_m_2_SResp),
		.wci_m_3_SData(ctop$wci_m_3_SData),
		.wci_m_3_SFlag(ctop$wci_m_3_SFlag),
		.wci_m_3_SResp(ctop$wci_m_3_SResp),
		.wci_m_4_SData(ctop$wci_m_4_SData),
		.wci_m_4_SFlag(ctop$wci_m_4_SFlag),
		.wci_m_4_SResp(ctop$wci_m_4_SResp),
		.wmemiM_SData(ctop$wmemiM_SData),
		.wmemiM_SResp(ctop$wmemiM_SResp),
		.wsi_s_adc_MBurstLength(ctop$wsi_s_adc_MBurstLength),
		.wsi_s_adc_MByteEn(ctop$wsi_s_adc_MByteEn),
		.wsi_s_adc_MCmd(ctop$wsi_s_adc_MCmd),
		.wsi_s_adc_MData(ctop$wsi_s_adc_MData),
		.wsi_s_adc_MReqInfo(ctop$wsi_s_adc_MReqInfo),
		.EN_server_request_put(ctop$EN_server_request_put),
		.EN_server_response_get(ctop$EN_server_response_get),
		.wci_m_0_SThreadBusy(ctop$wci_m_0_SThreadBusy),
		.wci_m_1_SThreadBusy(ctop$wci_m_1_SThreadBusy),
		.wci_m_2_SThreadBusy(ctop$wci_m_2_SThreadBusy),
		.wci_m_3_SThreadBusy(ctop$wci_m_3_SThreadBusy),
		.wci_m_4_SThreadBusy(ctop$wci_m_4_SThreadBusy),
		.wsi_s_adc_MReqLast(ctop$wsi_s_adc_MReqLast),
		.wsi_s_adc_MBurstPrecise(ctop$wsi_s_adc_MBurstPrecise),
		.wsi_s_adc_MReset_n(ctop$wsi_s_adc_MReset_n),
		.wsi_m_dac_SThreadBusy(ctop$wsi_m_dac_SThreadBusy),
		.wsi_m_dac_SReset_n(ctop$wsi_m_dac_SReset_n),
		.wmemiM_SRespLast(ctop$wmemiM_SRespLast),
		.wmemiM_SCmdAccept(ctop$wmemiM_SCmdAccept),
		.wmemiM_SDataAccept(ctop$wmemiM_SDataAccept),
		.RDY_server_request_put(ctop$RDY_server_request_put),
		.server_response_get(ctop$server_response_get),
		.RDY_server_response_get(ctop$RDY_server_response_get),
		.led(ctop$led),
		.wci_m_0_MCmd(),
		.wci_m_0_MAddrSpace(),
		.wci_m_0_MByteEn(),
		.wci_m_0_MAddr(),
		.wci_m_0_MData(),
		.wci_m_0_MFlag(),
		.wci_m_1_MCmd(),
		.wci_m_1_MAddrSpace(),
		.wci_m_1_MByteEn(),
		.wci_m_1_MAddr(),
		.wci_m_1_MData(),
		.wci_m_1_MFlag(),
		.wci_m_2_MCmd(),
		.wci_m_2_MAddrSpace(),
		.wci_m_2_MByteEn(),
		.wci_m_2_MAddr(),
		.wci_m_2_MData(),
		.wci_m_2_MFlag(),
		.wci_m_3_MCmd(),
		.wci_m_3_MAddrSpace(),
		.wci_m_3_MByteEn(),
		.wci_m_3_MAddr(),
		.wci_m_3_MData(),
		.wci_m_3_MFlag(),
		.wci_m_4_MCmd(),
		.wci_m_4_MAddrSpace(),
		.wci_m_4_MByteEn(),
		.wci_m_4_MAddr(),
		.wci_m_4_MData(),
		.wci_m_4_MFlag(),
		.cpNow(),
		.RDY_cpNow(),
		.wsi_s_adc_SThreadBusy(),
		.wsi_s_adc_SReset_n(),
		.wsi_m_dac_MCmd(),
		.wsi_m_dac_MReqLast(),
		.wsi_m_dac_MBurstPrecise(),
		.wsi_m_dac_MBurstLength(),
		.wsi_m_dac_MData(),
		.wsi_m_dac_MByteEn(),
		.wsi_m_dac_MReqInfo(),
		.wsi_m_dac_MReset_n(),
		.wmemiM_MCmd(),
		.wmemiM_MReqLast(),
		.wmemiM_MAddr(),
		.wmemiM_MBurstLength(),
		.wmemiM_MDataValid(),
		.wmemiM_MDataLast(),
		.wmemiM_MData(),
		.wmemiM_MDataByteEn(),
		.wmemiM_MReset_n(),
		.gps_ppsSyncOut(ctop$gps_ppsSyncOut),
		.RST_N_wci_m_0(),
		.RST_N_wci_m_1(),
		.RST_N_wci_m_2(),
		.RST_N_wci_m_3(),
		.RST_N_wci_m_4());

  // submodule fI2P
  SizedFIFO #(.p1width(32'd81),
	      .p2depth(32'd4),
	      .p3cntr_width(32'd2),
	      .guarded(32'd1)) fI2P(.RST_N(trn_rst_n$OUT_RST_N),
				    .CLK(pci0_pcie_ep$trn_clk),
				    .D_IN(fI2P$D_IN),
				    .ENQ(fI2P$ENQ),
				    .DEQ(fI2P$DEQ),
				    .CLR(fI2P$CLR),
				    .D_OUT(fI2P$D_OUT),
				    .FULL_N(fI2P$FULL_N),
				    .EMPTY_N(fI2P$EMPTY_N));

  // submodule fP2I
  SizedFIFO #(.p1width(32'd81),
	      .p2depth(32'd4),
	      .p3cntr_width(32'd2),
	      .guarded(32'd1)) fP2I(.RST_N(trn_rst_n$OUT_RST_N),
				    .CLK(pci0_pcie_ep$trn_clk),
				    .D_IN(fP2I$D_IN),
				    .ENQ(fP2I$ENQ),
				    .DEQ(fP2I$DEQ),
				    .CLR(fP2I$CLR),
				    .D_OUT(fP2I$D_OUT),
				    .FULL_N(fP2I$FULL_N),
				    .EMPTY_N(fP2I$EMPTY_N));

  // submodule infLed
  BypassCrossingWire #(.width(32'd2)) infLed(.WVAL(infLed$WVAL),
					     .WGET(infLed$WGET));

  // submodule pci0_clk
  IBUFDS pci0_clk(.I(pci0_clkp), .IB(pci0_clkn), .O(pci0_clk$O));

  // submodule pci0_pcie_ep
  xilinx_v5_pcie_wrapper pci0_pcie_ep(.sys_clk(pci0_clk$O),
				      .sys_reset_n(pci0_rst$O),
				      .fast_train_simulation_only(1'h0),
				      .cfg_byte_en_n(pci0_pcie_ep$cfg_byte_en_n),
				      .cfg_di(pci0_pcie_ep$cfg_di),
				      .cfg_dsn(pci0_pcie_ep$cfg_dsn),
				      .cfg_dwaddr(pci0_pcie_ep$cfg_dwaddr),
				      .cfg_err_cor_n(pci0_pcie_ep$cfg_err_cor_n),
				      .cfg_err_cpl_abort_n(pci0_pcie_ep$cfg_err_cpl_abort_n),
				      .cfg_err_cpl_timeout_n(pci0_pcie_ep$cfg_err_cpl_timeout_n),
				      .cfg_err_cpl_unexpect_n(pci0_pcie_ep$cfg_err_cpl_unexpect_n),
				      .cfg_err_ecrc_n(pci0_pcie_ep$cfg_err_ecrc_n),
				      .cfg_err_locked_n(pci0_pcie_ep$cfg_err_locked_n),
				      .cfg_err_posted_n(pci0_pcie_ep$cfg_err_posted_n),
				      .cfg_err_tlp_cpl_header(pci0_pcie_ep$cfg_err_tlp_cpl_header),
				      .cfg_err_ur_n(pci0_pcie_ep$cfg_err_ur_n),
				      .cfg_interrupt_assert_n(pci0_pcie_ep$cfg_interrupt_assert_n),
				      .cfg_interrupt_di(pci0_pcie_ep$cfg_interrupt_di),
				      .cfg_interrupt_n(pci0_pcie_ep$cfg_interrupt_n),
				      .cfg_pm_wake_n(pci0_pcie_ep$cfg_pm_wake_n),
				      .cfg_rd_en_n(pci0_pcie_ep$cfg_rd_en_n),
				      .cfg_trn_pending_n(pci0_pcie_ep$cfg_trn_pending_n),
				      .cfg_wr_en_n(pci0_pcie_ep$cfg_wr_en_n),
				      .pci_exp_rxn(pci0_pcie_ep$pci_exp_rxn),
				      .pci_exp_rxp(pci0_pcie_ep$pci_exp_rxp),
				      .trn_rcpl_streaming_n(pci0_pcie_ep$trn_rcpl_streaming_n),
				      .trn_rdst_rdy_n(pci0_pcie_ep$trn_rdst_rdy_n),
				      .trn_rnp_ok_n(pci0_pcie_ep$trn_rnp_ok_n),
				      .trn_td(pci0_pcie_ep$trn_td),
				      .trn_teof_n(pci0_pcie_ep$trn_teof_n),
				      .trn_terrfwd_n(pci0_pcie_ep$trn_terrfwd_n),
				      .trn_trem_n(pci0_pcie_ep$trn_trem_n),
				      .trn_tsof_n(pci0_pcie_ep$trn_tsof_n),
				      .trn_tsrc_dsc_n(pci0_pcie_ep$trn_tsrc_dsc_n),
				      .trn_tsrc_rdy_n(pci0_pcie_ep$trn_tsrc_rdy_n),
				      .pci_exp_txp(pci0_pcie_ep$pci_exp_txp),
				      .pci_exp_txn(pci0_pcie_ep$pci_exp_txn),
				      .trn_lnk_up_n(pci0_pcie_ep$trn_lnk_up_n),
				      .cfg_do(),
				      .cfg_rd_wr_done_n(),
				      .cfg_to_turnoff_n(),
				      .cfg_bus_number(pci0_pcie_ep$cfg_bus_number),
				      .cfg_device_number(pci0_pcie_ep$cfg_device_number),
				      .cfg_function_number(pci0_pcie_ep$cfg_function_number),
				      .cfg_status(),
				      .cfg_command(),
				      .cfg_dstatus(),
				      .cfg_dcommand(),
				      .cfg_lstatus(),
				      .cfg_lcommand(),
				      .cfg_pcie_link_state_n(),
				      .trn_rsof_n(pci0_pcie_ep$trn_rsof_n),
				      .trn_reof_n(pci0_pcie_ep$trn_reof_n),
				      .trn_rd(pci0_pcie_ep$trn_rd),
				      .trn_rrem_n(pci0_pcie_ep$trn_rrem_n),
				      .trn_rerrfwd_n(),
				      .trn_rsrc_rdy_n(pci0_pcie_ep$trn_rsrc_rdy_n),
				      .trn_rsrc_dsc_n(),
				      .trn_rbar_hit_n(pci0_pcie_ep$trn_rbar_hit_n),
				      .trn_rfc_ph_av(),
				      .trn_rfc_pd_av(),
				      .trn_rfc_nph_av(),
				      .trn_rfc_npd_av(),
				      .trn_tdst_rdy_n(pci0_pcie_ep$trn_tdst_rdy_n),
				      .trn_tdst_dsc_n(),
				      .trn_tbuf_av(),
				      .cfg_interrupt_rdy_n(pci0_pcie_ep$cfg_interrupt_rdy_n),
				      .cfg_interrupt_mmenable(pci0_pcie_ep$cfg_interrupt_mmenable),
				      .cfg_interrupt_msienable(pci0_pcie_ep$cfg_interrupt_msienable),
				      .cfg_interrupt_do(pci0_pcie_ep$cfg_interrupt_do),
				      .cfg_err_cpl_rdy_n(),
				      .trn_clk(pci0_pcie_ep$trn_clk),
				      .trn2_clk(),
				      .refclkout(),
				      .trn_reset_n(pci0_pcie_ep$trn_reset_n));

  // submodule pci0_rst
  IBUF pci0_rst(.I(pci0_reset_n), .O(pci0_rst$O));

  // submodule pciLinkUpResetGen
  MakeResetA #(.RSTDELAY(32'd1),
	       .init(1'd0)) pciLinkUpResetGen(.CLK(pci0_pcie_ep$trn_clk),
					      .RST_N(trn_rst_n$OUT_RST_N),
					      .DST_CLK(pci0_pcie_ep$trn_clk),
					      .ASSERT_IN(pciLinkUpResetGen$ASSERT_IN),
					      .ASSERT_OUT(),
					      .OUT_RST_N());

  // submodule pcie_irq_fifoAssert
  SyncFIFO #(.dataWidth(32'd8),
	     .depth(32'd8),
	     .indxWidth(32'd3),
	     .regFull(1'd1),
	     .regEmpty(1'd1)) pcie_irq_fifoAssert(.sCLK(pci0_pcie_ep$trn_clk),
						  .dCLK(pci0_pcie_ep$trn_clk),
						  .sRST_N(trn_rst_n$OUT_RST_N),
						  .sD_IN(pcie_irq_fifoAssert$sD_IN),
						  .sENQ(pcie_irq_fifoAssert$sENQ),
						  .dDEQ(pcie_irq_fifoAssert$dDEQ),
						  .dD_OUT(pcie_irq_fifoAssert$dD_OUT),
						  .sFULL_N(),
						  .dEMPTY_N(pcie_irq_fifoAssert$dEMPTY_N));

  // submodule sys0_clk
  IBUFDS sys0_clk(.I(sys0_clkp), .IB(sys0_clkn), .O(sys0_clk$O));

  // submodule sys0_rst
  SyncResetA #(.RSTDELAY(32'd0)) sys0_rst(.CLK(sys0_clk$O),
					  .IN_RST_N(pci0_pcie_ep$trn_reset_n),
					  .OUT_RST_N(sys0_rst$OUT_RST_N));

  // submodule trn_rst_n
  SyncResetA #(.RSTDELAY(32'd0)) trn_rst_n(.CLK(pci0_pcie_ep$trn_clk),
					   .IN_RST_N(pci0_pcie_ep$trn_reset_n),
					   .OUT_RST_N(trn_rst_n$OUT_RST_N));

  // rule RL_plr
  assign CAN_FIRE_RL_plr = pci0_pcie_ep$trn_lnk_up_n ;
  assign WILL_FIRE_RL_plr = pci0_pcie_ep$trn_lnk_up_n ;

  // rule RL_every
  assign CAN_FIRE_RL_every = 1'd1 ;
  assign WILL_FIRE_RL_every = 1'd1 ;

  // rule RL_connect
  assign CAN_FIRE_RL_connect = !pci0_pcie_ep$trn_rsrc_rdy_n && fP2I$FULL_N ;
  assign WILL_FIRE_RL_connect = CAN_FIRE_RL_connect ;

  // rule RL_connect_1
  assign CAN_FIRE_RL_connect_1 =
	     !pci0_pcie_ep$trn_tdst_rdy_n && fI2P$EMPTY_N ;
  assign WILL_FIRE_RL_connect_1 = CAN_FIRE_RL_connect_1 ;

  // rule RL_connect_interrupt_1
  assign CAN_FIRE_RL_connect_interrupt_1 = 1'd1 ;
  assign WILL_FIRE_RL_connect_interrupt_1 = 1'd1 ;

  // rule RL_connect_interrupt_rdy_n
  assign CAN_FIRE_RL_connect_interrupt_rdy_n = 1'd1 ;
  assign WILL_FIRE_RL_connect_interrupt_rdy_n = 1'd1 ;

  // rule RL_connect_interrupt_mmenable
  assign CAN_FIRE_RL_connect_interrupt_mmenable = 1'd1 ;
  assign WILL_FIRE_RL_connect_interrupt_mmenable = 1'd1 ;

  // rule RL_connect_interrupt_do
  assign CAN_FIRE_RL_connect_interrupt_do = 1'd1 ;
  assign WILL_FIRE_RL_connect_interrupt_do = 1'd1 ;

  // rule RL_tie_off_inputs
  assign CAN_FIRE_RL_tie_off_inputs = 1'd1 ;
  assign WILL_FIRE_RL_tie_off_inputs = 1'd1 ;

  // rule RL_tie_off_inputs_1
  assign CAN_FIRE_RL_tie_off_inputs_1 = 1'd1 ;
  assign WILL_FIRE_RL_tie_off_inputs_1 = 1'd1 ;

  // rule RL_pci0_connect_trn_tx
  assign CAN_FIRE_RL_pci0_connect_trn_tx = 1'd1 ;
  assign WILL_FIRE_RL_pci0_connect_trn_tx = 1'd1 ;

  // rule RL_pci0_connect_trn_rx
  assign CAN_FIRE_RL_pci0_connect_trn_rx = 1'd1 ;
  assign WILL_FIRE_RL_pci0_connect_trn_rx = 1'd1 ;

  // rule RL_pcie_irq_msi_enabled_assert_interrupt
  assign CAN_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt =
	     pcie_irq_fifoAssert$dEMPTY_N && pcie_irq_rMSIEnabled &&
	     !pcie_irq_rInterrupting &&
	     pci0_pcie_ep$cfg_interrupt_rdy_n ;
  assign WILL_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt =
	     CAN_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt ;

  // rule RL_pcie_irq_msi_enabled_assert_interrupt_done
  assign CAN_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt_done =
	     pcie_irq_rMSIEnabled && pcie_irq_rInterrupting &&
	     !pci0_pcie_ep$cfg_interrupt_rdy_n ;
  assign WILL_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt_done =
	     CAN_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt_done ;

  // rule RL_connect_interrupt_msienable
  assign CAN_FIRE_RL_connect_interrupt_msienable = 1'd1 ;
  assign WILL_FIRE_RL_connect_interrupt_msienable = 1'd1 ;

  // rule RL_Prelude_inst_changeSpecialWires_upconv_connect1
  assign CAN_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect1 =
	     fP2I$EMPTY_N &&
	     (!fP2I$D_OUT[79] || ctop$RDY_server_request_put) &&
	     !Prelude_inst_changeSpecialWires_rg[81] ;
  assign WILL_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect1 =
	     CAN_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect1 ;

  // rule RL_Prelude_inst_changeSpecialWires_upconv_connect2
  assign CAN_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect2 =
	     ctop$RDY_server_request_put && fP2I$EMPTY_N &&
	     Prelude_inst_changeSpecialWires_rg[81] ;
  assign WILL_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect2 =
	     CAN_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect2 ;

  // rule RL_Prelude_inst_changeSpecialWires_1_downconv_connect1
  assign CAN_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect1 =
	     ctop$RDY_server_response_get && fI2P$FULL_N &&
	     !Prelude_inst_changeSpecialWires_1_rg[81] ;
  assign WILL_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect1 =
	     CAN_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect1 ;

  // rule RL_Prelude_inst_changeSpecialWires_1_downconv_connect2
  assign CAN_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect2 =
	     fI2P$FULL_N && Prelude_inst_changeSpecialWires_1_rg[81] ;
  assign WILL_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect2 =
	     CAN_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect2 ;

  // rule RL_infLed_clock_domain_crossing
  assign CAN_FIRE_RL_infLed_clock_domain_crossing = 1'd1 ;
  assign WILL_FIRE_RL_infLed_clock_domain_crossing = 1'd1 ;

  // inputs to muxes for submodule ports
  assign MUX_Prelude_inst_changeSpecialWires_1_rg$write_1__SEL_1 =
	     WILL_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect1 &&
	     ctop$server_response_get[135:128] != 8'd0 ;
  assign MUX_Prelude_inst_changeSpecialWires_rg$write_1__SEL_1 =
	     WILL_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect1 &&
	     !fP2I$D_OUT[79] ;
  assign MUX_ctop$server_request_put_1__SEL_1 =
	     WILL_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect1 &&
	     fP2I$D_OUT[79] ;
  assign MUX_Prelude_inst_changeSpecialWires_1_rg$write_1__VAL_1 =
	     { 2'd2,
	       ctop$server_response_get[151:144],
	       ctop$server_response_get[135:128],
	       ctop$server_response_get[63:0] } ;
  assign MUX_Prelude_inst_changeSpecialWires_rg$write_1__VAL_1 =
	     { 1'd1, fP2I$D_OUT } ;
  assign MUX_ctop$server_request_put_1__VAL_1 =
	     { fP2I$D_OUT[80:72], put_be__h4055, put_data__h4056 } ;
  assign MUX_ctop$server_request_put_1__VAL_2 =
	     { Prelude_inst_changeSpecialWires_rg[80],
	       fP2I$D_OUT[79],
	       Prelude_inst_changeSpecialWires_rg[78:72],
	       wOut_be__h4133,
	       wOut_data__h4134 } ;
  assign MUX_fI2P$enq_1__VAL_1 =
	     (ctop$server_response_get[135:128] == 8'd0) ?
	       { ctop$server_response_get[152:136],
		 ctop$server_response_get[127:64] } :
	       { ctop$server_response_get[152],
		 1'd0,
		 ctop$server_response_get[150:136],
		 ctop$server_response_get[127:64] } ;

  // inlined wires
  assign pci0_wTrnTxSof$wget = !fI2P$D_OUT[80] ;
  assign pci0_wTrnTxSof$whas = CAN_FIRE_RL_connect_1 ;
  assign pci0_wTrnTxEof$wget = !fI2P$D_OUT[79] ;
  assign pci0_wTrnTxEof$whas = CAN_FIRE_RL_connect_1 ;
  assign pci0_wTrnTxDsc$wget = 1'd1 ;
  assign pci0_wTrnTxDsc$whas = CAN_FIRE_RL_connect_1 ;
  assign pci0_wTrnTxRem$wget = fI2P$D_OUT[71:64] ;
  assign pci0_wTrnTxRem$whas = CAN_FIRE_RL_connect_1 ;
  assign pci0_wTrnTxDat$wget = fI2P$D_OUT[63:0] ;
  assign pci0_wTrnTxDat$whas = CAN_FIRE_RL_connect_1 ;
  assign pci0_wTrnRxNpOk$wget = 1'd0 ;
  assign pci0_wTrnRxNpOk$whas = 1'd1 ;
  assign pci0_wTrnRxCplS$wget = 1'd1 ;
  assign pci0_wTrnRxCplS$whas = 1'd1 ;
  assign pcie_irq_wInterruptRdyN$wget = pci0_pcie_ep$cfg_interrupt_rdy_n ;
  assign pcie_irq_wInterruptRdyN$whas = 1'd1 ;
  assign pcie_irq_wInterruptDo$wget = pci0_pcie_ep$cfg_interrupt_do ;
  assign pcie_irq_wInterruptDo$whas = 1'd1 ;
  assign pci0_pwTrnTx$whas = CAN_FIRE_RL_connect_1 ;
  assign pci0_pwTrnRx$whas = CAN_FIRE_RL_connect ;

  // register Prelude_inst_changeSpecialWires_1_rg
  assign Prelude_inst_changeSpecialWires_1_rg$D_IN =
	     MUX_Prelude_inst_changeSpecialWires_1_rg$write_1__SEL_1 ?
	       MUX_Prelude_inst_changeSpecialWires_1_rg$write_1__VAL_1 :
	       82'h0AAAAAAAAAAAAAAAAAAAA ;
  assign Prelude_inst_changeSpecialWires_1_rg$EN =
	     WILL_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect1 &&
	     ctop$server_response_get[135:128] != 8'd0 ||
	     WILL_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect2 ;

  // register Prelude_inst_changeSpecialWires_rg
  assign Prelude_inst_changeSpecialWires_rg$D_IN =
	     MUX_Prelude_inst_changeSpecialWires_rg$write_1__SEL_1 ?
	       MUX_Prelude_inst_changeSpecialWires_rg$write_1__VAL_1 :
	       82'h0AAAAAAAAAAAAAAAAAAAA ;
  assign Prelude_inst_changeSpecialWires_rg$EN =
	     WILL_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect1 &&
	     !fP2I$D_OUT[79] ||
	     WILL_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect2 ;

  // register pcie_irq_rInterruptDi
  assign pcie_irq_rInterruptDi$D_IN = pcie_irq_fifoAssert$dD_OUT ;
  assign pcie_irq_rInterruptDi$EN =
	     CAN_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt ;

  // register pcie_irq_rInterruptN
  assign pcie_irq_rInterruptN$D_IN =
	     !WILL_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt ;
  assign pcie_irq_rInterruptN$EN =
	     WILL_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt ||
	     WILL_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt_done ;

  // register pcie_irq_rInterrupting
  assign pcie_irq_rInterrupting$D_IN =
	     !WILL_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt_done ;
  assign pcie_irq_rInterrupting$EN =
	     WILL_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt_done ||
	     WILL_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt ;

  // register pcie_irq_rMMEnabled
  assign pcie_irq_rMMEnabled$D_IN = pci0_pcie_ep$cfg_interrupt_mmenable ;
  assign pcie_irq_rMMEnabled$EN = 1'd1 ;

  // register pcie_irq_rMSIEnabled
  assign pcie_irq_rMSIEnabled$D_IN = pci0_pcie_ep$cfg_interrupt_msienable ;
  assign pcie_irq_rMSIEnabled$EN = 1'd1 ;

  // submodule ctop
  assign ctop$gps_ppsSyncIn_x = gps_ppsSyncIn_x ;
  assign ctop$server_request_put =
	     MUX_ctop$server_request_put_1__SEL_1 ?
	       MUX_ctop$server_request_put_1__VAL_1 :
	       MUX_ctop$server_request_put_1__VAL_2 ;
  assign ctop$switch_x = 3'h0 ;
  assign ctop$wci_m_0_SData = 32'h0 ;
  assign ctop$wci_m_0_SFlag = 2'h0 ;
  assign ctop$wci_m_0_SResp = 2'h0 ;
  assign ctop$wci_m_1_SData = 32'h0 ;
  assign ctop$wci_m_1_SFlag = 2'h0 ;
  assign ctop$wci_m_1_SResp = 2'h0 ;
  assign ctop$wci_m_2_SData = 32'h0 ;
  assign ctop$wci_m_2_SFlag = 2'h0 ;
  assign ctop$wci_m_2_SResp = 2'h0 ;
  assign ctop$wci_m_3_SData = 32'h0 ;
  assign ctop$wci_m_3_SFlag = 2'h0 ;
  assign ctop$wci_m_3_SResp = 2'h0 ;
  assign ctop$wci_m_4_SData = 32'h0 ;
  assign ctop$wci_m_4_SFlag = 2'h0 ;
  assign ctop$wci_m_4_SResp = 2'h0 ;
  assign ctop$wmemiM_SData = 128'h0 ;
  assign ctop$wmemiM_SResp = 2'h0 ;
  assign ctop$wsi_s_adc_MBurstLength = 12'h0 ;
  assign ctop$wsi_s_adc_MByteEn = 4'h0 ;
  assign ctop$wsi_s_adc_MCmd = 3'h0 ;
  assign ctop$wsi_s_adc_MData = 32'h0 ;
  assign ctop$wsi_s_adc_MReqInfo = 8'h0 ;
  assign ctop$EN_server_request_put =
	     WILL_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect1 &&
	     fP2I$D_OUT[79] ||
	     WILL_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect2 ;
  assign ctop$EN_server_response_get =
	     CAN_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect1 ;
  assign ctop$wci_m_0_SThreadBusy = 1'b0 ;
  assign ctop$wci_m_1_SThreadBusy = 1'b0 ;
  assign ctop$wci_m_2_SThreadBusy = 1'b0 ;
  assign ctop$wci_m_3_SThreadBusy = 1'b0 ;
  assign ctop$wci_m_4_SThreadBusy = 1'b0 ;
  assign ctop$wsi_s_adc_MReqLast = 1'b0 ;
  assign ctop$wsi_s_adc_MBurstPrecise = 1'b0 ;
  assign ctop$wsi_s_adc_MReset_n = 1'b0 ;
  assign ctop$wsi_m_dac_SThreadBusy = 1'b0 ;
  assign ctop$wsi_m_dac_SReset_n = 1'b0 ;
  assign ctop$wmemiM_SRespLast = 1'b0 ;
  assign ctop$wmemiM_SCmdAccept = 1'b0 ;
  assign ctop$wmemiM_SDataAccept = 1'b0 ;

  // submodule fI2P
  assign fI2P$D_IN =
	     WILL_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect1 ?
	       MUX_fI2P$enq_1__VAL_1 :
	       Prelude_inst_changeSpecialWires_1_rg[80:0] ;
  assign fI2P$ENQ =
	     WILL_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect1 ||
	     WILL_FIRE_RL_Prelude_inst_changeSpecialWires_1_downconv_connect2 ;
  assign fI2P$DEQ = CAN_FIRE_RL_connect_1 ;
  assign fI2P$CLR = 1'b0 ;

  // submodule fP2I
  assign fP2I$D_IN =
	     { !pci0_pcie_ep$trn_rsof_n,
	       !pci0_pcie_ep$trn_reof_n,
	       ~pci0_pcie_ep$trn_rbar_hit_n,
	       ~pci0_pcie_ep$trn_rrem_n,
	       pci0_pcie_ep$trn_rd } ;
  assign fP2I$ENQ = CAN_FIRE_RL_connect ;
  assign fP2I$DEQ =
	     WILL_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect2 ||
	     WILL_FIRE_RL_Prelude_inst_changeSpecialWires_upconv_connect1 ;
  assign fP2I$CLR = 1'b0 ;

  // submodule infLed
  assign infLed$WVAL = ctop$led ;

  // submodule pci0_pcie_ep
  assign pci0_pcie_ep$cfg_byte_en_n = 4'd15 ;
  assign pci0_pcie_ep$cfg_di = 32'd0 ;
  assign pci0_pcie_ep$cfg_dsn = 64'h0000000101000A35 ;
  assign pci0_pcie_ep$cfg_dwaddr = 10'd0 ;
  assign pci0_pcie_ep$cfg_err_cor_n = 1'd1 ;
  assign pci0_pcie_ep$cfg_err_cpl_abort_n = 1'd1 ;
  assign pci0_pcie_ep$cfg_err_cpl_timeout_n = 1'd1 ;
  assign pci0_pcie_ep$cfg_err_cpl_unexpect_n = 1'd1 ;
  assign pci0_pcie_ep$cfg_err_ecrc_n = 1'd1 ;
  assign pci0_pcie_ep$cfg_err_locked_n = 1'd1 ;
  assign pci0_pcie_ep$cfg_err_posted_n = 1'd1 ;
  assign pci0_pcie_ep$cfg_err_tlp_cpl_header = 48'd0 ;
  assign pci0_pcie_ep$cfg_err_ur_n = 1'd1 ;
  assign pci0_pcie_ep$cfg_interrupt_assert_n = 1'd1 ;
  assign pci0_pcie_ep$cfg_interrupt_di = pcie_irq_rInterruptDi ;
  assign pci0_pcie_ep$cfg_interrupt_n = pcie_irq_rInterruptN ;
  assign pci0_pcie_ep$cfg_pm_wake_n = 1'd1 ;
  assign pci0_pcie_ep$cfg_rd_en_n = 1'd1 ;
  assign pci0_pcie_ep$cfg_trn_pending_n = 1'd1 ;
  assign pci0_pcie_ep$cfg_wr_en_n = 1'd1 ;
  assign pci0_pcie_ep$pci_exp_rxn = pcie_rxn_i ;
  assign pci0_pcie_ep$pci_exp_rxp = pcie_rxp_i ;
  assign pci0_pcie_ep$trn_rcpl_streaming_n = 1'b1 ;
  assign pci0_pcie_ep$trn_rdst_rdy_n = !CAN_FIRE_RL_connect ;
  assign pci0_pcie_ep$trn_rnp_ok_n = 1'b0 ;
  assign pci0_pcie_ep$trn_td =
	     CAN_FIRE_RL_connect_1 ? fI2P$D_OUT[63:0] : 64'h0 ;
  assign pci0_pcie_ep$trn_teof_n = !CAN_FIRE_RL_connect_1 || !fI2P$D_OUT[79] ;
  assign pci0_pcie_ep$trn_terrfwd_n = 1'd1 ;
  assign pci0_pcie_ep$trn_trem_n =
	     CAN_FIRE_RL_connect_1 ? ~fI2P$D_OUT[71:64] : 8'd255 ;
  assign pci0_pcie_ep$trn_tsof_n = !CAN_FIRE_RL_connect_1 || !fI2P$D_OUT[80] ;
  assign pci0_pcie_ep$trn_tsrc_dsc_n = 1'b1 ;
  assign pci0_pcie_ep$trn_tsrc_rdy_n = !CAN_FIRE_RL_connect_1 ;

  // submodule pciLinkUpResetGen
  assign pciLinkUpResetGen$ASSERT_IN = pci0_pcie_ep$trn_lnk_up_n ;

  // submodule pcie_irq_fifoAssert
  assign pcie_irq_fifoAssert$sD_IN = 8'h0 ;
  assign pcie_irq_fifoAssert$sENQ = 1'b0 ;
  assign pcie_irq_fifoAssert$dDEQ =
	     CAN_FIRE_RL_pcie_irq_msi_enabled_assert_interrupt ;

  // remaining internal signals
  assign pci0_pcie_ep_cfg_bus_number__39_CONCAT_pci0_pc_ETC___d153 =
	     { pci0_pcie_ep$cfg_bus_number,
	       pci0_pcie_ep$cfg_device_number,
	       pci0_pcie_ep$cfg_function_number } ;
  assign put_be__h4055 = { fP2I$D_OUT[71:64], 8'd0 } ;
  assign put_data__h4056 = { fP2I$D_OUT[63:0], 64'hAAAAAAAAAAAAAAAA } ;
  assign wOut_be__h4133 =
	     { Prelude_inst_changeSpecialWires_rg[71:64],
	       fP2I$D_OUT[71:64] } ;
  assign wOut_data__h4134 =
	     { Prelude_inst_changeSpecialWires_rg[63:0], fP2I$D_OUT[63:0] } ;

  // handling of inlined registers

  always@(posedge pci0_pcie_ep$trn_clk)
  begin
    if (!trn_rst_n$OUT_RST_N)
      begin
        Prelude_inst_changeSpecialWires_1_rg <= `BSV_ASSIGNMENT_DELAY
	    82'h0AAAAAAAAAAAAAAAAAAAA;
	Prelude_inst_changeSpecialWires_rg <= `BSV_ASSIGNMENT_DELAY
	    82'h0AAAAAAAAAAAAAAAAAAAA;
	pcie_irq_rInterruptDi <= `BSV_ASSIGNMENT_DELAY 8'd0;
	pcie_irq_rInterruptN <= `BSV_ASSIGNMENT_DELAY 1'd1;
	pcie_irq_rInterrupting <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (Prelude_inst_changeSpecialWires_1_rg$EN)
	  Prelude_inst_changeSpecialWires_1_rg <= `BSV_ASSIGNMENT_DELAY
	      Prelude_inst_changeSpecialWires_1_rg$D_IN;
	if (Prelude_inst_changeSpecialWires_rg$EN)
	  Prelude_inst_changeSpecialWires_rg <= `BSV_ASSIGNMENT_DELAY
	      Prelude_inst_changeSpecialWires_rg$D_IN;
	if (pcie_irq_rInterruptDi$EN)
	  pcie_irq_rInterruptDi <= `BSV_ASSIGNMENT_DELAY
	      pcie_irq_rInterruptDi$D_IN;
	if (pcie_irq_rInterruptN$EN)
	  pcie_irq_rInterruptN <= `BSV_ASSIGNMENT_DELAY
	      pcie_irq_rInterruptN$D_IN;
	if (pcie_irq_rInterrupting$EN)
	  pcie_irq_rInterrupting <= `BSV_ASSIGNMENT_DELAY
	      pcie_irq_rInterrupting$D_IN;
      end
    if (pcie_irq_rMMEnabled$EN)
      pcie_irq_rMMEnabled <= `BSV_ASSIGNMENT_DELAY pcie_irq_rMMEnabled$D_IN;
    if (pcie_irq_rMSIEnabled$EN)
      pcie_irq_rMSIEnabled <= `BSV_ASSIGNMENT_DELAY pcie_irq_rMSIEnabled$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    Prelude_inst_changeSpecialWires_1_rg = 82'h2AAAAAAAAAAAAAAAAAAAA;
    Prelude_inst_changeSpecialWires_rg = 82'h2AAAAAAAAAAAAAAAAAAAA;
    pcie_irq_rInterruptDi = 8'hAA;
    pcie_irq_rInterruptN = 1'h0;
    pcie_irq_rInterrupting = 1'h0;
    pcie_irq_rMMEnabled = 3'h2;
    pcie_irq_rMSIEnabled = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkFTop

