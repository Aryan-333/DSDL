module prog2_2(a,b,c,d,f);
input a,b,c,d;
output f;
assign f = (~b|c|d)&(~c|~b|a)&(~a|b|~d)&(~a|b|~c);
endmodule