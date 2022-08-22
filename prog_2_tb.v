`timescale 1ns/1ns
`include "prog_2.v"
module prog_2_tb;

reg a,b,c,d;
wire f,g;

prog_2 uut(a,b,c,d,f,g);
initial begin

	$dumpfile("prog_2_tb.vcd");
	$dumpvars(0,prog_2_tb);
	
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