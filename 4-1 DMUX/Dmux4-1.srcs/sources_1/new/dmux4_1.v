`timescale 1ns / 1ps

module dmux4_1(
    input i,[1:0]s,
    output reg [3:0]y
    );
    always @(*) begin
    y = 4'b0000;
    case (s)
            2'b00 : y[0] = i;
            2'b01 : y[1] = i;
            2'b10 : y[2] = i;
            2'b11 : y[3] = i;
           
    endcase
    end
    

endmodule
