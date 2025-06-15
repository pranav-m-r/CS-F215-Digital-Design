
`include "Dff.v"
module tb_Dff();
    reg clk, rst, D;
    wire Q;

    Dff uut (
        .clk(clk),
        .rst(rst),
        .D(D),
        .Q(Q)
    );
    initial begin
        $monitor("Time = %0t | rst = %b, D = %b | Q = %b", $time, rst, D, Q);
    end
    initial begin
        clk = 0;
        rst = 0;
        D = 0;
        #5 rst = 1;
        #10 rst = 0; D = 1;
        #10 D = 0;
        #10 D = 1;
        #10 $finish;
    end
    always begin
        #5 clk = ~clk;
    end
endmodule
