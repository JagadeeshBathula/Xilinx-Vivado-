`timescale 1ns / 1ps

module simulation ();

    reg clk;
    reg reset;
    wire [2:0] N, S, E, W;
    wire [2:0]P_N,P_S,P_E,P_W;
    
    traffic_signal_control uut (
        .clk(clk),
        .reset(reset),
        .N(N),.P_N(P_N),
        .S(S),.P_S(P_S),
        .E(E),.P_E(P_E),
        .W(W),.P_W(P_W)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  
    end
    initial begin
        reset = 1;
        #10;
        reset = 0;
        #700;
        $stop;
    end
    initial begin
        $monitor("time=%0t, N=%b, S=%b, E=%b, W=%b, P_N=%b, P_S=%b, P_E=%b, P_W=%b", $time, N, S, E, W, P_N, P_S, P_E, P_W);
    end

endmodule
