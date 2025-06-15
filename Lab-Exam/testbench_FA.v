
`include "Fulladder.v"
module tb_Fulladder();
    reg x, y, z;        
    wire sum, carry_out;
    Fulladder uut (
        .x(x),
        .y(y),
        .z(z),
        .sum(sum),
        .carry_out(carry_out)
    ); 
    initial begin
        $monitor("Time = %0t | x = %b, y = %b, z = %b | sum = %b, carry_out = %b", 
                 $time, x, y, z, sum, carry_out);
    end
    initial begin
        x = 0; y = 0; z = 0;
        #10 x = 0; y = 0; z = 1;
        #10 x = 0; y = 1; z = 0;
        #10 x = 0; y = 1; z = 1;
        #10 x = 1; y = 0; z = 0;
        #10 x = 1; y = 0; z = 1;
        #10 x = 1; y = 1; z = 0;
        #10 x = 1; y = 1; z = 1;
        #10 $finish;
    end
    
endmodule
