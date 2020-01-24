`timescale 1ns/1ns

module Mult16bit(input [15:0] A, B, output [31:0] Mult_Out);
	assign Mult_Out = (A * B);
endmodule
