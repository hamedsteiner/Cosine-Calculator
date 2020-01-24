`timescale 1ns/1ns

 module  controller(input start, clk, rst, A0, Co, output reg done, cntrst, cnten, ldR, ldT, initR, initT, ldX, flag, selX, seli);
   
   reg[2:0] ps,ns;
   
   always@(A0, ps, Co, start)begin
      {done, cntrst, cnten, ldR, ldT, initR, initT, ldX, flag, selX, seli} = 11'b00000000000;

      case(ps)
        0:begin  done = 1; ns = (start)? 1 : 0; end 
        1:begin  initR = 1; initT = 1; cntrst = 1; ns = (start) ? 1 : 2; end
        2:begin  ldX = 1; ns = 3; end
		  3:begin  ldT = 1; seli = 1; ns = 4; end
		  4:begin  ldT = 1; selX = 1; ns = 5; end
		  5:begin  ldT = 1; selX = 1; ns = 6; end
		  6:begin  cnten = 1; ldR = 1; flag = (A0) ? 0 : 1; ns = (Co) ? 0 : 3; end
        default ps = 0;
      endcase 
   end
 
 
   always@(posedge clk, posedge rst)begin
    	if(rst) ps <= 0;
    	else ps <= ns;
   end

	
endmodule
