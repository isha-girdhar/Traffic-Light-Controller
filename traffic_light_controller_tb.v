`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2025 20:28:46
// Design Name: 
// Module Name: traffic_light_controller_tb
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


module traffic_light_controller_tb;
    reg clk;
    reg reset;
    wire red;
    wire yellow;
    wire green;

    
    traffic_light_controller uut (
        .clk(clk),
        .reset(reset),
        .red(red),
        .yellow(yellow),
        .green(green)
    );

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  
    end

    
    initial begin
        
        reset = 1;
        #10 reset = 0;
        
        
        #10000000 $finish;   
    end
endmodule



