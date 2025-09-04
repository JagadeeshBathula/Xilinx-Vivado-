`timescale 1ns / 1ps

module simulation();

    reg clk, reset;
    reg [3:0] data_in, search_word;
    reg [1:0] w_addr;
    reg w_en;
    wire match;
    wire [1:0] match_addr;

    CAM uut (
        .clk(clk), .reset(reset),
        .data_in(data_in), .w_addr(w_addr), .w_en(w_en),
        .search_word(search_word),
        .match(match), .match_addr(match_addr)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0; reset = 1; w_en = 0;
        data_in = 0; w_addr = 0; search_word = 0;
        #10 reset = 0;
        // Write some values
        #10 w_en=1; w_addr=2'b00; data_in=4'b1010; 
        #10 w_addr=2'b01; data_in=4'b1101;          
        #10 w_addr=2'b10; data_in=4'b0110;        
        #10 w_en=0; 
        // Search
        #10 search_word=4'b1101;   
        #10 search_word=4'b1111;   
        #10 search_word=4'b1010;   

        #20 $finish;
    end

endmodule
