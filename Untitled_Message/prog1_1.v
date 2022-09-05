module prog1_1(a,b,c,d,f);
input a,b,c,d;
output f;
assign f = (b&~c&~d)|(~a&b)|(~b&c)|(c&d);
endmodule