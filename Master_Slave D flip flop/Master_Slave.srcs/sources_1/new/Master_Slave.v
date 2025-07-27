`timescale 1ns / 1ps

module Master_Slave(
    input D, clk,
    output wire Q,
    output wire Qn
    );
    
    wire Q1;

    D_latch Master (.D(D), .en(clk), .Q(Q1));
    D_latch Slave (.D(Q1), .en(~clk), .Q(Q));

    assign Qn = ~Q;

endmodule      
