`timescale 1ns / 1ps

module ring_counter(
   input clk, reset, 
   output reg [3:0] Q  );

  always @(posedge clk or posedge reset) begin
  
    if (reset)
      Q <= 4'b0001; 
    else
      Q <= {Q[2:0], Q[3]}; 
  end

endmodule
