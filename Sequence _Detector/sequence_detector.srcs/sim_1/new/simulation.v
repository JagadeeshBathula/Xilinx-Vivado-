`timescale 1ns / 1ps

module simulation(
  );
  reg clk, reset, serial_in;
  wire detected;
  
  sequence_detector uut (.clk(clk),
                         .reset(reset),
                         .serial_in(serial_in),
                         .detected(detected));
     
   initial begin
   clk = 0 ;
   forever #5 clk = ~clk;
   end
   initial begin 
   $monitor("t=%0t, clk=%b,reset=%b, serial_in=%b, detected=%b",$time, clk, reset, serial_in, detected);
   reset = 1 ; #10;
   reset = 0 ; #10;
   serial_in = 1 ; #10;
   serial_in = 0 ; #10;
   serial_in = 1 ; #10;
   serial_in = 0 ; #10;
   serial_in = 1 ; #10;
   serial_in = 1 ; #10;
   serial_in = 0 ; #10;
   serial_in = 1 ; #10;
   serial_in = 1 ; #10;
     
 $finish;
   
   end                        
endmodule 
