`timescale 1ns/1ns

module counter(input rstcnt,cnten, clk, output Co, A0, output [2:0] out);
    
    reg[2:0] temp;
    
    always@(posedge clk)begin
      if(rstcnt) temp <= 3'b000;     
      else if (cnten) temp <= temp + 1;
    end
    
	 assign out = temp;
    assign Co = (temp == 3'b110) ? 1 : 0;
	 assign A0 = temp[0];
       
endmodule
