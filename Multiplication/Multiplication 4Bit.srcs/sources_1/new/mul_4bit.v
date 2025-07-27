`timescale 1ns / 1ps 
module mul_4bit(
    input  [3:0] a,
    input  [3:0] b,
    output [7:0] y
);
    // Partial products
    wire [3:0] pp0, pp1, pp2, pp3;

    assign pp0 = (a[0]) ? b : 4'b0000;
    assign pp1 = (a[1]) ? b : 4'b0000;
    assign pp2 = (a[2]) ? b : 4'b0000;
    assign pp3 = (a[3]) ? b : 4'b0000;

    assign y = {4'b0000, pp0} + 
               ({3'b000, pp1, 1'b0}) + 
               ({2'b00, pp2, 2'b00}) + 
               ({1'b0, pp3, 3'b000});

endmodule
