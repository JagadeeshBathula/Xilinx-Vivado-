`timescale 1ns / 1ps

module simulation(
 );
 reg S, R, clk ;
 wire Q ;
 wire Qn ;
 SR_flip_flop dut (.S(S), .R(R), .clk(clk), .Q(Q), .Qn(Qn));
 
 initial begin 
 clk = 0 ;
 forever #5 clk = ~clk ;
 end
 initial begin
   $monitor("t=%0t, S=%b, R=%b, clk=%b, Q=%b, Qn=%b", $time, S, R, clk, Q, Qn);
     S = 1 ; R = 0 ;  #10 ;
     S = 0 ; R = 0 ;  #10 ;
     S = 0 ; R = 1 ;  #10 ;
     S = 1 ; R = 1 ;  #10 ;
     S = 1 ; R = 0 ;  #10 ;
     $finish ;
 end
endmodule
