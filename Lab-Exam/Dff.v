module Dff (
    input clk,rst,D,
    output reg Q
);

always @(posedge clk or posedge rst) begin
    if(rst) begin
        Q<=0;
    end
    else Q<=D;
end
    
endmodule