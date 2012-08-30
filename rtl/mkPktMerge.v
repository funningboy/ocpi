//
// Generated by Bluespec Compiler, version 2012.01.A (build 26572, 2012-01-17)
//
// On Thu Aug 30 13:28:19 EDT 2012
//
//
// Ports:
// Name                         I/O  size props
// RDY_iport0_put                 O     1
// RDY_iport1_put                 O     1
// oport_get                      O   153
// RDY_oport_get                  O     1
// CLK                            I     1 clock
// RST_N                          I     1 reset
// iport0_put                     I   153
// iport1_put                     I   153
// EN_iport0_put                  I     1
// EN_iport1_put                  I     1
// EN_oport_get                   I     1
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module mkPktMerge(CLK,
		  RST_N,

		  iport0_put,
		  EN_iport0_put,
		  RDY_iport0_put,

		  iport1_put,
		  EN_iport1_put,
		  RDY_iport1_put,

		  EN_oport_get,
		  oport_get,
		  RDY_oport_get);
  input  CLK;
  input  RST_N;

  // action method iport0_put
  input  [152 : 0] iport0_put;
  input  EN_iport0_put;
  output RDY_iport0_put;

  // action method iport1_put
  input  [152 : 0] iport1_put;
  input  EN_iport1_put;
  output RDY_iport1_put;

  // actionvalue method oport_get
  input  EN_oport_get;
  output [152 : 0] oport_get;
  output RDY_oport_get;

  // signals for module outputs
  wire [152 : 0] oport_get;
  wire RDY_iport0_put, RDY_iport1_put, RDY_oport_get;

  // register fi0Active
  reg fi0Active;
  wire fi0Active$D_IN, fi0Active$EN;

  // register fi0HasPrio
  reg fi0HasPrio;
  reg fi0HasPrio$D_IN;
  wire fi0HasPrio$EN;

  // register fi1Active
  reg fi1Active;
  wire fi1Active$D_IN, fi1Active$EN;

  // ports of submodule fi0
  wire [152 : 0] fi0$D_IN, fi0$D_OUT;
  wire fi0$CLR, fi0$DEQ, fi0$EMPTY_N, fi0$ENQ, fi0$FULL_N;

  // ports of submodule fi1
  wire [152 : 0] fi1$D_IN, fi1$D_OUT;
  wire fi1$CLR, fi1$DEQ, fi1$EMPTY_N, fi1$ENQ, fi1$FULL_N;

  // ports of submodule fo
  reg [152 : 0] fo$D_IN;
  wire [152 : 0] fo$D_OUT;
  wire fo$CLR, fo$DEQ, fo$EMPTY_N, fo$ENQ, fo$FULL_N;

  // rule scheduling signals
  wire WILL_FIRE_RL_arbitrate,
       WILL_FIRE_RL_fi0_advance,
       WILL_FIRE_RL_fi1_advance;

  // inputs to muxes for submodule ports
  wire [152 : 0] MUX_fo$enq_1__VAL_1;
  wire MUX_fi0Active$write_1__SEL_1,
       MUX_fi0Active$write_1__VAL_1,
       MUX_fi1Active$write_1__SEL_1;

  // remaining internal signals
  reg [63 : 0] v__h888;
  wire fo_RDY_enq_AND_IF_fi0HasPrio_2_THEN_fi0_RDY_de_ETC___d24;

  // action method iport0_put
  assign RDY_iport0_put = fi0$FULL_N ;

  // action method iport1_put
  assign RDY_iport1_put = fi1$FULL_N ;

  // actionvalue method oport_get
  assign oport_get = fo$D_OUT ;
  assign RDY_oport_get = fo$EMPTY_N ;

  // submodule fi0
  arSRLFIFOD #(.width(32'd153), .l2depth(32'd4)) fi0(.CLK(CLK),
						     .RST_N(RST_N),
						     .D_IN(fi0$D_IN),
						     .CLR(fi0$CLR),
						     .DEQ(fi0$DEQ),
						     .ENQ(fi0$ENQ),
						     .D_OUT(fi0$D_OUT),
						     .EMPTY_N(fi0$EMPTY_N),
						     .FULL_N(fi0$FULL_N));

  // submodule fi1
  arSRLFIFOD #(.width(32'd153), .l2depth(32'd4)) fi1(.CLK(CLK),
						     .RST_N(RST_N),
						     .D_IN(fi1$D_IN),
						     .CLR(fi1$CLR),
						     .DEQ(fi1$DEQ),
						     .ENQ(fi1$ENQ),
						     .D_OUT(fi1$D_OUT),
						     .EMPTY_N(fi1$EMPTY_N),
						     .FULL_N(fi1$FULL_N));

  // submodule fo
  arSRLFIFOD #(.width(32'd153), .l2depth(32'd4)) fo(.CLK(CLK),
						    .RST_N(RST_N),
						    .D_IN(fo$D_IN),
						    .CLR(fo$CLR),
						    .DEQ(fo$DEQ),
						    .ENQ(fo$ENQ),
						    .D_OUT(fo$D_OUT),
						    .EMPTY_N(fo$EMPTY_N),
						    .FULL_N(fo$FULL_N));

  // rule RL_arbitrate
  assign WILL_FIRE_RL_arbitrate =
	     fo_RDY_enq_AND_IF_fi0HasPrio_2_THEN_fi0_RDY_de_ETC___d24 &&
	     fi0$EMPTY_N &&
	     fi1$EMPTY_N &&
	     !fi0Active &&
	     !fi1Active ;

  // rule RL_fi0_advance
  assign WILL_FIRE_RL_fi0_advance =
	     fo$FULL_N && fi0$EMPTY_N && !fi1Active &&
	     !WILL_FIRE_RL_arbitrate ;

  // rule RL_fi1_advance
  assign WILL_FIRE_RL_fi1_advance =
	     fo$FULL_N && fi1$EMPTY_N && !fi0Active &&
	     !WILL_FIRE_RL_fi0_advance &&
	     !WILL_FIRE_RL_arbitrate ;

  // inputs to muxes for submodule ports
  assign MUX_fi0Active$write_1__SEL_1 = WILL_FIRE_RL_arbitrate && fi0HasPrio ;
  assign MUX_fi1Active$write_1__SEL_1 =
	     WILL_FIRE_RL_arbitrate && !fi0HasPrio ;
  assign MUX_fi0Active$write_1__VAL_1 =
	     fi0HasPrio ? !fi0$D_OUT[151] : !fi1$D_OUT[151] ;
  assign MUX_fo$enq_1__VAL_1 = fi0HasPrio ? fi0$D_OUT : fi1$D_OUT ;

  // register fi0Active
  assign fi0Active$D_IN =
	     MUX_fi0Active$write_1__SEL_1 ?
	       MUX_fi0Active$write_1__VAL_1 :
	       !fi0$D_OUT[151] ;
  assign fi0Active$EN =
	     WILL_FIRE_RL_arbitrate && fi0HasPrio ||
	     WILL_FIRE_RL_fi0_advance ;

  // register fi0HasPrio
  always@(WILL_FIRE_RL_arbitrate or
	  fi0HasPrio or WILL_FIRE_RL_fi0_advance or WILL_FIRE_RL_fi1_advance)
  begin
    case (1'b1) // synopsys parallel_case
      WILL_FIRE_RL_arbitrate: fi0HasPrio$D_IN = !fi0HasPrio;
      WILL_FIRE_RL_fi0_advance: fi0HasPrio$D_IN = 1'd0;
      WILL_FIRE_RL_fi1_advance: fi0HasPrio$D_IN = 1'd1;
      default: fi0HasPrio$D_IN = 1'b0 /* unspecified value */ ;
    endcase
  end
  assign fi0HasPrio$EN =
	     WILL_FIRE_RL_arbitrate || WILL_FIRE_RL_fi0_advance ||
	     WILL_FIRE_RL_fi1_advance ;

  // register fi1Active
  assign fi1Active$D_IN =
	     MUX_fi1Active$write_1__SEL_1 ?
	       MUX_fi0Active$write_1__VAL_1 :
	       !fi1$D_OUT[151] ;
  assign fi1Active$EN =
	     WILL_FIRE_RL_arbitrate && !fi0HasPrio ||
	     WILL_FIRE_RL_fi1_advance ;

  // submodule fi0
  assign fi0$D_IN = iport0_put ;
  assign fi0$CLR = 1'b0 ;
  assign fi0$DEQ =
	     WILL_FIRE_RL_arbitrate && fi0HasPrio ||
	     WILL_FIRE_RL_fi0_advance ;
  assign fi0$ENQ = EN_iport0_put ;

  // submodule fi1
  assign fi1$D_IN = iport1_put ;
  assign fi1$CLR = 1'b0 ;
  assign fi1$DEQ =
	     WILL_FIRE_RL_arbitrate && !fi0HasPrio ||
	     WILL_FIRE_RL_fi1_advance ;
  assign fi1$ENQ = EN_iport1_put ;

  // submodule fo
  always@(WILL_FIRE_RL_arbitrate or
	  MUX_fo$enq_1__VAL_1 or
	  WILL_FIRE_RL_fi0_advance or
	  fi0$D_OUT or WILL_FIRE_RL_fi1_advance or fi1$D_OUT)
  begin
    case (1'b1) // synopsys parallel_case
      WILL_FIRE_RL_arbitrate: fo$D_IN = MUX_fo$enq_1__VAL_1;
      WILL_FIRE_RL_fi0_advance: fo$D_IN = fi0$D_OUT;
      WILL_FIRE_RL_fi1_advance: fo$D_IN = fi1$D_OUT;
      default: fo$D_IN =
		   153'h0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA /* unspecified value */ ;
    endcase
  end
  assign fo$CLR = 1'b0 ;
  assign fo$DEQ = EN_oport_get ;
  assign fo$ENQ =
	     WILL_FIRE_RL_arbitrate || WILL_FIRE_RL_fi0_advance ||
	     WILL_FIRE_RL_fi1_advance ;

  // remaining internal signals
  assign fo_RDY_enq_AND_IF_fi0HasPrio_2_THEN_fi0_RDY_de_ETC___d24 =
	     fo$FULL_N && (fi0HasPrio ? fi0$EMPTY_N : fi1$EMPTY_N) ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (!RST_N)
      begin
        fi0Active <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fi0HasPrio <= `BSV_ASSIGNMENT_DELAY 1'd1;
	fi1Active <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (fi0Active$EN) fi0Active <= `BSV_ASSIGNMENT_DELAY fi0Active$D_IN;
	if (fi0HasPrio$EN)
	  fi0HasPrio <= `BSV_ASSIGNMENT_DELAY fi0HasPrio$D_IN;
	if (fi1Active$EN) fi1Active <= `BSV_ASSIGNMENT_DELAY fi1Active$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    fi0Active = 1'h0;
    fi0HasPrio = 1'h0;
    fi1Active = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N)
      if (WILL_FIRE_RL_arbitrate)
	begin
	  v__h888 = $time;
	  #0;
	end
    if (RST_N)
      if (WILL_FIRE_RL_arbitrate)
	$display("[%0d]: %m: Merge from:%d Data:%x",
		 v__h888,
		 fi0HasPrio,
		 fi0HasPrio ? fi0$D_OUT[127:0] : fi1$D_OUT[127:0]);
  end
  // synopsys translate_on
endmodule  // mkPktMerge

