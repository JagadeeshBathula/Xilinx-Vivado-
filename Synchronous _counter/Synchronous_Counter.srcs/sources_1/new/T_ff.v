`timescale 1ns / 1ps

module T_ff (
    input clk, reset, T,
    output reg Q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 0;
        else if (T)
            Q <= ~Q;
    end
endmodule
