`timescale 1ns/1ns
`include "q2.v"
module q2_tb();
reg en;
reg [2:0]w;
wire [15:0]y;
q2 qn2(w, en, y);
initial
begin
      $dumpfile("q2_tb.vcd");
      $dumpvars(0, q2_tb);
      	en=0;w=3'bxxx;
      	#20;
      	en=1; w=3'b000;
      	#20;
      	en=1;w=3'b101;#20;
	en=1;w=3'b110;#20;
	en=1;w=3'b100;#20;
	en=1;w=3'b010;#20;
      $display("test complete");
end
endmodule
