`timescale 1ns / 1ps



module halfadder(
    input a,b,
    output sum,carry
    );
    assign sum = a ^ b ;
    assign carry = a & b ;
endmodule
