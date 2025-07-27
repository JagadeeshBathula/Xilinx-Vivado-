`timescale 1ns / 1ps

module encoder(
    input [3:0]a,
    output reg [1:0]b,
    output reg v
    ); 
    always @(*) begin
        v = 1;
        b = 2'b00;
    case(a)
        4'b0001 : b = 2'b00;
        4'b0010 : b = 2'b01;
        4'b0100 : b = 2'b10;
        4'b1000 : b = 2'b11;
        default : v = 0;
    endcase
    end
    
    
endmodule
