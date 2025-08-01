`timescale 1ns / 1ps

module shift_register_PIPO(
    input wire [3:0]D,
    input wire clk,reset,
    output wire [3:0]Q
    );
    
    D_ff FF1 (.D(D[0]), .clk(clk), .reset(reset), .Q(Q[0]));
    D_ff FF2 (.D(D[1]), .clk(clk), .reset(reset), .Q(Q[1]));
    D_ff FF3 (.D(D[2]), .clk(clk), .reset(reset), .Q(Q[2]));
    D_ff FF4 (.D(D[3]), .clk(clk), .reset(reset), .Q(Q[3]));
    
endmodule
 