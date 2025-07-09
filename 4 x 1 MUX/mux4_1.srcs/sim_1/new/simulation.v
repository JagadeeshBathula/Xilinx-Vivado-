`timescale 1ns / 1ps

module simulation;

  reg [3:0] i;
  reg [1:0] s;
  wire y;

  
  mux4_1 dut (
    .i(i),
    .s(s),
    .y(y)
  );

  initial begin
    $display("t=%0t | i = %b | s = %b | y = %b", $time, i, s, y);
    repeat(10) begin
      i = $random;
      s = $random;
      #10; 
      $display("t=%0t | i = %b | s = %b | y = %b", $time, i, s, y);
    end
    $finish;
  end

endmodule
