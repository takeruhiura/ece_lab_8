`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 01:47:52 PM
// Design Name: 
// Module Name: ram
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


module ram(
    input clk,
    input rst,
    input w,
    input [7:0] data_in,
    input [2:0] addr,
    output reg [7:0] data_out
    );
    
    
    reg [7:0] mem [7:0];
    integer i;
    
    always @(posedge clk) begin
        if (rst) begin
            for(i = 0; i < 8; i = i + 1) begin
                mem[i] <= 8'd0;
            end
            data_out <= 8'd0;
        end
        
        else begin
            if (w) begin
                mem[addr] <= data_in;
                
            end
            else begin
                data_out <= mem[addr]; 
            end
        end
      end
endmodule
