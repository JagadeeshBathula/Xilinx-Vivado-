`timescale 1ns / 1ps

module gray_code_counter #(parameter N = 3) (
    input  wire clk,
    input  wire reset,
    output reg  [N-1:0] gray
);

    reg [N-1:0] binary;
    integer i; 

    always @(posedge clk or posedge reset) begin
        if (reset)
            binary <= {N{1'b0}};
        else
            binary <= binary + 1'b1;
    end
    always @(*) begin
        gray[N-1] = binary[N-1]; 
        for (i = N-2; i >= 0; i = i - 1) begin
            gray[i] = binary[i+1] ^ binary[i];
        end
    end

endmodule
