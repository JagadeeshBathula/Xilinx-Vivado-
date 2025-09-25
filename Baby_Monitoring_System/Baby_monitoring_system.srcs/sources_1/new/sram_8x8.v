`timescale 1ns / 1ps  
  
module sram_8x8(
    input  wire       clk,
    input  wire [7:0] data_in,
    input  wire       we,        // 1 = write, 0 = read
    input  wire [2:0] address,
    output reg  [7:0] data_out
);
    reg [8:0] mem [8:0]; // 8x8 storage
    integer i;

    // Initialize memory
    initial begin
        for (i = 0; i < 8; i = i + 1)
            mem[i] = 8'h00;
        data_out = 8'h00;
    end

    // Write / read logic
    always @(posedge clk) begin
        if (we) begin
            mem[address] <= data_in;   // Write
            data_out <= data_in;       // Write-through (see new data immediately)
        end else begin
            data_out <= mem[address];  // Read
        end
    end
endmodule
