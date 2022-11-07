module Q1(w0,w1,w2,w3,s0,s1,f);
input w0,w1,w2,w3,s0,s1;
output f;
mux21 stage1(w0,w1,s0,f0);
mux21 stage2(w1,w2,s0,f1);
mux21 stage3(f0,f1,s1,f);
endmodule

module mux21 (w0, w1, s, f);
input w0, w1, s;
output f;
reg f;
always @(w0 or w1 or s)
begin
	if(s==0)
		assign f=w0;
	else
		assign f=w1;
end
endmodule