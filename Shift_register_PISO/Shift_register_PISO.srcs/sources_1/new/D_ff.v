`timescale 1ns / 1ps

module D_ff(
    input D,clk,reset,
    output reg Q
    );
    
    always @(posedge clk or posedge reset) begin
        
        if (reset)
          Q <= 1'b0 ;
          else
          Q <= D ;  
    end
endmodule
