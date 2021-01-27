`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:13:40 12/26/2020 
// Design Name: 
// Module Name:    Dlatch 
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
module Dlatch(
		input   rst ,
		input   clk ,
		input   din ,
		output  q,
		output  qb
    );
	 
	 reg q, qb, sb, rb;
	 
	 always @ (clk or din) begin
	 
		sb = ~din | ~clk;
		rb = din | ~clk;
	 
	 end
	 
	 always @ (q or qb or rst or rb or sb) begin
		
		q <= (~qb | ~sb) & ~rst ;
		qb <= ~q | ~rb | rst;
		
	 end


endmodule
