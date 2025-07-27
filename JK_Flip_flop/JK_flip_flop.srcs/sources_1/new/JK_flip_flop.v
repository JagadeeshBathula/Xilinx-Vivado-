`timescale 1ns / 1ps

module JK_flip_flop(
    input J,K,clk,
    output reg Q,
    output Qn
    );
    initial Q = 0 ;
    assign Qn = ~Q ;
    always @(posedge clk) begin
        case ({J,K})
           2'b00 : Q <= Q ;
           2'b01 : Q = 0 ;
           2'b10 : Q = 1 ;
           2'b11 : Q = ~Q;
           
        endcase
      end    
endmodule
