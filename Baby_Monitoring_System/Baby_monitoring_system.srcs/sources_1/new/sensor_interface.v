`timescale 1ns / 1ps

module sensor_interface ( 
    input  wire [7:0] sensor_data, 
    input  wire       valid, 
    input  wire       clk, 
    output reg        trigger_write, 
    output reg [7:0]  data_out 
 ); 
 
   always @(posedge clk) begin 
        if (valid) begin
            trigger_write <= 1'b1;
            data_out <= sensor_data;
        end else begin
            trigger_write <= 1'b0;
        end
   end
   
endmodule