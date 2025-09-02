`timescale 1ns / 1ps

module simulation();
 
    reg clk, reset, push, pop;
    reg [7:0] data_in;
    wire [7:0] data_out;
    wire full, empty;

    stack_lifo #(.WIDTH(8), .DEPTH(4)) uut (
                                             .clk(clk), .reset(reset),
                                             .push(push), .pop(pop),
                                             .data_in(data_in),
                                             .data_out(data_out),
                                             .full(full), .empty(empty) );

  
    always #5 clk = ~clk;
    initial begin
    clk = 0; reset = 1; push = 0; pop = 0; data_in = 0;
    #10 reset = 0;
    end 
    initial begin 
       $display("Time=%0t, push=%b, pop=%b, data_in=%h, data_out=%h, full=%b, empty=%b",
                 $time, push, pop, data_in, data_out, full, empty);
   
        #10 push = 1; data_in = 8'h11; 
        #10 data_in = 8'h22;            
        #10 data_in = 8'h33;            
        #10 data_in = 8'h44;            
        #10 push = 0;                  
       
        #10 pop = 1;  
        #10 pop = 1;   
        #10 pop = 1;   
        #10 pop = 1;   
        #10 pop = 0;
        #20 $finish;
    end
 
endmodule

