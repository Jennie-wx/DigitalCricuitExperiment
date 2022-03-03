module Dlatchxingweiwxwjw(EN,D,Q);
input EN;
input [4:1] D;
output [4:1] Q;
reg [4:1] Q;
always @(EN or D)
begin
if(EN==1)
Q=D;
else;
end
endmodule
