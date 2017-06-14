module victory(clk, tcread,rst,ledout);
input tcread, clk;
input rst;
output ledout;


reg ledout;


always @(posedge clk)begin	
	if(rst)	ledout <= 0;
	else if (tcread) ledout <= tcread;
end
endmodule
