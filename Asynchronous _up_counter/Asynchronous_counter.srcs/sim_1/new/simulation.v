`timescale 1ns / 1ps

module simulation ();
    reg clk;
    reg reset;
    wire [3:0] Q;
    
    async_counter dut (
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        #10 reset = 0;
        #200 $finish;
    end

    initial begin
        $monitor("t= %0t | Q=%b", $time, Q);
    end

endmodule
