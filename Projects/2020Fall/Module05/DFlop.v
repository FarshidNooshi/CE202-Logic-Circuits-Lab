/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9831066
--  Student Name: Mohammad Mahdi Nemati Haravani
--  Student Mail: adel110@aut.at.ir
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Light Dance
---  Description: Module5:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module DFlop (
	input  arst 	   , // async reset
	input  clk   		, // clock posedge
	input  din   		, // data  in
	input  load       , // load  enable
	input  load_data  , // data load 
	output dout    	  // data  out
);

	/* write your code here */
/* 
   reg ddout;
	assign dout = ddout;
	
	always @ (posedge clk or posedge arst) 
		if (arst) 
			ddout = 1'b0;
		else if (load)
				ddout = load_data;
		else 
				ddout = din;
*/
	 wire q_1, qb_1, qb_2;
	 
	 
	 Dlatch	D0(arst, ~clk, din & ~load | load_data & load, q_1, qb_1),
				D1(arst, clk, q_1, dout, qb_2);
	
	/* write your code here */
	

endmodule
