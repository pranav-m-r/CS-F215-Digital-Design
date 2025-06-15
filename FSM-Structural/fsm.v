`include "jkff.v"
module fsm(input clk, input reset, input in, output reg out);
    wire j, k;
    wire state;
    assign j = in;
    assign k = ~in;
    jkff jk (clk, reset, j, k, state);
    always @ (in, state) begin
        out = state && ~in;
    end
endmodule