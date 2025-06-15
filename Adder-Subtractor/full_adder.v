`include "half_adder.v"
module full_adder (input A,input B,input Cin,output Sum,output Cout);
    wire C0,C1,S;
    half_adder h1(A,B,C0,S);
    half_adder h2(Cin,S,C1,Sum);
    or o1(Cout,C0,C1);
endmodule