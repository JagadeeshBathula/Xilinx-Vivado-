`timescale 1ns / 1ps

module mod_10_counter(
    input clk,reset,
    output reg [3:0]Q
    );
   always @(posedge clk or posedge reset) begin 
   if (reset)
    Q <= 4'b0000;
    else if (Q == 4'b1010)
    Q <= 4'b0000;
    else 
    Q <= Q + 1 ;
    
   end 
endmodule
