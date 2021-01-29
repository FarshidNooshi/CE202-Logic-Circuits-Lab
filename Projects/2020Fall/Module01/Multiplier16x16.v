
/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9831068
--  Student Name: Farshid Nooshi
--  Student Mail: farshidnooshi726@aut.at.ir
--  *******************************************************
--  Student ID  : 9831066
--  Student Name: Mohammad Mahdi Nemati Haravani
--  Student Mail: adel110@aut.at.ir
--  *******************************************************
--  Additional Comments: lab number 8 Group 6--
--*/

/*-----------------------------------------------------------
---  Module Name: 16 Bit Multiplier
---  Description: Module1: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module Multiplier16x16 (
	input  [15:0] A , // input  [unsigned 16 bits]
	input  [15:0] B , // input  [unsigned 16 bits]
	output [31:0] P   // output [unsigned 32 bits]
);

	/* write your code here */
	
	wire [15:0] out [0:3], qw;
	wire [31:0] outp[1:0];		
	
	Multiplier8x8 M_0(A[7:0], B[7:0], out[0]),
					  M_1(A[15:8], B[15:8], out[1]),
					  M_2(A[15:8], B[7:0], out[2]),
					  M_3(A[7:0], B[15:8], out[3]);
			
	
	AdderSubtractor32x32 A_0({16'b0 ,out[0]}, {out[1], 16'b0}, 1'b0, outp[0]),
								A_1({8'b0, out[2], 8'b0}, {8'b0 ,out[3], 8'b0}, 1'b0, outp[1]),
								A_2(outp[0], outp[1], 1'b0, P);
	
	/* write your code here */

endmodule