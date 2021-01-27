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
---  Module Name: Sequential Circuit
---  Description: Lab 09 Part 2
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module seq_circuit (
	input rst ,
	input clk ,
	input a ,
	input b ,
	output r,
	output s,
	output y ,
	output z
);

	/* write your code here */
	
	reg s, d_1, d_2 , z, r;
   wire q_1 , qb_1, qb_2, t;
	
	dflop g1(rst,clk,d_1,y,qb_1),
			g2(rst,clk,d_2,t,qb_2);
	
	always @(b or qb_2) 
		begin
			#10 s = (b & qb_2);
			#10 r = (b & qb_2);
		end
	always @(a or s) 
		#10 d_1 = (a | s);
	
	always @(d_1 or qb_1) 
		#10 d_2 = ~(d_1 | qb_1);
	
	always @(r or qb_1) 
		#10 z = (r | qb_1);
	
	/* write your code here */

endmodule