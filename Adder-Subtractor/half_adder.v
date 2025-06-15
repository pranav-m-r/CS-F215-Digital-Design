module half_adder(input A,input B,output Cout,output Sum);
    and a1(Cout,A,B);
    xor x1(Sum,A,B);
endmodule