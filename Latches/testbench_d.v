`include "dlatch.v"
module t_function;
reg D,enable;
wire Q;
d_latch d1(Q,D,enable);

initial #40 $finish;
        initial begin
            enable=1; D=1;
            #10 enable=0; D=1;
            #10 enable=1; D=0;
            #10 enable=0; D=1;
        end
        initial begin
        $monitor ("Time =%0d, enable=%b, D=%b, Q=%b",$time,enable,D,Q);
    end
endmodule