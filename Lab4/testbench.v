`include "decoder_3to8.v"

module testbench ();
    reg[2:0] in;
    wire[7:0] out;

    decoder_3to8 d (in, out);

    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);
            in = 3'b000;
        #10 in = 3'b001;
        #10 in = 3'b010;
        #10 in = 3'b011;
        #10 in = 3'b100;
        #10 in = 3'b101;
        #10 in = 3'b110;
        #10 in = 3'b111;
    end

    initial begin
        $monitor("TIME = %2d | INPUT = %b%b%b | OUTPUT = %b%b%b%b%b%b%b%b", $time, in[2], in[1], in[0], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]);
    end
endmodule