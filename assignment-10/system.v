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
---  Module Name: Sequential System
---  Description: Lab 10 Part 3
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module system (
	input        rst ,
	input        rqst,
	input        clk ,
	input     confirm,
	input  [3:0] din ,
	output en_left,
	output en_right,
	output [3:0] dout,
	output [3:0] dout_left ,
	output [3:0] dout_right
);

	/* write your code here */
	
	fsm FSM(rst , rqst, clk, confirm, din, en_left, en_right, dout);
	
	register r_left(rst, clk, en_left, dout, dout_left),
				r_right(rst, clk, en_right, dout, dout_right);
	
	
	/* write your code here */

endmodule