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
--  Student Mail: farshidnooshi726@aut.ac.ir
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: 4 Bits Adder/Subtractor
---  Description: Lab 07 Part 2
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module Adder_Subtractor_4bit (
		input [3:0] A ,
		input [3:0] B ,
		input sel , // 0: add, 1: subtract
		output [3:0] S ,
		output cout
	);

	wire co[0:2];
	Add_Sub g1(A[0],B[0],sel,sel,S[0],co[0]),
			  g2(A[1],B[1],co[0],sel,S[1],co[1]),
			  g3(A[2],B[2],co[1],sel,S[2],co[2]),
			  g4(A[3],B[3],co[2],sel,S[3],cout);

endmodule