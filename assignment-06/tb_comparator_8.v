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
---  Module Name: 8 Bit Comparator Testbench
---  Description: Lab 06 Part 2 Testbench
-----------------------------------------------------------*/
`timescale 1 ns/1 ns


module tb_comparator_8 ();

reg [7:0] A;
reg [7:0] B;
reg l;
reg e;
reg g;
wire lt;
wire eq;
wire gt;

	Comparator_8 test_comparator8 (.A(A), .B(B), .l(l), .e(e), .g(g), .lt(lt), .eq(eq), .gt(gt));


	initial 
		begin
		//////////
		A = 8'b00000000;
		B = 8'b00000000;
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		#10
		
		A = 8'b00000001;
		B = 8'b00000000;
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		#20
		
		A = 8'b00000001;
		B = 8'b00000010;
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		#10
		
		A = 8'b00000011;
		B = 8'b00000011;
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		#10
		//////////
		A = 8'b00000000;
		B = 8'b00000000;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		#10
		
		A = 8'b00000001;
		B = 8'b00000000;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		#20
		
		A = 8'b00000001;
		B = 8'b00000010;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		#10
		
		A = 8'b00000011;
		B = 8'b00000011;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		#10
		//////////
		A = 8'b00000000;
		B = 8'b00000000;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		#10
		
		A = 8'b00000001;
		B = 8'b00000000;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		#20
		
		A = 8'b00000001;
		B = 8'b00000010;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		#10
		
		A = 8'b00000011;
		B = 8'b00000011;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		#10
		
		$finish;
	end

endmodule