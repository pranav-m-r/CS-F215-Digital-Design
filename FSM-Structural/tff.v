module tff(input clk, input reset, input t, output reg q);
    always @ (posedge clk, posedge reset) begin
        if (reset == 1'b1) begin
            q <= 1'b0
        end
        else if (t == 1'b1) begin
            q <= ~q
        end
    end
endmodule