`timescale 1ns / 1ps

module simulation( );

 reg clk;
 reg reset;
 reg [15:0]sensor_data;
 reg valid;
 wire [15:0]data_out; 
 wire motor_on;
 wire motor_off;
 
 water_tank_control  uut(.clk(clk), .reset(reset), .sensor_data(sensor_data),
                     .valid(valid), .data_out(data_out), .motor_on(motor_on), .motor_off(motor_off));
                     
  always #5 clk = ~clk;
  
  initial begin 
  clk = 0;
  reset = 1;
  sensor_data = 15'd0;
  valid = 0;
  #10;
  reset = 0; #10;
  valid = 1;
  sensor_data = 15'd90;
  #50;
  sensor_data = 15'd960;
  #10
  $finish;
  end            
  
  initial begin 
   $monitor ("t=%0t,clk=%b, reset=%b, sensor_data=%d, valid=%b, data_out=%d, motor_on=%b, motor_off=%b",$time,
              clk, reset, sensor_data, valid, data_out, motor_on, motor_off );
  end         
  
endmodule
