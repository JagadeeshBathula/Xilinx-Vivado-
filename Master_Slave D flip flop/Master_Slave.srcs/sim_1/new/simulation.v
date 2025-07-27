`timescale 1ns / 1ps

module simulation(
 );
 reg D, clk ;
 wire Q, Qn ;
 
 Master_Slave dut(D, clk, Q, Qn);
 initial begin
 clk = 0 ;
 forever #5 clk = ~clk ;
 
 end
 initial begin
    $monitor("t=%0t, D=%b, clk=%b, Q=%b, Qn=%b", $time, D, clk, Q, Qn);
     D = 1 ; # 10 ;
      D = 1 ; # 10 ;
       D = 0 ; # 10 ;
        D = 1 ; # 10 ;
         D = 0 ; # 10 ;
         $finish;
 end
endmodule
