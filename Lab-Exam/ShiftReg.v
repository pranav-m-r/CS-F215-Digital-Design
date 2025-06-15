module Dff_shift (
    input D,
    input clk,
    input rst,
    input init_val,  // Input to load during reset
    output reg Q
);
    always @(posedge clk or posedge rst) begin
        if (rst) 
            Q <= init_val;  // Load initial value of num during reset
        else 
            Q <= D;
    end
endmodule

module Shiftreg (
    input clk,
    input rst,
    input Incoming,
    input ctrl,
    input [3:0] num,
    output [3:0] out
);

    // Instantiate the D flip-flops with initial values from num
    Dff_shift dff3 (.D(ctrl ? Incoming : out[3]), .clk(clk), .rst(rst), .init_val(num[3]), .Q(out[3]));
    Dff_shift dff2 (.D(ctrl ? out[3] : out[2]), .clk(clk), .rst(rst), .init_val(num[2]), .Q(out[2]));
    Dff_shift dff1 (.D(ctrl ? out[2] : out[1]), .clk(clk), .rst(rst), .init_val(num[1]), .Q(out[1]));
    Dff_shift dff0 (.D(ctrl ? out[1] : out[0]), .clk(clk), .rst(rst), .init_val(num[0]), .Q(out[0]));

endmodule
