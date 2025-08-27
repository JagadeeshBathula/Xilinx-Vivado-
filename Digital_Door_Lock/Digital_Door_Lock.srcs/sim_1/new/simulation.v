`timescale 1ns / 1ps

module simulation(
  );
  reg clk, reset, serial_in;
  wire unlock_door, error ;
  
  digital_door_lock uut (.clk(clk), .reset(reset), .serial_in(serial_in), .unlock_door(unlock_door), .error(error));
  initial begin  
  clk = 0 ;
  forever #5 clk = ~clk ;
  end 
  initial begin 
  $monitor("t=%0t, clk=%b, reset=%b, unlock_door=%b,, error=%b", $time, clk, reset, unlock_door, error);
  reset = 1 ; serial_in = 0; #10;
  reset = 0 ;
  serial_in = 1 ; #10;
  serial_in = 0 ; #10;
  serial_in = 1 ; #10;
  serial_in = 1 ; #10;
  #10;
   serial_in = 1 ; #10;
    serial_in = 0 ; #10;
     serial_in = 1 ; #10;
  serial_in = 0 ; #10;
  #10
  serial_in = 1 ; #10;
  serial_in = 0 ; #10;
  serial_in = 1 ; #10;
  serial_in = 1 ; #20
  
  $finish;
  
  end 
  
endmodule