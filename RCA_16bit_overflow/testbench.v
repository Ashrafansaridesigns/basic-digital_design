`timescale 1ns / 1ps

module rca16bit_tb();
reg [15:0] a,b;
reg cin;
wire cout,overflow;
wire [15:0] sum;

rca16bit dut (.a(a),.b(b),.cin(cin),.cout(cout),.overflow(overflow),.sum(sum));

initial begin

a=16'd9; b=16'd5;cin=1'b1;
#10; a=16'd17; b=16'd56;cin=1'b0;
#10; a=16'd556; b=16'd965;cin=1'b1;
#10; a=16'd49152; b=16'd49152;cin=1'b1;
#10; a=16'd32767; b=16'd32768;cin=1'b1;
$finish;
end

endmodule
