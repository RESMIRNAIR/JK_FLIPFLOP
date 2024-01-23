`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2024 15:32:34
// Design Name: 
// Module Name: JK_FF
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


module JK_flipflop (q, q_bar, j,k, clk, reset);        
  input j,k,clk, reset;
  output reg q;
  output q_bar;
  // always@(posedge clk or negedge reset) // for asynchronous reset
  always@(posedge clk) begin // for synchronous reset
    if(!reset)        q <= 0;
    else 
  begin
      case({j,k})              //Write the logic for JK Flip Flop
                              // No change
                              // reset
                             // set
                             // Toggle
      endcase
    end
  end
  assign q_bar = ~q;
endmodule
