`include "mux_8to1_4bit.v"
module mod_8bit(input [7:0]number,output [3:0]out);
wire [2:0] select;
mux_8to1_4bit mux1(4'd10,4'd11,4'd12,4'd13,4'd3,4'd7,4'd9,4'd4,number[2:0],out);
endmodule