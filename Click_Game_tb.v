`timescale 1ns/1ns
module Click_Game_tb;
  
  reg clk,reset,en,D,E,start;
  reg up;

  wire tc,td;	
  wire [6:0] n;
  wire [6:0] k;
  wire [6:0] s;
  wire [6:0] m;
  wire [6:0] l;
  wire [6:0] t;
  
  lab1 UUT(
  .clk(clk),
  .reset(reset),
  .en(en),
  .D(D),
  .E(E),
  .up(up),
  .n(n),
  .k(k),
  .s(s),
  .m(m),
  .l(l),
  .t(t),
  .start(start),
  .tc(tc),
  .td(td)
   );
	
 
 
 initial begin
  clk = 0;
  D = 0;
  E =0;
  start=0;
  forever #50 clk = ~clk;
 // forever #200 D = ~D;
  end
 
 
 initial begin
 reset=1;
  #30 reset = 0;
   end
  
  initial begin
  en = 0;
  #30 en = 1; start = 1;
  end
  
  initial begin
  up = 0;
  #200 D = 1;
  forever #100 D = ~D;
 // forever #80 E = ~E;
  end
  
  initial begin
  forever #80 E = ~E;
  end
    
endmodule
