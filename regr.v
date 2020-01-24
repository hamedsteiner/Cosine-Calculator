`timescale 1ns/1ns

module RegR(input ldR, initr, clk, input[15:0] in, output reg [15:0] out);

  always@ (posedge clk) begin
	 if (initr) out <= 16'b0000000100000000;
    else if(ldR) out <= in;
  end
  
endmodule
