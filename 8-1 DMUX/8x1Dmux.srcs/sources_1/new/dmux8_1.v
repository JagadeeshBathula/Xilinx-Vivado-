`timescale 1ns / 1ps

module dmux8_1(
    input i,[2:0]s,
    output reg [7:0]y
    );
    always @(*) begin
    y = 4'b0000;
    case (s)
       3'b000 : y[0] = i ;
       3'b001 : y[1] = i ;
       3'b010 : y[2] = i ;
       3'b011 : y[3] = i ;
       3'b100 : y[4] = i ;
       3'b101 : y[5] = i ;
       3'b110 : y[6] = i ;
       3'b111 : y[7] = i ;
       
    endcase
    end
endmodule
