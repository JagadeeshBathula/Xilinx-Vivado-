`timescale 1ns / 1ps

module SPI_master(
    input  wire       clk,
    input  wire       reset,
    input  wire [7:0] data_in,
    output reg        mosi,
    output reg        done,
    output reg        ss
    );

    reg [2:0] count;
    reg [1:0] state;
    reg [7:0] shift_reg;

    parameter IDLE   = 2'b00;
    parameter TRANS  = 2'b01;
    parameter FINISH = 2'b10;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            mosi      <= 1'b0;
            done      <= 1'b0;
            ss        <= 1'b1;  
            count     <= 3'd0;
            state     <= IDLE;
            shift_reg <= 8'd0;
        end else begin
            case (state)
                IDLE: begin
                    done      <= 1'b0;
                    ss        <= 1'b1;
                    shift_reg <= data_in;  
                    count     <= 3'd0;     
                    ss        <= 1'b0;     
                    state     <= TRANS;
                end

                TRANS: begin
                    mosi <= shift_reg[count];   
                    if (count == 3'd7) begin
                        state <= FINISH;
                    end else begin
                        count <= count + 1;  
                    end
                end

                FINISH: begin
                    ss   <= 1'b1;
                    done <= 1'b1; 
                    state <= IDLE;  
                end
            endcase
        end
    end
endmodule
