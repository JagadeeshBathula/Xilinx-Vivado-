`timescale 1ns / 1ps

module simulation;

  reg clk, reset;
  wire [3:0] Q;

  ring_counter uut (.clk(clk), .reset(reset), .Q(Q));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $monitor(" t=%0t, Q=%b", $time, Q);

    reset = 1; #10;
    reset = 0;
    #100;
    $finish;
  end

endmodule
