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
---  Module Name: Register 4 bit
---  Description: Lab 10 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module register (

	input        rst ,
	input        clk ,
	input        en ,
	input  [3:0] din ,
	output [3:0] qout
	
);

	/* write your code here */
	
	Dflop D0(rst, clk, din[0] & en | qout[0] & ~en, qout[0]),
			D1(rst, clk, din[1] & en | qout[1] & ~en, qout[1]),
			D2(rst, clk, din[2] & en | qout[2] & ~en, qout[2]),
			D3(rst, clk, din[3] & en | qout[3] & ~en, qout[3]);
	
	/* write your code here */

endmodule