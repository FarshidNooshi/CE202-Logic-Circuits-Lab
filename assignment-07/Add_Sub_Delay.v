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
---  Module Name: Single Bit Adder/Subtractor with Delay
---  Description: Lab 07 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns


module Add_Sub_Delay(
		input a ,
		input b ,
		input cin ,
		input sel ,
		output sum ,
		output cout
   );

	wire c;
	assign #10 c = b ^ sel;
	
	Full_Adder_Delay g1(a,c,cin,sum,cout);


endmodule
