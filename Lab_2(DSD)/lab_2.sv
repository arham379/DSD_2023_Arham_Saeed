`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2025 11:35:16 AM
// Design Name: 
// Module Name: lab_2
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


module lab_2(output x,y, input a,b,c);
     assign x=((~(c))^(a|b));
     assign y=(a|b)&(~(a&b)^(a|b)); 
endmodule
