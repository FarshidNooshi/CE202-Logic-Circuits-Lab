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
---  Module Name: D Flip Flop
---  Description: Lab 09 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module dflop (
	input rst ,
	input clk ,
	input din ,
	output qout ,
	output qbout
);

	/* write your code here */
	
	reg qout, qbout, primary_q;
	always @ (negedge clk or posedge rst) 
	begin 
		if (rst == 1'b1)
			begin
				#5 qout = 1'b0;
				qbout = 1'b1;
			end
		else
			begin
				#5 qout = din;
				qbout = ~qout;
			end
	end
	/* write your code here */

endmodule