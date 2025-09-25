`timescale 1ns / 1ps

module simulation;

    // Testbench signals
    reg clk, reset;
    reg [7:0] heartbeat_data, temperature_data, motion_data;
    reg heartbeat_valid, temperature_valid, motion_valid;

    wire [7:0] alert_data;
    wire heartbeat_alert, temperature_alert, motion_alert;

    // Instantiate DUT
    baby_monitor_top uut (
        .clk(clk),
        .reset(reset),
        .heartbeat_data(heartbeat_data),
        .heartbeat_valid(heartbeat_valid),
        .temperature_data(temperature_data),
        .temperature_valid(temperature_valid),
        .motion_data(motion_data),
        .motion_valid(motion_valid),
        .alert_data(alert_data),
        .heartbeat_alert(heartbeat_alert),
        .temperature_alert(temperature_alert),
        .motion_alert(motion_alert)
    );

    // Clock generation (10ns period)
    always #5 clk = ~clk;

    // Stimulus
    initial begin
        // Init
        clk = 0;
        reset = 1;
        heartbeat_data = 0;
        temperature_data = 0;
        motion_data = 0;
        heartbeat_valid = 0;
        temperature_valid = 0;
        motion_valid = 0;

        // Release reset
        #15 reset = 0;

        // Send heartbeat value = 80 (normal)
        #10 heartbeat_data = 8'd80; heartbeat_valid = 1;
        #10 heartbeat_valid = 0;

        // Send heartbeat value = 130 (abnormal, should trigger alert)
        #20 heartbeat_data = 8'd130; heartbeat_valid = 1;
        #10 heartbeat_valid = 0;

        // Send temperature value = 90 (normal)
        #20 temperature_data = 8'd90; temperature_valid = 1;
        #10 temperature_valid = 0;

        // Send temperature value = 110 (abnormal, should trigger alert)
        #20 temperature_data = 8'd110; temperature_valid = 1;
        #10 temperature_valid = 0;

        // Send motion = 0 (no movement)
        #20 motion_data = 8'd0; motion_valid = 1;
        #10 motion_valid = 0;

        // Send motion = 1 (movement detected)
        #20 motion_data = 8'd1; motion_valid = 1;
        #10 motion_valid = 0;

        // Let simulation run a little
        #50 $finish;
    end

    // Monitor values
    initial begin
           // Monitor values
    
        $monitor("Time=%0t | HB=%d (alert=%b) | TEMP=%d (alert=%b) | MOTION=%d (alert=%b) | alert_data=%d",
                 $time, heartbeat_data, heartbeat_alert,
                 temperature_data, temperature_alert,
                 motion_data, motion_alert,
                 alert_data);
    end 


endmodule
