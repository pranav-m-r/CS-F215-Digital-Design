`include "freq_quarter.v"

module tff_async_reset_tb;

    reg clk;
    wire q, nclk;

    freq f (
        .clk(clk),
        .q(q),
        .nclk(nclk)
    );

    always #10 clk = ~clk;

    initial begin
        clk = 0;
        $dumpfile("tff_async_reset_tb.vcd");
        $dumpvars(0, tff_async_reset_tb);
        #505
        $finish;
    end

    initial begin
        $monitor("Time: %0t | clk: %b | q: %b | nclk: %b", $time, clk, q, nclk);
    end
endmodule