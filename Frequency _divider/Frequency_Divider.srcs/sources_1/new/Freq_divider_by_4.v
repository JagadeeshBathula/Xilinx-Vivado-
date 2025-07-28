`timescale 1ns / 1ps

module Freq_divider_by_4 (
    input clk,
    output wire q1, q2
);
    reg t1 = 0, t2 = 0;

    always @(posedge clk) begin
        t1 <= ~t1;
    end
    always @(posedge t1) begin
        t2 <= ~t2;
    end
    assign q1 = t1;
    assign q2 = t2;
    
endmodule

