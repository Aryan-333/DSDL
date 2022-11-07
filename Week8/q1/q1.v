module q1(a, b, c, en, y);
input en, a, b, c;
output [7:0]y;
wire [1:0]e;
assign e[0] = en & ~a;
assign e[1] = en & a;
dec2to4 stage0(b, c, e[0], y[3:0]);
dec2to4 stage1(b, c, e[1], y[7:4]);
endmodule

module dec2to4(a, b, en, y);
   input en,a,b;
   output reg [3:0] y;
   always @(en or a or b)
     begin
       if(en==1'b1)
         begin
           if(a==1'b0 && b==1'b0) 
           	y=4'b0001;
           else if(a==1'b0 && b==1'b1) 
           	y=4'b0010;
           else if(a==1'b1 && b==1'b0) 
           	y=4'b0100;
           else if(a==1'b1 && b==1'b1) 
           	y=4'b1000;
         end
       else
        y=4'b0000;
     end
endmodule
