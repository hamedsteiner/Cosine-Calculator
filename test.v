`timescale 1 ns/ 1 ns
module finaltest();
  
  reg start, rst, clk;
  reg [15:0] X;
  wire done;
  wire [15:0] CosX  ;
  
  hamed steinsgate (done, start, clk, rst,  CosX, X);
  
  initial begin 
    clk = 0;
    repeat (100) #2000
    clk = ~clk;
  end
  
  initial begin 
    #400
    start = 0;
    #100
    start = 1;
    #4000;
    start = 0;
    X = 16'b0000001100100100;
    #200000
    $stop;
  end
  
endmodule
