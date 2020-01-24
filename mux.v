`timescale 1ns/1ns

module MUX(input selX, seli, input [15:0] i, X, output reg [15:0] out);

	always @(*) begin
		if (selX) out <= X;
		else if (seli) out <= i;
	end
	
	
endmodule
