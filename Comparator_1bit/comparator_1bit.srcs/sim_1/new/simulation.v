`timescale 1ns / 1ps

module simulation(
  );
  
  reg a , b ;
  wire gt, eq, lt ;
  
  comparator_1bit dut (a,b,gt,eq,lt);
  initial begin
      a = 0 ; b = 0 ;
  #10 a = 0 ; b = 1 ;
  #10 a = 1 ; b = 0 ;
  #10 a = 1 ; b = 1 ;
  #10 $stop;    
  
  end
endmodule
