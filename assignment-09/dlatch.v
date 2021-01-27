/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9831066
--  Student Name: Mohammad Mahdi Nemati Haravani
--  Student Mail: adel110@aut.ac.ir
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: D Latch
---  Description: Lab 09
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module dlatch (
	input c ,
	input din ,
	output qout
);

	/* write your code here */
	
	reg qout;
	
	always @ (c or din or qout or qbout)
		begin
			
			assign qout = ~c & qout | c & din;
			
		end
		
	/* write your code here */

endmodule