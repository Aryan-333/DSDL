`timescale 1ns/1ns
`include "q1.v"
module q1_tb();
reg a,b,c,en;
wire [7:0]y;
q1 qn1(a, b, c, en, y);
initial
begin
      //$monitor("en=%b a=%b b=%b y=%b",en,a,b,y);
      $dumpfile("q1_tb.vcd");
      $dumpvars(0, q1_tb);
      //en=0;a=1'bx;b=1'bx; c=1'bx;
      //#20;
      en=1;a=0;b=0; c=0;
      #20;
      en=1;a=0;b=0; c=1;
      #20;
      en=1;a=0;b=1; c=0;
      #20;
      en=1;a=0;b=1; c=1;
      #20;
      en=1;a=1;b=0; c=0;
      #20;
      en=1;a=1;b=0; c=1;
      #20;
      en=1;a=1;b=1; c=0;
      #20;
      en=1;a=1;b=1; c=1;
      #20;
      $display("test complete");
end
endmodule
