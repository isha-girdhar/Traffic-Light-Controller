`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2025 20:28:08
// Design Name: 
// Module Name: traffic_light_controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module traffic_light_controller(
    input clk,
    input reset,
    output reg red,
    output reg yellow,
    output reg green
);

    parameter GREEN = 2'b00, YELLOW = 2'b01, RED = 2'b10;
    reg [1:0] state, next_state;
    reg [23:0] counter;

    
    always @(*) begin
        case(state)
            GREEN: next_state = YELLOW;
            YELLOW: next_state = RED;
            RED: next_state = GREEN;
            default: next_state = RED;
        endcase
    end

   
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= RED;  // Initialize state to RED instead of using 'red' signal
            counter <= 24'd0;
        end else begin
            if (counter == 24'd10_000_000) begin
                state <= next_state;
                counter <= 24'd0;
            end else begin
                counter <= counter + 1;
            end
        end
    end

   
    always @(*) begin
        case(state)
            GREEN: begin
                green = 1;
                yellow = 0;
                red = 0;
            end
            YELLOW: begin
                green = 0;
                yellow = 1;
                red = 0;
            end
            RED: begin
                green = 0;
                yellow = 0;
                red = 1;
            end
            default: begin
                green = 0;
                yellow = 0;
                red = 0;
            end
        endcase
    end

endmodule
