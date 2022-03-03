module shiyan3(wout,sel,win2,win1,en);
input [2:0]sel;
input en;
input [3:0]win1,win2;
output [3:0]wout;
reg [3:0]wout;
parameter win8=4'b0001;//1
parameter win7=4'b1001;//9
parameter win6=4'b0000;//0
parameter win5=4'b0011;//3
parameter win4=4'b0000;//0
parameter win3=4'b0100;//4
always @(sel or win2 or win1 or en)
if (!en)
case(sel)
3'b000:wout=win1;
3'b001:wout=win2;
3'b010:wout=win3;
3'b011:wout=win4;
3'b100:wout=win5;
3'b101:wout=win6;
3'b110:wout=win7;
3'b111:wout=win8;
default:wout=4'bx;
endcase
else wout=4'bx;
endmodule
