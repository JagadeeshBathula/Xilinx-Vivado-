`timescale 1ns / 1ps

module moore_fsm_safe_lock(
    input wire clk, reset, serial_in,
    output reg unlock, error
    );

    localparam S0    = 3'b000;  
    localparam S1    = 3'b001;  
    localparam S2    = 3'b010;  
    localparam S3    = 3'b011;  
    localparam S4    = 3'b100;  

    reg [2:0] state, next_state;
    reg [3:0] register;   
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= S0;
            register  <= 4'b0000;
        end else begin
            state <= next_state;
            if (next_state >= S1 && next_state <= S4)
                register <= {register[2:0], serial_in};
        end
    end
    always @(*) begin
        unlock = 1'b0;
        error  = 1'b0;
        next_state = state;

        case (state)
            S0: next_state = S1;  
            S1: next_state = S2;  
            S2: next_state = S3; 
            S3: next_state = S4;  
            S4: begin
                if (register == 4'b1011)
                    unlock = 1'b1; 
                else
                    error = 1'b1;   
                next_state = S0;   
            end
            default: next_state = S0;
        endcase
    end
endmodule


