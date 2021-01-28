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
---  Module Name: 32 Bit Adder/Subtractor
---  Description: Module1: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module AdderSubtractor32x32 (
	input  [31:0] A    , // input  [2's complement 32 bits]
	input  [31:0] B    , // input  [2's complement 32 bits]
	input         sel  , // input  [add:sel=0 || sub:sel=1] 
	output [31:0] S      // output [2's complement 32 bits]
);
	// if sel = 0 then add else subtract
	/* write your code here */
	
	wire [31:0] co;
	genvar i;
	
	Full_Adder FA_0(A[0], B[0] ^ sel, sel, S[0], co[0]);
	
	for(i = 1 ; i < 32 ; i = i + 1) begin : loop_0
		Full_Adder FA_i(A[i], B[i] ^ sel, co[i - 1], S[i], co[i]);
	end
	
				  
	
	/* write your code here */

endmodule