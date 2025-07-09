`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2025 12:12:35 AM
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


module simulation(  );

reg a , b , cin ;
wire sum ;
wire carry ;
fulladder dut( a , b , cin , sum , carry );
initial
begin
a = 0 ; b = 0 ; cin = 0;
#10 a = 0 ; b = 0 ;cin = 1;
#10 a = 0 ; b = 1 ;cin = 0;
#10 a = 0 ; b = 1 ;cin = 1;
#10 a = 1 ; b = 0 ;cin = 0;
#10 a = 1 ; b = 0 ;cin = 1; 
#10 a = 1 ; b = 1 ;cin = 0;
#10 a = 1 ; b = 1 ;cin = 1;
#10 $stop;
end
endmodule
