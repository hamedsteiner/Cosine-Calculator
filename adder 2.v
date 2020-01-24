`timescale 1ns/1ns

module FA16bit(input [15:0] term, result, input flag, output [15:0] FA_Out);
	assign FA_Out = (~flag) ? (result + term): (result - term);
endmodule
