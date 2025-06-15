module mux_2to1_4bit(input [3:0]in0,input [3:0]in1,input select,output[3:0] out);
    wire [3:0] w1, w2;  // Intermediate wires for AND gate outputs
    wire n_s;           // Inverted select line

    // Invert the select line
    not n1(n_s, select);

    // Apply AND gates for each bit
    and a1(w1[0], in0[0], n_s);
    and a2(w2[0], in1[0], select);
    or o1(out[0], w1[0], w2[0]);

    and a3(w1[1], in0[1], n_s);
    and a4(w2[1], in1[1], select);
    or o2(out[1], w1[1], w2[1]);

    and a5(w1[2], in0[2], n_s);
    and a6(w2[2], in1[2], select);
    or o3(out[2], w1[2], w2[2]);

    and a7(w1[3], in0[3], n_s);
    and a8(w2[3], in1[3], select);
    or o4(out[3], w1[3], w2[3]);
 
endmodule