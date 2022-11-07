`timescale 1ns/1ns
`include "Q1.v"

module Q1_tb();
reg w0,w1,w2,w3,s0,s1;
wire f;

Q1 m1(w0,w1,w2,w3,s0,s1,f);
initial
begin
$dumpfile("Q1_tb.vcd");
$dumpvars(0,Q1_tb);

s1=0;s0=0;w0=0;w1=0;w2=0;w3=1;#20;
s1=1;s0=0;w0=0;w1=0;w2=1;w3=0;#20;
s1=0;s0=1;w0=0;w1=0;w2=1;w3=1;#20;
s1=0;s0=0;w0=0;w1=1;w2=0;w3=1;#20;
s1=0;s0=0;w0=0;w1=1;w2=1;w3=1;#20;
s1=1;s0=0;w0=1;w1=0;w2=0;w3=0;#20;
s1=0;s0=0;w0=1;w1=0;w2=1;w3=0;#20;
s1=0;s0=1;w0=1;w1=0;w2=1;w3=1;#20;
s1=0;s0=1;w0=1;w1=1;w2=0;w3=0;#20;
s1=1;s0=1;w0=1;w1=1;w2=1;w3=1;#20;

$display("Test Complete");
end
endmodule