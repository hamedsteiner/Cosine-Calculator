`timescale 1ns/1ns

module RegT(input ld_T, init1, clk, input[15:0] in, output reg [15:0] out);

  always@ (posedge clk) begin
	 if (init1) out <= 16'b0000000100000000;
    else if(ld_T) out <=in;
  end
  
endmodule
