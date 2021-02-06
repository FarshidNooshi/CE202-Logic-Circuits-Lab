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
--  Additional Comments: lab number 8 Group 6
--
--*/

/*-----------------------------------------------------------
---  Module Name:  Light Dance Utils
---  Description: Module5:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

/***********************************************************/
/************** Design Your Own Modules Below **************/

module Dlatch(
		input   rst ,
		input   clk ,
		input   din ,
		output  q,
		output  qb
    );
	 
	 wire q, qb, sb, rb;
	 assign sb = ~din | ~clk;
	 assign rb = din | ~clk;
	 assign q = (~qb | ~sb) & ~rst ;
	 assign qb = ~q | ~rb | rst;

endmodule
	
/************** Design Your Own Modules Above **************/
/***********************************************************/