`timescale 1ns / 1ps


module lab_2_bench;
     reg a,b,c;
     lab_2_bench (x,y, a,b,c);
     
     initial begin
     
     a=0;b=0;c=0;
     #10;
     a=0;b=0;c=1;
     #10;
     a=0;b=1;c=0;
     #10;
     a=0;b=1;c=1;
     #10;
     a=1;b=0;c=0;
     #10;
     a=1;b=0;c=1;
     #10;
     a=1;b=1;c=0;
     #10;
     a=1;b=1;c=1;
     #10;
     
     end
endmodule
