`timescale 1ns / 1ps

module simulation;

  reg [7:0] i;
  reg [2:0] s;
  wire y;

  // Instantiate the MUX (make sure the module name 'mux8_1' is correct)
  mux8_1 dut (
    .i(i),
    .s(s),
    .y(y)
  );

  initial begin
    $display("t=%0t | i = %b | s = %b | y = %b", $time, i, s, y);
    repeat(10) begin
      i = $random;
      s = $random;
      #10;  // Add time delay to see output
      $display("t=%0t | i = %b | s = %b | y = %b", $time, i, s, y);
    end
    $finish;
  end

endmodule
