module prog2_1(a,b,c,d,f);
input a,b,c,d;
output f;
assign f = (b|c)&(~b|d);
endmodule