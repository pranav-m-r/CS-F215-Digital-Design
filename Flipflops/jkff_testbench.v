`include "jkff.v"

module jkff_testbench;
    reg j, k, clk, reset;
    wire q;
    jkff_asycr jkff (.j(j), .k(k), .clk(clk), .reset(reset), .q(q));
    always begin
        #5 clk = ~clk;
    end
    initial begin
        clk = 0;
        reset = 0; j = 0; k= 0;
        $dumpfile("out.vcd");
        $dumpvars(0, jkff_testbench);
        #10 j = 1; k = 0;
        #10 reset = 1;
        #10 reset = 0;
        #10 j = 1; k = 0;
        #10 j = 0; k = 1;
        #10 j = 0; k = 0;
        #10 j = 1; k = 1;
        #10 $finish;
    end
endmodule