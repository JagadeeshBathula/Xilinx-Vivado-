`timescale 1ns / 1ps

module USR_tb();

  reg [3:0] D;
  reg [1:0] s;
  reg shift_right, shift_left, clk, reset;
  wire [3:0] Q;

  // Instantiate the Universal Shift Register
  USR uut (
    .D(D),
    .s(s),
    .shift_right(shift_right),
    .shift_left(shift_left),
    .clk(clk),
    .reset(reset),
    .Q(Q)
  );

  // Clock Generation
  always #5 clk = ~clk;

  initial begin
    $monitor("Time=%0t | Reset=%b | s=%b | D=%b | shift_left=%b | shift_right=%b | Q=%b",
              $time, reset, s, D, shift_left, shift_right, Q);

    clk = 0;
    reset = 1; D = 4'b0000; s = 2'b00; shift_left = 0; shift_right = 0;
    #10;

    reset = 0; D = 4'b1111; s = 2'b11; // Parallel load
    #10;

    s = 2'b00; // Hold
    #10;

    shift_left = 1; s = 2'b10; // Left Shift
    #10;
    shift_left = 0;

    shift_right = 1; s = 2'b01; // Right Shift
    #10;
    shift_right = 0;

    s = 2'b00; // Hold
    #10;

    $finish;
  end

endmodule
