`timescale 1ns / 1ps

 module ALU(
    input [3:0]a,
    input [3:0]b,
    input [2:0]s,
    output reg [3:0]y,
    output reg carry,
    output reg zero
    );
    always @(*) begin
       carry = 0;
       case (s)
               3'b000 : {carry, y} = a + b ;
               3'b001 : {carry, y} = a - b;
               3'b010 : y = a & b ;
               3'b011 : y = a | b ;
               3'b100 : y = a ^ b ;
               3'b101 : y = ~a ;
               3'b110 : y = a << b ;
               3'b111 : y = a >> b ;
               default : y = 4'b0000;
               
       endcase
       zero = (y == 4'b0000)? 1'b1 : 1'b0;
    end
endmodule
