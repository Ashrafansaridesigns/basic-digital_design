`timescale 1ns / 1ps

module rca16bit(
input [15:0] a,
input [15:0] b,
input cin,
output [15:0] sum,
output cout,overflow);
wire m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14;
adder ad0(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(m0));
adder ad1(.a(a[1]),.b(b[1]),.cin(m0),.sum(sum[1]),.cout(m1));
adder ad2(.a(a[2]),.b(b[2]),.cin(m1),.sum(sum[2]),.cout(m2));
adder ad3(.a(a[3]),.b(b[3]),.cin(m2),.sum(sum[3]),.cout(m3));
adder ad4(.a(a[4]),.b(b[4]),.cin(m3),.sum(sum[4]),.cout(m4));
adder ad5(.a(a[5]),.b(b[5]),.cin(m4),.sum(sum[5]),.cout(m5));
adder ad6(.a(a[6]),.b(b[6]),.cin(m5),.sum(sum[6]),.cout(m6));
adder ad7(.a(a[7]),.b(b[7]),.cin(m6),.sum(sum[7]),.cout(m7));
adder ad8(.a(a[8]),.b(b[8]),.cin(m7),.sum(sum[8]),.cout(m8));
adder ad9(.a(a[9]),.b(b[9]),.cin(m8),.sum(sum[9]),.cout(m9));
adder ad10(.a(a[10]),.b(b[10]),.cin(m9),.sum(sum[10]),.cout(m10));
adder ad11(.a(a[11]),.b(b[11]),.cin(m10),.sum(sum[11]),.cout(m11));
adder ad12(.a(a[12]),.b(b[12]),.cin(m11),.sum(sum[12]),.cout(m12));
adder ad13(.a(a[13]),.b(b[13]),.cin(m12),.sum(sum[13]),.cout(m13));
adder ad14(.a(a[14]),.b(b[14]),.cin(m13),.sum(sum[14]),.cout(m14));
adder ad15(.a(a[15]),.b(b[15]),.cin(m14),.sum(sum[15]),.cout(cout));
 assign overflow = cout ^ m14;

endmodule

module adder(
input a,b,cin,
output reg cout,sum);
always@(*) begin
sum = a^b^cin;
cout = (a&b | b&cin | cin&a) ;
end

endmodule
