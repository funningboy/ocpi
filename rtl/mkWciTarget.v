//
// Generated by Bluespec Compiler, version 2013.01.beta5 (build 30325, 2013-01-23)
//
// On Thu Jan 24 17:39:34 EST 2013
//
//
// Ports:
// Name                         I/O  size props
// wciS0_SResp                    O     2 reg
// wciS0_SData                    O    32 reg
// wciS0_SThreadBusy              O     1
// wciS0_SFlag                    O     2
// wciS0_Clk                      I     1 clock
// wciS0_MReset_n                 I     1 reset
// wciS0_MCmd                     I     3
// wciS0_MAddrSpace               I     1
// wciS0_MByteEn                  I     4
// wciS0_MAddr                    I    32
// wciS0_MData                    I    32
// wciS0_MFlag                    I     2 unused
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkWciTarget(wciS0_Clk,
		   wciS0_MReset_n,

		   wciS0_MCmd,

		   wciS0_MAddrSpace,

		   wciS0_MByteEn,

		   wciS0_MAddr,

		   wciS0_MData,

		   wciS0_SResp,

		   wciS0_SData,

		   wciS0_SThreadBusy,

		   wciS0_SFlag,

		   wciS0_MFlag);
  input  wciS0_Clk;
  input  wciS0_MReset_n;

  // action method wciS0_mCmd
  input  [2 : 0] wciS0_MCmd;

  // action method wciS0_mAddrSpace
  input  wciS0_MAddrSpace;

  // action method wciS0_mByteEn
  input  [3 : 0] wciS0_MByteEn;

  // action method wciS0_mAddr
  input  [31 : 0] wciS0_MAddr;

  // action method wciS0_mData
  input  [31 : 0] wciS0_MData;

  // value method wciS0_sResp
  output [1 : 0] wciS0_SResp;

  // value method wciS0_sData
  output [31 : 0] wciS0_SData;

  // value method wciS0_sThreadBusy
  output wciS0_SThreadBusy;

  // value method wciS0_sFlag
  output [1 : 0] wciS0_SFlag;

  // action method wciS0_mFlag
  input  [1 : 0] wciS0_MFlag;

  // signals for module outputs
  wire [31 : 0] wciS0_SData;
  wire [1 : 0] wciS0_SFlag, wciS0_SResp;
  wire wciS0_SThreadBusy;

  // inlined wires
  wire [71 : 0] target_wciReq$wget;
  wire [33 : 0] target_respF_x_wire$wget;
  wire [31 : 0] wci_Es_mAddr_w$wget, wci_Es_mData_w$wget;
  wire [3 : 0] wci_Es_mByteEn_w$wget;
  wire [2 : 0] target_wEdge$wget, wci_Es_mCmd_w$wget;
  wire target_ctlAckReg_1$wget,
       target_ctlAckReg_1$whas,
       target_reqF_r_clr$whas,
       target_reqF_r_deq$whas,
       target_reqF_r_enq$whas,
       target_respF_dequeueing$whas,
       target_respF_enqueueing$whas,
       target_respF_x_wire$whas,
       target_sFlagReg_1$wget,
       target_sFlagReg_1$whas,
       target_sThreadBusy_pw$whas,
       target_wEdge$whas,
       target_wciReq$whas,
       target_wci_cfrd_pw$whas,
       target_wci_cfwr_pw$whas,
       target_wci_ctrl_pw$whas,
       wci_Es_mAddrSpace_w$wget,
       wci_Es_mAddrSpace_w$whas,
       wci_Es_mAddr_w$whas,
       wci_Es_mByteEn_w$whas,
       wci_Es_mCmd_w$whas,
       wci_Es_mData_w$whas;

  // register biasValue
  reg [31 : 0] biasValue;
  wire [31 : 0] biasValue$D_IN;
  wire biasValue$EN;

  // register controlReg
  reg [31 : 0] controlReg;
  wire [31 : 0] controlReg$D_IN;
  wire controlReg$EN;

  // register operating
  reg operating;
  wire operating$D_IN, operating$EN;

  // register target_cEdge
  reg [2 : 0] target_cEdge;
  wire [2 : 0] target_cEdge$D_IN;
  wire target_cEdge$EN;

  // register target_cState
  reg [2 : 0] target_cState;
  wire [2 : 0] target_cState$D_IN;
  wire target_cState$EN;

  // register target_ctlAckReg
  reg target_ctlAckReg;
  wire target_ctlAckReg$D_IN, target_ctlAckReg$EN;

  // register target_ctlOpActive
  reg target_ctlOpActive;
  wire target_ctlOpActive$D_IN, target_ctlOpActive$EN;

  // register target_illegalEdge
  reg target_illegalEdge;
  wire target_illegalEdge$D_IN, target_illegalEdge$EN;

  // register target_isReset_isInReset
  reg target_isReset_isInReset;
  wire target_isReset_isInReset$D_IN, target_isReset_isInReset$EN;

  // register target_nState
  reg [2 : 0] target_nState;
  reg [2 : 0] target_nState$D_IN;
  wire target_nState$EN;

  // register target_reqF_countReg
  reg [1 : 0] target_reqF_countReg;
  wire [1 : 0] target_reqF_countReg$D_IN;
  wire target_reqF_countReg$EN;

  // register target_respF_cntr_r
  reg [1 : 0] target_respF_cntr_r;
  wire [1 : 0] target_respF_cntr_r$D_IN;
  wire target_respF_cntr_r$EN;

  // register target_respF_q_0
  reg [33 : 0] target_respF_q_0;
  reg [33 : 0] target_respF_q_0$D_IN;
  wire target_respF_q_0$EN;

  // register target_respF_q_1
  reg [33 : 0] target_respF_q_1;
  reg [33 : 0] target_respF_q_1$D_IN;
  wire target_respF_q_1$EN;

  // register target_sFlagReg
  reg target_sFlagReg;
  wire target_sFlagReg$D_IN, target_sFlagReg$EN;

  // register target_sThreadBusy_d
  reg target_sThreadBusy_d;
  wire target_sThreadBusy_d$D_IN, target_sThreadBusy_d$EN;

  // ports of submodule target_reqF
  wire [71 : 0] target_reqF$D_IN, target_reqF$D_OUT;
  wire target_reqF$CLR, target_reqF$DEQ, target_reqF$EMPTY_N, target_reqF$ENQ;

  // rule scheduling signals
  wire WILL_FIRE_RL_report_operating,
       WILL_FIRE_RL_target_cfrd,
       WILL_FIRE_RL_target_cfwr,
       WILL_FIRE_RL_target_ctl_op_complete,
       WILL_FIRE_RL_target_ctl_op_start,
       WILL_FIRE_RL_target_ctrl_EiI,
       WILL_FIRE_RL_target_respF_both,
       WILL_FIRE_RL_target_respF_decCtr,
       WILL_FIRE_RL_target_respF_incCtr;

  // inputs to muxes for submodule ports
  reg [33 : 0] MUX_target_respF_q_0$write_1__VAL_1;
  wire [33 : 0] MUX_target_respF_q_0$write_1__VAL_2,
		MUX_target_respF_q_1$write_1__VAL_1,
		MUX_target_respF_x_wire$wset_1__VAL_1,
		MUX_target_respF_x_wire$wset_1__VAL_2;
  wire [1 : 0] MUX_target_respF_cntr_r$write_1__VAL_2;
  wire MUX_target_illegalEdge$write_1__SEL_1,
       MUX_target_illegalEdge$write_1__SEL_2,
       MUX_target_illegalEdge$write_1__VAL_2,
       MUX_target_respF_q_0$write_1__SEL_1,
       MUX_target_respF_q_0$write_1__SEL_2,
       MUX_target_respF_q_1$write_1__SEL_1,
       MUX_target_respF_q_1$write_1__SEL_2;

  // remaining internal signals
  reg [63 : 0] v__h3558, v__h3733, v__h3877, v__h4170, v__h4428, v__h4583;
  reg [31 : 0] _theResult____h4567;
  wire [1 : 0] target_respF_cntr_r_8_MINUS_1___d27;
  wire _dfoo1, _dfoo3;

  // value method wciS0_sResp
  assign wciS0_SResp = target_respF_q_0[33:32] ;

  // value method wciS0_sData
  assign wciS0_SData = target_respF_q_0[31:0] ;

  // value method wciS0_sThreadBusy
  assign wciS0_SThreadBusy =
	     target_reqF_countReg > 2'd1 || target_isReset_isInReset ;

  // value method wciS0_sFlag
  assign wciS0_SFlag = { 1'd1, target_sFlagReg } ;

  // submodule target_reqF
  SizedFIFO #(.p1width(32'd72),
	      .p2depth(32'd3),
	      .p3cntr_width(32'd1),
	      .guarded(32'd1)) target_reqF(.RST(wciS0_MReset_n),
					   .CLK(wciS0_Clk),
					   .D_IN(target_reqF$D_IN),
					   .ENQ(target_reqF$ENQ),
					   .DEQ(target_reqF$DEQ),
					   .CLR(target_reqF$CLR),
					   .D_OUT(target_reqF$D_OUT),
					   .FULL_N(),
					   .EMPTY_N(target_reqF$EMPTY_N));

  // rule RL_report_operating
  assign WILL_FIRE_RL_report_operating = target_cState == 3'd2 && !operating ;

  // rule RL_target_cfwr
  assign WILL_FIRE_RL_target_cfwr =
	     target_respF_cntr_r != 2'd2 && target_reqF$EMPTY_N &&
	     target_wci_cfwr_pw$whas ;

  // rule RL_target_cfrd
  assign WILL_FIRE_RL_target_cfrd =
	     target_respF_cntr_r != 2'd2 && target_reqF$EMPTY_N &&
	     target_wci_cfrd_pw$whas &&
	     !WILL_FIRE_RL_target_cfwr ;

  // rule RL_target_ctl_op_start
  assign WILL_FIRE_RL_target_ctl_op_start =
	     target_reqF$EMPTY_N && target_wci_ctrl_pw$whas &&
	     !WILL_FIRE_RL_target_ctl_op_complete &&
	     !WILL_FIRE_RL_target_cfrd &&
	     !WILL_FIRE_RL_target_cfwr ;

  // rule RL_target_ctrl_EiI
  assign WILL_FIRE_RL_target_ctrl_EiI =
	     target_wci_ctrl_pw$whas && WILL_FIRE_RL_target_ctl_op_start &&
	     target_cState == 3'd0 &&
	     target_reqF$D_OUT[36:34] == 3'd0 ;

  // rule RL_target_ctl_op_complete
  assign WILL_FIRE_RL_target_ctl_op_complete =
	     target_respF_cntr_r != 2'd2 && target_ctlOpActive &&
	     target_ctlAckReg &&
	     !WILL_FIRE_RL_target_cfrd &&
	     !WILL_FIRE_RL_target_cfwr ;

  // rule RL_target_respF_incCtr
  assign WILL_FIRE_RL_target_respF_incCtr =
	     target_respF_x_wire$whas && target_respF_enqueueing$whas &&
	     !(target_respF_cntr_r != 2'd0) ;

  // rule RL_target_respF_decCtr
  assign WILL_FIRE_RL_target_respF_decCtr =
	     target_respF_cntr_r != 2'd0 && !target_respF_enqueueing$whas ;

  // rule RL_target_respF_both
  assign WILL_FIRE_RL_target_respF_both =
	     target_respF_x_wire$whas && target_respF_cntr_r != 2'd0 &&
	     target_respF_enqueueing$whas ;

  // inputs to muxes for submodule ports
  assign MUX_target_illegalEdge$write_1__SEL_1 =
	     WILL_FIRE_RL_target_ctl_op_complete && target_illegalEdge ;
  assign MUX_target_illegalEdge$write_1__SEL_2 =
	     WILL_FIRE_RL_target_ctl_op_start &&
	     (target_reqF$D_OUT[36:34] == 3'd0 && target_cState != 3'd0 ||
	      target_reqF$D_OUT[36:34] == 3'd1 && target_cState != 3'd1 &&
	      target_cState != 3'd3 ||
	      target_reqF$D_OUT[36:34] == 3'd2 && target_cState != 3'd2 ||
	      target_reqF$D_OUT[36:34] == 3'd3 && target_cState != 3'd3 &&
	      target_cState != 3'd2 &&
	      target_cState != 3'd1 ||
	      target_reqF$D_OUT[36:34] == 3'd4 ||
	      target_reqF$D_OUT[36:34] == 3'd5 ||
	      target_reqF$D_OUT[36:34] == 3'd6 ||
	      target_reqF$D_OUT[36:34] == 3'd7) ;
  assign MUX_target_respF_q_0$write_1__SEL_1 =
	     WILL_FIRE_RL_target_respF_incCtr && target_respF_cntr_r == 2'd0 ;
  assign MUX_target_respF_q_0$write_1__SEL_2 =
	     WILL_FIRE_RL_target_respF_both && _dfoo3 ;
  assign MUX_target_respF_q_1$write_1__SEL_1 =
	     WILL_FIRE_RL_target_respF_both && _dfoo1 ;
  assign MUX_target_respF_q_1$write_1__SEL_2 =
	     WILL_FIRE_RL_target_respF_incCtr && target_respF_cntr_r == 2'd1 ;
  assign MUX_target_illegalEdge$write_1__VAL_2 =
	     target_reqF$D_OUT[36:34] != 3'd4 &&
	     target_reqF$D_OUT[36:34] != 3'd5 &&
	     target_reqF$D_OUT[36:34] != 3'd6 ;
  assign MUX_target_respF_cntr_r$write_1__VAL_2 = target_respF_cntr_r + 2'd1 ;
  always@(WILL_FIRE_RL_target_ctl_op_complete or
	  MUX_target_respF_x_wire$wset_1__VAL_1 or
	  WILL_FIRE_RL_target_cfrd or
	  MUX_target_respF_x_wire$wset_1__VAL_2 or WILL_FIRE_RL_target_cfwr)
  begin
    case (1'b1) // synopsys parallel_case
      WILL_FIRE_RL_target_ctl_op_complete:
	  MUX_target_respF_q_0$write_1__VAL_1 =
	      MUX_target_respF_x_wire$wset_1__VAL_1;
      WILL_FIRE_RL_target_cfrd:
	  MUX_target_respF_q_0$write_1__VAL_1 =
	      MUX_target_respF_x_wire$wset_1__VAL_2;
      WILL_FIRE_RL_target_cfwr:
	  MUX_target_respF_q_0$write_1__VAL_1 = 34'h1C0DE4201;
      default: MUX_target_respF_q_0$write_1__VAL_1 =
		   34'h2AAAAAAAA /* unspecified value */ ;
    endcase
  end
  assign MUX_target_respF_q_0$write_1__VAL_2 =
	     (target_respF_cntr_r == 2'd1) ?
	       MUX_target_respF_q_0$write_1__VAL_1 :
	       target_respF_q_1 ;
  assign MUX_target_respF_q_1$write_1__VAL_1 =
	     (target_respF_cntr_r == 2'd2) ?
	       MUX_target_respF_q_0$write_1__VAL_1 :
	       34'h0AAAAAAAA ;
  assign MUX_target_respF_x_wire$wset_1__VAL_1 =
	     target_illegalEdge ? 34'h3C0DE4202 : 34'h1C0DE4201 ;
  assign MUX_target_respF_x_wire$wset_1__VAL_2 =
	     { 2'd1, _theResult____h4567 } ;

  // inlined wires
  assign target_wciReq$wget =
	     { wciS0_MCmd,
	       wciS0_MAddrSpace,
	       wciS0_MByteEn,
	       wciS0_MAddr,
	       wciS0_MData } ;
  assign target_wciReq$whas = 1'd1 ;
  assign target_respF_x_wire$wget = MUX_target_respF_q_0$write_1__VAL_1 ;
  assign target_respF_x_wire$whas =
	     WILL_FIRE_RL_target_ctl_op_complete ||
	     WILL_FIRE_RL_target_cfrd ||
	     WILL_FIRE_RL_target_cfwr ;
  assign target_wEdge$wget = target_reqF$D_OUT[36:34] ;
  assign target_wEdge$whas = WILL_FIRE_RL_target_ctl_op_start ;
  assign target_sFlagReg_1$wget = 1'b0 ;
  assign target_sFlagReg_1$whas = 1'b0 ;
  assign target_ctlAckReg_1$wget = 1'd1 ;
  assign target_ctlAckReg_1$whas =
	     target_wci_ctrl_pw$whas && WILL_FIRE_RL_target_ctl_op_start &&
	     target_cState == 3'd2 &&
	     target_reqF$D_OUT[36:34] == 3'd3 ||
	     target_wci_ctrl_pw$whas && WILL_FIRE_RL_target_ctl_op_start &&
	     target_cState == 3'd1 &&
	     target_reqF$D_OUT[36:34] == 3'd1 ||
	     WILL_FIRE_RL_target_ctrl_EiI ;
  assign wci_Es_mCmd_w$wget = wciS0_MCmd ;
  assign wci_Es_mCmd_w$whas = 1'd1 ;
  assign wci_Es_mAddrSpace_w$wget = wciS0_MAddrSpace ;
  assign wci_Es_mAddrSpace_w$whas = 1'd1 ;
  assign wci_Es_mByteEn_w$wget = wciS0_MByteEn ;
  assign wci_Es_mByteEn_w$whas = 1'd1 ;
  assign wci_Es_mAddr_w$wget = wciS0_MAddr ;
  assign wci_Es_mAddr_w$whas = 1'd1 ;
  assign wci_Es_mData_w$wget = wciS0_MData ;
  assign wci_Es_mData_w$whas = 1'd1 ;
  assign target_reqF_r_enq$whas = target_wciReq$wget[71:69] != 3'd0 ;
  assign target_reqF_r_deq$whas =
	     WILL_FIRE_RL_target_cfrd || WILL_FIRE_RL_target_cfwr ||
	     WILL_FIRE_RL_target_ctl_op_start ;
  assign target_reqF_r_clr$whas = 1'b0 ;
  assign target_respF_enqueueing$whas =
	     WILL_FIRE_RL_target_cfrd || WILL_FIRE_RL_target_cfwr ||
	     WILL_FIRE_RL_target_ctl_op_complete ;
  assign target_respF_dequeueing$whas = target_respF_cntr_r != 2'd0 ;
  assign target_sThreadBusy_pw$whas = 1'b0 ;
  assign target_wci_cfwr_pw$whas =
	     target_reqF$EMPTY_N && target_reqF$D_OUT[68] &&
	     target_reqF$D_OUT[71:69] == 3'd1 ;
  assign target_wci_cfrd_pw$whas =
	     target_reqF$EMPTY_N && target_reqF$D_OUT[68] &&
	     target_reqF$D_OUT[71:69] == 3'd2 ;
  assign target_wci_ctrl_pw$whas =
	     target_reqF$EMPTY_N && !target_reqF$D_OUT[68] &&
	     target_reqF$D_OUT[71:69] == 3'd2 ;

  // register biasValue
  assign biasValue$D_IN =
	     WILL_FIRE_RL_target_ctrl_EiI ? 32'd0 : target_reqF$D_OUT[31:0] ;
  assign biasValue$EN =
	     WILL_FIRE_RL_target_cfwr && target_reqF$D_OUT[39:32] == 8'h0 ||
	     WILL_FIRE_RL_target_ctrl_EiI ;

  // register controlReg
  assign controlReg$D_IN =
	     WILL_FIRE_RL_target_ctrl_EiI ? 32'd0 : target_reqF$D_OUT[31:0] ;
  assign controlReg$EN =
	     WILL_FIRE_RL_target_cfwr && target_reqF$D_OUT[39:32] == 8'h04 ||
	     WILL_FIRE_RL_target_ctrl_EiI ;

  // register operating
  assign operating$D_IN = 1'd1 ;
  assign operating$EN = WILL_FIRE_RL_report_operating ;

  // register target_cEdge
  assign target_cEdge$D_IN = target_reqF$D_OUT[36:34] ;
  assign target_cEdge$EN = WILL_FIRE_RL_target_ctl_op_start ;

  // register target_cState
  assign target_cState$D_IN = target_nState ;
  assign target_cState$EN =
	     WILL_FIRE_RL_target_ctl_op_complete && !target_illegalEdge ;

  // register target_ctlAckReg
  assign target_ctlAckReg$D_IN = target_ctlAckReg_1$whas ;
  assign target_ctlAckReg$EN = 1'd1 ;

  // register target_ctlOpActive
  assign target_ctlOpActive$D_IN = !WILL_FIRE_RL_target_ctl_op_complete ;
  assign target_ctlOpActive$EN =
	     WILL_FIRE_RL_target_ctl_op_complete ||
	     WILL_FIRE_RL_target_ctl_op_start ;

  // register target_illegalEdge
  assign target_illegalEdge$D_IN =
	     !MUX_target_illegalEdge$write_1__SEL_1 &&
	     MUX_target_illegalEdge$write_1__VAL_2 ;
  assign target_illegalEdge$EN =
	     WILL_FIRE_RL_target_ctl_op_complete && target_illegalEdge ||
	     MUX_target_illegalEdge$write_1__SEL_2 ;

  // register target_isReset_isInReset
  assign target_isReset_isInReset$D_IN = 1'd0 ;
  assign target_isReset_isInReset$EN = target_isReset_isInReset ;

  // register target_nState
  always@(target_reqF$D_OUT)
  begin
    case (target_reqF$D_OUT[36:34])
      3'd0: target_nState$D_IN = 3'd1;
      3'd1: target_nState$D_IN = 3'd2;
      3'd2: target_nState$D_IN = 3'd3;
      default: target_nState$D_IN = 3'd0;
    endcase
  end
  assign target_nState$EN =
	     WILL_FIRE_RL_target_ctl_op_start &&
	     (target_reqF$D_OUT[36:34] == 3'd0 && target_cState == 3'd0 ||
	      target_reqF$D_OUT[36:34] == 3'd1 &&
	      (target_cState == 3'd1 || target_cState == 3'd3) ||
	      target_reqF$D_OUT[36:34] == 3'd2 && target_cState == 3'd2 ||
	      target_reqF$D_OUT[36:34] == 3'd3 &&
	      (target_cState == 3'd3 || target_cState == 3'd2 ||
	       target_cState == 3'd1)) ;

  // register target_reqF_countReg
  assign target_reqF_countReg$D_IN =
	     (target_wciReq$wget[71:69] != 3'd0) ?
	       target_reqF_countReg + 2'd1 :
	       target_reqF_countReg - 2'd1 ;
  assign target_reqF_countReg$EN =
	     (target_wciReq$wget[71:69] != 3'd0) != target_reqF_r_deq$whas ;

  // register target_respF_cntr_r
  assign target_respF_cntr_r$D_IN =
	     WILL_FIRE_RL_target_respF_decCtr ?
	       target_respF_cntr_r_8_MINUS_1___d27 :
	       MUX_target_respF_cntr_r$write_1__VAL_2 ;
  assign target_respF_cntr_r$EN =
	     WILL_FIRE_RL_target_respF_decCtr ||
	     WILL_FIRE_RL_target_respF_incCtr ;

  // register target_respF_q_0
  always@(MUX_target_respF_q_0$write_1__SEL_1 or
	  MUX_target_respF_q_0$write_1__VAL_1 or
	  MUX_target_respF_q_0$write_1__SEL_2 or
	  MUX_target_respF_q_0$write_1__VAL_2 or
	  WILL_FIRE_RL_target_respF_decCtr or target_respF_q_1)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_target_respF_q_0$write_1__SEL_1:
	  target_respF_q_0$D_IN = MUX_target_respF_q_0$write_1__VAL_1;
      MUX_target_respF_q_0$write_1__SEL_2:
	  target_respF_q_0$D_IN = MUX_target_respF_q_0$write_1__VAL_2;
      WILL_FIRE_RL_target_respF_decCtr:
	  target_respF_q_0$D_IN = target_respF_q_1;
      default: target_respF_q_0$D_IN = 34'h2AAAAAAAA /* unspecified value */ ;
    endcase
  end
  assign target_respF_q_0$EN =
	     WILL_FIRE_RL_target_respF_incCtr &&
	     target_respF_cntr_r == 2'd0 ||
	     WILL_FIRE_RL_target_respF_both && _dfoo3 ||
	     WILL_FIRE_RL_target_respF_decCtr ;

  // register target_respF_q_1
  always@(MUX_target_respF_q_1$write_1__SEL_1 or
	  MUX_target_respF_q_1$write_1__VAL_1 or
	  MUX_target_respF_q_1$write_1__SEL_2 or
	  MUX_target_respF_q_0$write_1__VAL_1 or
	  WILL_FIRE_RL_target_respF_decCtr)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_target_respF_q_1$write_1__SEL_1:
	  target_respF_q_1$D_IN = MUX_target_respF_q_1$write_1__VAL_1;
      MUX_target_respF_q_1$write_1__SEL_2:
	  target_respF_q_1$D_IN = MUX_target_respF_q_0$write_1__VAL_1;
      WILL_FIRE_RL_target_respF_decCtr: target_respF_q_1$D_IN = 34'h0AAAAAAAA;
      default: target_respF_q_1$D_IN = 34'h2AAAAAAAA /* unspecified value */ ;
    endcase
  end
  assign target_respF_q_1$EN =
	     WILL_FIRE_RL_target_respF_both && _dfoo1 ||
	     WILL_FIRE_RL_target_respF_incCtr &&
	     target_respF_cntr_r == 2'd1 ||
	     WILL_FIRE_RL_target_respF_decCtr ;

  // register target_sFlagReg
  assign target_sFlagReg$D_IN = 1'b0 ;
  assign target_sFlagReg$EN = 1'd1 ;

  // register target_sThreadBusy_d
  assign target_sThreadBusy_d$D_IN = 1'b0 ;
  assign target_sThreadBusy_d$EN = 1'd1 ;

  // submodule target_reqF
  assign target_reqF$D_IN = target_wciReq$wget ;
  assign target_reqF$ENQ = target_wciReq$wget[71:69] != 3'd0 ;
  assign target_reqF$DEQ = target_reqF_r_deq$whas ;
  assign target_reqF$CLR = 1'b0 ;

  // remaining internal signals
  assign _dfoo1 =
	     target_respF_cntr_r != 2'd2 ||
	     target_respF_cntr_r_8_MINUS_1___d27 == 2'd1 ;
  assign _dfoo3 =
	     target_respF_cntr_r != 2'd1 ||
	     target_respF_cntr_r_8_MINUS_1___d27 == 2'd0 ;
  assign target_respF_cntr_r_8_MINUS_1___d27 = target_respF_cntr_r - 2'd1 ;
  always@(target_reqF$D_OUT or biasValue or controlReg)
  begin
    case (target_reqF$D_OUT[39:32])
      8'h0: _theResult____h4567 = biasValue;
      8'h04: _theResult____h4567 = controlReg;
      default: _theResult____h4567 = 32'd0;
    endcase
  end

  // handling of inlined registers

  always@(posedge wciS0_Clk)
  begin
    if (wciS0_MReset_n == `BSV_RESET_VALUE)
      begin
        operating <= `BSV_ASSIGNMENT_DELAY 1'd0;
	target_cEdge <= `BSV_ASSIGNMENT_DELAY 3'h2;
	target_cState <= `BSV_ASSIGNMENT_DELAY 3'd0;
	target_ctlAckReg <= `BSV_ASSIGNMENT_DELAY 1'd0;
	target_ctlOpActive <= `BSV_ASSIGNMENT_DELAY 1'd0;
	target_illegalEdge <= `BSV_ASSIGNMENT_DELAY 1'd0;
	target_nState <= `BSV_ASSIGNMENT_DELAY 3'd0;
	target_reqF_countReg <= `BSV_ASSIGNMENT_DELAY 2'd0;
	target_respF_cntr_r <= `BSV_ASSIGNMENT_DELAY 2'd0;
	target_respF_q_0 <= `BSV_ASSIGNMENT_DELAY 34'h0AAAAAAAA;
	target_respF_q_1 <= `BSV_ASSIGNMENT_DELAY 34'h0AAAAAAAA;
	target_sFlagReg <= `BSV_ASSIGNMENT_DELAY 1'd0;
	target_sThreadBusy_d <= `BSV_ASSIGNMENT_DELAY 1'd1;
      end
    else
      begin
        if (operating$EN) operating <= `BSV_ASSIGNMENT_DELAY operating$D_IN;
	if (target_cEdge$EN)
	  target_cEdge <= `BSV_ASSIGNMENT_DELAY target_cEdge$D_IN;
	if (target_cState$EN)
	  target_cState <= `BSV_ASSIGNMENT_DELAY target_cState$D_IN;
	if (target_ctlAckReg$EN)
	  target_ctlAckReg <= `BSV_ASSIGNMENT_DELAY target_ctlAckReg$D_IN;
	if (target_ctlOpActive$EN)
	  target_ctlOpActive <= `BSV_ASSIGNMENT_DELAY target_ctlOpActive$D_IN;
	if (target_illegalEdge$EN)
	  target_illegalEdge <= `BSV_ASSIGNMENT_DELAY target_illegalEdge$D_IN;
	if (target_nState$EN)
	  target_nState <= `BSV_ASSIGNMENT_DELAY target_nState$D_IN;
	if (target_reqF_countReg$EN)
	  target_reqF_countReg <= `BSV_ASSIGNMENT_DELAY
	      target_reqF_countReg$D_IN;
	if (target_respF_cntr_r$EN)
	  target_respF_cntr_r <= `BSV_ASSIGNMENT_DELAY
	      target_respF_cntr_r$D_IN;
	if (target_respF_q_0$EN)
	  target_respF_q_0 <= `BSV_ASSIGNMENT_DELAY target_respF_q_0$D_IN;
	if (target_respF_q_1$EN)
	  target_respF_q_1 <= `BSV_ASSIGNMENT_DELAY target_respF_q_1$D_IN;
	if (target_sFlagReg$EN)
	  target_sFlagReg <= `BSV_ASSIGNMENT_DELAY target_sFlagReg$D_IN;
	if (target_sThreadBusy_d$EN)
	  target_sThreadBusy_d <= `BSV_ASSIGNMENT_DELAY
	      target_sThreadBusy_d$D_IN;
      end
    if (biasValue$EN) biasValue <= `BSV_ASSIGNMENT_DELAY biasValue$D_IN;
    if (controlReg$EN) controlReg <= `BSV_ASSIGNMENT_DELAY controlReg$D_IN;
  end

  always@(posedge wciS0_Clk or `BSV_RESET_EDGE wciS0_MReset_n)
  if (wciS0_MReset_n == `BSV_RESET_VALUE)
    begin
      target_isReset_isInReset <= `BSV_ASSIGNMENT_DELAY 1'd1;
    end
  else
    begin
      if (target_isReset_isInReset$EN)
	target_isReset_isInReset <= `BSV_ASSIGNMENT_DELAY
	    target_isReset_isInReset$D_IN;
    end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    biasValue = 32'hAAAAAAAA;
    controlReg = 32'hAAAAAAAA;
    operating = 1'h0;
    target_cEdge = 3'h2;
    target_cState = 3'h2;
    target_ctlAckReg = 1'h0;
    target_ctlOpActive = 1'h0;
    target_illegalEdge = 1'h0;
    target_isReset_isInReset = 1'h0;
    target_nState = 3'h2;
    target_reqF_countReg = 2'h2;
    target_respF_cntr_r = 2'h2;
    target_respF_q_0 = 34'h2AAAAAAAA;
    target_respF_q_1 = 34'h2AAAAAAAA;
    target_sFlagReg = 1'h0;
    target_sThreadBusy_d = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge wciS0_Clk)
  begin
    #0;
    if (wciS0_MReset_n != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_report_operating)
	begin
	  v__h4170 = $time;
	  #0;
	end
    if (wciS0_MReset_n != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_report_operating)
	$display("[%0d]: %m: WCI Target is Operating", v__h4170);
    if (wciS0_MReset_n != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_target_cfwr)
	begin
	  v__h4428 = $time;
	  #0;
	end
    if (wciS0_MReset_n != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_target_cfwr)
	$display("[%0d]: %m: WCI TARGET CONFIG WRITE Addr:%0x BE:%0x Data:%0x",
		 v__h4428,
		 target_reqF$D_OUT[63:32],
		 target_reqF$D_OUT[67:64],
		 target_reqF$D_OUT[31:0]);
    if (wciS0_MReset_n != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_target_cfrd)
	begin
	  v__h4583 = $time;
	  #0;
	end
    if (wciS0_MReset_n != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_target_cfrd)
	$display("[%0d]: %m: WCI TARGET CONFIG READ Addr:%0x BE:%0x Data:%0x",
		 v__h4583,
		 target_reqF$D_OUT[63:32],
		 target_reqF$D_OUT[67:64],
		 _theResult____h4567);
    if (wciS0_MReset_n != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_target_ctl_op_start)
	begin
	  v__h3558 = $time;
	  #0;
	end
    if (wciS0_MReset_n != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_target_ctl_op_start)
	$display("[%0d]: %m: WCI ControlOp: Starting-transition edge:%x from:%x",
		 v__h3558,
		 target_reqF$D_OUT[36:34],
		 target_cState);
    if (wciS0_MReset_n != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_target_ctl_op_complete && target_illegalEdge)
	begin
	  v__h3877 = $time;
	  #0;
	end
    if (wciS0_MReset_n != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_target_ctl_op_complete && target_illegalEdge)
	$display("[%0d]: %m: WCI ControlOp: ILLEGAL-EDGE Completed-transition edge:%x from:%x",
		 v__h3877,
		 target_cEdge,
		 target_cState);
    if (wciS0_MReset_n != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_target_ctl_op_complete && !target_illegalEdge)
	begin
	  v__h3733 = $time;
	  #0;
	end
    if (wciS0_MReset_n != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_target_ctl_op_complete && !target_illegalEdge)
	$display("[%0d]: %m: WCI ControlOp: Completed-transition edge:%x from:%x to:%x",
		 v__h3733,
		 target_cEdge,
		 target_cState,
		 target_nState);
  end
  // synopsys translate_on
endmodule  // mkWciTarget

