`include "fsm.v"

module fsm_tb;
reg clk, reset, in;
wire out;

fsm q (clk, reset, in, out);

always #5 clk = ~clk;

initial begin
    $dumpfile("out.vcd");
    $dumpvars(0, fsm_tb);
    clk = 0; reset = 1; in = 0;
    #10 reset = 0;
    #10 in = 0;
    #10 in = 0;
    #10 in = 1;
    #10 in = 0;
    #10 in = 0;
    #10 in = 1;
    #10 in = 0;
    #10 $finish;
end

initial begin
    $monitor("time: %0t | in: %b | out: %b", $time, in, out);
end
endmodule