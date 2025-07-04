`include "SRLatch_switch.v"
module t_function;
reg S,R,enable;
wire Q,Q_n;


sr_latch d1(R,S,enable,Q,Q_n);

initial #80 $finish;
        initial begin           
                enable=1;R=0;S=1;
            #10 enable=0;R=0;S=1;
            #10 enable=1; R=0;S=0;
            #10 enable=0; R=0;S=0;
            #10 enable=1; R=1;S=0;
            #10 enable=0; R=1;S=0;
            #10 enable=1; R=0;S=0;
            #10 enable=0; R=0;S=0;
        end
        initial begin
        $monitor ("Time =%0d, enable=%b, R=%b, S=%b, Q=%b, Q'=%b",$time,enable,R,S,Q,Q_n);
    end
endmodule