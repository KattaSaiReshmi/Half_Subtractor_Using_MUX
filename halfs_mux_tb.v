`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/20/2025 06:02:19 PM
// Design Name: 
// Module Name: halfs_mux_tb
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


module halfs_mux_tb;
    reg a,b;
    wire dif,bor;
    halfs_mux dut(.a(a),.b(b),.dif(dif),.bor(bor));
    initial
    begin
        a=0;b=0;
    #10 a=0;b=1;
    #10 a=1;b=0;
    #10 a=1;b=1;
    #10 $finish;
    end
    initial 
    $monitor("a=%b,b=%b,dif=%b,bor=%b",a,b,dif,bor);
endmodule
