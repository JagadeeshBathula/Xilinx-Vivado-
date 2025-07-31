`timescale 1ns / 1ps

module shift_register_PISO(
    input wire [3:0] D,
    input wire clk,reset,control,
    output wire Q
    );
    wire n1,n2,n3 ;
    wire o1,o2,o3 ;
    
    // mux 
    mux_2x1 MUX1 (.a(n1),.b(D[1]),.s(control),.y(o1)) ;
    mux_2x1 MUX2 (.a(n2),.b(D[2]),.s(control),.y(o2)) ;
    mux_2x1 MUX3 (.a(n3),.b(D[3]),.s(control),.y(o3)) ;
      
   // Flip Flops 
    
    D_ff FF1 (.D(D[0]), .clk(clk), .reset(reset), .Q(n1));
    D_ff FF2 (.D(o1), .clk(clk), .reset(reset), .Q(n2));
    D_ff FF3 (.D(o2), .clk(clk), .reset(reset), .Q(n3));
    D_ff FF4 (.D(o3), .clk(clk), .reset(reset), .Q(Q));
    
    
endmodule
 