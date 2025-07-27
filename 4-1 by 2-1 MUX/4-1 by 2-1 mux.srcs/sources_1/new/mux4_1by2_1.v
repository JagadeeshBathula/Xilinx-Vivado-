`timescale 1ns / 1ps


module mux4_1by2_1(
    input a,b,c,d,s1,s2,
    output y
    );
    
    wire y1 , y2;
    
    mux2_1 mux2_1_1(a,b,s1,y1);
    mux2_1 mux2_1_2(c,d,s1,y2);
    mux2_1 mux2_1_3(y1,y2,s2,y);
    
endmodule
