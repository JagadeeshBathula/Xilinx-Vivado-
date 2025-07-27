`timescale 1ns / 1ps

module D_latch(
    input D,en,
    output reg Q,
    output Qn
    );
    assign Qn = ~Q;
    
    always @(en,D) begin
      
      if(en)
         Q <= D;
         
    end 
endmodule
