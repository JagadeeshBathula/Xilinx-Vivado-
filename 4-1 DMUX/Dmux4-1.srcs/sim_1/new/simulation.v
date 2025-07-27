`timescale 1ns / 1ps

module simulation(
 );
 reg i ;
 reg [1:0]s;
 wire [3:0]y;
 dmux4_1 dut (i,s,y);
 initial begin 
 $display("t=%0t, i=%b, s=%b, y=%b",$time, i, s, y);
 repeat(10) begin
 i = $random;
 s = $random;
 #10;
 $display("t=%0t, i=%b, s=%b, y=%b",$time, i, s, y);
 end
 $finish;
 end
endmodule
