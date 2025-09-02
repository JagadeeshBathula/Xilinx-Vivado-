`timescale 1ns / 1ps

module stack_lifo #( parameter WIDTH = 8, parameter DEPTH = 8 )
 
   ( input wire clk, reset,
      input wire push, pop,
      input wire [WIDTH-1:0] data_in,
      output reg [WIDTH-1:0] data_out,
      output wire full, empty  );
      
    reg [WIDTH-1:0] register [0:DEPTH-1];
    reg [$clog2(DEPTH):0] sp; 

    assign empty = (sp == 0);
    assign full  = (sp == DEPTH);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            sp <= 0;
            data_out <= 0;
        end else begin
            if (push && !full) begin
                register[sp] <= data_in; 
                sp <= sp + 1;
            end else if (pop && !empty) begin
                sp <= sp - 1;
                data_out <= register[sp-1]; 
            end
        end
    end

endmodule
