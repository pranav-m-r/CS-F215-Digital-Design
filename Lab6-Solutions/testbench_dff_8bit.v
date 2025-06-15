`include "dff_8bit.v" 

module dff_async_reset_8bit_tb;
    reg clk, reset;
    reg [7:0] d;         
    wire [7:0] q; 
           
    //WRITE YOUR CODE HERE
    dff_async_8bit dff8(clk,reset,d,q);

    always begin
        #5 clk = ~clk;
    end

    initial begin
        $dumpfile("dff_async_reset_8bit.vcd");
        $dumpvars(0,dff_async_reset_8bit_tb);

        clk = 0;
        d = 8'b00000000;
        reset = 1;

        #10 d = 8'b10101010;
        #10 d = 8'b01100110;
        #10 d = 8'b11110000;
        #7  reset = 0;
        #6  reset = 1;
        #10 d = 8'b00001111;
        #7  d = 8'b11111111;
        #10 $finish;
    end

    // DO NOT EDIT THIS BLOCK
    initial begin
        $monitor("Time: %0d, clk: %b, reset: %b, d: %b, q: %b", $time,clk, reset, d, q);
    end
endmodule
