module shiyan2 (wdata, wa,wb,wc,wd,we,wf,wg,sel);
input [3:0] wdata;
output wa,wb,wc,wd,we,wf,wg;
output sel;
reg wa,wb,wc,wd,we,wf,wg ;
assign sel=1'b0;
always @(wdata)
begin 
case(wdata)
4'b0000:{wa,wb,wc,wd,we,wf,wg}= 7'b1111110; 
4'b0001:{wa,wb,wc,wd,we,wf,wg}= 7'b0110000; 
4'b0010:{wa,wb,wc,wd,we,wf,wg}= 7'b1101101; 
4'b0011:{wa,wb,wc,wd,we,wf,wg}= 7'b1111001; 
4'b0100:{wa,wb,wc,wd,we,wf,wg}= 7'b0110011; 
4'b0101:{wa,wb,wc,wd,we,wf,wg}= 7'b1011011; 
4'b0110:{wa,wb,wc,wd,we,wf,wg}= 7'b1011111; 
4'b0111:{wa,wb,wc,wd,we,wf,wg}= 7'b1110000; 
4'b1000:{wa,wb,wc,wd,we,wf,wg}= 7'b1111111; 
4'b1001:{wa,wb,wc,wd,we,wf,wg}= 7'b1111011; 
default:{wa,wb,wc,wd,we,wf,wg} =7'bx;
endcase
end
endmodule