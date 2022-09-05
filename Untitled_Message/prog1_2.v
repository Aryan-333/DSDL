module prog1_2(a,b,c,d,f);
input a,b,c,d;
output f;
assign f = (b&~c&~d)|(~b&c)|(~b&d);
endmodule