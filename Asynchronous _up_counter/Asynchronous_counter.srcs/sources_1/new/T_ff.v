`timescale 1ns / 1ps

module T_ff (
    input wire clk,
    input wire reset,
    output reg q
);
    always @(negedge clk or posedge reset) begin
        if (reset)
            q <= 1'b0;
        else
            q <= ~q; 
    end
endmodule
