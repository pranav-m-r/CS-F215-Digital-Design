`include "tff.v"

module vm(input clk, input reset, input in, output reg y1, output reg y2);
    wire Ta, Tb, Tc;
    wire a, b, c;
    assign Ta = (a) || (c && ~in) || (b && c);
    assign Tb = (b) || (~a && in);
    assign Tc = (c && in) || (a && c) || (~a && ~b && ~c);
    tff T1 (clk, reset,  Ta, a);
    tff T2 (clk, reset, Tb, b);
    tff T3 (clk, reset, Tc, c);
    always @ (a, b, c, in) begin
        y1 = a && ~c && in;
        y2 = b && ~c && in;
    end
endmodule