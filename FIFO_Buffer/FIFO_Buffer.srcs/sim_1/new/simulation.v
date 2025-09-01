`timescale 1ns / 1ps

module simulation();
  parameter WIDTH = 8;
  parameter DEPTH = 8;
  reg clk, reset;
  reg wr_en, rd_en;
  reg [WIDTH-1:0] data_in;
  wire [WIDTH-1:0] data_out;
  wire full, empty;

  fifo_buffer #(WIDTH, DEPTH) uut (    .clk(clk),
                                .reset(reset),
                                .wr_en(wr_en),
                                .rd_en(rd_en),
                                .data_in(data_in),
                                .data_out(data_out),
                                .full(full),
                                .empty(empty)   );
  always #5 clk = ~clk;   
  initial begin
    clk = 0;
    reset = 1;
    wr_en = 0;
    rd_en = 0;
    data_in = 0;

    #10 reset = 0;
    
    repeat(4) begin
      @(posedge clk);
      wr_en = 1;
      data_in = $random;
      $display("Writing: %d", data_in);
    end
    @(posedge clk) wr_en = 0;

    repeat(4) begin
      @(posedge clk);
      rd_en = 1;
      $display("Reading: %d", data_out);
    end
    @(posedge clk) rd_en = 0;
    
    #20 $finish;
  end
endmodule
