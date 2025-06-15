`include "mux_2to1.v"

module mux_4to1 (input[3:0] in, input[1:0] s, output out)
    wire[1:0] temp;
    mux_2to1 m1 (in[1:0], s[0], temp[0]);
    mux_2to1 m2 (in[3:2], s[0], temp[1]);
    mux_2to1 m3 (temp, s[1], out);
endmodule