`timescale 1ns / 1ps

module JK_latch(
    input J, K, en,
    output reg Q, 
    output Qn
    );
    assign Qn = ~Q ;
    always @( J, K, en) begin
      if (en) begin
         case({J,K})
            2'b00 : Q = Q ;
            2'b01 : Q = 0 ;
            2'b10 : Q = 1 ;
            2'b11 : Q = ~Q;
         endcase
         end
    end
endmodule
