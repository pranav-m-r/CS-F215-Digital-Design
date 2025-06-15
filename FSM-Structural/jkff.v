module jkff(input clk, input reset, input j, input k, output reg q);
    always @ (posedge clk) begin
        if (reset == 1'b1) begin
            q <= 0;
        end
        else begin
            if (j == 1'b0 && k == 1'b0) q <= q;
            else if (j == 1'b1 && k == 1'b0) q <= 1;
            else if (j == 1'b0 && k == 1'b1) q <= 0;
            else q <= ~q;
        end
    end
endmodule