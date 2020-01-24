`timescale 1ns/1ns

module rom(input [2:0] sel, output [15:0] out);

	assign out = (sel == 3'b000) ? 16'b0000000010000000 : 
						  (sel == 3'b001) ? 16'b0000000000010101 : 
						  (sel == 3'b010) ? 16'b0000000000001000 : 
						  (sel == 3'b011) ? 16'b0000000000000100 : 
						  (sel == 3'b100) ? 16'b0000000000000010 : 
						  (sel == 3'b101) ? 16'b0000000000000001 : 
						  (sel == 3'b110) ? 16'b0000000000000001 :
												  16'b0000000100000000;

endmodule