`include "tff_asr.v"

module freq (input clk, output q, output nclk);
    reg reset;

    initial begin
        reset = 1;
        #5 reset = 0;
    end

    tff uut (
        .clk(clk),
        .reset(reset),
        .t(clk),
        .q(q)
    );

    tff uut2 (
        .clk(~q),
        .reset(reset),
        .t(~q),
        .q(nclk)
    );
endmodule