`timescale 1ns / 1ps


module increment_decrement_tb();
reg clk,clr,ld,mode;
reg [7:0] d_in;
wire [7:0] count;

increment_decrement dut (.clk(clk),.clr(clr),.ld(ld),.mode(mode),.d_in(d_in),.count(count));

initial begin
clk = 0;
d_in = 8'b0000_1001;
forever #5 clk = ~clk;
end
initial begin
#5 clr = 1; ld = 0; mode = 0;
#5 clr = 0; ld = 1; mode = 0;
#10 clr = 0; ld = 0; mode = 1;
#20 clr = 0; ld = 0; mode = 0;
#100;
$finish;
end
endmodule
