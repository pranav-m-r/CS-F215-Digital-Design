module dff_async_reset (input clk,input reset,input d,output reg q);
    // WRITE YOUR CODE HERE
    always @(posedge clk or negedge reset) begin
        if(reset)begin
            q <= d;
        end
        else if(reset==1'b0)begin
            q <= 1'b0;
        end
    end
endmodule
