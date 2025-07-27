`timescale 1ns / 1ps
module tb_barrel_shifter;

    reg [3:0] data_in;
    reg [1:0] shift_amt;
    reg dir;
    wire [3:0] data_out;

    barrel_shifter uut (
        .data_in(data_in),
        .shift_amt(shift_amt),
        .dir(dir),
        .data_out(data_out)
    );

    initial begin
        data_in = 4'b1101;

        dir = 0; shift_amt = 2; #10; 
        dir = 1; shift_amt = 1; #10; 
        dir = 0; shift_amt = 3; #10; 
        dir = 1; shift_amt = 2; #10; 

        $stop;
    end

endmodule
