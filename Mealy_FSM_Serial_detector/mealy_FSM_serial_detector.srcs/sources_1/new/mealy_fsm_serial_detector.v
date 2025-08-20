`timescale 1ns / 1ps

module mealy_fsm_serial_detector(
    input wire clk,reset,serial_in,
    output reg detected
    );
    localparam S0 = 2'b00;
    localparam S1 = 2'b01;
    localparam S2 = 2'b10;
    localparam S3 = 2'b11;
    
    reg [1:0] state,next_state;
   
    always @ (posedge clk or posedge reset) begin 
      if (reset)
      state = S0 ;
      
      else 
      state = next_state ;
    end 
    
    always @ (*) begin 
       detected = 1'b0;
       case (state)
         S0 : begin next_state = serial_in ?  S1 : S0; end 
         S1 : begin next_state = serial_in ? S2 : S1;  end
         S2 : begin next_state = serial_in ? S3 : S0; end 
         S3 : begin 
         if (serial_in) begin
         detected = 1'd1;
         next_state = S1;
        end  else 
         next_state = S2;
         end 
         default : next_state = S0;
          
       endcase 
    end
    
endmodule
