`timescale 1ns / 1ps

module simulation(
   );
    reg [3:0]a ;
    wire [1:0]b ;
    wire v ;
    
    priority_encoder dut(a,b,v);
    initial begin
    $display("t=%0t, a=%b, b=%b, v=%b", $time, a, b, v);
    repeat(10) begin
    a = $random;
    #10;
    $display("t=%0t, a=%b, b=%b, v=%b", $time, a, b, v);
    
    end
    $finish;
    
    end
 
endmodule
