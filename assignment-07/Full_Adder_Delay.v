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
---  Module Name: Full Adder Gate Level with delay
---  Description: Lab 07 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns


module Full_Adder_Delay(
		input a ,
		input b ,
		input ci ,
		output s ,
		output co
	);
	
	wire s_0,c_0,c_1;
	
	Half_Adder_Delay g1(a,b,s_0,c_0),
				  g2(ci,s_0,s,c_1);
	assign #5 co = c_0 | c_1;


endmodule
