`timescale 1ns / 1ps


module simulation(

    );
    reg a, b, c, d, s1, s2;
    wire y;
    
    mux4_1by2_1 dut (a,b,c,d,s1,s2,y);
    
    initial begin 
       a = 0 ; b = 0 ; c = 0 ; d = 0 ; s1 = 0 ; s2 = 0 ;
       #10 a = 0 ; b = 1 ; c = 0 ; d = 0 ; s1 = 0 ; s2 = 0 ;
       #10 a = 1 ; b = 0 ; c = 0 ; d = 0 ; s1 = 0 ; s2 = 0 ;
       #10 a = 1 ; b = 1 ; c = 0 ; d = 0 ; s1 = 0 ; s2 = 0 ;
       #10 a = 0 ; b = 0 ; c = 0 ; d = 0 ; s1 = 1 ; s2 = 0 ;
       #10 a = 0 ; b = 1 ; c = 0 ; d = 0 ; s1 = 1 ; s2 = 0 ;
       #10 a = 1 ; b = 0 ; c = 0 ; d = 0 ; s1 = 1 ; s2 = 0 ;
       #10 a = 1 ; b = 1 ; c = 0 ; d = 0 ; s1 = 1 ; s2 = 0 ;
       #10 a = 0 ; b = 0 ; c = 0 ; d = 0 ; s1 = 0 ; s2 = 1 ;
       #10 a = 0 ; b = 0 ; c = 0 ; d = 1 ; s1 = 0 ; s2 = 1 ;
       #10 a = 0 ; b = 0 ; c = 1 ; d = 0 ; s1 = 0 ; s2 = 1 ;
       #10 a = 0 ; b = 0 ; c = 1 ; d = 1 ; s1 = 0 ; s2 = 1 ;
       #10 a = 0 ; b = 0 ; c = 0 ; d = 0 ; s1 = 1 ; s2 = 1 ;
       #10 a = 0 ; b = 0 ; c = 0 ; d = 1 ; s1 = 1 ; s2 = 1 ;
       #10 a = 0 ; b = 0 ; c = 1 ; d = 0 ; s1 = 1 ; s2 = 1 ;
       #10 a = 0 ; b = 0 ; c = 1 ; d = 1 ; s1 = 1 ; s2 = 1 ;
       #10 $stop;
    end
    
    
endmodule
