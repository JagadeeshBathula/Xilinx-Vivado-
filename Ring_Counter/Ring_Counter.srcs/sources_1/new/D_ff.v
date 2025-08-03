`timescale 1ns / 1ps

module D_ff(input D, clk, reset, preset, output reg Q);
  always @(posedge clk or posedge reset )
  begin
    if (reset)
      Q <= 0;
    else
      Q <= D;
  end
endmodule
 