module jsq(q,clk,clrn,ldn,enp,ent,in,roc);
input clk,clrn,ldn,ent,enp;
input [3:0]in;
output [3:0]q;
output roc;
reg [3:0] q;
reg roc;
always@(negedge clk)
begin 
if(clrn==0)
begin
 q<=4'b0000;
 roc <=0;
 end
 elseif ()