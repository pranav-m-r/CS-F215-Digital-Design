`include "vendingmachine.v"

module vm_tb;
    reg clk, reset, in;
    wire y1, y2;

    vm v1 (clk, reset, in, y1, y2);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, vm_tb);
        clk = 0; reset = 1; in = 0;
        #10 $finish;
    end
endmodule