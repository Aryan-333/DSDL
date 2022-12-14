`timescale 1ns/1ns
`include "q1.v" 
module q1_tb();
reg clock, set,clear; 
wire [3:0] Q;
ringc r1(clock, clear,set, Q);
initial
begin
	$dumpfile("q1_tb.vcd");
	$dumpvars(0, q1_tb);
	clock=0;
	forever #20 clock = ~clock;
end
initial begin
	clear = 0; 
	set = 1; #40;
	set = 0;
	clear = 1;
	#320;
	$display("Test complete");
	$finish;
	
end
endmodule