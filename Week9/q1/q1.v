module q1(w,f);
	input [3:0] w;
	output f;
	reg [15:0] k;
	integer i;
	always@(w)
	begin
		for(i=0;i<16;i=i+1)
		begin
			if(w == i)
				k[i] = 1;
			else
				k[i] = 0;
		end
	end
	assign f = k[1] | k[3] | k[6] | k[7] | k[9] | k[14] | k[15];
endmodule