`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:12:05 12/26/2020 
// Design Name: 
// Module Name:    Dflop 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Dflop(
		input   rst ,
		input   clk ,
		input   din ,
		output  q,
		output  qb
    );
	 
	 wire q_1, qb_1;
	 
	 Dlatch	D0(rst, ~clk, din, q_1, qb_1),
				D1(rst, clk, q_1, q, qb);
	 


endmodule
