`include "memory.v"

module memory_tb;
    reg clk, reset;
    reg [7:0] user;   
    reg userinput; 
    wire [7:0] q;    

    //WRITE YOUR CODE HERE
    memory m1(clk,reset,user,userinput,q);

    always begin
        #5 clk = ~clk;
    end

    initial begin
        $dumpfile("memory.vcd");
        $dumpvars(0,memory_tb);
        clk = 0;
        user = 8'b11000101;
        reset = 1;
        userinput = 1;

        #10 user = 8'b11110101;
        #2  userinput = 0;
        #6  reset = 0;
        #2  user = 8'b11001100;
        #4  userinput = 1;
        #4  reset = 1;
        #8  userinput = 0;
        #4  user = 8'b11110000; userinput = 1;
        #10 user = 8'b00010001;
        #10 $finish;
    end

    // DO NOT EDIT THIS BLOCK
    initial begin
        $monitor("Time: %0d, clk: %b, reset: %b, userinput: %b, user: %8b, q: %8b", $time,clk, reset, userinput, user, q);
    end
endmodule
