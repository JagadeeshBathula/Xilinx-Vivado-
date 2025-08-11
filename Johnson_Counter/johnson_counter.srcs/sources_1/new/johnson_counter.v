`timescale 1ns / 1ps

module johnson_counter (
    input wire clk,
    input wire reset,
    output wire [3:0] Q
);

    wire d0, d1, d2, d3;
    wire q0, q1, q2, q3;
       
    assign d0 = ~q3;  
    assign d1 = q0;
    assign d2 = q1;
    assign d3 = q2;

    D_FF FF0 (.D(d0), .clk(clk), .reset(reset), .Q(q0));
    D_FF FF1 (.D(d1), .clk(clk), .reset(reset), .Q(q1));
    D_FF FF2 (.D(d2), .clk(clk), .reset(reset), .Q(q2));
    D_FF FF3 (.D(d3), .clk(clk), .reset(reset), .Q(q3));

    assign Q = {q3, q2, q1, q0};

endmodule
 