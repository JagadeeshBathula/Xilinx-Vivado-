`timescale 1ns / 1ps

module simulation(
  );
  reg D, en ;
  wire Q ; 
  wire Qn ;
    D_latch dut (D, en, Q, Qn);
    initial begin
      $monitor("t=%0t, D=%b, en=%b, Q=%b, Qn=%b", $time, D, en, Q, Qn);
       D = 0; en = 1; #10;
       D = 1; en = 0; #10;
       D = 0; en = 1; #10;
       D = 1; en = 1; #10;
       D = 1; en = 0; #10;
       D = 0; en = 1; #10;
        $finish;
    end
  
  
endmodule
