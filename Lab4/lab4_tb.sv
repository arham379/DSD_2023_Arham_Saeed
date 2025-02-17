`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2025 07:12:25 PM
// Design Name: 
// Module Name: lab4_tb
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

module lab4_tb();
logic [1:0] a1,b1;

logic red1,green1,blue1;
lab4 VT(
.a(a1),
.b(b1),
.red(red1),
.green(green1),
.blue(blue1)
);
initial begin
        a1[1]=0; a1[0]=0; b1[1]=0 ; b1[0]=0;
        #10;
        a1[1]=0; a1[0]=0; b1[1]=0 ; b1[0]=1;
        #10;
        a1[1]=0; a1[0]=0; b1[1]=1 ; b1[0]=0;
        #10;
        a1[1]=0; a1[0]=0; b1[1]=1 ; b1[0]=1;
        #10;
        a1[1]=0; a1[0]=1; b1[1]=0 ; b1[0]=0;
        #10;
        a1[1]=0; a1[0]=1; b1[1]=0 ; b1[0]=1;
        #10;
        a1[1]=0; a1[0]=1; b1[1]=1 ; b1[0]=0;
        #10;
        a1[1]=0; a1[0]=1; b1[1]=1 ; b1[0]=1;
        #10;
        a1[1]=1; a1[0]=0; b1[1]=0 ; b1[0]=0;
        #10;
        a1[1]=1; a1[0]=0; b1[1]=0 ; b1[0]=1;
        #10;
        a1[1]=1; a1[0]=0; b1[1]=1 ; b1[0]=0;
        #10;
        a1[1]=1; a1[0]=0; b1[1]=1 ; b1[0]=1;
        #10;
        a1[1]=1; a1[0]=1; b1[1]=0 ; b1[0]=0;
        #10;
        a1[1]=1; a1[0]=1; b1[1]=0 ; b1[0]=1;
        #10;
        a1[1]=1; a1[0]=1; b1[1]=1 ; b1[0]=0;
        #10;
        a1[1]=1; a1[0]=1; b1[1]=1 ; b1[0]=1;
        #10;
        $stop;
        end    
initial begin
$monitor("a=%b,b=%b,red=%b,green=%b,blue=%b", a1,b1,red1,green1,blue1);
end  
endmodule


