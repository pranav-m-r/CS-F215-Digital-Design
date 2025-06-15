module decoder_2to4 (input[1:0] in, input e, output[3:0] out);
    and a1 (out[0], !in[0], !in[1], e);
    and a2 (out[1], in[0], !in[1], e);
    and a3 (out[2], !in[0], in[1], e);
    and a4 (out[3], in[0], in[1], e);
endmodule