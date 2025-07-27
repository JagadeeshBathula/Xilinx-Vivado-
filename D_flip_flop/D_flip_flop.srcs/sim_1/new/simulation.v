`timescale 1ns / 1ps

module simulation(
 );
 reg D, clk ;
 wire Q ;
 wire Qn ;
 D_flip_flop dut (.D(D), .clk(clk), .Q(Q), .Qn(Qn));
 initial begin
 clk = 0 ;
 forever #5 clk = ~clk ;
 end
 initial begin 
 $monitor("t=%0t, D=%b, clk=%b, Q=%b, Qn=%b", $time, D, clk, Q, Qn);
    D = 0 ; #10;
    D = 1 ; #10;
    D = 0 ; #10;
    D = 1 ; #10;
    D = 1 ; #10;
    D = 0 ; #10;
    $finish;
 end
endmodule
