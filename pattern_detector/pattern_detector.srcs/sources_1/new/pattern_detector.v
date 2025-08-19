`timescale 1ns / 1ps

module pattern_detector (
    input wire clk,
    input wire reset,
    input wire serial_in,
    output reg detected
);

    parameter S0 = 3'b000; 
    parameter S1 = 3'b001;
    parameter S2 = 3'b010; 
    parameter S3 = 3'b011; 
    parameter S4 = 3'b100; 
    
    reg [2:0] state, next_state;

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end
    always @(*) begin
        case (state)
            S0: next_state = (serial_in) ? S1 : S0;
            S1: next_state = (serial_in) ? S1 : S2;
            S2: next_state = (serial_in) ? S3 : S0;
            S3: next_state = (serial_in) ? S4 : S2;
            S4: next_state = (serial_in) ? S1 : S2; 
            default: next_state = S0;
        endcase
    end
    always @(posedge clk or posedge reset) begin
        if (reset)
            detected <= 0;
        else if (state == S3 && serial_in == 1) 
            detected <= 1;
        else
            detected <= 0;
    end

endmodule
