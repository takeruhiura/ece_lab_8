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

module ram_tb();
    reg clk, rst, w;
    reg [7:0] data_in;
    reg [2:0] addr;
    wire [7:0] data_out;
    
    ram uut (.clk(clk), .rst(rst), .w(w), .data_in(data_in), .addr(addr), .data_out(data_out));
    
    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end
    
    initial begin
        rst = 1;
        w = 0;
        data_in = 8'd0;
        addr = 3'd0;
        
        #20;
        rst = 0;
        #20;
        
        w = 1;
        
        @(negedge clk);
        addr = 3'd0;
        data_in = 8'd66;
        
        @(negedge clk);
        addr = 3'd1;
        data_in = 8'd123;
        
        @(negedge clk);
        addr = 3'd2;
        data_in = 8'd234;
        
        @(negedge clk);
        w = 0;
        addr = 3'd0;
        
        @(negedge clk);
        addr = 3'd1;
        
        @(negedge clk);
        addr = 3'd2;
        
        #40;
        $finish;
    end
    
endmodule
