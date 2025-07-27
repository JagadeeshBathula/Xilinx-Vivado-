`timescale 1ns / 1ps

module add_sub(
    input [3:0]a,b,
    input cin,
    output [3:0]s,
    output cout
    );
    wire [2:0]c;
    wire [3:0]B;
    
    assign B[0] = b[0] ^ cin ;
    assign B[1] = b[1] ^ cin ;
    assign B[2] = b[2] ^ cin ;
    assign B[3] = b[3] ^ cin ;
    
    FA FA1(a[0],B[0],cin,s[0],c[0]);
     FA FA2(a[1],B[1],c[0],s[1],c[1]);
      FA FA3(a[2],B[2],c[1],s[2],c[2]);
       FA FA4(a[3],B[3],c[2],s[3],cout);
    
endmodule
