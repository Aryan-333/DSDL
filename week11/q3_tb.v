`timescale 1ns/1ns
`include "q3.v" 
module q3_tb();
reg clock,clear; 
wire [3:0] Q;
async4 r1(clock,clear,Q);
initial
begin
	$dumpfile("q3_tb.vcd");
	$dumpvars(0,q3_tb);
	clock=0;
	forever #20 clock = ~clock;
end
initial begin
	clear = 0; #40;
	clear = 1; #520;
	$display("Test complete");
	$finish;
	
end
endmodule