module mux_2to1 (input[1:0] i, input s, output out);
    wire[1:0] temp;
    and a1 (temp[0], i[0], !s);
    and a2 (temp[1], i[1], s);
    or o1 (out, temp[0], temp[1]);
endmodule