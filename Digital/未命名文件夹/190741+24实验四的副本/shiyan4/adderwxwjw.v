module adderwxwjw(in1,in2,out,co,n_err);
input [3:0]in1,in2;
output [3:0] out;
output co,n_err;
reg [3:0] out;
reg co,n_err;
always @ (in1 or in2)
begin
if((in1>4'b1001&&in1<=4'b1111)||(in2>4'b1001&&in2<=4'b1111))
 begin
 out=4'b0000;
 n_err=1'b0;
 end
else 
begin
   out=in1+in2;
   if(out>4'b1001) 
	begin
	{co,out}=in1+in2+4'b0110;
	n_err=1'b1;
	end
   else {n_err,co}=2'b10;
	end
end
endmodule