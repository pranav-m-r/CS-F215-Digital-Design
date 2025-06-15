`include "dff_8bit.v"
`include "mux2_1.v"
module memory (input clk,input reset,input [7:0] user,input userinput,output wire [7:0] q);
    // WRITE YOUR CODE HERE
    wire k;
    wire [7:0] out;
    xor a1(k,reset,userinput);
    mux2to1_8bit m1(user,8'b11111111,k,out);
    dff_async_8bit dff(clk,reset,out,q);
endmodule