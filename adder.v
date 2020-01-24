`timescale 1ns/1ns

module adder(input [15:0] term, result, input flag, output [15:0] out);
	assign out = (~flag) ? (result + term): (result - term);
endmodule
