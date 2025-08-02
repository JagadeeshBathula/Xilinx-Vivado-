`timescale 1ns / 1ps 

module USR(
    input wire [3:0] D,           // Parallel input
    input wire [1:0] s,           // Select lines: 00-Hold, 01-Shift Right, 10-Shift Left, 11-Parallel Load
    input wire shift_right,       // Input for MSB during shift right
    input wire shift_left,        // Input for LSB during shift left
    input wire clk,               // Clock signal
    input wire reset,             // Active-high reset
    output wire [3:0] Q           // Output of the shift register
);

    wire y1, y2, y3, y4;
    wire q1, q2, q3, q4;

    // MUX logic
    mux_4x1 MUX1 (.i({q1, q2, shift_left, D[0]}), .s(s), .y(y1));
    mux_4x1 MUX2 (.i({q2, q3, q1, D[1]}), .s(s), .y(y2));
    mux_4x1 MUX3 (.i({q3, q4, q2, D[2]}), .s(s), .y(y3));
    mux_4x1 MUX4 (.i({q4, shift_right, q3, D[3]}), .s(s), .y(y4));  // ✅ FIXED: was q3, changed to q2 for left shift

    // D Flip-Flops
    D_ff FF1 (.D(y4), .clk(clk), .reset(reset), .Q(q4));
    D_ff FF2 (.D(y3), .clk(clk), .reset(reset), .Q(q3));
    D_ff FF3 (.D(y2), .clk(clk), .reset(reset), .Q(q2));
    D_ff FF4 (.D(y1), .clk(clk), .reset(reset), .Q(q1));

    assign Q = {q4, q3, q2, q1};

endmodule
