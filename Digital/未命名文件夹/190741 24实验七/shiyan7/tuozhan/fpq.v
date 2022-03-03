module fpq(clk_50mhz,rst,clk_1hz,clk_2hz,clk_50hz,clk_1khz);
input rst,clk_50mhz;
output clk_1hz,clk_2hz,clk_50hz,clk_1khz;
reg clk_1hz,clk_2hz,clk_50hz,clk_1khz;
reg[31:0]cnt1,cnt2,cnt3,cnt4;
parameter N=10000000;
always@(posedge clk_50mhz)
begin
if(!rst)
begin 
cnt1<=1'b0;
cnt2<=1'b0;
cnt3<=1'b0;
cnt4<=1'b0;
clk_1hz<=1'b0;
clk_2hz<=1'b0;
clk_50hz<=1'b0;
clk_1khz<=1'b0;
end
if(cnt1<32'd25_000_000)
cnt1<=cnt1+1'b1;
else
begin
cnt1<=1'b0;
clk_1hz<=~clk_1hz;
end
if(cnt2<32'd25_000_000)
cnt2<=cnt2+1'b1;
else
begin
cnt2<=1'b0;
clk_2hz<=~clk_2hz;
end
if(cnt3<32'd25_000_000)
cnt3<=cnt3+1'b1;
else
begin
cnt3<=1'b0;
clk_50hz<=~clk_50hz;
if(cnt4<32'd25_000_000)
cnt4<=cnt4+1'b1;
else
begin
cnt4<=1'b0;
clk_1khz<=~clk_1khz;
end
end
end
endmodule