`timescale 1ns / 1ps

module simulation();

    parameter N = 3;
    reg clk, reset;
    wire [N-1:0] gray;

    gray_code_counter #(N) uut (
        .clk(clk),
        .reset(reset),
        .gray(gray)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        $monitor("Time=%0t | Gray Code = %b", $time, gray);
        
        reset = 1;
        #10 reset = 0;
        
        #100 $stop;
    end

endmodule
