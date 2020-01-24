`timescale 1ns/1ns

module RegX(input ldX, clk, input[15:0] in, output reg [15:0] out);

  always@ (posedge clk) begin
    if(ldX) out <= in;
  end
  
endmodule
