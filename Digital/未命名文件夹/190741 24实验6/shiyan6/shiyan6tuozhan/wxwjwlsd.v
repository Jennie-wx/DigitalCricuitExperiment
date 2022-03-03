module wxwjwlsd(out,clk,sel);
input clk;
output [6:0]out;
output sel;
reg [6:0]out;
reg [3:0]state;
assign sel=1'b0;

parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5,s6=6,s7=7;

reg clk_1hz;
reg [31:0]cnt;
always @ (posedge clk)
 begin
 if(cnt==32'd2)
  begin
  clk_1hz<=~clk_1hz;
  cnt<='b0;
  end
 else 
  begin 
  cnt<= cnt +'b1;
  end
 end
 
 
always @ (state)
 case(state)
 s0:out=7'b0110000;
 s1:out=7'b1111011;
 s2:out=7'b1111110;
 s3:out=7'b1111001;
 s4:out=7'b1111110;
 s5:out=7'b0110011;
 s6:out=7'b0110000;
 s7:out=7'b1111011;
 default out=4'b11111111;
 endcase
 
always @ (posedge clk_1hz)
 case(state)
 s0:state<=s1;
 s1:state<=s2;
 s2:state<=s3;
 s3:state<=s4;
 s4:state<=s5;
 s5:state<=s6;
 s6:state<=s7;
 s7:state<=s0;
 default:state<=s0;
 endcase

endmodule
 