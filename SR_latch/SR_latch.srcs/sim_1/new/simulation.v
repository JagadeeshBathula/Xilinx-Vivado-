`timescale 1ns / 1ps

module simulation(
  );
  reg S,R;
  wire Q,Qn;
  
  sr_latch dut (S,R,Q,Qn);
  initial begin
   
   S = 1 ; R = 0 ; #10;
   $monitor("t=%0t, S=%b, R=%b, Q=%b, Qn=%b",$time, S, R, Q, Qn);
   S = 0 ; R = 0 ; #10;
   S = 1 ; R = 0 ; #10;
   S = 1 ; R = 1 ; #10;
   S = 0 ; R = 1 ; #10;
    
   $finish;
  end
  
endmodule
