`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2025 01:10:16 AM
// Design Name: 
// Module Name: simuli
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


module simuli(

    );
    reg a , b ;
    wire D , B ;
    sub dut ( a , b , D , B );
    
    initial
    begin
     a = 0 ; b = 0 ;
     #10 a = 0 ; b = 1 ;
     #10 a = 1 ; b = 0 ;
     #10 a = 1 ; b = 1 ;
     #10 $stop ;
    
    end
endmodule
