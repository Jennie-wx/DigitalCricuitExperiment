module Dlatchshujuliu(EN,Q,D);
input D,EN;
output Q;
wire _D,f1,f2,f3,f4;
assign _D=~D;
assign f4=~(_D&EN);
assign f3=~(D&EN);
assign f2=~(f4&f1);
assign f1=~(f2&f3);
assign Q=f1;
endmodule 