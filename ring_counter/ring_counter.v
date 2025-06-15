`timescale 1ns / 1ps

module ring_counter(
input clk,clr,mode,
input [3:0] init,
output reg [3:0] count);

always@(posedge clk)begin
if(clr)begin
count <= 4'b0000;
end
else if(mode)begin
count <= init;
end
else begin
count <= {count[2:0], count[3]};
end
end
endmodule
