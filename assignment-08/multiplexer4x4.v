/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce.aut.ac.ir
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
---  Module Name: Multiplexer 4bit 4 to 1
---  Description: Lab 08 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module multiplexer4x4 (
	input [3:0] w3 ,
	input [3:0] w2 ,
	input [3:0] w1 ,
	input [3:0] w0 ,
	input [1:0] sel ,
	output [3:0] y
);
	/* write your code here */
	reg [3:0] y;
	always @(w0 or w1 or w2 or w3 or sel)
				case (sel)
					2'b00 : y = w0;
					2'b01 : y = w1;
					2'b10 : y = w2;
					2'b11 : y = w3;
				endcase
	
	/* write your code here */

endmodule