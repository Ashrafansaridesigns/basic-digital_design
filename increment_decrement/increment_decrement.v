`timescale 1ns / 1ps

module increment_decrement(
input [7:0] d_in,
input clk,clr,ld,mode,
output reg [7:0] count);

always@(posedge clk)begin
if(clr)begin
count <= 8'b0000_0000;
end
else if(ld)begin
count <= d_in;

end
else if(mode)begin
count <= count+1;
end
else begin
count <= count-1;
end
end
endmodule
