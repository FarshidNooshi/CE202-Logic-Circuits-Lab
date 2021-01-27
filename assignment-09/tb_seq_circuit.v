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
---  Module Name: Sequential Circuit Testbench
---  Description: Lab 09 Part 1 Testbench
-----------------------------------------------------------*/
`timescale 1 ns/1 ns


module tb_seq_circuit ();

reg clk;
reg rst;
reg a;
reg b;

wire y;
wire z;

	// Instantiate the Unit Under Test (UUT)
	seq_circuit uut (
		.rst(rst), 
		.clk(clk), 
		.a(a), 
		.b(b), 
		.y(y), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		rst = 1'b0;
		clk = 1'b0;
		a = 1'b0;
		b = 1'b0;
		#80;
		
		
		clk = ~clk;
		#80;
		
		b = 1'b1;
		
		clk = ~clk;
		#80;
		
		a = 1'b1;
		
		clk = ~clk;
		#80;
		
		clk = ~clk;
		#80;
		
		a = 1'b0;
		
		clk = ~clk;
		#80;
		
		clk = ~clk;
		#80;
		
		b = 1'b0;
		
		clk = ~clk;
		#80;
		
		a = 1'b1;
		
		clk = ~clk;
		#80;
		
		clk = ~clk;
		#80;
		
		clk = ~clk;
		#80;
		
		b = 1'b1;
		
		clk = ~clk;
		#80;
		
		b = 1'b0;
		a = 1'b0;
		
		clk = ~clk;
		#80;
		
		clk = ~clk;
		#80;
		
		clk = ~clk;
		#80;
		
		b = 1'b1;
		
		clk = ~clk;
		#80;
		
		a = 1'b1;
		
		clk = ~clk;
		#80;
		
		clk = ~clk;
		#80;
		
		
		$finish;
        
		// Add stimulus here

	end
      
endmodule

