`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2026 11:00:31 PM
// Design Name: 
// Module Name: multiplier_16_bit
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


module multiplier_16_bit(
input clk,
input rst_n,
input [15:0] a,
input [15:0] b,
output reg [31:0] prod
    );

always @(posedge clk) begin
    if(!rst_n)
    begin
        prod <= 0;
    end
    else
    begin
        prod <= a * b;
    end
end

endmodule
