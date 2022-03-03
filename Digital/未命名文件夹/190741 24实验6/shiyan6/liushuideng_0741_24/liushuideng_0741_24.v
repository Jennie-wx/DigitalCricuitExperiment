module liushuideng_0741_24 (out,clk);
input clk;
output [7:0]out;
reg [7:0]out;
reg [2:0]state;

parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5,s6=6,s7=7;

reg clk_1hz;
reg [31:0]cnt;
always @ (posedge clk)
	begin
	if(cnt==32'd5)
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
	s0:out=8'b11111110;
	s1:out=8'b11111101;
	s2:out=8'b11111011;
	s3:out=8'b11110111;
	s4:out=8'b11101111;
	s5:out=8'b11011111;
	s6:out=8'b10111111;
	s7:out=8'b01111111;
	default out=8'b1111111;
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