`timescale 1ns / 1ps
 
module UP_DOWN_Counter(
  input wire up_down,clk,reset,
  output wire [2:0]Q
  );
  wire q1,q2,q3 ;
  wire j1,j2,j3 ;
  wire k1,k2,k3 ;
  
  assign j1 = 1 ;
  assign k1 = 1 ;
  assign j2 = up_down ? (q1) : (~q1) ;
  assign k2 = j2 ;
  assign j3 = up_down ? (q1 & q2) : (~q1 & ~q2) ;
  assign k3 = j3 ;
  
  JK_ff FF1 (.J(j1), .K(k1), .clk(clk), .reset(reset), .Q(q1));
  JK_ff FF2 (.J(j2), .K(k2), .clk(clk), .reset(reset), .Q(q2));
  JK_ff FF3 (.J(j3), .K(k3), .clk(clk), .reset(reset), .Q(q3));
  
  assign Q = {q3,q2,q1} ; 
  
endmodule
   