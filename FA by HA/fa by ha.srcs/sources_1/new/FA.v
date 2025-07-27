`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/27/2025 06:36:46 PM
// Design Name: 
// Module Name: FA
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


module FA(
    input a,b,cin,
    output sum,carry
    );
    wire s1,c1,c2;
    HA HA1 (a,b,s1,c1);
    HA HA2 (s1 ,cin,sum,c2);
    assign carry = c1 | c2 ;
endmodule
