`include "decoder_2to4.v"

module decoder_3to8 (input[2:0] in, output[7:0] out);
    decoder_2to4 d1 (in[1:0], !in[2], out[3:0]);
    decoder_2to4 d2 (in[1:0], in[2], out[7:4]);
endmodule