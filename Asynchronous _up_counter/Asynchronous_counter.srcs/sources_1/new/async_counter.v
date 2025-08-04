`timescale 1ns / 1ps

module async_counter (
    input wire clk,
    input wire reset,
    output wire [3:0] Q
);

    
    T_ff FF0 (.clk(clk),    .reset(reset), .q(Q[0]));
    T_ff FF1 (.clk(Q[0]),   .reset(reset), .q(Q[1]));
    T_ff FF2 (.clk(Q[1]),   .reset(reset), .q(Q[2]));
    T_ff FF3 (.clk(Q[2]),   .reset(reset), .q(Q[3]));

endmodule
