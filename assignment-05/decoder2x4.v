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
---  Module Name: Decoder 2 to 4 Gate Level
---  Description: Lab 05 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module decoder2x4 (

	input [1:0] i,
	input en,
	output [3:0] d
	
);
	/* write your code here */
	wire [1:0] w;
	not g1(w[0],i[0]);
	not g2(w[1],i[1]);
	and g3(d[0],en,w[1],w[0]);
	and g4(d[1],en,w[1],i[0]);
	and g5(d[2],en,i[1],w[0]);
	and g6(d[3],en,i[1],i[0]);
	/* write your code here */

endmodule
