`include "dff_asycr.v"

module jkff_asycr(input j, input k, input clk, input reset, output q);
    wire q_n, d;
    wire[1:0] temp;
    not n1 (q_n, q);
    and a1 (temp[0], q_n, j);
    and a2 (temp[1], q, k);
    or o1 (d, temp[0], temp[1]);
    dff_async_reset dff (clk, reset, d, q);
endmodule

module jkff_behavioural(input j, input k, input clk, output reg q);
    always @ (posedge clk) begin
        if (j == 1'b1 && k == 1'b0) begin
            q <= 1;
        end
        else if (j == 1'b0 && k == 1'b1) begin
            q <= 0;
        end
        else if (j == 1'b1 && k == 1'b1) begin
            q <= ~q;
        end
    end
endmodule