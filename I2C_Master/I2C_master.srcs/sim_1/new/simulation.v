`timescale 1ns / 1ps

module simulation;

    // Testbench signals
    reg clk;
    reg reset;
    reg start;
    reg [6:0] slave_addr;
    reg [7:0] data_in;
    wire scl;
    wire sda;
    wire done;

    // Pull-up resistor simulation for SDA line
    tri1 sda_pull = sda;  

    // DUT instance
    i2c_master uut (
        .clk(clk),
        .reset(reset),
        .start(start),
        .slave_addr(slave_addr),
        .data_in(data_in),
        .scl(scl),
        .sda(sda),
        .done(done)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100MHz → can adjust
    end

    // Stimulus
    initial begin
        // Init
        reset = 1;
        start = 0;
        slave_addr = 7'b1010000; // Example slave address
        data_in = 8'hA5;         // Example data

        #20;
        reset = 0;

        #50;
        start = 1;   // Trigger start
        #10;
        start = 0;

        // Wait until done
        wait(done);

        #200;
        $stop;
    end

endmodule
