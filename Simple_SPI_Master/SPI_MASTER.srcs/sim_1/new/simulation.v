`timescale 1ns / 1ps

module simulation ();

    reg clk;
    reg reset;
    reg [7:0] data_in;
    wire mosi;
    wire done;
    wire ss;
    
    SPI_master uut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .mosi(mosi),
        .done(done),
        .ss(ss)
    );

    always #5 clk = ~clk;
    initial begin
        clk = 0; reset = 1;
        
        data_in = 8'b0; #20
         reset = 0;
        data_in = 8'b10110010;  
        wait(done);  #20;
        reset = 1;    #10
        reset = 0;   
        data_in = 8'b11011010;
        wait(done);
        #50;

        $stop;  
    end

endmodule
