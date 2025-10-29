`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 01:52:51 PM
// Design Name: 
// Module Name: ram_tb
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


module rom_tb;
    reg [2:0] ROM_addr;
    wire [3:0] ROM_data;
    
    rom uut( .ROM_addr(ROM_addr), .ROM_data(ROM_data));
    
    initial begin
        ROM_addr = 3'd0;
        
        #10 ROM_addr = 3'd3;
        
        
        #10 ROM_addr = 3'd7;
        
        #20;
        
        $finish;
    end
    
endmodule
