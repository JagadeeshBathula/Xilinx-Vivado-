`timescale 1ns / 1ps

module rp_adder(
    input  a0,a1,a2,a3,b0,b1,b2,b3,cin,
    output s0,s1,s2,s3,cout
    );
    
    wire cin1,cin2,cin3;
    
    // adder 1 
    fs fs1 (a0,b0,cin,s0,cin1);
    // adder 2
    fs fs2 (a1,b1,cin1,s1,cin2);
    // adder 3 
    fs fs3 (a2,b2,cin2,s2,cin3);
    // adder4
    fs fs4 (a3,b3,cin3,s3,cout);
endmodule
