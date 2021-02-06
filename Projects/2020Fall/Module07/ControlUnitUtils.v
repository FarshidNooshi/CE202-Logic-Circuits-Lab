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
---  Module Name:  Control Unit Utils
---  Description: Module7:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

/***********************************************************/
/************** Design Your Own Modules Below **************/

module Dlatch(
		input   rst ,
		input   set ,
		input   clk ,
		input   din ,
		output  q,
		output  qb
    );
	 
	 wire q, qb, sb, rb;
	 assign sb = ~din | ~clk;
	 assign rb = din | ~clk;
	 assign q = ((~qb | ~sb) & ~rst) | set;
	 assign qb = (~q | ~rb | rst) & ~set;

endmodule

module DFlop (
	input  arst 	   , // async reset
	input  aset       , // async set
	input  clk   		, // clock posedge
	input  din   		, // data  in
	output dout    	  // data  out
);

	/* write your code here */
	
	 wire q_1, qb_1, qb_2;
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
	 Dlatch	D0(arst, aset, ~clk, din, q_1, qb_1),
				D1(arst, aset, clk, q_1, dout, qb_2);
	
	/* write your code here */
	

endmodule

	
/************** Design Your Own Modules Above **************/
/***********************************************************/