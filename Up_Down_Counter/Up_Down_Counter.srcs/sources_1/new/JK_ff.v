`timescale 1ns / 1ps

module JK_ff(
    input J,K,clk,reset,
    output reg Q
    );
    
    always @ (posedge clk or posedge reset)begin
       if (reset)
        Q <= 1'b0;
       if (clk)
        case ({J,K})
          2'b00 : Q <= Q ;
          2'b01 : Q <= 0 ;
          2'b10 : Q <= 1 ;
          2'b11 : Q <= ~Q ;
          default : Q <= 1'b0 ;
          endcase
    
    end
endmodule
