//
// Generated by Bluespec Compiler, version 2012.01.A (build 26572, 2012-01-17)
//
// On Wed Sep 19 14:36:35 EDT 2012
//
//
// Ports:
// Name                         I/O  size props
// client_request_get             O    40
// RDY_client_request_get         O     1 reg
// RDY_client_response_put        O     1 reg
// gmRx                           O     1 reg
// RDY_gmRx                       O     1 const
// gmTx                           O     1 reg
// RDY_gmTx                       O     1 const
// gmii_tx_txd                    O     8
// gmii_tx_tx_en                  O     1
// gmii_tx_tx_er                  O     1
// gmii_led                       O     1 reg
// CLK_gmii_tx_tx_clk             O     1 clock
// CLK_GATE_gmii_tx_tx_clk        O     1 const
// CLK_rxclkBnd                   O     1 clock
// CLK_GATE_rxclkBnd              O     1 const
// RST_N_gmii_rstn                O     1 reset
// CLK_gmii_rx_clk                I     1 clock
// CLK_gmiixo_clk                 I     1 clock
// RST_N_gmiixo_rst               I     1 reset
// CLK                            I     1 clock
// RST_N                          I     1 reset
// client_response_put            I    40
// gmii_rx_rxd_i                  I     8 reg
// gmii_rx_rx_dv_i                I     1 reg
// gmii_rx_rx_er_i                I     1 reg
// gmii_col_i                     I     1
// gmii_crs_i                     I     1
// gmii_intr_i                    I     1
// EN_client_response_put         I     1
// EN_client_request_get          I     1
// mdio_mdd                      IO     1 inout
// mdio_mdc                      IO     1 inout
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module mkGbeQABS(CLK_gmii_rx_clk,
		 CLK_gmiixo_clk,
		 RST_N_gmiixo_rst,
		 CLK,
		 RST_N,

		 mdio_mdd,
		 mdio_mdc,

		 EN_client_request_get,
		 client_request_get,
		 RDY_client_request_get,

		 client_response_put,
		 EN_client_response_put,
		 RDY_client_response_put,

		 gmRx,
		 RDY_gmRx,

		 gmTx,
		 RDY_gmTx,

		 gmii_rx_rxd_i,

		 gmii_rx_rx_dv_i,

		 gmii_rx_rx_er_i,

		 gmii_tx_txd,

		 gmii_tx_tx_en,

		 gmii_tx_tx_er,

		 gmii_col_i,

		 gmii_crs_i,

		 gmii_intr_i,

		 gmii_led,

		 CLK_gmii_tx_tx_clk,
		 CLK_GATE_gmii_tx_tx_clk,

		 CLK_rxclkBnd,
		 CLK_GATE_rxclkBnd,

		 RST_N_gmii_rstn);
  parameter [0 : 0] hasDebugLogic = 1'b0;
  input  CLK_gmii_rx_clk;
  input  CLK_gmiixo_clk;
  input  RST_N_gmiixo_rst;
  input  CLK;
  input  RST_N;

  inout  mdio_mdd;
  inout  mdio_mdc;

  // actionvalue method client_request_get
  input  EN_client_request_get;
  output [39 : 0] client_request_get;
  output RDY_client_request_get;

  // action method client_response_put
  input  [39 : 0] client_response_put;
  input  EN_client_response_put;
  output RDY_client_response_put;

  // value method gmRx
  output gmRx;
  output RDY_gmRx;

  // value method gmTx
  output gmTx;
  output RDY_gmTx;

  // action method gmii_rx_rxd
  input  [7 : 0] gmii_rx_rxd_i;

  // action method gmii_rx_rx_dv
  input  gmii_rx_rx_dv_i;

  // action method gmii_rx_rx_er
  input  gmii_rx_rx_er_i;

  // value method gmii_tx_txd
  output [7 : 0] gmii_tx_txd;

  // value method gmii_tx_tx_en
  output gmii_tx_tx_en;

  // value method gmii_tx_tx_er
  output gmii_tx_tx_er;

  // action method gmii_col
  input  gmii_col_i;

  // action method gmii_crs
  input  gmii_crs_i;

  // action method gmii_intr
  input  gmii_intr_i;

  // value method gmii_led
  output gmii_led;

  // oscillator and gates for output clock CLK_gmii_tx_tx_clk
  output CLK_gmii_tx_tx_clk;
  output CLK_GATE_gmii_tx_tx_clk;

  // oscillator and gates for output clock CLK_rxclkBnd
  output CLK_rxclkBnd;
  output CLK_GATE_rxclkBnd;

  // output resets
  output RST_N_gmii_rstn;

  // signals for module outputs
  wire [39 : 0] client_request_get;
  wire [7 : 0] gmii_tx_txd;
  wire CLK_GATE_gmii_tx_tx_clk,
       CLK_GATE_rxclkBnd,
       CLK_gmii_tx_tx_clk,
       CLK_rxclkBnd,
       RDY_client_request_get,
       RDY_client_response_put,
       RDY_gmRx,
       RDY_gmTx,
       RST_N_gmii_rstn,
       gmRx,
       gmTx,
       gmii_led,
       gmii_tx_tx_en,
       gmii_tx_tx_er;

  // inlined wires
  wire ethEgress_1$wget,
       ethEgress_1$whas,
       ethIngress_1$wget,
       ethIngress_1$whas,
       mdi_pwTick$whas;

  // register ethEgress
  reg ethEgress;
  wire ethEgress$D_IN, ethEgress$EN;

  // register ethIngress
  reg ethIngress;
  wire ethIngress$D_IN, ethIngress$EN;

  // register gbeControl
  reg [31 : 0] gbeControl;
  wire [31 : 0] gbeControl$D_IN;
  wire gbeControl$EN;

  // register mdi_rMDC
  reg mdi_rMDC;
  wire mdi_rMDC$D_IN, mdi_rMDC$EN;

  // register mdi_rMDD
  reg mdi_rMDD;
  wire mdi_rMDD$D_IN, mdi_rMDD$EN;

  // register mdi_rOutEn
  reg mdi_rOutEn;
  wire mdi_rOutEn$D_IN, mdi_rOutEn$EN;

  // register mdi_rPhyAddr
  reg [4 : 0] mdi_rPhyAddr;
  wire [4 : 0] mdi_rPhyAddr$D_IN;
  wire mdi_rPhyAddr$EN;

  // register mdi_rRegAddr
  reg [4 : 0] mdi_rRegAddr;
  wire [4 : 0] mdi_rRegAddr$D_IN;
  wire mdi_rRegAddr$EN;

  // register mdi_rState
  reg mdi_rState;
  wire mdi_rState$D_IN, mdi_rState$EN;

  // register mdi_rWrite
  reg mdi_rWrite;
  wire mdi_rWrite$D_IN, mdi_rWrite$EN;

  // register mdi_rWriteData
  reg [15 : 0] mdi_rWriteData;
  wire [15 : 0] mdi_rWriteData$D_IN;
  wire mdi_rWriteData$EN;

  // register mdi_vrReadData
  reg mdi_vrReadData;
  wire mdi_vrReadData$D_IN, mdi_vrReadData$EN;

  // register mdi_vrReadData_1
  reg mdi_vrReadData_1;
  wire mdi_vrReadData_1$D_IN, mdi_vrReadData_1$EN;

  // register mdi_vrReadData_10
  reg mdi_vrReadData_10;
  wire mdi_vrReadData_10$D_IN, mdi_vrReadData_10$EN;

  // register mdi_vrReadData_11
  reg mdi_vrReadData_11;
  wire mdi_vrReadData_11$D_IN, mdi_vrReadData_11$EN;

  // register mdi_vrReadData_12
  reg mdi_vrReadData_12;
  wire mdi_vrReadData_12$D_IN, mdi_vrReadData_12$EN;

  // register mdi_vrReadData_13
  reg mdi_vrReadData_13;
  wire mdi_vrReadData_13$D_IN, mdi_vrReadData_13$EN;

  // register mdi_vrReadData_14
  reg mdi_vrReadData_14;
  wire mdi_vrReadData_14$D_IN, mdi_vrReadData_14$EN;

  // register mdi_vrReadData_15
  reg mdi_vrReadData_15;
  wire mdi_vrReadData_15$D_IN, mdi_vrReadData_15$EN;

  // register mdi_vrReadData_2
  reg mdi_vrReadData_2;
  wire mdi_vrReadData_2$D_IN, mdi_vrReadData_2$EN;

  // register mdi_vrReadData_3
  reg mdi_vrReadData_3;
  wire mdi_vrReadData_3$D_IN, mdi_vrReadData_3$EN;

  // register mdi_vrReadData_4
  reg mdi_vrReadData_4;
  wire mdi_vrReadData_4$D_IN, mdi_vrReadData_4$EN;

  // register mdi_vrReadData_5
  reg mdi_vrReadData_5;
  wire mdi_vrReadData_5$D_IN, mdi_vrReadData_5$EN;

  // register mdi_vrReadData_6
  reg mdi_vrReadData_6;
  wire mdi_vrReadData_6$D_IN, mdi_vrReadData_6$EN;

  // register mdi_vrReadData_7
  reg mdi_vrReadData_7;
  wire mdi_vrReadData_7$D_IN, mdi_vrReadData_7$EN;

  // register mdi_vrReadData_8
  reg mdi_vrReadData_8;
  wire mdi_vrReadData_8$D_IN, mdi_vrReadData_8$EN;

  // register mdi_vrReadData_9
  reg mdi_vrReadData_9;
  wire mdi_vrReadData_9$D_IN, mdi_vrReadData_9$EN;

  // register phyMdiInit
  reg phyMdiInit;
  wire phyMdiInit$D_IN, phyMdiInit$EN;

  // register phyResetWaitCnt
  reg [24 : 0] phyResetWaitCnt;
  wire [24 : 0] phyResetWaitCnt$D_IN;
  wire phyResetWaitCnt$EN;

  // register rxCount
  reg [31 : 0] rxCount;
  wire [31 : 0] rxCount$D_IN;
  wire rxCount$EN;

  // register rxOvfCount
  reg [31 : 0] rxOvfCount;
  wire [31 : 0] rxOvfCount$D_IN;
  wire rxOvfCount$EN;

  // register splitReadInFlight
  reg splitReadInFlight;
  wire splitReadInFlight$D_IN, splitReadInFlight$EN;

  // register txCount
  reg [31 : 0] txCount;
  wire [31 : 0] txCount$D_IN;
  wire txCount$EN;

  // register txUndCount
  reg [31 : 0] txUndCount;
  wire [31 : 0] txUndCount$D_IN;
  wire txUndCount$EN;

  // ports of submodule eReqF
  wire [39 : 0] eReqF$D_IN, eReqF$D_OUT;
  wire eReqF$CLR, eReqF$DEQ, eReqF$EMPTY_N, eReqF$ENQ, eReqF$FULL_N;

  // ports of submodule eRespF
  wire [39 : 0] eRespF$D_IN, eRespF$D_OUT;
  wire eRespF$CLR, eRespF$DEQ, eRespF$EMPTY_N, eRespF$ENQ, eRespF$FULL_N;

  // ports of submodule gmac
  wire [39 : 0] gmac$rx_get, gmac$tx_put;
  wire [7 : 0] gmac$gmii_rx_rxd_i, gmac$gmii_tx_txd;
  wire gmac$CLK_gmii_tx_tx_clk,
       gmac$CLK_rxclkBnd,
       gmac$EN_rxOperate,
       gmac$EN_rx_get,
       gmac$EN_txOperate,
       gmac$EN_tx_put,
       gmac$RDY_rx_get,
       gmac$RDY_tx_put,
       gmac$gmii_col_i,
       gmac$gmii_crs_i,
       gmac$gmii_intr_i,
       gmac$gmii_led,
       gmac$gmii_rx_rx_dv_i,
       gmac$gmii_rx_rx_er_i,
       gmac$gmii_tx_tx_en,
       gmac$gmii_tx_tx_er,
       gmac$rxOverFlow,
       gmac$txUnderFlow;

  // ports of submodule mdi_fRequest
  wire [26 : 0] mdi_fRequest$D_IN, mdi_fRequest$D_OUT;
  wire mdi_fRequest$CLR,
       mdi_fRequest$DEQ,
       mdi_fRequest$EMPTY_N,
       mdi_fRequest$ENQ,
       mdi_fRequest$FULL_N;

  // ports of submodule mdi_fResponse
  wire [16 : 0] mdi_fResponse$D_IN;
  wire mdi_fResponse$CLR,
       mdi_fResponse$DEQ,
       mdi_fResponse$ENQ,
       mdi_fResponse$FULL_N;

  // ports of submodule mdi_rPlayIndex
  wire [7 : 0] mdi_rPlayIndex$DATA_A,
	       mdi_rPlayIndex$DATA_B,
	       mdi_rPlayIndex$DATA_C,
	       mdi_rPlayIndex$DATA_F,
	       mdi_rPlayIndex$Q_OUT;
  wire mdi_rPlayIndex$ADDA,
       mdi_rPlayIndex$ADDB,
       mdi_rPlayIndex$SETC,
       mdi_rPlayIndex$SETF;

  // ports of submodule mdi_rPrescaler
  wire [3 : 0] mdi_rPrescaler$DATA_A,
	       mdi_rPrescaler$DATA_B,
	       mdi_rPrescaler$DATA_C,
	       mdi_rPrescaler$DATA_F,
	       mdi_rPrescaler$Q_OUT;
  wire mdi_rPrescaler$ADDA,
       mdi_rPrescaler$ADDB,
       mdi_rPrescaler$SETC,
       mdi_rPrescaler$SETF;

  // ports of submodule mdi_tMDC
  wire mdi_tMDC$IO;

  // ports of submodule mdi_tMDD
  wire mdi_tMDD$IO, mdi_tMDD$O;

  // ports of submodule phyRst
  wire phyRst$ASSERT_IN, phyRst$OUT_RST_N;

  // rule scheduling signals
  wire WILL_FIRE_RL_mdi_run_frame;

  // inputs to muxes for submodule ports
  wire MUX_mdi_rState$write_1__SEL_1, MUX_mdi_rState$write_1__SEL_2;

  // remaining internal signals
  reg [1 : 0] CASE_client_response_put_BITS_19_TO_18_3_0_cli_ETC__q15,
	      CASE_client_response_put_BITS_29_TO_28_3_0_cli_ETC__q14,
	      CASE_client_response_put_BITS_39_TO_38_3_0_cli_ETC__q13,
	      CASE_client_response_put_BITS_9_TO_8_3_0_clien_ETC__q16,
	      CASE_eReqFD_OUT_BITS_19_TO_18_3_0_eReqFD_OUT_ETC__q3,
	      CASE_eReqFD_OUT_BITS_29_TO_28_3_0_eReqFD_OUT_ETC__q2,
	      CASE_eReqFD_OUT_BITS_39_TO_38_3_0_eReqFD_OUT_ETC__q1,
	      CASE_eReqFD_OUT_BITS_9_TO_8_3_0_eReqFD_OUT_B_ETC__q4,
	      CASE_eRespFD_OUT_BITS_19_TO_18_3_0_eRespFD_O_ETC__q7,
	      CASE_eRespFD_OUT_BITS_29_TO_28_3_0_eRespFD_O_ETC__q6,
	      CASE_eRespFD_OUT_BITS_39_TO_38_3_0_eRespFD_O_ETC__q5,
	      CASE_eRespFD_OUT_BITS_9_TO_8_3_0_eRespFD_OUT_ETC__q8,
	      CASE_gmacrx_get_BITS_19_TO_18_3_0_gmacrx_get_ETC__q11,
	      CASE_gmacrx_get_BITS_29_TO_28_3_0_gmacrx_get_ETC__q10,
	      CASE_gmacrx_get_BITS_39_TO_38_3_0_gmacrx_get_ETC__q9,
	      CASE_gmacrx_get_BITS_9_TO_8_3_0_gmacrx_get_B_ETC__q12;
  wire [194 : 0] _1434766110945527031733894725304609466537681244_ETC__q17,
		 _643371375338640__q18,
		 bs__h14890,
		 bs__h2365;
  wire [15 : 0] x_data__h18088;
  wire [2 : 0] d0__h1991,
	       d10__h1981,
	       d11__h1980,
	       d12__h1979,
	       d13__h1978,
	       d14__h1977,
	       d15__h1976,
	       d1__h1990,
	       d2__h1989,
	       d3__h1988,
	       d4__h1987,
	       d5__h1986,
	       d6__h1985,
	       d7__h1984,
	       d8__h1983,
	       d9__h1982,
	       pa0__h1968,
	       pa1__h1967,
	       pa2__h1966,
	       pa3__h1965,
	       pa4__h1964,
	       ra0__h1974,
	       ra1__h1973,
	       ra2__h1972,
	       ra3__h1971,
	       ra4__h1970;

  // oscillator and gates for output clock CLK_gmii_tx_tx_clk
  assign CLK_gmii_tx_tx_clk = gmac$CLK_gmii_tx_tx_clk ;
  assign CLK_GATE_gmii_tx_tx_clk = 1'b1 ;

  // oscillator and gates for output clock CLK_rxclkBnd
  assign CLK_rxclkBnd = gmac$CLK_rxclkBnd ;
  assign CLK_GATE_rxclkBnd = 1'b1 ;

  // output resets
  assign RST_N_gmii_rstn = phyRst$OUT_RST_N ;

  // actionvalue method client_request_get
  assign client_request_get =
	     { CASE_eReqFD_OUT_BITS_39_TO_38_3_0_eReqFD_OUT_ETC__q1,
	       eReqF$D_OUT[37:30],
	       CASE_eReqFD_OUT_BITS_29_TO_28_3_0_eReqFD_OUT_ETC__q2,
	       eReqF$D_OUT[27:20],
	       CASE_eReqFD_OUT_BITS_19_TO_18_3_0_eReqFD_OUT_ETC__q3,
	       eReqF$D_OUT[17:10],
	       CASE_eReqFD_OUT_BITS_9_TO_8_3_0_eReqFD_OUT_B_ETC__q4,
	       eReqF$D_OUT[7:0] } ;
  assign RDY_client_request_get = eReqF$EMPTY_N ;

  // action method client_response_put
  assign RDY_client_response_put = eRespF$FULL_N ;

  // value method gmRx
  assign gmRx = ethIngress ;
  assign RDY_gmRx = 1'd1 ;

  // value method gmTx
  assign gmTx = ethEgress ;
  assign RDY_gmTx = 1'd1 ;

  // value method gmii_tx_txd
  assign gmii_tx_txd = gmac$gmii_tx_txd ;

  // value method gmii_tx_tx_en
  assign gmii_tx_tx_en = gmac$gmii_tx_tx_en ;

  // value method gmii_tx_tx_er
  assign gmii_tx_tx_er = gmac$gmii_tx_tx_er ;

  // value method gmii_led
  assign gmii_led = gmac$gmii_led ;

  // submodule eReqF
  FIFO2 #(.width(32'd40), .guarded(32'd1)) eReqF(.RST_N(RST_N),
						 .CLK(CLK),
						 .D_IN(eReqF$D_IN),
						 .ENQ(eReqF$ENQ),
						 .DEQ(eReqF$DEQ),
						 .CLR(eReqF$CLR),
						 .D_OUT(eReqF$D_OUT),
						 .FULL_N(eReqF$FULL_N),
						 .EMPTY_N(eReqF$EMPTY_N));

  // submodule eRespF
  FIFO2 #(.width(32'd40), .guarded(32'd1)) eRespF(.RST_N(RST_N),
						  .CLK(CLK),
						  .D_IN(eRespF$D_IN),
						  .ENQ(eRespF$ENQ),
						  .DEQ(eRespF$DEQ),
						  .CLR(eRespF$CLR),
						  .D_OUT(eRespF$D_OUT),
						  .FULL_N(eRespF$FULL_N),
						  .EMPTY_N(eRespF$EMPTY_N));

  // submodule gmac
  mkQBGMAC gmac(.CLK_rxClk(CLK_gmii_rx_clk),
		.CLK_txClk(CLK_gmiixo_clk),
		.RST_N_gmRst(RST_N_gmiixo_rst),
		.CLK(CLK),
		.RST_N(RST_N),
		.gmii_col_i(gmac$gmii_col_i),
		.gmii_crs_i(gmac$gmii_crs_i),
		.gmii_intr_i(gmac$gmii_intr_i),
		.gmii_rx_rx_dv_i(gmac$gmii_rx_rx_dv_i),
		.gmii_rx_rx_er_i(gmac$gmii_rx_rx_er_i),
		.gmii_rx_rxd_i(gmac$gmii_rx_rxd_i),
		.tx_put(gmac$tx_put),
		.EN_rx_get(gmac$EN_rx_get),
		.EN_tx_put(gmac$EN_tx_put),
		.EN_rxOperate(gmac$EN_rxOperate),
		.EN_txOperate(gmac$EN_txOperate),
		.gmii_tx_txd(gmac$gmii_tx_txd),
		.gmii_tx_tx_en(gmac$gmii_tx_tx_en),
		.gmii_tx_tx_er(gmac$gmii_tx_tx_er),
		.gmii_led(gmac$gmii_led),
		.rx_get(gmac$rx_get),
		.RDY_rx_get(gmac$RDY_rx_get),
		.RDY_tx_put(gmac$RDY_tx_put),
		.RDY_rxOperate(),
		.RDY_txOperate(),
		.rxOverFlow(gmac$rxOverFlow),
		.RDY_rxOverFlow(),
		.txUnderFlow(gmac$txUnderFlow),
		.RDY_txUnderFlow(),
		.phyInterrupt(),
		.RDY_phyInterrupt(),
		.CLK_gmii_tx_tx_clk(gmac$CLK_gmii_tx_tx_clk),
		.CLK_GATE_gmii_tx_tx_clk(),
		.CLK_rxclkBnd(gmac$CLK_rxclkBnd),
		.CLK_GATE_rxclkBnd());

  // submodule mdi_fRequest
  FIFO2 #(.width(32'd27), .guarded(32'd1)) mdi_fRequest(.RST_N(RST_N),
							.CLK(CLK),
							.D_IN(mdi_fRequest$D_IN),
							.ENQ(mdi_fRequest$ENQ),
							.DEQ(mdi_fRequest$DEQ),
							.CLR(mdi_fRequest$CLR),
							.D_OUT(mdi_fRequest$D_OUT),
							.FULL_N(mdi_fRequest$FULL_N),
							.EMPTY_N(mdi_fRequest$EMPTY_N));

  // submodule mdi_fResponse
  FIFO2 #(.width(32'd17), .guarded(32'd1)) mdi_fResponse(.RST_N(RST_N),
							 .CLK(CLK),
							 .D_IN(mdi_fResponse$D_IN),
							 .ENQ(mdi_fResponse$ENQ),
							 .DEQ(mdi_fResponse$DEQ),
							 .CLR(mdi_fResponse$CLR),
							 .D_OUT(),
							 .FULL_N(mdi_fResponse$FULL_N),
							 .EMPTY_N());

  // submodule mdi_rPlayIndex
  Counter #(.width(32'd8), .init(8'd0)) mdi_rPlayIndex(.CLK(CLK),
						       .RST_N(RST_N),
						       .DATA_A(mdi_rPlayIndex$DATA_A),
						       .DATA_B(mdi_rPlayIndex$DATA_B),
						       .DATA_C(mdi_rPlayIndex$DATA_C),
						       .DATA_F(mdi_rPlayIndex$DATA_F),
						       .ADDA(mdi_rPlayIndex$ADDA),
						       .ADDB(mdi_rPlayIndex$ADDB),
						       .SETC(mdi_rPlayIndex$SETC),
						       .SETF(mdi_rPlayIndex$SETF),
						       .Q_OUT(mdi_rPlayIndex$Q_OUT));

  // submodule mdi_rPrescaler
  Counter #(.width(32'd4), .init(4'd6)) mdi_rPrescaler(.CLK(CLK),
						       .RST_N(RST_N),
						       .DATA_A(mdi_rPrescaler$DATA_A),
						       .DATA_B(mdi_rPrescaler$DATA_B),
						       .DATA_C(mdi_rPrescaler$DATA_C),
						       .DATA_F(mdi_rPrescaler$DATA_F),
						       .ADDA(mdi_rPrescaler$ADDA),
						       .ADDB(mdi_rPrescaler$ADDB),
						       .SETC(mdi_rPrescaler$SETC),
						       .SETF(mdi_rPrescaler$SETF),
						       .Q_OUT(mdi_rPrescaler$Q_OUT));

  // submodule mdi_tMDC
  TriState #(.width(32'd1)) mdi_tMDC(.I(mdi_rMDC),
				     .OE(1'd1),
				     .O(),
				     .IO(mdio_mdc));

  // submodule mdi_tMDD
  TriState #(.width(32'd1)) mdi_tMDD(.I(mdi_rMDD),
				     .OE(mdi_rOutEn),
				     .O(mdi_tMDD$O),
				     .IO(mdio_mdd));

  // submodule phyRst
  MakeResetA #(.RSTDELAY(32'd16), .init(1'd0)) phyRst(.CLK(CLK),
						      .RST_N(RST_N),
						      .DST_CLK(CLK),
						      .ASSERT_IN(phyRst$ASSERT_IN),
						      .ASSERT_OUT(),
						      .OUT_RST_N(phyRst$OUT_RST_N));

  // rule RL_mdi_run_frame
  assign WILL_FIRE_RL_mdi_run_frame =
	     (mdi_rPlayIndex$Q_OUT != 8'd0 || mdi_rWrite ||
	      mdi_fResponse$FULL_N) &&
	     mdi_rState &&
	     mdi_rPrescaler$Q_OUT == 4'd0 ;

  // inputs to muxes for submodule ports
  assign MUX_mdi_rState$write_1__SEL_1 =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT == 8'd0 ;
  assign MUX_mdi_rState$write_1__SEL_2 = mdi_fRequest$EMPTY_N && !mdi_rState ;

  // inlined wires
  assign ethIngress_1$wget = 1'd1 ;
  assign ethIngress_1$whas = gmac$RDY_rx_get && eReqF$FULL_N ;
  assign ethEgress_1$wget = 1'd1 ;
  assign ethEgress_1$whas = gmac$RDY_tx_put && eRespF$EMPTY_N ;
  assign mdi_pwTick$whas = mdi_rPrescaler$Q_OUT == 4'd0 ;

  // register ethEgress
  assign ethEgress$D_IN = ethEgress_1$whas ;
  assign ethEgress$EN = 1'd1 ;

  // register ethIngress
  assign ethIngress$D_IN = ethIngress_1$whas ;
  assign ethIngress$EN = 1'd1 ;

  // register gbeControl
  assign gbeControl$D_IN = 32'h0 ;
  assign gbeControl$EN = 1'b0 ;

  // register mdi_rMDC
  assign mdi_rMDC$D_IN =
	     _1434766110945527031733894725304609466537681244_ETC__q17[mdi_rPlayIndex$Q_OUT] ;
  assign mdi_rMDC$EN = WILL_FIRE_RL_mdi_run_frame ;

  // register mdi_rMDD
  assign mdi_rMDD$D_IN = bs__h2365[mdi_rPlayIndex$Q_OUT] ;
  assign mdi_rMDD$EN = WILL_FIRE_RL_mdi_run_frame ;

  // register mdi_rOutEn
  assign mdi_rOutEn$D_IN = bs__h14890[mdi_rPlayIndex$Q_OUT] ;
  assign mdi_rOutEn$EN = WILL_FIRE_RL_mdi_run_frame ;

  // register mdi_rPhyAddr
  assign mdi_rPhyAddr$D_IN = mdi_fRequest$D_OUT[25:21] ;
  assign mdi_rPhyAddr$EN = MUX_mdi_rState$write_1__SEL_2 ;

  // register mdi_rRegAddr
  assign mdi_rRegAddr$D_IN = mdi_fRequest$D_OUT[20:16] ;
  assign mdi_rRegAddr$EN = MUX_mdi_rState$write_1__SEL_2 ;

  // register mdi_rState
  assign mdi_rState$D_IN = !MUX_mdi_rState$write_1__SEL_1 ;
  assign mdi_rState$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT == 8'd0 ||
	     mdi_fRequest$EMPTY_N && !mdi_rState ;

  // register mdi_rWrite
  assign mdi_rWrite$D_IN = mdi_fRequest$D_OUT[26] ;
  assign mdi_rWrite$EN = MUX_mdi_rState$write_1__SEL_2 ;

  // register mdi_rWriteData
  assign mdi_rWriteData$D_IN = mdi_fRequest$D_OUT[15:0] ;
  assign mdi_rWriteData$EN = MUX_mdi_rState$write_1__SEL_2 ;

  // register mdi_vrReadData
  assign mdi_vrReadData$D_IN = mdi_tMDD$O ;
  assign mdi_vrReadData$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT != 8'd0 &&
	     !mdi_rWrite &&
	     _643371375338640__q18[mdi_rPlayIndex$Q_OUT] ;

  // register mdi_vrReadData_1
  assign mdi_vrReadData_1$D_IN = mdi_vrReadData ;
  assign mdi_vrReadData_1$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT != 8'd0 &&
	     !mdi_rWrite &&
	     _643371375338640__q18[mdi_rPlayIndex$Q_OUT] ;

  // register mdi_vrReadData_10
  assign mdi_vrReadData_10$D_IN = mdi_vrReadData_9 ;
  assign mdi_vrReadData_10$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT != 8'd0 &&
	     !mdi_rWrite &&
	     _643371375338640__q18[mdi_rPlayIndex$Q_OUT] ;

  // register mdi_vrReadData_11
  assign mdi_vrReadData_11$D_IN = mdi_vrReadData_10 ;
  assign mdi_vrReadData_11$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT != 8'd0 &&
	     !mdi_rWrite &&
	     _643371375338640__q18[mdi_rPlayIndex$Q_OUT] ;

  // register mdi_vrReadData_12
  assign mdi_vrReadData_12$D_IN = mdi_vrReadData_11 ;
  assign mdi_vrReadData_12$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT != 8'd0 &&
	     !mdi_rWrite &&
	     _643371375338640__q18[mdi_rPlayIndex$Q_OUT] ;

  // register mdi_vrReadData_13
  assign mdi_vrReadData_13$D_IN = mdi_vrReadData_12 ;
  assign mdi_vrReadData_13$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT != 8'd0 &&
	     !mdi_rWrite &&
	     _643371375338640__q18[mdi_rPlayIndex$Q_OUT] ;

  // register mdi_vrReadData_14
  assign mdi_vrReadData_14$D_IN = mdi_vrReadData_13 ;
  assign mdi_vrReadData_14$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT != 8'd0 &&
	     !mdi_rWrite &&
	     _643371375338640__q18[mdi_rPlayIndex$Q_OUT] ;

  // register mdi_vrReadData_15
  assign mdi_vrReadData_15$D_IN = mdi_vrReadData_14 ;
  assign mdi_vrReadData_15$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT != 8'd0 &&
	     !mdi_rWrite &&
	     _643371375338640__q18[mdi_rPlayIndex$Q_OUT] ;

  // register mdi_vrReadData_2
  assign mdi_vrReadData_2$D_IN = mdi_vrReadData_1 ;
  assign mdi_vrReadData_2$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT != 8'd0 &&
	     !mdi_rWrite &&
	     _643371375338640__q18[mdi_rPlayIndex$Q_OUT] ;

  // register mdi_vrReadData_3
  assign mdi_vrReadData_3$D_IN = mdi_vrReadData_2 ;
  assign mdi_vrReadData_3$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT != 8'd0 &&
	     !mdi_rWrite &&
	     _643371375338640__q18[mdi_rPlayIndex$Q_OUT] ;

  // register mdi_vrReadData_4
  assign mdi_vrReadData_4$D_IN = mdi_vrReadData_3 ;
  assign mdi_vrReadData_4$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT != 8'd0 &&
	     !mdi_rWrite &&
	     _643371375338640__q18[mdi_rPlayIndex$Q_OUT] ;

  // register mdi_vrReadData_5
  assign mdi_vrReadData_5$D_IN = mdi_vrReadData_4 ;
  assign mdi_vrReadData_5$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT != 8'd0 &&
	     !mdi_rWrite &&
	     _643371375338640__q18[mdi_rPlayIndex$Q_OUT] ;

  // register mdi_vrReadData_6
  assign mdi_vrReadData_6$D_IN = mdi_vrReadData_5 ;
  assign mdi_vrReadData_6$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT != 8'd0 &&
	     !mdi_rWrite &&
	     _643371375338640__q18[mdi_rPlayIndex$Q_OUT] ;

  // register mdi_vrReadData_7
  assign mdi_vrReadData_7$D_IN = mdi_vrReadData_6 ;
  assign mdi_vrReadData_7$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT != 8'd0 &&
	     !mdi_rWrite &&
	     _643371375338640__q18[mdi_rPlayIndex$Q_OUT] ;

  // register mdi_vrReadData_8
  assign mdi_vrReadData_8$D_IN = mdi_vrReadData_7 ;
  assign mdi_vrReadData_8$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT != 8'd0 &&
	     !mdi_rWrite &&
	     _643371375338640__q18[mdi_rPlayIndex$Q_OUT] ;

  // register mdi_vrReadData_9
  assign mdi_vrReadData_9$D_IN = mdi_vrReadData_8 ;
  assign mdi_vrReadData_9$EN =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT != 8'd0 &&
	     !mdi_rWrite &&
	     _643371375338640__q18[mdi_rPlayIndex$Q_OUT] ;

  // register phyMdiInit
  assign phyMdiInit$D_IN = 1'd1 ;
  assign phyMdiInit$EN =
	     mdi_fRequest$FULL_N && phyResetWaitCnt == 25'd0 && !phyMdiInit ;

  // register phyResetWaitCnt
  assign phyResetWaitCnt$D_IN =
	     gbeControl[31] ?
	       25'd753125 :
	       (((phyResetWaitCnt ^ 25'h1000000) <= 25'd16777216) ?
		  25'd0 :
		  phyResetWaitCnt - 25'd1) ;
  assign phyResetWaitCnt$EN = 1'd1 ;

  // register rxCount
  assign rxCount$D_IN = rxCount + 32'd1 ;
  assign rxCount$EN = ethIngress_1$whas ;

  // register rxOvfCount
  assign rxOvfCount$D_IN = rxOvfCount + 32'd1 ;
  assign rxOvfCount$EN = gmac$rxOverFlow ;

  // register splitReadInFlight
  assign splitReadInFlight$D_IN = 1'b0 ;
  assign splitReadInFlight$EN = 1'b0 ;

  // register txCount
  assign txCount$D_IN = txCount + 32'd1 ;
  assign txCount$EN = ethEgress_1$whas ;

  // register txUndCount
  assign txUndCount$D_IN = txUndCount + 32'd1 ;
  assign txUndCount$EN = gmac$txUnderFlow ;

  // submodule eReqF
  assign eReqF$D_IN =
	     { CASE_gmacrx_get_BITS_39_TO_38_3_0_gmacrx_get_ETC__q9,
	       gmac$rx_get[37:30],
	       CASE_gmacrx_get_BITS_29_TO_28_3_0_gmacrx_get_ETC__q10,
	       gmac$rx_get[27:20],
	       CASE_gmacrx_get_BITS_19_TO_18_3_0_gmacrx_get_ETC__q11,
	       gmac$rx_get[17:10],
	       CASE_gmacrx_get_BITS_9_TO_8_3_0_gmacrx_get_B_ETC__q12,
	       gmac$rx_get[7:0] } ;
  assign eReqF$ENQ = ethIngress_1$whas ;
  assign eReqF$DEQ = EN_client_request_get ;
  assign eReqF$CLR = 1'b0 ;

  // submodule eRespF
  assign eRespF$D_IN =
	     { CASE_client_response_put_BITS_39_TO_38_3_0_cli_ETC__q13,
	       client_response_put[37:30],
	       CASE_client_response_put_BITS_29_TO_28_3_0_cli_ETC__q14,
	       client_response_put[27:20],
	       CASE_client_response_put_BITS_19_TO_18_3_0_cli_ETC__q15,
	       client_response_put[17:10],
	       CASE_client_response_put_BITS_9_TO_8_3_0_clien_ETC__q16,
	       client_response_put[7:0] } ;
  assign eRespF$ENQ = EN_client_response_put ;
  assign eRespF$DEQ = ethEgress_1$whas ;
  assign eRespF$CLR = 1'b0 ;

  // submodule gmac
  assign gmac$gmii_col_i = gmii_col_i ;
  assign gmac$gmii_crs_i = gmii_crs_i ;
  assign gmac$gmii_intr_i = gmii_intr_i ;
  assign gmac$gmii_rx_rx_dv_i = gmii_rx_rx_dv_i ;
  assign gmac$gmii_rx_rx_er_i = gmii_rx_rx_er_i ;
  assign gmac$gmii_rx_rxd_i = gmii_rx_rxd_i ;
  assign gmac$tx_put =
	     { CASE_eRespFD_OUT_BITS_39_TO_38_3_0_eRespFD_O_ETC__q5,
	       eRespF$D_OUT[37:30],
	       CASE_eRespFD_OUT_BITS_29_TO_28_3_0_eRespFD_O_ETC__q6,
	       eRespF$D_OUT[27:20],
	       CASE_eRespFD_OUT_BITS_19_TO_18_3_0_eRespFD_O_ETC__q7,
	       eRespF$D_OUT[17:10],
	       CASE_eRespFD_OUT_BITS_9_TO_8_3_0_eRespFD_OUT_ETC__q8,
	       eRespF$D_OUT[7:0] } ;
  assign gmac$EN_rx_get = gmac$RDY_rx_get && eReqF$FULL_N ;
  assign gmac$EN_tx_put = gmac$RDY_tx_put && eRespF$EMPTY_N ;
  assign gmac$EN_rxOperate = phyMdiInit ;
  assign gmac$EN_txOperate = phyMdiInit ;

  // submodule mdi_fRequest
  assign mdi_fRequest$D_IN = { 1'd1, gbeControl[4:0], 21'd1890288 } ;
  assign mdi_fRequest$ENQ =
	     mdi_fRequest$FULL_N && phyResetWaitCnt == 25'd0 && !phyMdiInit ;
  assign mdi_fRequest$DEQ = MUX_mdi_rState$write_1__SEL_2 ;
  assign mdi_fRequest$CLR = 1'b0 ;

  // submodule mdi_fResponse
  assign mdi_fResponse$D_IN = { 1'd1, x_data__h18088 } ;
  assign mdi_fResponse$ENQ =
	     WILL_FIRE_RL_mdi_run_frame && mdi_rPlayIndex$Q_OUT == 8'd0 &&
	     !mdi_rWrite ;
  assign mdi_fResponse$DEQ = 1'b0 ;
  assign mdi_fResponse$CLR = 1'b0 ;

  // submodule mdi_rPlayIndex
  assign mdi_rPlayIndex$DATA_A = 8'h0 ;
  assign mdi_rPlayIndex$DATA_B = 8'd255 ;
  assign mdi_rPlayIndex$DATA_C = 8'h0 ;
  assign mdi_rPlayIndex$DATA_F = 8'd194 ;
  assign mdi_rPlayIndex$ADDA = 1'b0 ;
  assign mdi_rPlayIndex$ADDB = WILL_FIRE_RL_mdi_run_frame ;
  assign mdi_rPlayIndex$SETC = 1'b0 ;
  assign mdi_rPlayIndex$SETF = MUX_mdi_rState$write_1__SEL_2 ;

  // submodule mdi_rPrescaler
  assign mdi_rPrescaler$DATA_A = 4'h0 ;
  assign mdi_rPrescaler$DATA_B = 4'd15 ;
  assign mdi_rPrescaler$DATA_C = 4'h0 ;
  assign mdi_rPrescaler$DATA_F = 4'd6 ;
  assign mdi_rPrescaler$ADDA = 1'b0 ;
  assign mdi_rPrescaler$ADDB = mdi_rPrescaler$Q_OUT != 4'd0 ;
  assign mdi_rPrescaler$SETC = 1'b0 ;
  assign mdi_rPrescaler$SETF = mdi_rPrescaler$Q_OUT == 4'd0 ;

  // submodule phyRst
  assign phyRst$ASSERT_IN = (phyResetWaitCnt ^ 25'h1000000) > 25'd17527216 ;

  // remaining internal signals
  assign _1434766110945527031733894725304609466537681244_ETC__q17 =
	     195'h2492492492492492492492492492492492492492492492492 ;
  assign _643371375338640__q18 =
	     195'h0000000000000000000000000000000000002492492492490 ;
  assign bs__h14890 =
	     mdi_rWrite ?
	       195'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8 :
	       195'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000 ;
  assign bs__h2365 =
	     { mdi_rWrite ?
		 108'hFFFFFFFFFFFFFFFFFFFFFFFF1C7 :
		 108'hFFFFFFFFFFFFFFFFFFFFFFFF1F8,
	       pa4__h1964,
	       pa3__h1965,
	       pa2__h1966,
	       pa1__h1967,
	       pa0__h1968,
	       ra4__h1970,
	       ra3__h1971,
	       ra2__h1972,
	       ra1__h1973,
	       ra0__h1974,
	       6'd56,
	       d15__h1976,
	       d14__h1977,
	       d13__h1978,
	       d12__h1979,
	       d11__h1980,
	       d10__h1981,
	       d9__h1982,
	       d8__h1983,
	       d7__h1984,
	       d6__h1985,
	       d5__h1986,
	       d4__h1987,
	       d3__h1988,
	       d2__h1989,
	       d1__h1990,
	       d0__h1991,
	       3'b111 } ;
  assign d0__h1991 = {3{mdi_rWriteData[0]}} ;
  assign d10__h1981 = {3{mdi_rWriteData[10]}} ;
  assign d11__h1980 = {3{mdi_rWriteData[11]}} ;
  assign d12__h1979 = {3{mdi_rWriteData[12]}} ;
  assign d13__h1978 = {3{mdi_rWriteData[13]}} ;
  assign d14__h1977 = {3{mdi_rWriteData[14]}} ;
  assign d15__h1976 = {3{mdi_rWriteData[15]}} ;
  assign d1__h1990 = {3{mdi_rWriteData[1]}} ;
  assign d2__h1989 = {3{mdi_rWriteData[2]}} ;
  assign d3__h1988 = {3{mdi_rWriteData[3]}} ;
  assign d4__h1987 = {3{mdi_rWriteData[4]}} ;
  assign d5__h1986 = {3{mdi_rWriteData[5]}} ;
  assign d6__h1985 = {3{mdi_rWriteData[6]}} ;
  assign d7__h1984 = {3{mdi_rWriteData[7]}} ;
  assign d8__h1983 = {3{mdi_rWriteData[8]}} ;
  assign d9__h1982 = {3{mdi_rWriteData[9]}} ;
  assign pa0__h1968 = {3{mdi_rPhyAddr[0]}} ;
  assign pa1__h1967 = {3{mdi_rPhyAddr[1]}} ;
  assign pa2__h1966 = {3{mdi_rPhyAddr[2]}} ;
  assign pa3__h1965 = {3{mdi_rPhyAddr[3]}} ;
  assign pa4__h1964 = {3{mdi_rPhyAddr[4]}} ;
  assign ra0__h1974 = {3{mdi_rRegAddr[0]}} ;
  assign ra1__h1973 = {3{mdi_rRegAddr[1]}} ;
  assign ra2__h1972 = {3{mdi_rRegAddr[2]}} ;
  assign ra3__h1971 = {3{mdi_rRegAddr[3]}} ;
  assign ra4__h1970 = {3{mdi_rRegAddr[4]}} ;
  assign x_data__h18088 =
	     { mdi_vrReadData_15,
	       mdi_vrReadData_14,
	       mdi_vrReadData_13,
	       mdi_vrReadData_12,
	       mdi_vrReadData_11,
	       mdi_vrReadData_10,
	       mdi_vrReadData_9,
	       mdi_vrReadData_8,
	       mdi_vrReadData_7,
	       mdi_vrReadData_6,
	       mdi_vrReadData_5,
	       mdi_vrReadData_4,
	       mdi_vrReadData_3,
	       mdi_vrReadData_2,
	       mdi_vrReadData_1,
	       mdi_vrReadData } ;
  always@(eReqF$D_OUT)
  begin
    case (eReqF$D_OUT[39:38])
      2'd0, 2'd1, 2'd2:
	  CASE_eReqFD_OUT_BITS_39_TO_38_3_0_eReqFD_OUT_ETC__q1 =
	      eReqF$D_OUT[39:38];
      2'd3: CASE_eReqFD_OUT_BITS_39_TO_38_3_0_eReqFD_OUT_ETC__q1 = 2'd3;
    endcase
  end
  always@(eReqF$D_OUT)
  begin
    case (eReqF$D_OUT[29:28])
      2'd0, 2'd1, 2'd2:
	  CASE_eReqFD_OUT_BITS_29_TO_28_3_0_eReqFD_OUT_ETC__q2 =
	      eReqF$D_OUT[29:28];
      2'd3: CASE_eReqFD_OUT_BITS_29_TO_28_3_0_eReqFD_OUT_ETC__q2 = 2'd3;
    endcase
  end
  always@(eReqF$D_OUT)
  begin
    case (eReqF$D_OUT[19:18])
      2'd0, 2'd1, 2'd2:
	  CASE_eReqFD_OUT_BITS_19_TO_18_3_0_eReqFD_OUT_ETC__q3 =
	      eReqF$D_OUT[19:18];
      2'd3: CASE_eReqFD_OUT_BITS_19_TO_18_3_0_eReqFD_OUT_ETC__q3 = 2'd3;
    endcase
  end
  always@(eReqF$D_OUT)
  begin
    case (eReqF$D_OUT[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_eReqFD_OUT_BITS_9_TO_8_3_0_eReqFD_OUT_B_ETC__q4 =
	      eReqF$D_OUT[9:8];
      2'd3: CASE_eReqFD_OUT_BITS_9_TO_8_3_0_eReqFD_OUT_B_ETC__q4 = 2'd3;
    endcase
  end
  always@(eRespF$D_OUT)
  begin
    case (eRespF$D_OUT[39:38])
      2'd0, 2'd1, 2'd2:
	  CASE_eRespFD_OUT_BITS_39_TO_38_3_0_eRespFD_O_ETC__q5 =
	      eRespF$D_OUT[39:38];
      2'd3: CASE_eRespFD_OUT_BITS_39_TO_38_3_0_eRespFD_O_ETC__q5 = 2'd3;
    endcase
  end
  always@(eRespF$D_OUT)
  begin
    case (eRespF$D_OUT[29:28])
      2'd0, 2'd1, 2'd2:
	  CASE_eRespFD_OUT_BITS_29_TO_28_3_0_eRespFD_O_ETC__q6 =
	      eRespF$D_OUT[29:28];
      2'd3: CASE_eRespFD_OUT_BITS_29_TO_28_3_0_eRespFD_O_ETC__q6 = 2'd3;
    endcase
  end
  always@(eRespF$D_OUT)
  begin
    case (eRespF$D_OUT[19:18])
      2'd0, 2'd1, 2'd2:
	  CASE_eRespFD_OUT_BITS_19_TO_18_3_0_eRespFD_O_ETC__q7 =
	      eRespF$D_OUT[19:18];
      2'd3: CASE_eRespFD_OUT_BITS_19_TO_18_3_0_eRespFD_O_ETC__q7 = 2'd3;
    endcase
  end
  always@(eRespF$D_OUT)
  begin
    case (eRespF$D_OUT[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_eRespFD_OUT_BITS_9_TO_8_3_0_eRespFD_OUT_ETC__q8 =
	      eRespF$D_OUT[9:8];
      2'd3: CASE_eRespFD_OUT_BITS_9_TO_8_3_0_eRespFD_OUT_ETC__q8 = 2'd3;
    endcase
  end
  always@(gmac$rx_get)
  begin
    case (gmac$rx_get[39:38])
      2'd0, 2'd1, 2'd2:
	  CASE_gmacrx_get_BITS_39_TO_38_3_0_gmacrx_get_ETC__q9 =
	      gmac$rx_get[39:38];
      2'd3: CASE_gmacrx_get_BITS_39_TO_38_3_0_gmacrx_get_ETC__q9 = 2'd3;
    endcase
  end
  always@(gmac$rx_get)
  begin
    case (gmac$rx_get[29:28])
      2'd0, 2'd1, 2'd2:
	  CASE_gmacrx_get_BITS_29_TO_28_3_0_gmacrx_get_ETC__q10 =
	      gmac$rx_get[29:28];
      2'd3: CASE_gmacrx_get_BITS_29_TO_28_3_0_gmacrx_get_ETC__q10 = 2'd3;
    endcase
  end
  always@(gmac$rx_get)
  begin
    case (gmac$rx_get[19:18])
      2'd0, 2'd1, 2'd2:
	  CASE_gmacrx_get_BITS_19_TO_18_3_0_gmacrx_get_ETC__q11 =
	      gmac$rx_get[19:18];
      2'd3: CASE_gmacrx_get_BITS_19_TO_18_3_0_gmacrx_get_ETC__q11 = 2'd3;
    endcase
  end
  always@(gmac$rx_get)
  begin
    case (gmac$rx_get[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_gmacrx_get_BITS_9_TO_8_3_0_gmacrx_get_B_ETC__q12 =
	      gmac$rx_get[9:8];
      2'd3: CASE_gmacrx_get_BITS_9_TO_8_3_0_gmacrx_get_B_ETC__q12 = 2'd3;
    endcase
  end
  always@(client_response_put)
  begin
    case (client_response_put[39:38])
      2'd0, 2'd1, 2'd2:
	  CASE_client_response_put_BITS_39_TO_38_3_0_cli_ETC__q13 =
	      client_response_put[39:38];
      2'd3: CASE_client_response_put_BITS_39_TO_38_3_0_cli_ETC__q13 = 2'd3;
    endcase
  end
  always@(client_response_put)
  begin
    case (client_response_put[29:28])
      2'd0, 2'd1, 2'd2:
	  CASE_client_response_put_BITS_29_TO_28_3_0_cli_ETC__q14 =
	      client_response_put[29:28];
      2'd3: CASE_client_response_put_BITS_29_TO_28_3_0_cli_ETC__q14 = 2'd3;
    endcase
  end
  always@(client_response_put)
  begin
    case (client_response_put[19:18])
      2'd0, 2'd1, 2'd2:
	  CASE_client_response_put_BITS_19_TO_18_3_0_cli_ETC__q15 =
	      client_response_put[19:18];
      2'd3: CASE_client_response_put_BITS_19_TO_18_3_0_cli_ETC__q15 = 2'd3;
    endcase
  end
  always@(client_response_put)
  begin
    case (client_response_put[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_client_response_put_BITS_9_TO_8_3_0_clien_ETC__q16 =
	      client_response_put[9:8];
      2'd3: CASE_client_response_put_BITS_9_TO_8_3_0_clien_ETC__q16 = 2'd3;
    endcase
  end

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (!RST_N)
      begin
        ethEgress <= `BSV_ASSIGNMENT_DELAY 1'd0;
	ethIngress <= `BSV_ASSIGNMENT_DELAY 1'd0;
	gbeControl <= `BSV_ASSIGNMENT_DELAY 32'h00000101;
	mdi_rMDC <= `BSV_ASSIGNMENT_DELAY 1'd0;
	mdi_rMDD <= `BSV_ASSIGNMENT_DELAY 1'd1;
	mdi_rOutEn <= `BSV_ASSIGNMENT_DELAY 1'd1;
	mdi_rState <= `BSV_ASSIGNMENT_DELAY 1'd0;
	phyMdiInit <= `BSV_ASSIGNMENT_DELAY 1'd0;
	phyResetWaitCnt <= `BSV_ASSIGNMENT_DELAY 25'd753125;
	rxCount <= `BSV_ASSIGNMENT_DELAY 32'd0;
	rxOvfCount <= `BSV_ASSIGNMENT_DELAY 32'd0;
	splitReadInFlight <= `BSV_ASSIGNMENT_DELAY 1'd0;
	txCount <= `BSV_ASSIGNMENT_DELAY 32'd0;
	txUndCount <= `BSV_ASSIGNMENT_DELAY 32'd0;
      end
    else
      begin
        if (ethEgress$EN) ethEgress <= `BSV_ASSIGNMENT_DELAY ethEgress$D_IN;
	if (ethIngress$EN)
	  ethIngress <= `BSV_ASSIGNMENT_DELAY ethIngress$D_IN;
	if (gbeControl$EN)
	  gbeControl <= `BSV_ASSIGNMENT_DELAY gbeControl$D_IN;
	if (mdi_rMDC$EN) mdi_rMDC <= `BSV_ASSIGNMENT_DELAY mdi_rMDC$D_IN;
	if (mdi_rMDD$EN) mdi_rMDD <= `BSV_ASSIGNMENT_DELAY mdi_rMDD$D_IN;
	if (mdi_rOutEn$EN)
	  mdi_rOutEn <= `BSV_ASSIGNMENT_DELAY mdi_rOutEn$D_IN;
	if (mdi_rState$EN)
	  mdi_rState <= `BSV_ASSIGNMENT_DELAY mdi_rState$D_IN;
	if (phyMdiInit$EN)
	  phyMdiInit <= `BSV_ASSIGNMENT_DELAY phyMdiInit$D_IN;
	if (phyResetWaitCnt$EN)
	  phyResetWaitCnt <= `BSV_ASSIGNMENT_DELAY phyResetWaitCnt$D_IN;
	if (rxCount$EN) rxCount <= `BSV_ASSIGNMENT_DELAY rxCount$D_IN;
	if (rxOvfCount$EN)
	  rxOvfCount <= `BSV_ASSIGNMENT_DELAY rxOvfCount$D_IN;
	if (splitReadInFlight$EN)
	  splitReadInFlight <= `BSV_ASSIGNMENT_DELAY splitReadInFlight$D_IN;
	if (txCount$EN) txCount <= `BSV_ASSIGNMENT_DELAY txCount$D_IN;
	if (txUndCount$EN)
	  txUndCount <= `BSV_ASSIGNMENT_DELAY txUndCount$D_IN;
      end
    if (mdi_rPhyAddr$EN)
      mdi_rPhyAddr <= `BSV_ASSIGNMENT_DELAY mdi_rPhyAddr$D_IN;
    if (mdi_rRegAddr$EN)
      mdi_rRegAddr <= `BSV_ASSIGNMENT_DELAY mdi_rRegAddr$D_IN;
    if (mdi_rWrite$EN) mdi_rWrite <= `BSV_ASSIGNMENT_DELAY mdi_rWrite$D_IN;
    if (mdi_rWriteData$EN)
      mdi_rWriteData <= `BSV_ASSIGNMENT_DELAY mdi_rWriteData$D_IN;
    if (mdi_vrReadData$EN)
      mdi_vrReadData <= `BSV_ASSIGNMENT_DELAY mdi_vrReadData$D_IN;
    if (mdi_vrReadData_1$EN)
      mdi_vrReadData_1 <= `BSV_ASSIGNMENT_DELAY mdi_vrReadData_1$D_IN;
    if (mdi_vrReadData_10$EN)
      mdi_vrReadData_10 <= `BSV_ASSIGNMENT_DELAY mdi_vrReadData_10$D_IN;
    if (mdi_vrReadData_11$EN)
      mdi_vrReadData_11 <= `BSV_ASSIGNMENT_DELAY mdi_vrReadData_11$D_IN;
    if (mdi_vrReadData_12$EN)
      mdi_vrReadData_12 <= `BSV_ASSIGNMENT_DELAY mdi_vrReadData_12$D_IN;
    if (mdi_vrReadData_13$EN)
      mdi_vrReadData_13 <= `BSV_ASSIGNMENT_DELAY mdi_vrReadData_13$D_IN;
    if (mdi_vrReadData_14$EN)
      mdi_vrReadData_14 <= `BSV_ASSIGNMENT_DELAY mdi_vrReadData_14$D_IN;
    if (mdi_vrReadData_15$EN)
      mdi_vrReadData_15 <= `BSV_ASSIGNMENT_DELAY mdi_vrReadData_15$D_IN;
    if (mdi_vrReadData_2$EN)
      mdi_vrReadData_2 <= `BSV_ASSIGNMENT_DELAY mdi_vrReadData_2$D_IN;
    if (mdi_vrReadData_3$EN)
      mdi_vrReadData_3 <= `BSV_ASSIGNMENT_DELAY mdi_vrReadData_3$D_IN;
    if (mdi_vrReadData_4$EN)
      mdi_vrReadData_4 <= `BSV_ASSIGNMENT_DELAY mdi_vrReadData_4$D_IN;
    if (mdi_vrReadData_5$EN)
      mdi_vrReadData_5 <= `BSV_ASSIGNMENT_DELAY mdi_vrReadData_5$D_IN;
    if (mdi_vrReadData_6$EN)
      mdi_vrReadData_6 <= `BSV_ASSIGNMENT_DELAY mdi_vrReadData_6$D_IN;
    if (mdi_vrReadData_7$EN)
      mdi_vrReadData_7 <= `BSV_ASSIGNMENT_DELAY mdi_vrReadData_7$D_IN;
    if (mdi_vrReadData_8$EN)
      mdi_vrReadData_8 <= `BSV_ASSIGNMENT_DELAY mdi_vrReadData_8$D_IN;
    if (mdi_vrReadData_9$EN)
      mdi_vrReadData_9 <= `BSV_ASSIGNMENT_DELAY mdi_vrReadData_9$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    ethEgress = 1'h0;
    ethIngress = 1'h0;
    gbeControl = 32'hAAAAAAAA;
    mdi_rMDC = 1'h0;
    mdi_rMDD = 1'h0;
    mdi_rOutEn = 1'h0;
    mdi_rPhyAddr = 5'h0A;
    mdi_rRegAddr = 5'h0A;
    mdi_rState = 1'h0;
    mdi_rWrite = 1'h0;
    mdi_rWriteData = 16'hAAAA;
    mdi_vrReadData = 1'h0;
    mdi_vrReadData_1 = 1'h0;
    mdi_vrReadData_10 = 1'h0;
    mdi_vrReadData_11 = 1'h0;
    mdi_vrReadData_12 = 1'h0;
    mdi_vrReadData_13 = 1'h0;
    mdi_vrReadData_14 = 1'h0;
    mdi_vrReadData_15 = 1'h0;
    mdi_vrReadData_2 = 1'h0;
    mdi_vrReadData_3 = 1'h0;
    mdi_vrReadData_4 = 1'h0;
    mdi_vrReadData_5 = 1'h0;
    mdi_vrReadData_6 = 1'h0;
    mdi_vrReadData_7 = 1'h0;
    mdi_vrReadData_8 = 1'h0;
    mdi_vrReadData_9 = 1'h0;
    phyMdiInit = 1'h0;
    phyResetWaitCnt = 25'h0AAAAAA;
    rxCount = 32'hAAAAAAAA;
    rxOvfCount = 32'hAAAAAAAA;
    splitReadInFlight = 1'h0;
    txCount = 32'hAAAAAAAA;
    txUndCount = 32'hAAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkGbeQABS

