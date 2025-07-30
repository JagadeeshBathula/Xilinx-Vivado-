`timescale 1ns / 1ps

module shift_register_SISO(
    input wire D,clk,reset,
    output wire Q
    );
    wire n1,n2,n3;
    
    D_ff FF1 (D, clk, reset, n1);
    D_ff FF2 (n1, clk, reset, n2);
    D_ff FF3 (n2, clk, reset, n3);
    D_ff FF4 (n3, clk, reset, Q);
    
    
endmodule
