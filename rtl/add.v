`timescale 1ns/1ps
module add(in_1,in_2,out_1);
input [13:0] in_1,in_2;
output [13:0] out_1;
 
assign out_1 = in_1 + in_2;
      
endmodule
