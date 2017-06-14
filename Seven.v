module Seven_Segment_ten(i,n);
  
  parameter bit = 4;
  parameter output_bit = 7;
  
  input [bit-1:0]i;
  output [output_bit-1:0]n;
  
  reg [output_bit-1:0]n;
  
 
  always @(*) begin
	 if(i == 4'b0000) n<= 7'b000_1000;       //F
    else if(i == 4'b0001) n <= 7'b100_0000;       //0
    else if(i == 4'b0010) n <= 7'b111_1001;       //1
    else if(i == 4'b0011) n <= 7'b010_0100;       //2
    else if(i == 4'b0100) n <= 7'b011_0000;       //3
    else if(i == 4'b0101) n <= 7'b001_1001;       //4
    else if(i == 4'b0110) n <= 7'b001_0010;       //5
    else if(i == 4'b0111) n <= 7'b000_0010;       //6
    else if(i == 4'b1000) n <= 7'b101_1000;       //7
    else if(i == 4'b1001) n <= 7'b000_0000;      //8
    else if(i == 4'b1010) n <= 7'b001_0000;       //9
    else if(i == 4'b1011) n <= 7'b000_0011;       //B
    else if(i == 4'b1100) n <= 7'b100_0110;       //C
    else if(i == 4'b1101) n <= 7'b010_0001;       //D
    else if(i == 4'b1110) n <= 7'b000_0110;       //E
    else n <= 7'b000_1110;                            //F
   
    end
  endmodule

