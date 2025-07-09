`timescale 1ns / 1ps

module simuli(

    );
    reg a , b , bin ;
    wire D , B ;
    
    fsub dut ( a , b , bin , D , B );
    initial
    begin 
    
    a = 0 ; b = 0 ; bin = 0 ;
    #10 a = 0 ; b = 0 ; bin = 1 ;
    #10 a = 0 ; b = 1 ; bin = 0 ;
    #10 a = 0 ; b = 1 ; bin = 1 ;
    #10 a = 1 ; b = 0 ; bin = 0 ;
    #10 a = 1 ; b = 0 ; bin = 1 ;
    #10 a = 1 ; b = 1 ; bin = 0 ;
    #10 a = 1 ; b = 1 ; bin = 1 ;
    #10 $stop ;
    
    
    end
    
  
endmodule
