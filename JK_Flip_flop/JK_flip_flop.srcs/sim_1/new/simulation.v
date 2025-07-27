`timescale 1ns / 1ps

module simulation(
 );
 reg J, K, clk ;
 wire Q ;
 wire Qn ;
 JK_flip_flop dut (.J(J), .K(K), .clk(clk), .Q(Q), .Qn(Qn));
 initial begin
     clk = 0 ;
     forever #5 clk = ~clk ;
     end
     initial begin
     $monitor ("t=%0t, J=%b, K=%b, clk=%b, Q=%b, Qn=%b", $time, J, K, clk, Q, Qn);
      J = 0 ; K = 0 ; #10;
      J = 0 ; K = 1 ; #10;
      J = 1 ; K = 0 ; #10;
      J = 1 ; K = 1 ; #10;
      J = 0 ; K = 0 ; #10;
      J = 1 ; K = 1 ; #10;
      $finish;
 end
 
 
endmodule
