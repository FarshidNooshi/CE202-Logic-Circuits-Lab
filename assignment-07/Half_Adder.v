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
---  Module Name: Half Adder Gate Level
---  Description: Lab 07 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns


module Half_Adder(
		input a ,
		input b ,
		output sum ,
		output cout
	);
	
	assign sum = a ^ b;
	assign cout = a & b;

endmodule
