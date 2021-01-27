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
---  Module Name: Decoder 4 to 16 Testbench
---  Description: Lab 05 Part 2
-----------------------------------------------------------*/
`timescale 1ns / 1ps
module decoder4x16(

	input [3:0] in ,
	input en ,
	output [15:0] dout

    );
	 
	/* write your code here */
	
	wire [3:0] w;
	
	decoder2x4 
			g1(in[3:2],en,w),
			g2(in[1:0],w[0],dout[3:0]),
			g3(in[1:0],w[1],dout[7:4]),
			g4(in[1:0],w[2],dout[11:8]),
			g5(in[1:0],w[3],dout[15:12]);
	
	/* write your code here */

endmodule
