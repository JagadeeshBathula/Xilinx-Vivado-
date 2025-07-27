`timescale 1ns / 1ps

module D_flip_flop(
    input D,clk,
    output reg  Q,
    output Qn
    );
    initial Q = 0 ;
    assign Qn = ~Q ;
    always @(posedge clk) begin
        Q = D ;
    end
endmodule
