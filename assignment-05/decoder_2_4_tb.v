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
---  Module Name: Decoder, Encoder, and Mux Testbench
---  Description: Lab 05 Part 1 Testbench
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module decoder_2_4_tb;

	// Inputs
	reg [1:0] i;
	reg en;

	// Outputs
	wire [3:0] d;

	// Instantiate the Unit Under Test (UUT)
	decoder2x4 uut (
		.i(i), 
		.en(en), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		en <= 1'b0;
		
		i <= 2'b00;
		# 10 ;
		i <= 2'b01;
		# 10 ;
		i <= 2'b10;
		# 10 ;
		i <= 2'b11;
		# 20 ;

		en <= 1'b1;
		
		i <= 2'b00;
		# 10 ;
		i <= 2'b01;
		# 10 ;
		i <= 2'b10;
		# 10 ;
		i <= 2'b11;
		# 20 ;	
		$finish;
	end
      
endmodule

