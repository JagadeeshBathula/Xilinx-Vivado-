`timescale 1ns / 1ps

module simulation(
  );
  reg T, clk ;
  wire Q ;
  wire Qn ;
  T_flip_flop dut (.T(T), .clk(clk), .Q(Q), .Qn(Qn));
  initial begin
  clk = 0 ;
  forever #5 clk = ~clk ;
  end 
  initial begin 
    $monitor("t=%0t, T=%b, clk=%b, Q=%b, Qn=%b", $time, T, clk, Q, Qn);
    T = 0 ; #10 ;
    T = 1 ; #10 ;
    T = 0 ; #10 ;
    T = 1 ; #10 ;
    T = 1 ; #10 ;
    T = 0 ; #10 ;
   $finish;
  end
endmodule
