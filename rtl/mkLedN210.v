//
// Generated by Bluespec Compiler, version 2012.09.beta1 (build 29570, 2012-09.11)
//
// On Thu Nov  1 15:45:37 EDT 2012
//
//
// Ports:
// Name                         I/O  size props
// RDY_ledDrive                   O     1 const
// led                            O     5
// CLK                            I     1 clock
// RST_N                          I     1 reset
// ledDrive_i                     I     5 reg
// EN_ledDrive                    I     1
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

module mkLedN210(CLK,
		 RST_N,

		 ledDrive_i,
		 EN_ledDrive,
		 RDY_ledDrive,

		 led);
  input  CLK;
  input  RST_N;

  // action method ledDrive
  input  [4 : 0] ledDrive_i;
  input  EN_ledDrive;
  output RDY_ledDrive;

  // value method led
  output [4 : 0] led;

  // signals for module outputs
  wire [4 : 0] led;
  wire RDY_ledDrive;

  // register doInit
  reg doInit;
  wire doInit$D_IN, doInit$EN;

  // register freeCnt
  reg [31 : 0] freeCnt;
  wire [31 : 0] freeCnt$D_IN;
  wire freeCnt$EN;

  // register ledReg
  reg [4 : 0] ledReg;
  wire [4 : 0] ledReg$D_IN;
  wire ledReg$EN;

  // remaining internal signals
  reg [4 : 0] CASE_freeCnt_BITS_25_TO_23_3_0_IF_freeCnt_BIT__ETC__q1;
  wire [4 : 0] x__h621, x__h622;

  // action method ledDrive
  assign RDY_ledDrive = 1'd1 ;

  // value method led
  assign led =
	     doInit ?
	       CASE_freeCnt_BITS_25_TO_23_3_0_IF_freeCnt_BIT__ETC__q1 :
	       ~x__h621 ;

  // register doInit
  assign doInit$D_IN = 1'd0 ;
  assign doInit$EN = freeCnt > 32'h08000000 ;

  // register freeCnt
  assign freeCnt$D_IN = freeCnt + 32'd1 ;
  assign freeCnt$EN = 1'd1 ;

  // register ledReg
  assign ledReg$D_IN = ledDrive_i ;
  assign ledReg$EN = EN_ledDrive ;

  // remaining internal signals
  assign x__h621 = x__h622 | ledReg ;
  assign x__h622 = freeCnt[23] ? 5'h01 : 5'h0 ;
  always@(freeCnt)
  begin
    case (freeCnt[25:23])
      3'd0, 3'd1, 3'd2, 3'd6, 3'd7:
	  CASE_freeCnt_BITS_25_TO_23_3_0_IF_freeCnt_BIT__ETC__q1 =
	      freeCnt[21] ? 5'd3 : 5'd31;
      3'd3: CASE_freeCnt_BITS_25_TO_23_3_0_IF_freeCnt_BIT__ETC__q1 = 5'd27;
      3'd4: CASE_freeCnt_BITS_25_TO_23_3_0_IF_freeCnt_BIT__ETC__q1 = 5'd19;
      3'd5: CASE_freeCnt_BITS_25_TO_23_3_0_IF_freeCnt_BIT__ETC__q1 = 5'd3;
    endcase
  end

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        doInit <= `BSV_ASSIGNMENT_DELAY 1'd1;
	freeCnt <= `BSV_ASSIGNMENT_DELAY 32'd0;
	ledReg <= `BSV_ASSIGNMENT_DELAY 5'd0;
      end
    else
      begin
        if (doInit$EN) doInit <= `BSV_ASSIGNMENT_DELAY doInit$D_IN;
	if (freeCnt$EN) freeCnt <= `BSV_ASSIGNMENT_DELAY freeCnt$D_IN;
	if (ledReg$EN) ledReg <= `BSV_ASSIGNMENT_DELAY ledReg$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    doInit = 1'h0;
    freeCnt = 32'hAAAAAAAA;
    ledReg = 5'h0A;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkLedN210

