//
// Generated by Bluespec Compiler, version 2012.09.beta1 (build 29570, 2012-09.11)
//
// On Sat Sep 29 10:53:29 EDT 2012
//
//
// Ports:
// Name                         I/O  size props
// host_request_get               O     8 reg
// RDY_host_request_get           O     1 reg
// RDY_host_response_put          O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// host_response_put              I     8 reg
// EN_host_response_put           I     1
// EN_host_request_get            I     1
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

module mkSimIO(CLK,
	       RST_N,

	       EN_host_request_get,
	       host_request_get,
	       RDY_host_request_get,

	       host_response_put,
	       EN_host_response_put,
	       RDY_host_response_put);
  input  CLK;
  input  RST_N;

  // actionvalue method host_request_get
  input  EN_host_request_get;
  output [7 : 0] host_request_get;
  output RDY_host_request_get;

  // action method host_response_put
  input  [7 : 0] host_response_put;
  input  EN_host_response_put;
  output RDY_host_response_put;

  // signals for module outputs
  wire [7 : 0] host_request_get;
  wire RDY_host_request_get, RDY_host_response_put;

  // register cp2hByteCount
  reg [31 : 0] cp2hByteCount;
  wire [31 : 0] cp2hByteCount$D_IN;
  wire cp2hByteCount$EN;

  // register h2cpByteCount
  reg [31 : 0] h2cpByteCount;
  wire [31 : 0] h2cpByteCount$D_IN;
  wire h2cpByteCount$EN;

  // register r_hdl
  reg [32 : 0] r_hdl;
  wire [32 : 0] r_hdl$D_IN;
  wire r_hdl$EN;

  // register skipCnt
  reg [15 : 0] skipCnt;
  wire [15 : 0] skipCnt$D_IN;
  wire skipCnt$EN;

  // register w_hdl
  reg [32 : 0] w_hdl;
  wire [32 : 0] w_hdl$D_IN;
  wire w_hdl$EN;

  // ports of submodule reqF
  wire [7 : 0] reqF$D_IN, reqF$D_OUT;
  wire reqF$CLR, reqF$DEQ, reqF$EMPTY_N, reqF$ENQ, reqF$FULL_N;

  // ports of submodule respF
  wire [7 : 0] respF$D_IN, respF$D_OUT;
  wire respF$CLR, respF$DEQ, respF$EMPTY_N, respF$ENQ, respF$FULL_N;

  // rule scheduling signals
  wire WILL_FIRE_RL_do_r_char, WILL_FIRE_RL_do_w_char;

  // inputs to muxes for submodule ports
  wire [32 : 0] MUX_r_hdl$write_1__VAL_2;
  wire MUX_r_hdl$write_1__SEL_1;

  // remaining internal signals
  reg [63 : 0] v__h1120, v__h1319, v__h1673;
  reg [31 : 0] TASK_fopen___d13, TASK_fopen___d8, b__h960;

  // actionvalue method host_request_get
  assign host_request_get = reqF$D_OUT ;
  assign RDY_host_request_get = reqF$EMPTY_N ;

  // action method host_response_put
  assign RDY_host_response_put = respF$FULL_N ;

  // submodule reqF
  FIFO2 #(.width(32'd8), .guarded(32'd1)) reqF(.RST(RST_N),
					       .CLK(CLK),
					       .D_IN(reqF$D_IN),
					       .ENQ(reqF$ENQ),
					       .DEQ(reqF$DEQ),
					       .CLR(reqF$CLR),
					       .D_OUT(reqF$D_OUT),
					       .FULL_N(reqF$FULL_N),
					       .EMPTY_N(reqF$EMPTY_N));

  // submodule respF
  FIFO2 #(.width(32'd8), .guarded(32'd1)) respF(.RST(RST_N),
						.CLK(CLK),
						.D_IN(respF$D_IN),
						.ENQ(respF$ENQ),
						.DEQ(respF$DEQ),
						.CLR(respF$CLR),
						.D_OUT(respF$D_OUT),
						.FULL_N(respF$FULL_N),
						.EMPTY_N(respF$EMPTY_N));

  // rule RL_do_r_char
  assign WILL_FIRE_RL_do_r_char =
	     reqF$FULL_N && r_hdl[32] && skipCnt == 16'd0 ;

  // rule RL_do_w_char
  assign WILL_FIRE_RL_do_w_char = respF$EMPTY_N && w_hdl[32] ;

  // inputs to muxes for submodule ports
  assign MUX_r_hdl$write_1__SEL_1 =
	     WILL_FIRE_RL_do_r_char && b__h960 == 32'hFFFFFFFF ;
  assign MUX_r_hdl$write_1__VAL_2 = { 1'd1, TASK_fopen___d8 } ;

  // register cp2hByteCount
  assign cp2hByteCount$D_IN = cp2hByteCount + 32'd1 ;
  assign cp2hByteCount$EN = WILL_FIRE_RL_do_w_char ;

  // register h2cpByteCount
  assign h2cpByteCount$D_IN = h2cpByteCount + 32'd1 ;
  assign h2cpByteCount$EN =
	     WILL_FIRE_RL_do_r_char && b__h960 != 32'hFFFFFFFF ;

  // register r_hdl
  assign r_hdl$D_IN =
	     MUX_r_hdl$write_1__SEL_1 ?
	       33'h0AAAAAAAA :
	       MUX_r_hdl$write_1__VAL_2 ;
  assign r_hdl$EN =
	     WILL_FIRE_RL_do_r_char && b__h960 == 32'hFFFFFFFF || !r_hdl[32] ;

  // register skipCnt
  assign skipCnt$D_IN = (skipCnt == 16'd0) ? 16'd255 : skipCnt - 16'd1 ;
  assign skipCnt$EN = 1'd1 ;

  // register w_hdl
  assign w_hdl$D_IN = { 1'd1, TASK_fopen___d13 } ;
  assign w_hdl$EN = !w_hdl[32] ;

  // submodule reqF
  assign reqF$D_IN = b__h960[7:0] ;
  assign reqF$ENQ = WILL_FIRE_RL_do_r_char && b__h960 != 32'hFFFFFFFF ;
  assign reqF$DEQ = EN_host_request_get ;
  assign reqF$CLR = 1'b0 ;

  // submodule respF
  assign respF$D_IN = host_response_put ;
  assign respF$ENQ = EN_host_response_put ;
  assign respF$DEQ = WILL_FIRE_RL_do_w_char ;
  assign respF$CLR = 1'b0 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        cp2hByteCount <= `BSV_ASSIGNMENT_DELAY 32'd0;
	h2cpByteCount <= `BSV_ASSIGNMENT_DELAY 32'd0;
	r_hdl <= `BSV_ASSIGNMENT_DELAY 33'h0AAAAAAAA;
	skipCnt <= `BSV_ASSIGNMENT_DELAY 16'd255;
	w_hdl <= `BSV_ASSIGNMENT_DELAY 33'h0AAAAAAAA;
      end
    else
      begin
        if (cp2hByteCount$EN)
	  cp2hByteCount <= `BSV_ASSIGNMENT_DELAY cp2hByteCount$D_IN;
	if (h2cpByteCount$EN)
	  h2cpByteCount <= `BSV_ASSIGNMENT_DELAY h2cpByteCount$D_IN;
	if (r_hdl$EN) r_hdl <= `BSV_ASSIGNMENT_DELAY r_hdl$D_IN;
	if (skipCnt$EN) skipCnt <= `BSV_ASSIGNMENT_DELAY skipCnt$D_IN;
	if (w_hdl$EN) w_hdl <= `BSV_ASSIGNMENT_DELAY w_hdl$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    cp2hByteCount = 32'hAAAAAAAA;
    h2cpByteCount = 32'hAAAAAAAA;
    r_hdl = 33'h0AAAAAAAA;
    skipCnt = 16'hAAAA;
    w_hdl = 33'h0AAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (!r_hdl[32])
	begin
	  TASK_fopen___d8 = $fopen("/tmp/OpenCPI0_Req", "r");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (!w_hdl[32])
	begin
	  TASK_fopen___d13 = $fopen("/tmp/OpenCPI0_Resp", "w");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_do_r_char)
	begin
	  b__h960 = $fgetc(r_hdl[31:0]);
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_do_r_char && b__h960 == 32'hFFFFFFFF)
	begin
	  v__h1120 = $time;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_do_r_char && b__h960 == 32'hFFFFFFFF)
	$display("[%0d]: do_r_char fgetc returned -1 after %0d Bytes",
		 v__h1120,
		 h2cpByteCount);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_do_r_char && b__h960 == 32'hFFFFFFFF)
	$fclose(r_hdl[31:0]);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_do_r_char && b__h960 != 32'hFFFFFFFF)
	begin
	  v__h1319 = $time;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_do_r_char && b__h960 != 32'hFFFFFFFF)
	$display("[%0d]: get_cp read 0x%x  readCount:%0d ",
		 v__h1319,
		 b__h960[7:0],
		 h2cpByteCount);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_do_w_char) $fwrite(w_hdl[31:0], "%c", respF$D_OUT);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_do_w_char) $fflush(w_hdl[31:0]);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_do_w_char)
	begin
	  v__h1673 = $time;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_do_w_char)
	$display("[%0d]: get_cp write 0x%x  writeCount:%0d ",
		 v__h1673,
		 respF$D_OUT,
		 cp2hByteCount);
  end
  // synopsys translate_on
endmodule  // mkSimIO
