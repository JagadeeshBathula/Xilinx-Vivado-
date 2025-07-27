`timescale 1ns / 1ps

module simulation(
  );
  reg T, en ;
  wire Q ;
  wire Qn ;
  
  T_latch dut (T, en, Q, Qn);
   
    initial begin 

   
    $monitor("t=%0t, T=%b, en=%b, Q=%b, Qn=%b", $time, T, en, Q, Qn);
     
       T = 0 ; en = 1 ; #10;
       T = 1 ; en = 0 ; #10;
       T = 1 ; en = 1 ; #10;
       T = 1 ; en = 0 ; #10;  
       T = 1 ; en = 1 ; #10;  

    $finish;
    end
  
endmodule
