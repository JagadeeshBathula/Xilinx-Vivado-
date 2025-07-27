`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2025 05:12:54 PM
// Design Name: 
// Module Name: fs
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fs(
    input a,b,cin,
    output sum,carry
    );
    assign sum = a ^ b ^ cin ;
    assign carry = (a&b)| ((a ^ b )&cin);
endmodule
