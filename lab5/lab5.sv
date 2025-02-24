`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2025 09:24:50 PM
// Design Name: 
// Module Name: lab5
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


module lab5(
input [3:0] a,
  input [2:0] sel,
  output logic sega,segb,segc,segd,sege,segf,segg,
  output logic an7,an6,an5,an4,an3,an2,an1,an0 
    );
always_comb 
begin
    sega=(~a[3]&(~a[2])&(~a[1])&a[0]) | (~a[3]&(a[2])&(~a[1])&(~a[0])) | (a[3]&a[2]&(~a[1])&a[0]) | (a[3]&(~a[2])&a[1]&a[0]);
    segb=(a[2]&a[1]&(~a[0])) | (a[3]&a[1]&a[0]) | (a[3]&a[2]&(~a[0])) | (~a[3]&a[2]&(~a[1])&a[0]);
    segc=(a[3]&a[2]&(~a[0])) | (a[3]&a[2]&a[1]) | (~a[3]&(~a[2])&(a[1])&(~a[0])) ;
    segd= (a[2]&a[1]&a[0]) | (~a[3]&(~a[2])&(~a[1])&a[0]) | (~a[3]&a[2]&(~a[1])&(~a[0])) | (a[3]&(~a[2])&a[1]&~a[0]);
    sege=(~a[3]&a[0]) | (~a[2]&(~a[1])&a[0]) | (~a[3]&(a[2])&(~a[1]));
    segf=(~a[3]&(~a[2])&a[0]) | (~a[3]&(~a[2])&a[1]) | (~a[3]&(a[1])&a[0]) | (a[3]&a[2]&(~a[1])&a[0]);
    segg=(~a[3]&(~a[2])&(~a[1])) | (~a[3]&a[2]&a[1]&a[0])| (a[3]&a[2]&(~a[1])&(~a[0]));
    an0= sel[2] | sel[1] | sel[0];
    an1 = sel[2] | sel[1] | (~sel[0]);
    an2 = sel[2] | sel[0] | (~sel[1]);
    an3 = sel[2] | (~sel[1]) | (~sel[0]);
    an4 = (~sel[2]) | sel[1] |  (sel[0]);
    an5 = (~sel[2]) | sel[1] |  (~sel[0]);
    an6 = (~sel[2]) |(~sel[1]) | (sel[0]);
    an7 = (~sel[2]) |(~sel[1]) |  (~sel[0]);
     end
endmodule

