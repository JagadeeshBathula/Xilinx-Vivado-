`timescale 1ns / 1ps

module simulation( );
reg clk, write_en, read_en;
reg [2:0]write_addr;
reg [15:0]write_in;
reg [2:0]read_addr_1, read_addr_2;
wire [15:0]read_out_1,read_out_2;

register_file dut ( .clk(clk), .write_en(write_en), .read_en(read_en),
                    .write_addr(write_addr), .write_in(write_in),
                    .read_addr_1(read_addr_1), .read_addr_2(read_addr_2),
                    .read_out_1(read_out_1), .read_out_2(read_out_2));
  initial begin 
  clk = 0; forever #5 clk = ~clk;
  end
  initial begin 
  $monitor("t=%0t,clk=%b,write_en=%b,write_in=%b,write_addr=%b,read_en=%b,read_addr_1=%b,read_addr_2=%b,read_out_1=%b,read_out_2=%b",
            $time,clk,write_en,write_in,write_addr,read_en,read_addr_1,read_addr_2,read_out_1,read_out_2);
  write_en = 0; read_en = 0; write_addr = 0; write_in = 16'd0; read_addr_1 = 3'd0; read_addr_2 = 3'd0;
  
  write_en = 1; #10;
  write_addr = 3'd0; write_in = 16'd5; #10;
  write_addr = 3'd1; write_in = 16'd30; #10;
  write_addr = 3'd2; write_in = 16'd110; #10;
  write_addr = 3'd3; write_in = 16'd69; #10;
  write_addr = 3'd4; write_in = 16'd60; #10;
  write_en = 0; #10;
  #12;
  read_en = 1;  #10;
  read_addr_1 = 3'd0; read_addr_2 = 3'd0;#10;
  #12;
  read_addr_1 = 3'd2; read_addr_2 = 3'd3;#10;
  #12;
  read_addr_1 = 3'd1; read_addr_2 = 3'd5;#10;
  #12;
     
   $finish;         
  end                 
endmodule
