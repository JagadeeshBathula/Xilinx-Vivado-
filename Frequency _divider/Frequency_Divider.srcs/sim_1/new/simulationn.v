`timescale 1ns / 1ps

module simulationn(
    );
    reg clk ;
    wire q1, q2 ;
    
    Freq_divider_by_4 dut ( .clk(clk),
                            .q1(q1),
                            .q2(q2));
                            
     initial begin
       clk = 0 ;
       forever #5 clk = ~clk ;
       $monitor("t=%0t, clk=%b, q1=%b, q2=%b", $time, clk, q1, q2);
       $finish;
     end
     
endmodule
