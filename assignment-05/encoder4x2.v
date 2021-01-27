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
---  Module Name: Encoder 4 to 2 Gate Level
---  Description: Lab 05 Part 1
-----------------------------------------------------------*/
`timescale 1ns / 1ps

module encoder4x2 (

		input [3:0] din ,
		output [1:0] qout
		
	);
	
	wire [1:0] w;
	
	/* write your code here */
	
	or g1(qout[0], din[2], din[3]);
	not g2(w[0], din[2]);
	and g3(w[1], w[0], din[1]);
	or g4(qout[1], w[1], din[3]);
	
	/* write your code here */

endmodule
