`timescale 1ns/1ns
`include "q2.v" 
module q2_tb();
reg clock, set,clear; 
wire [4:0] Q;
johnc j1(clock, clear,set, Q);
initial
begin
	$dumpfile("q2_tb.vcd");
	$dumpvars(0, q2_tb);
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