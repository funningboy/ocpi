Version 4
SymbolType BLOCK
TEXT 32 32 LEFT 4 duc_ddc_compiler_v1_0
RECTANGLE Normal 32 32 480 1696
LINE Normal 0 80 32 80
PIN 0 80 LEFT 36
PINATTR PinName clk
PINATTR Polarity IN
LINE Normal 0 112 32 112
PIN 0 112 LEFT 36
PINATTR PinName data_resetn
PINATTR Polarity IN
LINE Normal 0 144 32 144
PIN 0 144 LEFT 36
PINATTR PinName sdata_valid
PINATTR Polarity IN
LINE Normal 0 176 32 176
PIN 0 176 LEFT 36
PINATTR PinName sdata_ready
PINATTR Polarity OUT
LINE Wide 0 208 32 208
PIN 0 208 LEFT 36
PINATTR PinName sdata_r[15:0]
PINATTR Polarity IN
LINE Normal 512 80 480 80
PIN 512 80 RIGHT 36
PINATTR PinName mdata_valid
PINATTR Polarity OUT
LINE Normal 512 112 480 112
PIN 512 112 RIGHT 36
PINATTR PinName mdata_ready
PINATTR Polarity IN
LINE Wide 512 144 480 144
PIN 512 144 RIGHT 36
PINATTR PinName mdata_i[15:0]
PINATTR Polarity OUT
LINE Wide 512 176 480 176
PIN 512 176 RIGHT 36
PINATTR PinName mdata_q[15:0]
PINATTR Polarity OUT
LINE Normal 512 1008 480 1008
PIN 512 1008 RIGHT 36
PINATTR PinName mdata_last
PINATTR Polarity OUT
LINE Normal 512 1040 480 1040
PIN 512 1040 RIGHT 36
PINATTR PinName mdata_clean
PINATTR Polarity OUT
LINE Normal 0 1392 32 1392
PIN 0 1392 LEFT 36
PINATTR PinName sreg_presetn
PINATTR Polarity IN
LINE Wide 0 1424 32 1424
PIN 0 1424 LEFT 36
PINATTR PinName sreg_paddr[11:0]
PINATTR Polarity IN
LINE Normal 0 1456 32 1456
PIN 0 1456 LEFT 36
PINATTR PinName sreg_psel
PINATTR Polarity IN
LINE Normal 0 1488 32 1488
PIN 0 1488 LEFT 36
PINATTR PinName sreg_penable
PINATTR Polarity IN
LINE Normal 0 1520 32 1520
PIN 0 1520 LEFT 36
PINATTR PinName sreg_pwrite
PINATTR Polarity IN
LINE Wide 0 1552 32 1552
PIN 0 1552 LEFT 36
PINATTR PinName sreg_pwdata[31:0]
PINATTR Polarity IN
LINE Normal 0 1584 32 1584
PIN 0 1584 LEFT 36
PINATTR PinName sreg_pready
PINATTR Polarity OUT
LINE Wide 0 1616 32 1616
PIN 0 1616 LEFT 36
PINATTR PinName sreg_prdata[31:0]
PINATTR Polarity OUT
LINE Normal 0 1648 32 1648
PIN 0 1648 LEFT 36
PINATTR PinName sreg_pslverr
PINATTR Polarity OUT
LINE Normal 512 1072 480 1072
PIN 512 1072 RIGHT 36
PINATTR PinName int_missinput
PINATTR Polarity OUT
LINE Normal 512 1104 480 1104
PIN 512 1104 RIGHT 36
PINATTR PinName int_errpacket
PINATTR Polarity OUT
LINE Normal 512 1136 480 1136
PIN 512 1136 RIGHT 36
PINATTR PinName int_lostoutput
PINATTR Polarity OUT
LINE Normal 512 1168 480 1168
PIN 512 1168 RIGHT 36
PINATTR PinName int_ducddc
PINATTR Polarity OUT

