`timescale 1ns / 1ps

module fifo_buffer#(parameter width = 8 , parameter depth = 8)(
    input wire clk,reset,
    input wire [width-1:0]data_in,
    input wire wr_en,rd_en,
    output reg [width-1:0]data_out,
    output wire full, empty

    );
    
    reg [width-1:0]register[depth-1:0];
    reg [$clog2(depth)-1:0] w_ptr, r_ptr, count;
    
    assign full = (count == depth);
    assign empty = (count == 0);
    
    always @ (posedge clk or posedge reset) begin 
      if (reset) begin 
      w_ptr <= 0; r_ptr <= 0; count <= 0; data_out <= 0;
      end else begin
      if (wr_en && !full) begin
        register[w_ptr] <= data_in;
        w_ptr <= w_ptr + 1 %depth;
        count <= count + 1;
      end
      if (rd_en && !empty) begin 
         data_out <= register[r_ptr];
         r_ptr <= r_ptr + 1 %depth;
         count <= count - 1;
      end 
      end 
    end
endmodule

