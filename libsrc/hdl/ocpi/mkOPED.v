//
// Generated by Bluespec Compiler, version 2009.11.beta2 (build 18693, 2009-11-24)
//
// On Tue Nov  2 18:12:04 EDT 2010
//
//
// Ports:
// Name                         I/O  size props
// pcie_txp                       O     8
// pcie_txn                       O     8
// debug                          O    32
// trnClk                         O     1 clock
// CLK_GATE_trnClk                O     1 const
// pcie_clk_p                     I     1 clock
// pcie_clk_n                     I     1 clock
// pcie_reset_n                   I     1 reset
// pcie_rxp_i                     I     8
// pcie_rxn_i                     I     8
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module mkOPED(pcie_clk_p,
	      pcie_clk_n,
	      pcie_reset_n,

	      pcie_rxp_i,

	      pcie_rxn_i,

	      pcie_txp,

	      pcie_txn,

	      debug,

	      trnClk,
	      CLK_GATE_trnClk);
  input  pcie_clk_p;
  input  pcie_clk_n;
  input  pcie_reset_n;

  // action method pcie_rxp
  input  [7 : 0] pcie_rxp_i;

  // action method pcie_rxn
  input  [7 : 0] pcie_rxn_i;

  // value method pcie_txp
  output [7 : 0] pcie_txp;

  // value method pcie_txn
  output [7 : 0] pcie_txn;

  // value method debug
  output [31 : 0] debug;

  // oscillator and gates for output clock trnClk
  output trnClk;
  output CLK_GATE_trnClk;

  // signals for module outputs
  wire [31 : 0] debug;
  wire [7 : 0] pcie_txn, pcie_txp;
  wire CLK_GATE_trnClk, trnClk;

  // inlined wires
  wire [63 : 0] pci_wTrnTxDat$wget;
  wire [7 : 0] pci_irq_wInterruptDo$wget, pci_wTrnTxRem$wget;
  wire pci_irq_wInterruptDo$whas,
       pci_irq_wInterruptRdyN$wget,
       pci_irq_wInterruptRdyN$whas,
       pci_pwTrnRx$whas,
       pci_pwTrnTx$whas,
       pci_wTrnRxCplS$wget,
       pci_wTrnRxCplS$whas,
       pci_wTrnRxNpOk$wget,
       pci_wTrnRxNpOk$whas,
       pci_wTrnTxDat$whas,
       pci_wTrnTxDsc$wget,
       pci_wTrnTxDsc$whas,
       pci_wTrnTxEof$wget,
       pci_wTrnTxEof$whas,
       pci_wTrnTxRem$whas,
       pci_wTrnTxSof$wget,
       pci_wTrnTxSof$whas;

  // register pci_irq_rInterruptDi
  reg [7 : 0] pci_irq_rInterruptDi;
  wire [7 : 0] pci_irq_rInterruptDi$D_IN;
  wire pci_irq_rInterruptDi$EN;

  // register pci_irq_rInterruptN
  reg pci_irq_rInterruptN;
  wire pci_irq_rInterruptN$D_IN, pci_irq_rInterruptN$EN;

  // register pci_irq_rInterrupting
  reg pci_irq_rInterrupting;
  wire pci_irq_rInterrupting$D_IN, pci_irq_rInterrupting$EN;

  // register pci_irq_rMMEnabled
  reg [2 : 0] pci_irq_rMMEnabled;
  wire [2 : 0] pci_irq_rMMEnabled$D_IN;
  wire pci_irq_rMMEnabled$EN;

  // register pci_irq_rMSIEnabled
  reg pci_irq_rMSIEnabled;
  wire pci_irq_rMSIEnabled$D_IN, pci_irq_rMSIEnabled$EN;

  // ports of submodule fI2P
  wire [80 : 0] fI2P$D_IN, fI2P$D_OUT;
  wire fI2P$CLR, fI2P$DEQ, fI2P$EMPTY_N, fI2P$ENQ;

  // ports of submodule fP2I
  wire [80 : 0] fP2I$D_IN;
  wire fP2I$CLR, fP2I$DEQ, fP2I$ENQ, fP2I$FULL_N;

  // ports of submodule pciLinkUpResetGen
  wire pciLinkUpResetGen$ASSERT_IN;

  // ports of submodule pci_clk
  wire pci_clk$O;

  // ports of submodule pci_irq_fifoAssert
  wire [7 : 0] pci_irq_fifoAssert$dD_OUT, pci_irq_fifoAssert$sD_IN;
  wire pci_irq_fifoAssert$dDEQ,
       pci_irq_fifoAssert$dEMPTY_N,
       pci_irq_fifoAssert$sENQ;

  // ports of submodule pci_irq_rMMEnabled_1
  wire [2 : 0] pci_irq_rMMEnabled_1$WVAL;

  // ports of submodule pci_pcie_ep
  wire [63 : 0] pci_pcie_ep$cfg_dsn, pci_pcie_ep$trn_rd, pci_pcie_ep$trn_td;
  wire [47 : 0] pci_pcie_ep$cfg_err_tlp_cpl_header;
  wire [31 : 0] pci_pcie_ep$cfg_di;
  wire [9 : 0] pci_pcie_ep$cfg_dwaddr;
  wire [7 : 0] pci_pcie_ep$cfg_interrupt_di,
	       pci_pcie_ep$cfg_interrupt_do,
	       pci_pcie_ep$pci_exp_rxn,
	       pci_pcie_ep$pci_exp_rxp,
	       pci_pcie_ep$pci_exp_txn,
	       pci_pcie_ep$pci_exp_txp,
	       pci_pcie_ep$trn_rrem_n,
	       pci_pcie_ep$trn_trem_n;
  wire [6 : 0] pci_pcie_ep$trn_rbar_hit_n;
  wire [3 : 0] pci_pcie_ep$cfg_byte_en_n;
  wire [2 : 0] pci_pcie_ep$cfg_interrupt_mmenable;
  wire pci_pcie_ep$cfg_err_cor_n,
       pci_pcie_ep$cfg_err_cpl_abort_n,
       pci_pcie_ep$cfg_err_cpl_timeout_n,
       pci_pcie_ep$cfg_err_cpl_unexpect_n,
       pci_pcie_ep$cfg_err_ecrc_n,
       pci_pcie_ep$cfg_err_locked_n,
       pci_pcie_ep$cfg_err_posted_n,
       pci_pcie_ep$cfg_err_ur_n,
       pci_pcie_ep$cfg_interrupt_assert_n,
       pci_pcie_ep$cfg_interrupt_msienable,
       pci_pcie_ep$cfg_interrupt_n,
       pci_pcie_ep$cfg_interrupt_rdy_n,
       pci_pcie_ep$cfg_pm_wake_n,
       pci_pcie_ep$cfg_rd_en_n,
       pci_pcie_ep$cfg_trn_pending_n,
       pci_pcie_ep$cfg_wr_en_n,
       pci_pcie_ep$trn_clk,
       pci_pcie_ep$trn_lnk_up_n,
       pci_pcie_ep$trn_rcpl_streaming_n,
       pci_pcie_ep$trn_rdst_rdy_n,
       pci_pcie_ep$trn_reof_n,
       pci_pcie_ep$trn_reset_n,
       pci_pcie_ep$trn_rnp_ok_n,
       pci_pcie_ep$trn_rsof_n,
       pci_pcie_ep$trn_rsrc_rdy_n,
       pci_pcie_ep$trn_tdst_rdy_n,
       pci_pcie_ep$trn_teof_n,
       pci_pcie_ep$trn_terrfwd_n,
       pci_pcie_ep$trn_tsof_n,
       pci_pcie_ep$trn_tsrc_dsc_n,
       pci_pcie_ep$trn_tsrc_rdy_n;

  // ports of submodule pci_rst
  wire pci_rst$O;

  // ports of submodule trn_rst_n
  wire trn_rst_n$OUT_RST_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_connect,
       CAN_FIRE_RL_connect_1,
       CAN_FIRE_RL_connect_interrupt_1,
       CAN_FIRE_RL_connect_interrupt_do,
       CAN_FIRE_RL_connect_interrupt_mmenable,
       CAN_FIRE_RL_connect_interrupt_msienable,
       CAN_FIRE_RL_connect_interrupt_rdy_n,
       CAN_FIRE_RL_every,
       CAN_FIRE_RL_pci_connect_trn_rx,
       CAN_FIRE_RL_pci_connect_trn_tx,
       CAN_FIRE_RL_pci_irq_msi_enabled_assert_interrupt,
       CAN_FIRE_RL_pci_irq_msi_enabled_assert_interrupt_done,
       CAN_FIRE_RL_pci_irq_rMMEnabled_clock_domain_crossing,
       CAN_FIRE_RL_plr,
       CAN_FIRE_RL_tie_off_inputs,
       CAN_FIRE_RL_tie_off_inputs_1,
       CAN_FIRE_pcie_rxn,
       CAN_FIRE_pcie_rxp,
       WILL_FIRE_RL_connect,
       WILL_FIRE_RL_connect_1,
       WILL_FIRE_RL_connect_interrupt_1,
       WILL_FIRE_RL_connect_interrupt_do,
       WILL_FIRE_RL_connect_interrupt_mmenable,
       WILL_FIRE_RL_connect_interrupt_msienable,
       WILL_FIRE_RL_connect_interrupt_rdy_n,
       WILL_FIRE_RL_every,
       WILL_FIRE_RL_pci_connect_trn_rx,
       WILL_FIRE_RL_pci_connect_trn_tx,
       WILL_FIRE_RL_pci_irq_msi_enabled_assert_interrupt,
       WILL_FIRE_RL_pci_irq_msi_enabled_assert_interrupt_done,
       WILL_FIRE_RL_pci_irq_rMMEnabled_clock_domain_crossing,
       WILL_FIRE_RL_plr,
       WILL_FIRE_RL_tie_off_inputs,
       WILL_FIRE_RL_tie_off_inputs_1,
       WILL_FIRE_pcie_rxn,
       WILL_FIRE_pcie_rxp;

  // remaining internal signals
  wire x__h4158;

  // oscillator and gates for output clock trnClk
  assign trnClk = pci_pcie_ep$trn_clk ;
  assign CLK_GATE_trnClk = 1'b1 ;

  // action method pcie_rxp
  assign CAN_FIRE_pcie_rxp = 1'd1 ;
  assign WILL_FIRE_pcie_rxp = 1'd1 ;

  // action method pcie_rxn
  assign CAN_FIRE_pcie_rxn = 1'd1 ;
  assign WILL_FIRE_pcie_rxn = 1'd1 ;

  // value method pcie_txp
  assign pcie_txp = pci_pcie_ep$pci_exp_txp ;

  // value method pcie_txn
  assign pcie_txn = pci_pcie_ep$pci_exp_txn ;

  // value method debug
  assign debug = { 31'd0, x__h4158 } ;

  // submodule fI2P
  SizedFIFO #(.p1width(32'd81),
	      .p2depth(32'd4),
	      .p3cntr_width(32'd2),
	      .guarded(32'd1)) fI2P(.RST_N(trn_rst_n$OUT_RST_N),
				    .CLK(pci_pcie_ep$trn_clk),
				    .D_IN(fI2P$D_IN),
				    .ENQ(fI2P$ENQ),
				    .DEQ(fI2P$DEQ),
				    .CLR(fI2P$CLR),
				    .D_OUT(fI2P$D_OUT),
				    .FULL_N(),
				    .EMPTY_N(fI2P$EMPTY_N));

  // submodule fP2I
  SizedFIFO #(.p1width(32'd81),
	      .p2depth(32'd4),
	      .p3cntr_width(32'd2),
	      .guarded(32'd1)) fP2I(.RST_N(trn_rst_n$OUT_RST_N),
				    .CLK(pci_pcie_ep$trn_clk),
				    .D_IN(fP2I$D_IN),
				    .ENQ(fP2I$ENQ),
				    .DEQ(fP2I$DEQ),
				    .CLR(fP2I$CLR),
				    .D_OUT(),
				    .FULL_N(fP2I$FULL_N),
				    .EMPTY_N());

  // submodule pciLinkUpResetGen
  MakeResetA #(.RSTDELAY(32'd1),
	       .init(32'd0)) pciLinkUpResetGen(.CLK(pci_pcie_ep$trn_clk),
					       .RST_N(trn_rst_n$OUT_RST_N),
					       .DST_CLK(pci_pcie_ep$trn_clk),
					       .ASSERT_IN(pciLinkUpResetGen$ASSERT_IN),
					       .ASSERT_OUT(),
					       .OUT_RST_N());

  // submodule pci_clk
  IBUFDS pci_clk(.I(pcie_clk_p), .IB(pcie_clk_n), .O(pci_clk$O));

  // submodule pci_irq_fifoAssert
  SyncFIFO #(.dataWidth(32'd8),
	     .depth(32'd8),
	     .indxWidth(32'd3),
	     .regFull(1'd1),
	     .regEmpty(1'd1)) pci_irq_fifoAssert(.sCLK(pci_pcie_ep$trn_clk),
						 .dCLK(pci_pcie_ep$trn_clk),
						 .sRST_N(trn_rst_n$OUT_RST_N),
						 .sD_IN(pci_irq_fifoAssert$sD_IN),
						 .sENQ(pci_irq_fifoAssert$sENQ),
						 .dDEQ(pci_irq_fifoAssert$dDEQ),
						 .dD_OUT(pci_irq_fifoAssert$dD_OUT),
						 .sFULL_N(),
						 .dEMPTY_N(pci_irq_fifoAssert$dEMPTY_N));

  // submodule pci_irq_rMMEnabled_1
  BypassWire #(.width(32'd3)) pci_irq_rMMEnabled_1(.WVAL(pci_irq_rMMEnabled_1$WVAL),
						   .WGET());

  // submodule pci_pcie_ep
  xilinx_v5_pcie_wrapper pci_pcie_ep(.sys_clk(pci_clk$O),
				     .sys_reset_n(pci_rst$O),
				     .fast_train_simulation_only(1'h0),
				     .cfg_byte_en_n(pci_pcie_ep$cfg_byte_en_n),
				     .cfg_di(pci_pcie_ep$cfg_di),
				     .cfg_dsn(pci_pcie_ep$cfg_dsn),
				     .cfg_dwaddr(pci_pcie_ep$cfg_dwaddr),
				     .cfg_err_cor_n(pci_pcie_ep$cfg_err_cor_n),
				     .cfg_err_cpl_abort_n(pci_pcie_ep$cfg_err_cpl_abort_n),
				     .cfg_err_cpl_timeout_n(pci_pcie_ep$cfg_err_cpl_timeout_n),
				     .cfg_err_cpl_unexpect_n(pci_pcie_ep$cfg_err_cpl_unexpect_n),
				     .cfg_err_ecrc_n(pci_pcie_ep$cfg_err_ecrc_n),
				     .cfg_err_locked_n(pci_pcie_ep$cfg_err_locked_n),
				     .cfg_err_posted_n(pci_pcie_ep$cfg_err_posted_n),
				     .cfg_err_tlp_cpl_header(pci_pcie_ep$cfg_err_tlp_cpl_header),
				     .cfg_err_ur_n(pci_pcie_ep$cfg_err_ur_n),
				     .cfg_interrupt_assert_n(pci_pcie_ep$cfg_interrupt_assert_n),
				     .cfg_interrupt_di(pci_pcie_ep$cfg_interrupt_di),
				     .cfg_interrupt_n(pci_pcie_ep$cfg_interrupt_n),
				     .cfg_pm_wake_n(pci_pcie_ep$cfg_pm_wake_n),
				     .cfg_rd_en_n(pci_pcie_ep$cfg_rd_en_n),
				     .cfg_trn_pending_n(pci_pcie_ep$cfg_trn_pending_n),
				     .cfg_wr_en_n(pci_pcie_ep$cfg_wr_en_n),
				     .pci_exp_rxn(pci_pcie_ep$pci_exp_rxn),
				     .pci_exp_rxp(pci_pcie_ep$pci_exp_rxp),
				     .trn_rcpl_streaming_n(pci_pcie_ep$trn_rcpl_streaming_n),
				     .trn_rdst_rdy_n(pci_pcie_ep$trn_rdst_rdy_n),
				     .trn_rnp_ok_n(pci_pcie_ep$trn_rnp_ok_n),
				     .trn_td(pci_pcie_ep$trn_td),
				     .trn_teof_n(pci_pcie_ep$trn_teof_n),
				     .trn_terrfwd_n(pci_pcie_ep$trn_terrfwd_n),
				     .trn_trem_n(pci_pcie_ep$trn_trem_n),
				     .trn_tsof_n(pci_pcie_ep$trn_tsof_n),
				     .trn_tsrc_dsc_n(pci_pcie_ep$trn_tsrc_dsc_n),
				     .trn_tsrc_rdy_n(pci_pcie_ep$trn_tsrc_rdy_n),
				     .pci_exp_txp(pci_pcie_ep$pci_exp_txp),
				     .pci_exp_txn(pci_pcie_ep$pci_exp_txn),
				     .trn_lnk_up_n(pci_pcie_ep$trn_lnk_up_n),
				     .cfg_do(),
				     .cfg_rd_wr_done_n(),
				     .cfg_to_turnoff_n(),
				     .cfg_bus_number(),
				     .cfg_device_number(),
				     .cfg_function_number(),
				     .cfg_status(),
				     .cfg_command(),
				     .cfg_dstatus(),
				     .cfg_dcommand(),
				     .cfg_lstatus(),
				     .cfg_lcommand(),
				     .cfg_pcie_link_state_n(),
				     .trn_rsof_n(pci_pcie_ep$trn_rsof_n),
				     .trn_reof_n(pci_pcie_ep$trn_reof_n),
				     .trn_rd(pci_pcie_ep$trn_rd),
				     .trn_rrem_n(pci_pcie_ep$trn_rrem_n),
				     .trn_rerrfwd_n(),
				     .trn_rsrc_rdy_n(pci_pcie_ep$trn_rsrc_rdy_n),
				     .trn_rsrc_dsc_n(),
				     .trn_rbar_hit_n(pci_pcie_ep$trn_rbar_hit_n),
				     .trn_rfc_ph_av(),
				     .trn_rfc_pd_av(),
				     .trn_rfc_nph_av(),
				     .trn_rfc_npd_av(),
				     .trn_tdst_rdy_n(pci_pcie_ep$trn_tdst_rdy_n),
				     .trn_tdst_dsc_n(),
				     .trn_tbuf_av(),
				     .cfg_interrupt_rdy_n(pci_pcie_ep$cfg_interrupt_rdy_n),
				     .cfg_interrupt_mmenable(pci_pcie_ep$cfg_interrupt_mmenable),
				     .cfg_interrupt_msienable(pci_pcie_ep$cfg_interrupt_msienable),
				     .cfg_interrupt_do(pci_pcie_ep$cfg_interrupt_do),
				     .cfg_err_cpl_rdy_n(),
				     .trn_clk(pci_pcie_ep$trn_clk),
				     .trn2_clk(),
				     .refclkout(),
				     .trn_reset_n(pci_pcie_ep$trn_reset_n));

  // submodule pci_rst
  IBUF pci_rst(.I(pcie_reset_n), .O(pci_rst$O));

  // submodule trn_rst_n
  SyncResetA #(.RSTDELAY(32'd0)) trn_rst_n(.CLK(pci_pcie_ep$trn_clk),
					   .IN_RST_N(pci_pcie_ep$trn_reset_n),
					   .OUT_RST_N(trn_rst_n$OUT_RST_N));

  // rule RL_connect_1
  assign CAN_FIRE_RL_connect_1 = !pci_pcie_ep$trn_tdst_rdy_n && fI2P$EMPTY_N ;
  assign WILL_FIRE_RL_connect_1 = CAN_FIRE_RL_connect_1 ;

  // rule RL_connect
  assign CAN_FIRE_RL_connect = !pci_pcie_ep$trn_rsrc_rdy_n && fP2I$FULL_N ;
  assign WILL_FIRE_RL_connect = CAN_FIRE_RL_connect ;

  // rule RL_every
  assign CAN_FIRE_RL_every = 1'd1 ;
  assign WILL_FIRE_RL_every = 1'd1 ;

  // rule RL_tie_off_inputs
  assign CAN_FIRE_RL_tie_off_inputs = 1'd1 ;
  assign WILL_FIRE_RL_tie_off_inputs = 1'd1 ;

  // rule RL_tie_off_inputs_1
  assign CAN_FIRE_RL_tie_off_inputs_1 = 1'd1 ;
  assign WILL_FIRE_RL_tie_off_inputs_1 = 1'd1 ;

  // rule RL_connect_interrupt_do
  assign CAN_FIRE_RL_connect_interrupt_do = 1'd1 ;
  assign WILL_FIRE_RL_connect_interrupt_do = 1'd1 ;

  // rule RL_connect_interrupt_rdy_n
  assign CAN_FIRE_RL_connect_interrupt_rdy_n = 1'd1 ;
  assign WILL_FIRE_RL_connect_interrupt_rdy_n = 1'd1 ;

  // rule RL_connect_interrupt_1
  assign CAN_FIRE_RL_connect_interrupt_1 = 1'd1 ;
  assign WILL_FIRE_RL_connect_interrupt_1 = 1'd1 ;

  // rule RL_pci_irq_msi_enabled_assert_interrupt
  assign CAN_FIRE_RL_pci_irq_msi_enabled_assert_interrupt =
	     pci_irq_fifoAssert$dEMPTY_N && pci_irq_rMSIEnabled &&
	     !pci_irq_rInterrupting &&
	     pci_pcie_ep$cfg_interrupt_rdy_n ;
  assign WILL_FIRE_RL_pci_irq_msi_enabled_assert_interrupt =
	     CAN_FIRE_RL_pci_irq_msi_enabled_assert_interrupt ;

  // rule RL_pci_irq_msi_enabled_assert_interrupt_done
  assign CAN_FIRE_RL_pci_irq_msi_enabled_assert_interrupt_done =
	     pci_irq_rMSIEnabled && pci_irq_rInterrupting &&
	     !pci_pcie_ep$cfg_interrupt_rdy_n ;
  assign WILL_FIRE_RL_pci_irq_msi_enabled_assert_interrupt_done =
	     CAN_FIRE_RL_pci_irq_msi_enabled_assert_interrupt_done ;

  // rule RL_connect_interrupt_msienable
  assign CAN_FIRE_RL_connect_interrupt_msienable = 1'd1 ;
  assign WILL_FIRE_RL_connect_interrupt_msienable = 1'd1 ;

  // rule RL_pci_irq_rMMEnabled_clock_domain_crossing
  assign CAN_FIRE_RL_pci_irq_rMMEnabled_clock_domain_crossing = 1'd1 ;
  assign WILL_FIRE_RL_pci_irq_rMMEnabled_clock_domain_crossing = 1'd1 ;

  // rule RL_connect_interrupt_mmenable
  assign CAN_FIRE_RL_connect_interrupt_mmenable = 1'd1 ;
  assign WILL_FIRE_RL_connect_interrupt_mmenable = 1'd1 ;

  // rule RL_plr
  assign CAN_FIRE_RL_plr = pci_pcie_ep$trn_lnk_up_n ;
  assign WILL_FIRE_RL_plr = pci_pcie_ep$trn_lnk_up_n ;

  // rule RL_pci_connect_trn_rx
  assign CAN_FIRE_RL_pci_connect_trn_rx = 1'd1 ;
  assign WILL_FIRE_RL_pci_connect_trn_rx = 1'd1 ;

  // rule RL_pci_connect_trn_tx
  assign CAN_FIRE_RL_pci_connect_trn_tx = 1'd1 ;
  assign WILL_FIRE_RL_pci_connect_trn_tx = 1'd1 ;

  // inlined wires
  assign pci_wTrnTxSof$wget = !fI2P$D_OUT[80] ;
  assign pci_pwTrnTx$whas = CAN_FIRE_RL_connect_1 ;
  assign pci_wTrnTxSof$whas = CAN_FIRE_RL_connect_1 ;
  assign pci_wTrnTxEof$wget = !fI2P$D_OUT[79] ;
  assign pci_wTrnTxEof$whas = CAN_FIRE_RL_connect_1 ;
  assign pci_wTrnTxDsc$wget = 1'd1 ;
  assign pci_wTrnTxDsc$whas = CAN_FIRE_RL_connect_1 ;
  assign pci_wTrnTxRem$wget = fI2P$D_OUT[71:64] ;
  assign pci_wTrnTxRem$whas = CAN_FIRE_RL_connect_1 ;
  assign pci_wTrnTxDat$wget = fI2P$D_OUT[63:0] ;
  assign pci_wTrnTxDat$whas = CAN_FIRE_RL_connect_1 ;
  assign pci_pwTrnRx$whas = CAN_FIRE_RL_connect ;
  assign pci_wTrnRxNpOk$wget = 1'd0 ;
  assign pci_wTrnRxNpOk$whas = 1'd1 ;
  assign pci_wTrnRxCplS$wget = 1'd1 ;
  assign pci_wTrnRxCplS$whas = 1'd1 ;
  assign pci_irq_wInterruptRdyN$wget = pci_pcie_ep$cfg_interrupt_rdy_n ;
  assign pci_irq_wInterruptRdyN$whas = 1'd1 ;
  assign pci_irq_wInterruptDo$wget = pci_pcie_ep$cfg_interrupt_do ;
  assign pci_irq_wInterruptDo$whas = 1'd1 ;

  // register pci_irq_rInterruptDi
  assign pci_irq_rInterruptDi$D_IN = pci_irq_fifoAssert$dD_OUT ;
  assign pci_irq_rInterruptDi$EN =
	     CAN_FIRE_RL_pci_irq_msi_enabled_assert_interrupt ;

  // register pci_irq_rInterruptN
  assign pci_irq_rInterruptN$D_IN =
	     !WILL_FIRE_RL_pci_irq_msi_enabled_assert_interrupt ;
  assign pci_irq_rInterruptN$EN =
	     WILL_FIRE_RL_pci_irq_msi_enabled_assert_interrupt ||
	     WILL_FIRE_RL_pci_irq_msi_enabled_assert_interrupt_done ;

  // register pci_irq_rInterrupting
  assign pci_irq_rInterrupting$D_IN =
	     !WILL_FIRE_RL_pci_irq_msi_enabled_assert_interrupt_done ;
  assign pci_irq_rInterrupting$EN =
	     WILL_FIRE_RL_pci_irq_msi_enabled_assert_interrupt_done ||
	     WILL_FIRE_RL_pci_irq_msi_enabled_assert_interrupt ;

  // register pci_irq_rMMEnabled
  assign pci_irq_rMMEnabled$D_IN = pci_pcie_ep$cfg_interrupt_mmenable ;
  assign pci_irq_rMMEnabled$EN = 1'd1 ;

  // register pci_irq_rMSIEnabled
  assign pci_irq_rMSIEnabled$D_IN = pci_pcie_ep$cfg_interrupt_msienable ;
  assign pci_irq_rMSIEnabled$EN = 1'd1 ;

  // submodule fI2P
  assign fI2P$DEQ = CAN_FIRE_RL_connect_1 ;
  assign fI2P$D_IN = 81'h0 ;
  assign fI2P$ENQ = 1'b0 ;
  assign fI2P$CLR = 1'b0 ;

  // submodule fP2I
  assign fP2I$D_IN =
	     { !pci_pcie_ep$trn_rsof_n,
	       !pci_pcie_ep$trn_reof_n,
	       ~pci_pcie_ep$trn_rbar_hit_n,
	       ~pci_pcie_ep$trn_rrem_n,
	       pci_pcie_ep$trn_rd } ;
  assign fP2I$ENQ = CAN_FIRE_RL_connect ;
  assign fP2I$DEQ = 1'b0 ;
  assign fP2I$CLR = 1'b0 ;

  // submodule pciLinkUpResetGen
  assign pciLinkUpResetGen$ASSERT_IN = pci_pcie_ep$trn_lnk_up_n ;

  // submodule pci_irq_fifoAssert
  assign pci_irq_fifoAssert$dDEQ =
	     CAN_FIRE_RL_pci_irq_msi_enabled_assert_interrupt ;
  assign pci_irq_fifoAssert$sD_IN = 8'h0 ;
  assign pci_irq_fifoAssert$sENQ = 1'b0 ;

  // submodule pci_irq_rMMEnabled_1
  assign pci_irq_rMMEnabled_1$WVAL = pci_irq_rMMEnabled ;

  // submodule pci_pcie_ep
  assign pci_pcie_ep$cfg_byte_en_n = 4'd15 ;
  assign pci_pcie_ep$cfg_di = 32'd0 ;
  assign pci_pcie_ep$cfg_dsn = 64'h0000000101000A35 ;
  assign pci_pcie_ep$cfg_dwaddr = 10'd0 ;
  assign pci_pcie_ep$cfg_err_cor_n = 1'd1 ;
  assign pci_pcie_ep$cfg_err_cpl_abort_n = 1'd1 ;
  assign pci_pcie_ep$cfg_err_cpl_timeout_n = 1'd1 ;
  assign pci_pcie_ep$cfg_err_cpl_unexpect_n = 1'd1 ;
  assign pci_pcie_ep$cfg_err_ecrc_n = 1'd1 ;
  assign pci_pcie_ep$cfg_err_locked_n = 1'd1 ;
  assign pci_pcie_ep$cfg_err_posted_n = 1'd1 ;
  assign pci_pcie_ep$cfg_err_tlp_cpl_header = 48'd0 ;
  assign pci_pcie_ep$cfg_err_ur_n = 1'd1 ;
  assign pci_pcie_ep$cfg_interrupt_di = pci_irq_rInterruptDi ;
  assign pci_pcie_ep$cfg_interrupt_assert_n = 1'd1 ;
  assign pci_pcie_ep$cfg_interrupt_n = pci_irq_rInterruptN ;
  assign pci_pcie_ep$cfg_pm_wake_n = 1'd1 ;
  assign pci_pcie_ep$cfg_rd_en_n = 1'd1 ;
  assign pci_pcie_ep$cfg_trn_pending_n = 1'd1 ;
  assign pci_pcie_ep$cfg_wr_en_n = 1'd1 ;
  assign pci_pcie_ep$pci_exp_rxn = pcie_rxn_i ;
  assign pci_pcie_ep$pci_exp_rxp = pcie_rxp_i ;
  assign pci_pcie_ep$trn_rcpl_streaming_n = 1'b1 ;
  assign pci_pcie_ep$trn_rdst_rdy_n = !CAN_FIRE_RL_connect ;
  assign pci_pcie_ep$trn_rnp_ok_n = 1'b0 ;
  assign pci_pcie_ep$trn_td =
	     CAN_FIRE_RL_connect_1 ? fI2P$D_OUT[63:0] : 64'h0 ;
  assign pci_pcie_ep$trn_teof_n = !CAN_FIRE_RL_connect_1 || !fI2P$D_OUT[79] ;
  assign pci_pcie_ep$trn_terrfwd_n = 1'd1 ;
  assign pci_pcie_ep$trn_trem_n =
	     CAN_FIRE_RL_connect_1 ? ~fI2P$D_OUT[71:64] : 8'd255 ;
  assign pci_pcie_ep$trn_tsof_n = !CAN_FIRE_RL_connect_1 || !fI2P$D_OUT[80] ;
  assign pci_pcie_ep$trn_tsrc_dsc_n = 1'b1 ;
  assign pci_pcie_ep$trn_tsrc_rdy_n = !CAN_FIRE_RL_connect_1 ;

  // remaining internal signals
  assign x__h4158 = !pci_pcie_ep$trn_lnk_up_n ;

  // handling of inlined registers

  always@(posedge pci_pcie_ep$trn_clk)
  begin
    if (!trn_rst_n$OUT_RST_N)
      begin
        pci_irq_rInterruptDi <= `BSV_ASSIGNMENT_DELAY 8'd0;
	pci_irq_rInterruptN <= `BSV_ASSIGNMENT_DELAY 1'd1;
	pci_irq_rInterrupting <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (pci_irq_rInterruptDi$EN)
	  pci_irq_rInterruptDi <= `BSV_ASSIGNMENT_DELAY
	      pci_irq_rInterruptDi$D_IN;
	if (pci_irq_rInterruptN$EN)
	  pci_irq_rInterruptN <= `BSV_ASSIGNMENT_DELAY
	      pci_irq_rInterruptN$D_IN;
	if (pci_irq_rInterrupting$EN)
	  pci_irq_rInterrupting <= `BSV_ASSIGNMENT_DELAY
	      pci_irq_rInterrupting$D_IN;
      end
    if (pci_irq_rMMEnabled$EN)
      pci_irq_rMMEnabled <= `BSV_ASSIGNMENT_DELAY pci_irq_rMMEnabled$D_IN;
    if (pci_irq_rMSIEnabled$EN)
      pci_irq_rMSIEnabled <= `BSV_ASSIGNMENT_DELAY pci_irq_rMSIEnabled$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    pci_irq_rInterruptDi = 8'hAA;
    pci_irq_rInterruptN = 1'h0;
    pci_irq_rInterrupting = 1'h0;
    pci_irq_rMMEnabled = 3'h2;
    pci_irq_rMSIEnabled = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkOPED
