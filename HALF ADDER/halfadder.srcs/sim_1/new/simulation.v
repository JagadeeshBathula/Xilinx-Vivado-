`timescale 1ns / 1ps

module simulation( );
reg a , b ;
wire sum , carry ;

halfadder dut(a , b , sum , carry);

initial
begin
a = 0 ; b = 0 ;
#10 a = 0 ; b = 1 ;
#10 a = 1 ; b = 0 ;
#10 a = 1 ; b = 1 ;
# 10 $stop;
end
endmodule
