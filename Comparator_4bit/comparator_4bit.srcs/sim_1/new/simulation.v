`timescale 1ns / 1ps

module simulation( );
   reg [3:0]a,b;
   wire gt,eq,lt;
   
   comparator_4bit dut (
                .a(a),
                .b(b),
                .gt(gt),
                .eq(eq),
                .lt(lt));
     initial begin 
     $display("t=%0t, a=%b, b=%b, gt=%b, eq=%b, lt=%b", $time, a, b, gt, eq, lt);
       repeat(10) begin
        a = $random;
        b = $random;
        #10;
        $display("t=%0t, a=%b, b=%b, gt=%b, eq=%b, lt=%b", $time, a, b, gt, eq, lt);
        end
        $finish;
     end           

endmodule
