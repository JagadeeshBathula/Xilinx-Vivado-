`timescale 1ns / 1ps

module SR_flip_flop(
    input S,R,clk,
    output reg Q,
    output Qn
    );
     initial Q = 0 ;
    assign Qn = ~Q ;
    always @(posedge clk) begin
        case({S,R})
            2'b00 : Q <= Q ;
            2'b01 : Q <= 0 ;
            2'b10 : Q <= 1 ;
            2'b11 : Q <= 1'bx;
        endcase
    end
    
endmodule
