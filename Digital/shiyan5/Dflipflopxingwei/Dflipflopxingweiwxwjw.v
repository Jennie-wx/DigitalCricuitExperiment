module Dflipflopxingweiwxwjw(CLK,D,Q);
input CLK,D;
output Q;
reg Q;
always @(posedge CLK)
Q=D;
endmodule
