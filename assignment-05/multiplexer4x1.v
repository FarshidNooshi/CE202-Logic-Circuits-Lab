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
---  Module Name: Multiplexer 4 to 1
---  Description: Lab 05 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module multiplexer4x1(

		input [3:0] w,
		input [1:0]	s,
		output y	
	
    );
	 
	/* write your code here */
	
	 wire [1:0] q;
	 wire [3:0] d;
	 not g1(q[0],s[0]);
	 not g2(q[1],s[1]);
	 and g3(d[0],w[0],q[1],q[0]);
	 and g4(d[1],w[1],q[1],s[0]);
	 and g5(d[2],w[2],s[1],q[0]);
	 and g6(d[3],w[3],s[1],s[0]);
	 or g7(y,d[0],d[1],d[2],d[3]);

	/* write your code here */

endmodule
