`include "Dff.v"
`include "FullAdder.v"
`include "ShiftReg.v"

module top_module(
    input wire clk,
    input wire rst,
    input wire ctrl,
    input wire [3:0] num1,
    input wire [3:0] num2,
    output wire [3:0] out1,
    output wire [3:0] out2,
    output wire sum
);

    wire a3;
    wire D, Q;

    // Generate clock control signal
    and(a3, clk, ctrl);

    // Instantiate D flip-flop, Shift registers, and Full adder
    Dff df(a3, rst, D, Q);
    Shiftreg rg1(clk, rst, sum, ctrl, num1, out1);
    Shiftreg rg2(clk, rst, 1'b0, ctrl, num2, out2);
    Fulladder f1(out1[0], out2[0], Q, sum, D);

endmodule
