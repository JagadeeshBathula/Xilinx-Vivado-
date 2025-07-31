`timescale 1ns / 1ps

module simulation ();

  reg [3:0] D;
  reg clk, reset, control;
  wire Q;

  shift_register_PISO uut (
    .D(D),
    .clk(clk),
    .reset(reset),
    .control(control),
    .Q(Q)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10ns clock
  end
  initial begin
    $monitor("t=%0t | D=%b | clk=%b | reset=%b | control=%b | Q=%b", $time, D, clk, reset, control, Q);

    reset = 1; control = 0; D = 4'b0000; #10;
    reset = 0;
    
    D = 4'b1011; control = 0; #10;
    
    control = 1;  #40;
    
   $finish;
  end

endmodule
