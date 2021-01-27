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
---  Module Name: Function Implementation usin Mux 4 to 16
---  Description: Lab 05 Part 3
-----------------------------------------------------------*/
`timescale 1ns / 1ps
module function4x1(

    input a,
    input b,
    input c,
    input d,
    output f
	 
    );

	/* write your code here */
	
	wire [3:0] in;
	wire [15:0] out;
	
	assign in = {a, b, c, d}; 
	
	decoder4x16 g1(in,1'b1,out);
	 
	nor g2(f,out[0],out[1],out[4],out[6],out[8],out[9],out[10],out[12],out[14],out[15]);
	
	
	/* write your code here */

endmodule
