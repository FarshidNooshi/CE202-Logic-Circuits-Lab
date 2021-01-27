`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:16:40 11/16/2020 
// Design Name: 
// Module Name:    Comparator_8 
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
module Comparator_8(
	input [7:0] A ,
	input [7:0] B ,
	input l ,
	input e ,
	input g ,
	output lt ,
	output eq ,
	output gt
);

	
	wire a,b,c;
	wire q,w,t;

	Comparator_3 g0(A[2:0],B[2:0],l,e,g,a,b,c),
		     g1(A[5:3],B[5:3],a,b,c,q,w,t),
		     g2(A[7:5],B[7:5],q,w,t,lt,eq,gt);


endmodule
