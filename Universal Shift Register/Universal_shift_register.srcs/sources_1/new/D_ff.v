`timescale 1ns / 1ps

module D_ff(
    input D,clk,reset,
    output reg Q
    );
    initial Q = 0 ;
    
    always @(posedge clk or posedge reset) begin
     
       if (reset)
       Q <= Q ;
       else
       Q <= D ;
       
    end
endmodule
 