`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/20/2025 05:56:53 PM
// Design Name: 
// Module Name: halfs_mux
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
module mux_21(input x,y,s,output out);
    assign out=s?y:x;
endmodule

module halfs_mux(input a,b,output dif,bor);
    mux_21 m1(b,~b,a,dif);
    mux_21 m2(b,0,a,bor);
endmodule
