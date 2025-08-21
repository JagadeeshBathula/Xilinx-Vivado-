`timescale 1ns / 1ps

module simulation(
  );
  reg clk, reset, serial_in;
  wire unlock, error ;
  
  moore_fsm_safe_lock uut (.clk(clk), .reset(reset), .serial_in(serial_in), .unlock(unlock), .error(error));
  initial begin  
  clk = 0 ;
  forever #5 clk = ~clk ;
  end 
  initial begin 
  $monitor("t=%0t, clk=%b, reset=%b, unlock=%b,, error=%b", $time, clk, reset, unlock, error);
  reset = 1 ; #10;
  reset = 0 ;
  serial_in = 1 ; #10;
  serial_in = 0 ; #10;
  serial_in = 1 ; #10;
  serial_in = 1 ; #10;
  #10;
   serial_in = 1 ; #10;
    serial_in = 0 ; #10;
     serial_in = 0 ; #10;
  serial_in = 1 ; #10;
  #10
  serial_in = 1 ; #10;
  serial_in = 0 ; #10;
  serial_in = 1 ; #10;
  serial_in = 1 ; #20
  
  $finish;
  
  end 
  
endmodule
