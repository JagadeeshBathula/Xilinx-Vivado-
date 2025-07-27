`timescale 1ns / 1ps

module simulation(
);
reg J, K, en;
wire Q  ;
wire Qn ;
  JK_latch dut (J, K, en, Q, Qn);
  initial begin 
      $monitor("t=%0t, J=%b, K=%b, en=%b, Q=%b, Qn=%b", $time, J, K, en, Q, Qn);
   
      J = 1 ; K = 0; en = 1; #10 ;
            J = 0 ; K = 0; en = 1 ; #10 ;
                  J = 0 ; K = 1; en = 1 ; #10 ;
                        J = 1 ; K = 0; en = 1 ;#10 ;
                              J = 1 ; K = 1; en = 1 ;#10 ;
                                       J = 0 ; K = 1; en = 0 ; #10 ;
                                           J = 1 ; K = 1; en = 1 ;#10 ;
      $finish;
  end
endmodule
