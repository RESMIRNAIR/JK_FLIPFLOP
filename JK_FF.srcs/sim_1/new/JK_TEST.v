`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2024 15:35:43
// Design Name: 
// Module Name: JK_TEST
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


module JK_TEST();
reg clk,rst,j,k;
wire q_n,q_n_bar;

  JK_flipflop dut(.j(j),.k(k),.clk(clk),.reset(rst),.q(q_n),.q_bar(q_n_bar));
  
  initial begin 
  clk=0;
  forever #5 clk=~clk;
  end
  
  initial 
    begin
     rst=1;
     #10;
     rst=0;
     #10;

     j = 1'b0;
     k = 1'b0;     
     #10;
    
     j = 1'b0;
     k = 1'b1;     
     #10;
     
     j = 1'b1;
     k = 1'b0;     
     #10;
     
     j = 1'b1;
     k = 1'b1;
     #10;
  
     $finish;
    end 
endmodule

