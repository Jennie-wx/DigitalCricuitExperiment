module Dlatchxingweiwxwjw(EN,D,Q);
input EN;
input D;
output Q;
reg Q;
always @(EN or D)
begin
if(EN==1)
Q=D;
else;
end
endmodule
