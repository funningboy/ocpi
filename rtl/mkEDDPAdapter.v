//
// Generated by Bluespec Compiler, version 2012.01.A (build 26572, 2012-01-17)
//
// On Mon Sep 10 16:34:09 EDT 2012
//
//
// Ports:
// Name                         I/O  size props
// RDY_server_request_put         O     1 reg
// server_response_get            O    40
// RDY_server_response_get        O     1 reg
// client_request_get             O    40
// RDY_client_request_get         O     1 reg
// RDY_client_response_put        O     1 reg
// RDY_macAddr                    O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// server_request_put             I    40
// client_response_put            I    40
// macAddr_u                      I    48 reg
// EN_server_request_put          I     1
// EN_client_response_put         I     1
// EN_macAddr                     I     1
// EN_server_response_get         I     1
// EN_client_request_get          I     1
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module mkEDDPAdapter(CLK,
		     RST_N,

		     server_request_put,
		     EN_server_request_put,
		     RDY_server_request_put,

		     EN_server_response_get,
		     server_response_get,
		     RDY_server_response_get,

		     EN_client_request_get,
		     client_request_get,
		     RDY_client_request_get,

		     client_response_put,
		     EN_client_response_put,
		     RDY_client_response_put,

		     macAddr_u,
		     EN_macAddr,
		     RDY_macAddr);
  input  CLK;
  input  RST_N;

  // action method server_request_put
  input  [39 : 0] server_request_put;
  input  EN_server_request_put;
  output RDY_server_request_put;

  // actionvalue method server_response_get
  input  EN_server_response_get;
  output [39 : 0] server_response_get;
  output RDY_server_response_get;

  // actionvalue method client_request_get
  input  EN_client_request_get;
  output [39 : 0] client_request_get;
  output RDY_client_request_get;

  // action method client_response_put
  input  [39 : 0] client_response_put;
  input  EN_client_response_put;
  output RDY_client_response_put;

  // action method macAddr
  input  [47 : 0] macAddr_u;
  input  EN_macAddr;
  output RDY_macAddr;

  // signals for module outputs
  wire [39 : 0] client_request_get, server_response_get;
  wire RDY_client_request_get,
       RDY_client_response_put,
       RDY_macAddr,
       RDY_server_request_put,
       RDY_server_response_get;

  // inlined wires
  wire eDoReq_1$wget, eDoReq_1$whas;

  // register eAddr
  reg [31 : 0] eAddr;
  wire [31 : 0] eAddr$D_IN;
  wire eAddr$EN;

  // register eDAddr
  reg [47 : 0] eDAddr;
  wire [47 : 0] eDAddr$D_IN;
  wire eDAddr$EN;

  // register eDMH
  reg [31 : 0] eDMH;
  wire [31 : 0] eDMH$D_IN;
  wire eDMH$EN;

  // register eData
  reg [31 : 0] eData;
  wire [31 : 0] eData$D_IN;
  wire eData$EN;

  // register eDoReq
  reg eDoReq;
  wire eDoReq$D_IN, eDoReq$EN;

  // register eMAddr
  reg [47 : 0] eMAddr;
  wire [47 : 0] eMAddr$D_IN;
  wire eMAddr$EN;

  // register ePli
  reg [15 : 0] ePli;
  wire [15 : 0] ePli$D_IN;
  wire ePli$EN;

  // register eTyp
  reg [15 : 0] eTyp;
  wire [15 : 0] eTyp$D_IN;
  wire eTyp$EN;

  // register eeDat
  reg [31 : 0] eeDat;
  wire [31 : 0] eeDat$D_IN;
  wire eeDat$EN;

  // register eeDmh
  reg [31 : 0] eeDmh;
  wire [31 : 0] eeDmh$D_IN;
  wire eeDmh$EN;

  // register eeMDst
  reg [47 : 0] eeMDst;
  wire [47 : 0] eeMDst$D_IN;
  wire eeMDst$EN;

  // register eePli
  reg [15 : 0] eePli;
  wire [15 : 0] eePli$D_IN;
  wire eePli$EN;

  // register isWrtResp
  reg isWrtResp;
  wire isWrtResp$D_IN, isWrtResp$EN;

  // register ptr
  reg [3 : 0] ptr;
  wire [3 : 0] ptr$D_IN;
  wire ptr$EN;

  // register uMAddr
  reg [47 : 0] uMAddr;
  wire [47 : 0] uMAddr$D_IN;
  wire uMAddr$EN;

  // ports of submodule dpReqF
  wire [39 : 0] dpReqF$D_IN, dpReqF$D_OUT;
  wire dpReqF$CLR, dpReqF$DEQ, dpReqF$EMPTY_N, dpReqF$ENQ, dpReqF$FULL_N;

  // ports of submodule dpRespF
  wire [39 : 0] dpRespF$D_IN, dpRespF$D_OUT;
  wire dpRespF$CLR, dpRespF$DEQ, dpRespF$EMPTY_N, dpRespF$ENQ, dpRespF$FULL_N;

  // ports of submodule eMAddrF
  wire [47 : 0] eMAddrF$D_IN;
  wire eMAddrF$CLR, eMAddrF$DEQ, eMAddrF$ENQ;

  // ports of submodule edpReqF
  wire [39 : 0] edpReqF$D_IN, edpReqF$D_OUT;
  wire edpReqF$CLR, edpReqF$DEQ, edpReqF$EMPTY_N, edpReqF$ENQ, edpReqF$FULL_N;

  // ports of submodule edpRespF
  wire [39 : 0] edpRespF$D_IN, edpRespF$D_OUT;
  wire edpRespF$CLR,
       edpRespF$DEQ,
       edpRespF$EMPTY_N,
       edpRespF$ENQ,
       edpRespF$FULL_N;

  // remaining internal signals
  reg [1 : 0] CASE_client_response_put_BITS_19_TO_18_3_0_cli_ETC__q15,
	      CASE_client_response_put_BITS_29_TO_28_3_0_cli_ETC__q14,
	      CASE_client_response_put_BITS_39_TO_38_3_0_cli_ETC__q13,
	      CASE_client_response_put_BITS_9_TO_8_3_0_clien_ETC__q16,
	      CASE_dpReqFD_OUT_BITS_19_TO_18_3_0_dpReqFD_O_ETC__q7,
	      CASE_dpReqFD_OUT_BITS_29_TO_28_3_0_dpReqFD_O_ETC__q6,
	      CASE_dpReqFD_OUT_BITS_39_TO_38_3_0_dpReqFD_O_ETC__q5,
	      CASE_dpReqFD_OUT_BITS_9_TO_8_3_0_dpReqFD_OUT_ETC__q8,
	      CASE_dpRespFD_OUT_BITS_19_TO_18_3_0_dpRespFD_ETC__q23,
	      CASE_dpRespFD_OUT_BITS_29_TO_28_3_0_dpRespFD_ETC__q22,
	      CASE_dpRespFD_OUT_BITS_39_TO_38_3_0_dpRespFD_ETC__q21,
	      CASE_dpRespFD_OUT_BITS_9_TO_8_3_0_dpRespFD_O_ETC__q24,
	      CASE_edpReqFD_OUT_BITS_19_TO_18_3_0_edpReqFD_ETC__q11,
	      CASE_edpReqFD_OUT_BITS_29_TO_28_3_0_edpReqFD_ETC__q10,
	      CASE_edpReqFD_OUT_BITS_39_TO_38_3_0_edpReqFD_ETC__q9,
	      CASE_edpReqFD_OUT_BITS_9_TO_8_3_0_edpReqFD_O_ETC__q12,
	      CASE_edpRespFD_OUT_BITS_19_TO_18_3_0_edpRespF_ETC__q3,
	      CASE_edpRespFD_OUT_BITS_29_TO_28_3_0_edpRespF_ETC__q2,
	      CASE_edpRespFD_OUT_BITS_39_TO_38_3_0_edpRespF_ETC__q1,
	      CASE_edpRespFD_OUT_BITS_9_TO_8_3_0_edpRespFD_ETC__q4,
	      CASE_server_request_put_BITS_19_TO_18_3_0_serv_ETC__q19,
	      CASE_server_request_put_BITS_29_TO_28_3_0_serv_ETC__q18,
	      CASE_server_request_put_BITS_39_TO_38_3_0_serv_ETC__q17,
	      CASE_server_request_put_BITS_9_TO_8_3_0_server_ETC__q20;

  // action method server_request_put
  assign RDY_server_request_put = edpReqF$FULL_N ;

  // actionvalue method server_response_get
  assign server_response_get =
	     { CASE_edpRespFD_OUT_BITS_39_TO_38_3_0_edpRespF_ETC__q1,
	       edpRespF$D_OUT[37:30],
	       CASE_edpRespFD_OUT_BITS_29_TO_28_3_0_edpRespF_ETC__q2,
	       edpRespF$D_OUT[27:20],
	       CASE_edpRespFD_OUT_BITS_19_TO_18_3_0_edpRespF_ETC__q3,
	       edpRespF$D_OUT[17:10],
	       CASE_edpRespFD_OUT_BITS_9_TO_8_3_0_edpRespFD_ETC__q4,
	       edpRespF$D_OUT[7:0] } ;
  assign RDY_server_response_get = edpRespF$EMPTY_N ;

  // actionvalue method client_request_get
  assign client_request_get =
	     { CASE_dpReqFD_OUT_BITS_39_TO_38_3_0_dpReqFD_O_ETC__q5,
	       dpReqF$D_OUT[37:30],
	       CASE_dpReqFD_OUT_BITS_29_TO_28_3_0_dpReqFD_O_ETC__q6,
	       dpReqF$D_OUT[27:20],
	       CASE_dpReqFD_OUT_BITS_19_TO_18_3_0_dpReqFD_O_ETC__q7,
	       dpReqF$D_OUT[17:10],
	       CASE_dpReqFD_OUT_BITS_9_TO_8_3_0_dpReqFD_OUT_ETC__q8,
	       dpReqF$D_OUT[7:0] } ;
  assign RDY_client_request_get = dpReqF$EMPTY_N ;

  // action method client_response_put
  assign RDY_client_response_put = dpRespF$FULL_N ;

  // action method macAddr
  assign RDY_macAddr = 1'd1 ;

  // submodule dpReqF
  FIFO2 #(.width(32'd40), .guarded(32'd1)) dpReqF(.RST_N(RST_N),
						  .CLK(CLK),
						  .D_IN(dpReqF$D_IN),
						  .ENQ(dpReqF$ENQ),
						  .DEQ(dpReqF$DEQ),
						  .CLR(dpReqF$CLR),
						  .D_OUT(dpReqF$D_OUT),
						  .FULL_N(dpReqF$FULL_N),
						  .EMPTY_N(dpReqF$EMPTY_N));

  // submodule dpRespF
  FIFO2 #(.width(32'd40), .guarded(32'd1)) dpRespF(.RST_N(RST_N),
						   .CLK(CLK),
						   .D_IN(dpRespF$D_IN),
						   .ENQ(dpRespF$ENQ),
						   .DEQ(dpRespF$DEQ),
						   .CLR(dpRespF$CLR),
						   .D_OUT(dpRespF$D_OUT),
						   .FULL_N(dpRespF$FULL_N),
						   .EMPTY_N(dpRespF$EMPTY_N));

  // submodule eMAddrF
  FIFO2 #(.width(32'd48), .guarded(32'd1)) eMAddrF(.RST_N(RST_N),
						   .CLK(CLK),
						   .D_IN(eMAddrF$D_IN),
						   .ENQ(eMAddrF$ENQ),
						   .DEQ(eMAddrF$DEQ),
						   .CLR(eMAddrF$CLR),
						   .D_OUT(),
						   .FULL_N(),
						   .EMPTY_N());

  // submodule edpReqF
  FIFO2 #(.width(32'd40), .guarded(32'd1)) edpReqF(.RST_N(RST_N),
						   .CLK(CLK),
						   .D_IN(edpReqF$D_IN),
						   .ENQ(edpReqF$ENQ),
						   .DEQ(edpReqF$DEQ),
						   .CLR(edpReqF$CLR),
						   .D_OUT(edpReqF$D_OUT),
						   .FULL_N(edpReqF$FULL_N),
						   .EMPTY_N(edpReqF$EMPTY_N));

  // submodule edpRespF
  FIFO2 #(.width(32'd40), .guarded(32'd1)) edpRespF(.RST_N(RST_N),
						    .CLK(CLK),
						    .D_IN(edpRespF$D_IN),
						    .ENQ(edpRespF$ENQ),
						    .DEQ(edpRespF$DEQ),
						    .CLR(edpRespF$CLR),
						    .D_OUT(edpRespF$D_OUT),
						    .FULL_N(edpRespF$FULL_N),
						    .EMPTY_N(edpRespF$EMPTY_N));

  // inlined wires
  assign eDoReq_1$wget = 1'b0 ;
  assign eDoReq_1$whas = 1'b0 ;

  // register eAddr
  assign eAddr$D_IN = 32'h0 ;
  assign eAddr$EN = 1'b0 ;

  // register eDAddr
  assign eDAddr$D_IN = 48'h0 ;
  assign eDAddr$EN = 1'b0 ;

  // register eDMH
  assign eDMH$D_IN = 32'h0 ;
  assign eDMH$EN = 1'b0 ;

  // register eData
  assign eData$D_IN = 32'h0 ;
  assign eData$EN = 1'b0 ;

  // register eDoReq
  assign eDoReq$D_IN = 1'b0 ;
  assign eDoReq$EN = 1'd1 ;

  // register eMAddr
  assign eMAddr$D_IN = 48'h0 ;
  assign eMAddr$EN = 1'b0 ;

  // register ePli
  assign ePli$D_IN = 16'h0 ;
  assign ePli$EN = 1'b0 ;

  // register eTyp
  assign eTyp$D_IN = 16'h0 ;
  assign eTyp$EN = 1'b0 ;

  // register eeDat
  assign eeDat$D_IN = 32'h0 ;
  assign eeDat$EN = 1'b0 ;

  // register eeDmh
  assign eeDmh$D_IN = 32'h0 ;
  assign eeDmh$EN = 1'b0 ;

  // register eeMDst
  assign eeMDst$D_IN = 48'h0 ;
  assign eeMDst$EN = 1'b0 ;

  // register eePli
  assign eePli$D_IN = 16'h0 ;
  assign eePli$EN = 1'b0 ;

  // register isWrtResp
  assign isWrtResp$D_IN = 1'b0 ;
  assign isWrtResp$EN = 1'b0 ;

  // register ptr
  assign ptr$D_IN = 4'h0 ;
  assign ptr$EN = 1'b0 ;

  // register uMAddr
  assign uMAddr$D_IN = macAddr_u ;
  assign uMAddr$EN = EN_macAddr ;

  // submodule dpReqF
  assign dpReqF$D_IN =
	     { CASE_edpReqFD_OUT_BITS_39_TO_38_3_0_edpReqFD_ETC__q9,
	       edpReqF$D_OUT[37:30],
	       CASE_edpReqFD_OUT_BITS_29_TO_28_3_0_edpReqFD_ETC__q10,
	       edpReqF$D_OUT[27:20],
	       CASE_edpReqFD_OUT_BITS_19_TO_18_3_0_edpReqFD_ETC__q11,
	       edpReqF$D_OUT[17:10],
	       CASE_edpReqFD_OUT_BITS_9_TO_8_3_0_edpReqFD_O_ETC__q12,
	       edpReqF$D_OUT[7:0] } ;
  assign dpReqF$ENQ = edpReqF$EMPTY_N && dpReqF$FULL_N ;
  assign dpReqF$DEQ = EN_client_request_get ;
  assign dpReqF$CLR = 1'b0 ;

  // submodule dpRespF
  assign dpRespF$D_IN =
	     { CASE_client_response_put_BITS_39_TO_38_3_0_cli_ETC__q13,
	       client_response_put[37:30],
	       CASE_client_response_put_BITS_29_TO_28_3_0_cli_ETC__q14,
	       client_response_put[27:20],
	       CASE_client_response_put_BITS_19_TO_18_3_0_cli_ETC__q15,
	       client_response_put[17:10],
	       CASE_client_response_put_BITS_9_TO_8_3_0_clien_ETC__q16,
	       client_response_put[7:0] } ;
  assign dpRespF$ENQ = EN_client_response_put ;
  assign dpRespF$DEQ = dpRespF$EMPTY_N && edpRespF$FULL_N ;
  assign dpRespF$CLR = 1'b0 ;

  // submodule eMAddrF
  assign eMAddrF$D_IN = 48'h0 ;
  assign eMAddrF$ENQ = 1'b0 ;
  assign eMAddrF$DEQ = 1'b0 ;
  assign eMAddrF$CLR = 1'b0 ;

  // submodule edpReqF
  assign edpReqF$D_IN =
	     { CASE_server_request_put_BITS_39_TO_38_3_0_serv_ETC__q17,
	       server_request_put[37:30],
	       CASE_server_request_put_BITS_29_TO_28_3_0_serv_ETC__q18,
	       server_request_put[27:20],
	       CASE_server_request_put_BITS_19_TO_18_3_0_serv_ETC__q19,
	       server_request_put[17:10],
	       CASE_server_request_put_BITS_9_TO_8_3_0_server_ETC__q20,
	       server_request_put[7:0] } ;
  assign edpReqF$ENQ = EN_server_request_put ;
  assign edpReqF$DEQ = edpReqF$EMPTY_N && dpReqF$FULL_N ;
  assign edpReqF$CLR = 1'b0 ;

  // submodule edpRespF
  assign edpRespF$D_IN =
	     { CASE_dpRespFD_OUT_BITS_39_TO_38_3_0_dpRespFD_ETC__q21,
	       dpRespF$D_OUT[37:30],
	       CASE_dpRespFD_OUT_BITS_29_TO_28_3_0_dpRespFD_ETC__q22,
	       dpRespF$D_OUT[27:20],
	       CASE_dpRespFD_OUT_BITS_19_TO_18_3_0_dpRespFD_ETC__q23,
	       dpRespF$D_OUT[17:10],
	       CASE_dpRespFD_OUT_BITS_9_TO_8_3_0_dpRespFD_O_ETC__q24,
	       dpRespF$D_OUT[7:0] } ;
  assign edpRespF$ENQ = dpRespF$EMPTY_N && edpRespF$FULL_N ;
  assign edpRespF$DEQ = EN_server_response_get ;
  assign edpRespF$CLR = 1'b0 ;

  // remaining internal signals
  always@(edpRespF$D_OUT)
  begin
    case (edpRespF$D_OUT[39:38])
      2'd0, 2'd1, 2'd2:
	  CASE_edpRespFD_OUT_BITS_39_TO_38_3_0_edpRespF_ETC__q1 =
	      edpRespF$D_OUT[39:38];
      2'd3: CASE_edpRespFD_OUT_BITS_39_TO_38_3_0_edpRespF_ETC__q1 = 2'd3;
    endcase
  end
  always@(edpRespF$D_OUT)
  begin
    case (edpRespF$D_OUT[29:28])
      2'd0, 2'd1, 2'd2:
	  CASE_edpRespFD_OUT_BITS_29_TO_28_3_0_edpRespF_ETC__q2 =
	      edpRespF$D_OUT[29:28];
      2'd3: CASE_edpRespFD_OUT_BITS_29_TO_28_3_0_edpRespF_ETC__q2 = 2'd3;
    endcase
  end
  always@(edpRespF$D_OUT)
  begin
    case (edpRespF$D_OUT[19:18])
      2'd0, 2'd1, 2'd2:
	  CASE_edpRespFD_OUT_BITS_19_TO_18_3_0_edpRespF_ETC__q3 =
	      edpRespF$D_OUT[19:18];
      2'd3: CASE_edpRespFD_OUT_BITS_19_TO_18_3_0_edpRespF_ETC__q3 = 2'd3;
    endcase
  end
  always@(edpRespF$D_OUT)
  begin
    case (edpRespF$D_OUT[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_edpRespFD_OUT_BITS_9_TO_8_3_0_edpRespFD_ETC__q4 =
	      edpRespF$D_OUT[9:8];
      2'd3: CASE_edpRespFD_OUT_BITS_9_TO_8_3_0_edpRespFD_ETC__q4 = 2'd3;
    endcase
  end
  always@(dpReqF$D_OUT)
  begin
    case (dpReqF$D_OUT[39:38])
      2'd0, 2'd1, 2'd2:
	  CASE_dpReqFD_OUT_BITS_39_TO_38_3_0_dpReqFD_O_ETC__q5 =
	      dpReqF$D_OUT[39:38];
      2'd3: CASE_dpReqFD_OUT_BITS_39_TO_38_3_0_dpReqFD_O_ETC__q5 = 2'd3;
    endcase
  end
  always@(dpReqF$D_OUT)
  begin
    case (dpReqF$D_OUT[29:28])
      2'd0, 2'd1, 2'd2:
	  CASE_dpReqFD_OUT_BITS_29_TO_28_3_0_dpReqFD_O_ETC__q6 =
	      dpReqF$D_OUT[29:28];
      2'd3: CASE_dpReqFD_OUT_BITS_29_TO_28_3_0_dpReqFD_O_ETC__q6 = 2'd3;
    endcase
  end
  always@(dpReqF$D_OUT)
  begin
    case (dpReqF$D_OUT[19:18])
      2'd0, 2'd1, 2'd2:
	  CASE_dpReqFD_OUT_BITS_19_TO_18_3_0_dpReqFD_O_ETC__q7 =
	      dpReqF$D_OUT[19:18];
      2'd3: CASE_dpReqFD_OUT_BITS_19_TO_18_3_0_dpReqFD_O_ETC__q7 = 2'd3;
    endcase
  end
  always@(dpReqF$D_OUT)
  begin
    case (dpReqF$D_OUT[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_dpReqFD_OUT_BITS_9_TO_8_3_0_dpReqFD_OUT_ETC__q8 =
	      dpReqF$D_OUT[9:8];
      2'd3: CASE_dpReqFD_OUT_BITS_9_TO_8_3_0_dpReqFD_OUT_ETC__q8 = 2'd3;
    endcase
  end
  always@(edpReqF$D_OUT)
  begin
    case (edpReqF$D_OUT[39:38])
      2'd0, 2'd1, 2'd2:
	  CASE_edpReqFD_OUT_BITS_39_TO_38_3_0_edpReqFD_ETC__q9 =
	      edpReqF$D_OUT[39:38];
      2'd3: CASE_edpReqFD_OUT_BITS_39_TO_38_3_0_edpReqFD_ETC__q9 = 2'd3;
    endcase
  end
  always@(edpReqF$D_OUT)
  begin
    case (edpReqF$D_OUT[29:28])
      2'd0, 2'd1, 2'd2:
	  CASE_edpReqFD_OUT_BITS_29_TO_28_3_0_edpReqFD_ETC__q10 =
	      edpReqF$D_OUT[29:28];
      2'd3: CASE_edpReqFD_OUT_BITS_29_TO_28_3_0_edpReqFD_ETC__q10 = 2'd3;
    endcase
  end
  always@(edpReqF$D_OUT)
  begin
    case (edpReqF$D_OUT[19:18])
      2'd0, 2'd1, 2'd2:
	  CASE_edpReqFD_OUT_BITS_19_TO_18_3_0_edpReqFD_ETC__q11 =
	      edpReqF$D_OUT[19:18];
      2'd3: CASE_edpReqFD_OUT_BITS_19_TO_18_3_0_edpReqFD_ETC__q11 = 2'd3;
    endcase
  end
  always@(edpReqF$D_OUT)
  begin
    case (edpReqF$D_OUT[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_edpReqFD_OUT_BITS_9_TO_8_3_0_edpReqFD_O_ETC__q12 =
	      edpReqF$D_OUT[9:8];
      2'd3: CASE_edpReqFD_OUT_BITS_9_TO_8_3_0_edpReqFD_O_ETC__q12 = 2'd3;
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
  always@(server_request_put)
  begin
    case (server_request_put[39:38])
      2'd0, 2'd1, 2'd2:
	  CASE_server_request_put_BITS_39_TO_38_3_0_serv_ETC__q17 =
	      server_request_put[39:38];
      2'd3: CASE_server_request_put_BITS_39_TO_38_3_0_serv_ETC__q17 = 2'd3;
    endcase
  end
  always@(server_request_put)
  begin
    case (server_request_put[29:28])
      2'd0, 2'd1, 2'd2:
	  CASE_server_request_put_BITS_29_TO_28_3_0_serv_ETC__q18 =
	      server_request_put[29:28];
      2'd3: CASE_server_request_put_BITS_29_TO_28_3_0_serv_ETC__q18 = 2'd3;
    endcase
  end
  always@(server_request_put)
  begin
    case (server_request_put[19:18])
      2'd0, 2'd1, 2'd2:
	  CASE_server_request_put_BITS_19_TO_18_3_0_serv_ETC__q19 =
	      server_request_put[19:18];
      2'd3: CASE_server_request_put_BITS_19_TO_18_3_0_serv_ETC__q19 = 2'd3;
    endcase
  end
  always@(server_request_put)
  begin
    case (server_request_put[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_server_request_put_BITS_9_TO_8_3_0_server_ETC__q20 =
	      server_request_put[9:8];
      2'd3: CASE_server_request_put_BITS_9_TO_8_3_0_server_ETC__q20 = 2'd3;
    endcase
  end
  always@(dpRespF$D_OUT)
  begin
    case (dpRespF$D_OUT[39:38])
      2'd0, 2'd1, 2'd2:
	  CASE_dpRespFD_OUT_BITS_39_TO_38_3_0_dpRespFD_ETC__q21 =
	      dpRespF$D_OUT[39:38];
      2'd3: CASE_dpRespFD_OUT_BITS_39_TO_38_3_0_dpRespFD_ETC__q21 = 2'd3;
    endcase
  end
  always@(dpRespF$D_OUT)
  begin
    case (dpRespF$D_OUT[29:28])
      2'd0, 2'd1, 2'd2:
	  CASE_dpRespFD_OUT_BITS_29_TO_28_3_0_dpRespFD_ETC__q22 =
	      dpRespF$D_OUT[29:28];
      2'd3: CASE_dpRespFD_OUT_BITS_29_TO_28_3_0_dpRespFD_ETC__q22 = 2'd3;
    endcase
  end
  always@(dpRespF$D_OUT)
  begin
    case (dpRespF$D_OUT[19:18])
      2'd0, 2'd1, 2'd2:
	  CASE_dpRespFD_OUT_BITS_19_TO_18_3_0_dpRespFD_ETC__q23 =
	      dpRespF$D_OUT[19:18];
      2'd3: CASE_dpRespFD_OUT_BITS_19_TO_18_3_0_dpRespFD_ETC__q23 = 2'd3;
    endcase
  end
  always@(dpRespF$D_OUT)
  begin
    case (dpRespF$D_OUT[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_dpRespFD_OUT_BITS_9_TO_8_3_0_dpRespFD_O_ETC__q24 =
	      dpRespF$D_OUT[9:8];
      2'd3: CASE_dpRespFD_OUT_BITS_9_TO_8_3_0_dpRespFD_O_ETC__q24 = 2'd3;
    endcase
  end

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (!RST_N)
      begin
        eDoReq <= `BSV_ASSIGNMENT_DELAY 1'd0;
	ptr <= `BSV_ASSIGNMENT_DELAY 4'd0;
      end
    else
      begin
        if (eDoReq$EN) eDoReq <= `BSV_ASSIGNMENT_DELAY eDoReq$D_IN;
	if (ptr$EN) ptr <= `BSV_ASSIGNMENT_DELAY ptr$D_IN;
      end
    if (eAddr$EN) eAddr <= `BSV_ASSIGNMENT_DELAY eAddr$D_IN;
    if (eDAddr$EN) eDAddr <= `BSV_ASSIGNMENT_DELAY eDAddr$D_IN;
    if (eDMH$EN) eDMH <= `BSV_ASSIGNMENT_DELAY eDMH$D_IN;
    if (eData$EN) eData <= `BSV_ASSIGNMENT_DELAY eData$D_IN;
    if (eMAddr$EN) eMAddr <= `BSV_ASSIGNMENT_DELAY eMAddr$D_IN;
    if (ePli$EN) ePli <= `BSV_ASSIGNMENT_DELAY ePli$D_IN;
    if (eTyp$EN) eTyp <= `BSV_ASSIGNMENT_DELAY eTyp$D_IN;
    if (eeDat$EN) eeDat <= `BSV_ASSIGNMENT_DELAY eeDat$D_IN;
    if (eeDmh$EN) eeDmh <= `BSV_ASSIGNMENT_DELAY eeDmh$D_IN;
    if (eeMDst$EN) eeMDst <= `BSV_ASSIGNMENT_DELAY eeMDst$D_IN;
    if (eePli$EN) eePli <= `BSV_ASSIGNMENT_DELAY eePli$D_IN;
    if (isWrtResp$EN) isWrtResp <= `BSV_ASSIGNMENT_DELAY isWrtResp$D_IN;
    if (uMAddr$EN) uMAddr <= `BSV_ASSIGNMENT_DELAY uMAddr$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    eAddr = 32'hAAAAAAAA;
    eDAddr = 48'hAAAAAAAAAAAA;
    eDMH = 32'hAAAAAAAA;
    eData = 32'hAAAAAAAA;
    eDoReq = 1'h0;
    eMAddr = 48'hAAAAAAAAAAAA;
    ePli = 16'hAAAA;
    eTyp = 16'hAAAA;
    eeDat = 32'hAAAAAAAA;
    eeDmh = 32'hAAAAAAAA;
    eeMDst = 48'hAAAAAAAAAAAA;
    eePli = 16'hAAAA;
    isWrtResp = 1'h0;
    ptr = 4'hA;
    uMAddr = 48'hAAAAAAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkEDDPAdapter

