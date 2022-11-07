module q2(w, en, y);
input [2:0]w;
input en;
output [15:0]y;
wire [1:0]e;
assign e[0] = en & ~w[3];
assign e[1] = en & w[3];
dec3to8 stage0(w[2:0], e[0], y[7:0]);
dec3to8 stage1(w[2:0], e[1], y[15:8]);
endmodule

module dec3to8(w, en, y);
input en;
input [2:0]w;
output [7:0]y;
reg [7:0]y;
integer k;
always @(en or w)
     begin
     for(k=0; k<=7; k=k+1)
     if((w == k) && (en == 1))
     	y[k]=1;
     	
     else
     	y[k]=0;
     end
endmodule
