`timescale 1ns / 1ps

module sequence_detector(
    input wire clk, reset,
    input wire serial_in,
    output reg detected
    );
    
    localparam S0 = 3'b000;
    localparam S1 = 3'b001;
    localparam S2 = 3'b010;
    localparam S3 = 3'b011;
    localparam S4 = 3'b100;
    
    reg [2:0] state,next_state ;
    
    always @ (posedge clk or posedge reset)begin
    if (reset)
    state <= S0 ;
    else 
    state <= next_state;
    end 
    always @ (*) begin
    case (state) 
       S0 : next_state = serial_in ? S1 : S0;  
       S1 : next_state = serial_in ? S1 : S2;
       S2 : next_state = serial_in ? S3 : S0;
       S3 : next_state = serial_in ? S4 : S2;
       S4 : next_state = serial_in ? S1 : S2;
       default : next_state = S0 ;
    endcase 
    end
    always @ (*) begin
    detected = (state == S4);
    end
endmodule
