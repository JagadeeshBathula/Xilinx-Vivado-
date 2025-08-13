`timescale 1ns / 1ps

module simulation(
   );
   reg clk , reset ;
   wire [3:0]Q ;
   mod_10_counter uut (.clk(clk), .reset(reset), .Q(Q) );
   initial begin 
   clk = 0 ;
   forever #5 clk = ~clk ;
   end 
   initial begin 
   $monitor ("t=%0t, clk=%b, reset=%b, Q=%b", $time, clk, reset, Q);
   reset = 1 ; #10 ;
   reset = 0 ; #120 ;
   $finish ;
   end 
endmodule
