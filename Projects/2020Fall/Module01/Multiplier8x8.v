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
--  Student Name: Mohammad MAhdi Nemati Haravani
--  Student Mail: adel110@aut.at.ir
--  *******************************************************
--  Additional Comments: lab number 8 Group 6
--
--*/

/*-----------------------------------------------------------
---  Module Name: 8 Bit Multiplier
---  Description: Module1: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module Multiplier8x8 (
	input  [ 7:0] A , // input  [unsigned 08 bits]
	input  [ 7:0] B , // input  [unsigned 08 bits]
	output [15:0] P   // output [unsigned 16 bits]
);
	/* write your code here */
	
	genvar i, j;
	
	wire [31:0] out [8:0];	
	assign out[0] = 32'b0;
	
	for(i = 0 ; i < 8 ; i = i + 1) begin : loop_0
	
		wire [7 + i:0] t;

		for(j = 0 ; j < 8 + i ; j = j + 1) begin : loop_1
			if(j >= i)assign t[j] = A[j - i] & B[i];
			else assign t[j] = 1'b0;
		end
		
		wire [31:0] hold = {25'b0, t};
		
		AdderSubtractor32x32 A_i(out[i], hold, 1'b0, out[i + 1]);
		
	end
	
	assign P = out[8][15:0];
	
	/* write your code here */

endmodule