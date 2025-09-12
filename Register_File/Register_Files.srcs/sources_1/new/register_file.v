`timescale 1ns / 1ps

module register_file(
    input wire  clk,write_en,read_en,
    input wire [2:0]write_addr,
    input wire [15:0]write_in,
    input wire [2:0]read_addr_1,read_addr_2,    
    output reg [15:0]read_out_1,read_out_2
    );
    
    reg [15:0]register[7:0] ;
    integer i ;
    
    initial begin 
    for (i=0; i < 8; i = i + 1)
    register[i] = 16'd0;
    read_out_1 = 16'd0;
    read_out_2 = 16'd0;
    end
    
    always @ (posedge clk) begin 
      if (write_en) begin
       register[write_addr] <= write_in;
       read_out_1 = 16'dz;
       read_out_2 = 16'dz;
       end 
       end
   always @ (posedge clk) begin
       if (read_en) begin
       read_out_1 <= register[read_addr_1]; 
       read_out_2 <= register[read_addr_2];
       end 
       end
    
endmodule
