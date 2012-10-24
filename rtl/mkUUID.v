//
// Generated by Bluespec Compiler, version 2012.09.beta1 (build 29570, 2012-09.11)
//
// On Wed Oct 24 10:24:50 EDT 2012
//
//
// Ports:
// Name                         I/O  size props
// uuid                           O   512 const
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

module mkUUID(uuid);
  // value method uuid
  output [511 : 0] uuid;

  // signals for module outputs
  wire [511 : 0] uuid;

  // value method uuid
  assign uuid =
	     512'hF0000000E0000000D0000000C0000000B0000000A000000090000000800000007000000060000000500000004000000030000000200000001000000000000000 ;
endmodule  // mkUUID

