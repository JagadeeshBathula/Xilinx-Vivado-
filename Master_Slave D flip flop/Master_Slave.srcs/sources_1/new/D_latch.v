`timescale 1ns / 1ps

module D_latch(
    input D, en,
    output reg Q
    );
    always @(D or en) begin
      if (en)
         Q <= D ;
    end
endmodule
