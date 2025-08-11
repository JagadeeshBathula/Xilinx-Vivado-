`timescale 1ns / 1ps


module mod_6_counter(
    input clk,reset,
    output reg [2:0]Q
    );
    
    always @(posedge clk or posedge reset) begin
       if (reset)
       Q <= 3'b000 ;
       else if (Q == 3'b101)
       Q <= 3'b000 ;    
       else 
       Q <= Q + 1 ;
    end
    
endmodule
