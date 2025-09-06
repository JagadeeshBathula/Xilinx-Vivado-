`timescale 1ns / 1ps

module simulation(
  );
  
  reg clk,en;
  reg [4:0]address;
  wire [63:0]data_out;
  
  ganapathi uut (.clk(clk), .en(en), .address(address), .data_out(data_out));
  
  initial begin 
  clk = 0;
  forever #5 clk = ~clk;
  end 
  
  initial begin 
  $monitor("t=%0t, clk=%b, en=%b, address=%b, data_out=%b", $time, clk, en, address, data_out);
 
  en = 0; address = 32'd0; #10;
  en = 1;
 
  address = 32'd0; #10;
  address = 32'd1; #10;
  address = 32'd2; #10;
  address = 32'd3; #10;
  address = 32'd4; #10;
  address = 32'd5; #10;
  address = 32'd6; #10;
  address = 32'd7; #10;
  address = 32'd8; #10;
  address = 32'd9; #10;
  address = 32'd10; #10;
  address = 32'd11; #10;
  address = 32'd12; #10;
  address = 32'd13; #10;
  address = 32'd14; #10;
  address = 32'd15; #10;
  address = 32'd16; #10;
  address = 32'd17; #10;
  address = 32'd17; #10;
  address = 32'd18; #10;
  address = 32'd19; #10;
  address = 32'd20; #10;
  address = 32'd21; #10;
  address = 32'd22; #10;
  address = 32'd23; #10;
  address = 32'd24; #10;
  address = 32'd25; #10;
  address = 32'd26; #10;
  address = 32'd27; #10;
  address = 32'd28; #10;
  address = 32'd29; #10;
  address = 32'd30; #10;
  address = 32'd31; #10;
  address = 32'd32; #10;
  
 $finish; 
  end 
endmodule

