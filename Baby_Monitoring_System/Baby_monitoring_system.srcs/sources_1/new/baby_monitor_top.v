`timescale 1ns / 1ps
  
module baby_monitor_top (
    input  wire       clk,
    input  wire       reset,

    // Sensor Inputs
    input  wire [7:0] heartbeat_data,
    input  wire       heartbeat_valid,
    input  wire [7:0] temperature_data,
    input  wire       temperature_valid,
    input  wire [7:0] motion_data,
    input  wire       motion_valid,

    // Outputs
    output wire [7:0] alert_data,
    output wire       heartbeat_alert,
    output wire       temperature_alert,
    output wire       motion_alert
);
    // Internal wires
    wire we_hb, we_temp, we_motion;
    wire [7:0] hb_out, temp_out, motion_out;
    wire [7:0] sram_out;
    reg  [2:0] addr;

    // ---------------------------------------------------
    // Sensor Interfaces
    // ---------------------------------------------------
    sensor_interface hb_sensor (
        .sensor_data(heartbeat_data),
        .valid(heartbeat_valid),
        .clk(clk),
        .trigger_write(we_hb),
        .data_out(hb_out)
    );

    sensor_interface temp_sensor (
        .sensor_data(temperature_data),
        .valid(temperature_valid),
        .clk(clk),
        .trigger_write(we_temp),
        .data_out(temp_out)
    );

    sensor_interface motion_sensor (
        .sensor_data(motion_data),
        .valid(motion_valid),
        .clk(clk),
        .trigger_write(we_motion),
        .data_out(motion_out)
    );

    // ---------------------------------------------------
    // SRAM (shared buffer for all sensors)
    // ---------------------------------------------------
    wire       we_any;
    wire [8:0] data_to_write;

    assign we_any = we_hb | we_temp | we_motion;

    // Priority: heartbeat > temperature > motion
    assign data_to_write = we_hb ? hb_out :
                           we_temp ? temp_out :
                           motion_out;

    sram_8x8 sram (
        .clk(clk),
        .data_in(data_to_write),
        .we(we_any),
        .address(addr),
        .data_out(sram_out)
    );

    // ---------------------------------------------------
    // Address counter (circular buffer)
    // ---------------------------------------------------
    always @(posedge clk or posedge reset) begin
        if (reset)
            addr <= 0;
        else if (we_any)
            addr <= addr + 1;
    end

    // ---------------------------------------------------
    // Threshold alert logic
    // ---------------------------------------------------
    parameter HB_THRESHOLD   = 8'd120;
    parameter TEMP_THRESHOLD = 8'd100;
    parameter MOTION_THRESHOLD = 8'd1;

    reg hb_alert_r, temp_alert_r, motion_alert_r;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            hb_alert_r    <= 0;
            temp_alert_r  <= 0;
            motion_alert_r<= 0;
        end else begin
            if (heartbeat_valid && heartbeat_data > HB_THRESHOLD)
                hb_alert_r <= 1;
            else
                hb_alert_r <= 0;

            if (temperature_valid && temperature_data > TEMP_THRESHOLD)
                temp_alert_r <= 1;
            else
                temp_alert_r <= 0;

            if (motion_valid && motion_data >= MOTION_THRESHOLD)
                motion_alert_r <= 1;
            else
                motion_alert_r <= 0;
        end
    end

    assign heartbeat_alert   = hb_alert_r;
    assign temperature_alert = temp_alert_r;
    assign motion_alert      = motion_alert_r;

    // ---------------------------------------------------
    // Output Data (latest stored value)
    // ---------------------------------------------------
    assign alert_data = sram_out;

endmodule
