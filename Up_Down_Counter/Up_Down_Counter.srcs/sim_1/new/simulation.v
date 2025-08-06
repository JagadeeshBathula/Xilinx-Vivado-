`timescale 1ns / 1ps

module simulation(
  );
  reg up_down,clk,reset ;
  wire [2:0]Q ;
  UP_DOWN_Counter uut (
                       .up_down(up_down),
                       .clk(clk), .reset(reset),
                       .Q(Q)
                       );
    initial begin 
    clk = 0 ;
    forever #5 clk = ~clk ;
    end
    initial begin 
    $monitor ("t=%0t, up_down=%b, clk=%b, reset=%b, Q=%b", $time,  up_down, clk, reset, Q);
       reset = 1 ; up_down = 1 ; #10 ;
       reset = 0 ;  #60 ;
       up_down = 0 ; #60 ;
       $finish ;
       
    end
                       
                       
endmodule
 