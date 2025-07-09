`timescale 1ns / 1ps



module simulation();
    reg a,b;
    wire and_out,buf_out,nand_out,or_out,nor_out,inv_out,xor_out,xnor_out;
    gates dut (a,b,and_out,buf_out,nand_out,or_out,nor_out,inv_out,xor_out,xnor_out);
    initial begin
    a = 0 ; b = 0 ;
    #10 a = 0 ; b = 1;
    #10 a = 1 ; b = 0 ;
    #10 a = 1 ; b = 1 ;
    #10 $stop;
    
    end
    
endmodule