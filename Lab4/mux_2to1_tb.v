`include "mux_2to1.v"

module mux_2to1_tb ();

wire out;
reg[1:0] in;
reg s;

mux_2to1 mux (in, s, out);

initial begin
    $dumpfile("mux_2to1.vcd");
    $dumpvars(0, mux_2to1_tb);
        in = 2'b00; s = 0;
    #10 in = 2'b00; s = 1;
    #10 in = 2'b01; s = 0;
    #10 in = 2'b01; s = 1;
    #10 in = 2'b10; s = 0;
    #10 in = 2'b10; s = 1;
    #10 in = 2'b11; s = 0;
    #10 in = 2'b11; s = 1;
end

initial begin
    $monitor("time=%2d | in=%b%b s=%b | out=%b", $time, in[1], in[0], s, out);
end

endmodule