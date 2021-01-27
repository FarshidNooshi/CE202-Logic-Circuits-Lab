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
--  Student Mail: adel100@aut.ac.ir
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: 3 Bits Comparator Testbench
---  Description: Lab 06 Part 1 Testbench
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module tb_comparator_3;

reg [2:0] A;
reg [2:0] B;
reg l;
reg e;
reg g;
wire lt;
wire eq;
wire gt;

	Comparator_3 test_comparator3 (
		.A(A),
		.B(B),
		.l(l),
		.e(e),
		.g(g),
		.lt(lt),
		.eq(eq),
		.gt(gt)
		);


	initial 
		begin
		
		//////////////////
		A = 3'b001;
		B = 3'b001;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 10 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 10 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 20 ;
		//////////////////
		A = 3'b010;
		B = 3'b001;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 10 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 10 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 20;
		//////////////////
		A = 3'b001;
		B = 3'b010;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 10 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 10 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 20;
		$finish;
		//////////////////
	end

endmodule