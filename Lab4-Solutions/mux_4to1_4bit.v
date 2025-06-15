`include "mux_2to1_4bit.v"
module mux_4to1_4bit(input [3:0]in0,input [3:0]in1,input [3:0]in2,input [3:0]in3,input [1:0] select,output[3:0] out);

    wire [3:0]m1,m2;

    mux_2to1_4bit mux2(in0,in1,select[0],m1);
    mux_2to1_4bit mux1(in2,in3,select[0],m2);
    mux_2to1_4bit mux3(m1,m2,select[1],out);
    
endmodule