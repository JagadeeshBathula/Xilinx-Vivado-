`timescale 1ns / 1ps


module gates(
    input a,
    input b,
    output and_out,buf_out,nand_out,or_out,nor_out,inv_out,xor_out,xnor_out
    );
    buf(buf_out,a);
    and(and_out,a,b);
    or(or_out,a,b);
    nand(nand_out,a,b);
    nor(nor_out,a,b);
    xnor(xnor_out,a,b);
    xor(xor_out,a,b);
    not(inv_out,a);
    
    
endmodule
