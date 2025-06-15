
`include "Shiftreg.v"
module tb_Shiftreg();
    reg clk, rst, Incoming, ctrl;
    reg [3:0] num;
    wire [3:0] out;

    Shiftreg uut (
        .clk(clk),
        .rst(rst),
        .Incoming(Incoming),
        .ctrl(ctrl),
        .num(num),
        .out(out)
    );
    initial begin
        $monitor("Time = %0t | rst = %b, ctrl = %b, Incoming = %b, num = %b | out = %b", $time, rst, ctrl, Incoming, num, out);
    end
    initial begin
        clk = 0;
        rst = 1;
        ctrl = 0;
        Incoming = 1;
        num = 4'b1100;

        #10 rst = 0;
        #10 ctrl = 1; Incoming = 1;
        #10 Incoming = 0;
        #10 Incoming = 1;
        #10 ctrl = 0;  // Disable shifting
        #10 ctrl = 1;  // Re-enable shifting
        #20 $finish;
    end
    always begin
        #5 clk = ~clk;
    end
endmodule
