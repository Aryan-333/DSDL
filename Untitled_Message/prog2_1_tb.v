`timescale 1ns/1ns
`include "prog2_1.v"
module prog2_1_tb();

reg a,b,c,d;
wire f;

prog2_1 uut(a,b,c,d,f);
initial begin

	$dumpfile("prog2_1_tb.vcd");
	$dumpvars(0,prog2_1_tb);
	
	a=0;b=0;c=0;d=0;#20;
	
	a=0;b=0;c=0;d=1;#20;
	
	a=0;b=0;c=1;d=0;#20;
	
	a=0;b=0;c=1;d=1;#20;
	
	a=0;b=1;c=0;d=0;#20;
	
	a=0;b=1;c=0;d=1;#20;
	
	a=0;b=1;c=1;d=0;#20;
	
	a=0;b=1;c=1;d=1;#20;
	
	a=1;b=0;c=0;d=0;#20;
	
	a=1;b=0;c=0;d=1;#20;
	
	a=1;b=0;c=1;d=0;#20;
	
	a=1;b=0;c=1;d=1;#20;
	
	a=1;b=1;c=0;d=0;#20;
	
	a=1;b=1;c=0;d=1;#20;
	
	a=1;b=1;c=1;d=0;#20;
	
	a=1;b=1;c=1;d=1;#20;


$display("Test Complete");
end
endmodule