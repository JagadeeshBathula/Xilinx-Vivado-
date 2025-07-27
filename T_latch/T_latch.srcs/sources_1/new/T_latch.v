`timescale 1ns / 1ps

module T_latch(
    input T, en,
    output reg Q,
    output Qn
);
    assign Qn = ~Q;
     
    initial Q = 0 ;

    always @(T or en) begin
        if (en) begin
            if (T)
                Q = ~Q;    
        end
       
    end
endmodule
