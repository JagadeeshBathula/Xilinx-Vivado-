`timescale 1ns / 1ps


module fsub(
    input a,b,bin,
    output D,B
    );
    assign D = a ^ b ^ bin ;
    assign B = (~a & b) | bin &(~(a ^ b));
endmodule
