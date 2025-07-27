`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2025 05:38:26 PM
// Design Name: 
// Module Name: simulation
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


module simulation(

    );
    reg a0,a1,a2,a3,b0,b1,b2,b3,cin;
    wire s0,s1,s2,s3,carry;
    
    rp_adder dut (a0,a1,a2,a3,b0,b1,b2,b3,cin,s0,s1,s2,s3,carry);
    initial begin
    a0 = 0; a1 = 0 ;a2 = 0 ; a3 = 0;
    b0 = 0 ;b1 = 0 ;b2 = 0 ; b3 = 0;
    cin = 0;
    end
    
endmodule
