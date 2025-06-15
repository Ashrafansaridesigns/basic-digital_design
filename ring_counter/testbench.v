`timescale 1ns / 1ps

module ring_counter_tb();
reg clk, clr, mode;
reg [3:0] init;
wire [3:0] count;

ring_counter dut (.clk(clk),.clr(clr),.mode(mode),.init(init),.count(count));
initial begin
    clk = 0;
    forever #5 clk = ~clk;  
end
initial begin

    $monitor("Time=%0t | clr=%b mode=%b init=%b count=%b", $time, clr, mode, init, count);
    clr = 1; mode = 0; init = 4'b1000;
    #10;
    clr = 0;
    #10;
    mode = 1; 
    #10;
    mode = 0;
    #100;
    mode =1;
    #10;
    init = 4'b1010;
    #10;
    mode = 0;
    #100;
    clr = 1;
    #10;
    $finish;
end

endmodule

