module Fulladder (
    input x , y , z ,
    output reg sum , carry_out
);

always@(x or y or z) begin
    case({x,y,z})
        3'b000: {sum, carry_out} = 2'b00; 
        3'b001: {sum, carry_out} = 2'b10; 
        3'b010: {sum, carry_out} = 2'b10; 
        3'b011: {sum, carry_out} = 2'b01; 
        3'b100: {sum, carry_out} = 2'b10; 
        3'b101: {sum, carry_out} = 2'b01; 
        3'b110: {sum, carry_out} = 2'b01; 
        3'b111: {sum, carry_out} = 2'b11; 
        default: {sum, carry_out} = 2'b00; 
    endcase
end
    
endmodule