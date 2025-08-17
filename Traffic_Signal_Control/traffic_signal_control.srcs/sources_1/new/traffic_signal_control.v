`timescale 1ns / 1ps

module traffic_signal_control(
    input wire clk,
    input wire reset,
    output reg [2:0]N,
    output reg [2:0]S,
    output reg [2:0]E,
    output reg [2:0]W,
    output reg [2:0]P_N,P_S,P_E,P_W
   
    );
    
    localparam GREEN  = 10;
    localparam GREEN_right = 5 ;
    localparam YELLOW = 3;
    localparam TOTAL  = (GREEN + YELLOW) * 4; 
    localparam GREEN_light= 3'b001;
    localparam RED_light = 3'b011;
    localparam YELLOW_light = 3'b010;
    localparam GREEN_right_light = 3'b100;
    
    localparam S0 = 4'b0000 ;
    localparam S1 = 4'b0001 ;
    localparam S2 = 4'b0010 ;
    localparam S3 = 4'b0011 ;
    localparam S4 = 4'b0100 ;
    localparam S5 = 4'b0101 ;
    localparam S6 = 4'b0110 ;
    localparam S7 = 4'b0111 ;
    localparam S8 = 4'b1000 ;
    localparam S9 = 4'b1001 ;
    localparam S10 = 4'b1010;
    localparam S11 = 4'b1011;
    
    
    reg [3:0]state ;
    reg [6:0]count;
    
    always @(posedge clk or posedge reset)
     if (reset) begin
     count <= 0;
     state <= S0;
     end
     else 
     count <= count + 1 ;
     
     always @ (*)begin
    
     case (state) 
     S0 : if (count == GREEN ) begin state <= S1 ; count <= 0 ; 
     end
     S1 : if(count == GREEN_right) begin state <= S2 ; count <= 0 ;
     end
     S2 : if(count == YELLOW ) begin state <= S3 ; count <= 0 ;
     end
     S3 : if(count == GREEN ) begin state <= S4 ; count <= 0 ;
     end
      S4 : if(count == GREEN_right ) begin state <= S5 ; count <= 0 ;
     end
      S5 : if(count == YELLOW ) begin state <= S6 ; count <= 0 ;
     end
      S6 : if(count == GREEN ) begin state <= S7 ; count <= 0 ;
     end
     S7 : if(count == GREEN_right ) begin state <= S8 ; count <= 0 ;
     end
      S8 : if(count == YELLOW ) begin state <= S9 ; count <= 0 ;
     end
     S9 : if(count == GREEN ) begin state <= S10 ; count <= 0 ;
     end
     S10 : if(count == GREEN_right ) begin state <= S11 ; count <= 0 ;
     end
      S11 : if(count == YELLOW ) begin state <= S0 ; count <= 0 ;
     end
     default : begin state <= S0 ; count <= 0 ;
     end
     endcase
     
   end
   always @ (*) begin
     N = 3'b011; P_N = 3'b011;
     S = 3'b011; P_S = 3'b011; 
     E = 3'b011; P_E = 3'b011;
     W = 3'b011; P_W = 3'b011;
     
     case(state) 
      S0 : begin N = GREEN_light; P_W = GREEN_light; 
     end
     S1 : begin N = GREEN_right_light; P_W = RED_light; 
     end   
      S2 : begin N = YELLOW_light;  E = YELLOW_light; P_N = YELLOW_light;
     end 
      S3 : begin E = GREEN_light;P_N = GREEN_light ;
     end 
     S4 : begin E = GREEN_right_light; P_N = RED_light;
     end 
     S5 : begin E = YELLOW_light;P_E = YELLOW_light; S = YELLOW_light;
     end 
     S6 : begin S = GREEN_light;  P_E = GREEN_light; 
     end 
     S7 : begin S = GREEN_right_light;  P_E = RED_light;
     end 
      S8 : begin S = YELLOW_light; W = YELLOW_light; P_S = YELLOW_light;
     end
      S9 : begin W = GREEN_light; P_S = GREEN_light; 
     end 
      S10 : begin W = GREEN_right_light;  P_S = RED_light;
     end
      S11 : begin W = YELLOW_light; N = YELLOW_light; P_W = YELLOW_light;
     end
     endcase
     
   end

    
endmodule
