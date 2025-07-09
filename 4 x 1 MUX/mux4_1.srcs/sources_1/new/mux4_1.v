`timescale 1ns / 1ps

module mux4_1(
    input [3:0] i,        
    input [1:0] s,         
    output y              
);

assign y = i[0]&~s[0]&~s[1] |i[1]&s[0]&~s[1]| i[2]&~s[0]&s[1] | i[3]&s[0]&s[1] ;

endmodule
