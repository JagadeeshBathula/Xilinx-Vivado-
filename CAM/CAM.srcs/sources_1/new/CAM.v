`timescale 1ns / 1ps

module CAM(
    input wire clk,reset,
    input wire [1:0]w_addr,
    input wire w_en,
    input wire [3:0]data_in,search_word,
    output reg match,
    output reg [1:0]match_addr
    );
    reg [3:0] memory [3:0];
    integer i;
   
    always @ (posedge clk or posedge reset) begin 
    if (reset) begin 
    memory[i]=4'd0;
    match <= 0;
    for(i=0; i<4; i = i+1)
    match_addr <= 2'd0;
    end 
     else if(w_en) begin 
     memory[w_addr] <= data_in;  
    end
    end 
    always @(*) begin 
    match = 0;
    match_addr = 2'd0;
    for(i=0; i<4; i = i+1) begin
    if (search_word == memory[i]) begin 
         match <= 1;
         match_addr <= i[1:0];
    end
    end
    end 
endmodule
