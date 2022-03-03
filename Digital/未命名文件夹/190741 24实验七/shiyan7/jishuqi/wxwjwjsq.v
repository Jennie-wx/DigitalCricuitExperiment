module wxwjwjsq(input clk,cr,ld,input[3:0]in,input[1:0]epet,output rco,a,b,c,d,e,f,g,sel,co);
	wire[3:0]q;
	
	jishuqi(clk,cr,ld,in,epet,q,rco);
	BCDqiduan(q,a,b,c,d,e,f,g,sel,co);
endmodule

module jishuqi(input clk,cr,ld,input[3:0]d,input[1:0]epet,output reg[3:0]q,output  rco);
	 always@(posedge clk)
	 begin 
	 if(~cr) q<=0;
	 else if(!ld) q<=d;
	 else if(epet==2'b11)
	 q<=q+1;
	 else q<=q;
	 end
	 assign rco=(q==4'b1111&&epet[0])?1:0;
endmodule
module BCDqiduan(data,a,b,c,d,e,f,g,sel,co);
	input[3:0]data;
	
	output a,b,c,d,e,f,g;
	output sel,co;
	reg a,b,c,d,e,f,g,sel,co;
	reg[3:0]data2;
	
	always@(data)
			begin
			sel=1'b0;
			data2=data;
		   if(data2>9) begin co=1;data2=data2-10;end
			else co=0;
			 
			case (data2)
			4'b0000:{a,b,c,d,e,f,g}=7'b1111110;
			4'b0001:{a,b,c,d,e,f,g}=7'b0110000;
			4'b0010:{a,b,c,d,e,f,g}=7'b1101101;
			4'b0011:{a,b,c,d,e,f,g}=7'b1111001;
			4'b0100:{a,b,c,d,e,f,g}=7'b0110011;
			4'b0101:{a,b,c,d,e,f,g}=7'b1011011;
			4'b0110:{a,b,c,d,e,f,g}=7'b1011111;
			4'b0111:{a,b,c,d,e,f,g}=7'b1110000; 
			4'b1000:{a,b,c,d,e,f,g}=7'b1111111;
			4'b1001:{a,b,c,d,e,f,g}=7'b1111011;
			default:{a,b,c,d,e,f,g}=7'bx;
			endcase
			end
endmodule