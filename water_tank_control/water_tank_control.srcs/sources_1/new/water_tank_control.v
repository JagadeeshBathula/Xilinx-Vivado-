`timescale 1ns / 1ps

module water_tank_control(
    input wire clk,
    input wire reset,
    input wire [15:0]sensor_data,
    input wire valid,
    output wire [15:0]data_out, 
    output reg motor_on,
    output reg motor_off
    );
    
    
    parameter top_level = 15'd950;
    parameter low_level = 15'd100;
    
     assign data_out = sensor_data ;
    
    always @(posedge clk or posedge reset ) begin 
    if (reset) begin 
    motor_on <= 1'd0;
    motor_off <= 1'd0;
    end else begin 
    if(valid && sensor_data < low_level) 
    motor_on <= 1'd1;
    else 
    motor_on <= 1'd0;   
    if (valid && sensor_data > top_level)
    motor_off <= 1'd1;
    else 
    motor_off <= 1'd0;
    end 
    end
 
   
    
endmodule
