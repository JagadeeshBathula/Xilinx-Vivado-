`timescale 1ns / 1ps

module simulation(
  );
  reg D, clk, reset ;
  wire Q ;
  
  shift_register_SISO uut (.D(D),
                           .clk(clk),
                           .reset(reset),
                           .Q(Q));
    initial begin
      clk = 0 ;
      forever #5 clk = ~clk ;
    end       
    initial begin   
    
    $monitor("t=%0t, D=%b, clk=%b, reset=%b, Q=%b", $time, D, clk, reset, Q);              
           D = 1 ; reset = 0 ; #10;
           D = 0 ; reset = 0 ; #10;
           D = 1 ; reset = 0 ; #10;
           D = 1 ; reset = 0 ; #10;
           #10;
           reset = 1 ;
           $finish ;
           
    end                
endmodule
