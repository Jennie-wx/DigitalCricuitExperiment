module Dflipflopshujuliuwxwjw(CLK,D,Q);
input CLK;
input D;
output Q;
wire f1,f2,f3,f4,f5,f6;
assign f6=~(D&f4);
assign f5=~(f6&f3);
assign f4=~(CLK&f3&f6);
assign f3=~(CLK&f5);
assign f2=~(f1&f4);
assign f1=~(f3&f2);
assign Q=f1;
endmodule 