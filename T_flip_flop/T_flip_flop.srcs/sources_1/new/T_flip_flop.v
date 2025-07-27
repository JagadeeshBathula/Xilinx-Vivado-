`timescale 1ns / 1ps

module T_flip_flop(
    input T, clk,
    output reg Q,
    output  Qn
    );
    initial Q = 0 ;
    assign Qn = ~Q ;
    always @(posedge clk) begin
       case (T)
          1'b0 : Q <= Q ;
          1'b1 : Q <= ~Q ;
       endcase
    end
endmodule
