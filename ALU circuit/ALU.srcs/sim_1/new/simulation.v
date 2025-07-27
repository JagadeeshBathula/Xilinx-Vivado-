`timescale 1ns / 1ps

module simulation;
  reg [3:0] a;
  reg [3:0] b;
  reg [2:0] s;
  wire [3:0] y;
  wire carry;
  wire zero;

  ALU uut (a, b, s, y, carry, zero);

  initial begin
  
    a = 4'b1010; 
    b = 4'b0101;
    
    s = 3'b000; #10;
    $display("t=%0t, s=%b, y=%b, carry=%b, zero=%b", $time, s, y, carry, zero);   
    s = 3'b001; #10;
    $display("t=%0t, s=%b, y=%b, carry=%b, zero=%b", $time, s, y, carry, zero);
    s = 3'b010; #10;
    $display("t=%0t, s=%b, y=%b, carry=%b, zero=%b", $time, s, y, carry, zero);
    s = 3'b011; #10;
    $display("t=%0t, s=%b, y=%b, carry=%b, zero=%b", $time, s, y, carry, zero);
    s = 3'b100; #10;
    $display("t=%0t, s=%b, y=%b, carry=%b, zero=%b", $time, s, y, carry, zero);
    s = 3'b101; #10;
    $display("t=%0t, s=%b, y=%b, carry=%b, zero=%b", $time, s, y, carry, zero);
    s = 3'b110; #10;
    $display("t=%0t, s=%b, y=%b, carry=%b, zero=%b", $time, s, y, carry, zero);
    s = 3'b111; #10;
    $display("t=%0t, s=%b,y=%b, carry=%b, zero=%b", $time, s, y, carry, zero);

    $finish;
  end
endmodule
