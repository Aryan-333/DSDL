module decomposed(cin,x0,y0,s,cout);
input cin,x0,y0;
output s,cout;
halfadder stage0(x0,y0,s0,c0);
halfadder stage1(cin,s0,s,c1);
or(cout,c0,c1);
endmodule

module halfadder(x,y,s,cout);
input x,y;
output s,cout;
assign s = x ^ y;
assign cout = x & y;
endmodule
