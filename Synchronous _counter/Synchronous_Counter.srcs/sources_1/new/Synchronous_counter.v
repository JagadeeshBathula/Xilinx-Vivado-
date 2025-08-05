`timescale 1ns / 1ps

module Synchronous_counter (
    input clk, reset,
    output [3:0] Q
);
    wire t0, t1, t2, t3;

    assign t0 = 1'b1;              
    assign t1 = Q[0];              
    assign t2 = Q[1] & Q[0];       
    assign t3 = Q[2] & Q[1] & Q[0];

    T_ff FF0(clk, reset, t0, Q[0]);
    T_ff FF1(clk, reset, t1, Q[1]);
    T_ff FF2(clk, reset, t2, Q[2]);
    T_ff FF3(clk, reset, t3, Q[3]);
    
endmodule
 