`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
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
---  Module Name: Decoder 4 to 16 Gate Level
---  Description: Lab 05 Part 2
-----------------------------------------------------------*/

module decoder_4_16_tb;

	// Inputs
	reg [3:0] in;
	reg en;

	// Outputs
	wire [15:0] dout;

	// Instantiate the Unit Under Test (UUT)
	decoder4x16 uut (
		.in(in), 
		.en(en), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		en <= 1'b0;
		in <= 4'b0000;#10
		in <= 4'b0001;#10
		in <= 4'b0010;#10
		in <= 4'b0011;#10
		in <= 4'b0100;#10
		in <= 4'b0101;#10
		in <= 4'b0110;#10
		in <= 4'b0111;#10
		in <= 4'b1000;#10
		in <= 4'b1001;#10
		in <= 4'b1010;#10
		in <= 4'b1011;#10
		in <= 4'b1100;#10
		in <= 4'b1101;#10
		in <= 4'b1110;#10
		in <= 4'b1111;#10
		
		
		en <= 1'b1;
		in <= 4'b0000;#10
		in <= 4'b0001;#10
		in <= 4'b0010;#10
		in <= 4'b0011;#10
		in <= 4'b0100;#10
		in <= 4'b0101;#10
		in <= 4'b0110;#10
		in <= 4'b0111;#10
		in <= 4'b1000;#10
		in <= 4'b1001;#10
		in <= 4'b1010;#10
		in <= 4'b1011;#10
		in <= 4'b1100;#10
		in <= 4'b1101;#10
		in <= 4'b1110;#10
		in <= 4'b1111;#10
		
		
		$finish;
	end
      
endmodule

