`timescale 1ns / 1ps

module shift_register_SIPO(
    input wire D, // serial input
    input wire clk,reset,
    output wire [3:0]Q // parallel output
    );
    wire n1,n2,n3,n4 ;
    
    
    D_ff FF1(D, clk, reset, n1);
    D_ff FF2(n1, clk, reset, n2);
    D_ff FF3(n2, clk, reset, n3);
    D_ff FF4(n3, clk, reset, n4);
    
    assign Q = {n1,n2,n3,n4};
    
    
endmodule
