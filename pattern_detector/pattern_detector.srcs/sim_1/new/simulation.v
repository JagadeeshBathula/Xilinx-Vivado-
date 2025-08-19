`timescale 1ns / 1ps

module tb_pattern_detector;

    reg clk, reset, serial_in;
    wire detected;
    
    pattern_detector uut (
        .clk(clk),
        .reset(reset),
        .serial_in(serial_in),
        .detected(detected)
    );
    always @ (*) begin
     clk = 0 ; 
     forever #5 clk = ~clk;
     end

    initial begin
        clk = 0;
        reset = 1;
        serial_in = 0;
        #10 reset = 0;
        #10 serial_in = 1;  
        #10 serial_in = 0;  
        #10 serial_in = 1;  
        #10 serial_in = 1;  
        #10 serial_in = 0;
        #10 serial_in = 1;
        #10 serial_in = 0;
        #10 serial_in = 1;
        #10 serial_in = 1; 
        #10 serial_in = 0;
        #10 serial_in = 1;
        #10 serial_in = 1;

        #50 $finish;
    end

endmodule
