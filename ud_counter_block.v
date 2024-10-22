module ud_counter_block(inter_clk, clr, cnt, ld, up, c, tc);

input inter_clk, clr,cnt, ld, up;
parameter [3:0] num =4'b0001;

output tc;
output reg [3:0] c;

assign tc = (up == 1'b1)? &c : !(|c);

always @ (posedge inter_clk or negedge clr) 
begin

	if(clr == 0) 
	begin
		c <= 0;
	end
	else if (ld == 1)
	begin
		c <= num;
	end
	else
	begin
		if(cnt == 1)
		begin
			if(up == 1)
			begin
				c <= c + 1;
			end
			else
			begin
				c <= c - 1;
			end
		end
		else
		begin
			c <= c;
		end
	end
end

endmodule