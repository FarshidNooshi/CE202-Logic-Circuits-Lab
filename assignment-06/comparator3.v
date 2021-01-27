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
---  Module Name: 3 Bits Comparator Gate Level
---  Description: Lab 06 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module Comparator_3 (
	input [2:0] A ,
	input [2:0] B ,
	input l ,
	input e ,
	input g ,
	output lt ,
	output eq ,
	output gt
);

	/* write your code here */
	wire [2:0] nb;
	wire [2:0] C;
	wire [2:0] M;
	wire Agb;
	wire Eab;
	
	assign nb = {!B[2],!B[1],!B[0]};
	assign C = {!(A[2]^B[2]),!(A[1]^B[1]),!(A[0]^B[0])};
	
	assign M = {A[2]&nb[2],A[1]&nb[1]&C[2],A[0]&nb[0]&C[2]&C[1]};
	
	assign Agb = M[2]|M[1]|M[0];
	assign Eab = C[2]&C[1]&C[0];
	
	assign lt = !Agb&(!Eab | l);
	assign eq = Eab&!Agb&e;
	assign gt = Eab&g | Agb;
	/* write your code here */

endmodule