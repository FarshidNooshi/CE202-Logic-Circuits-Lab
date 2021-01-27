`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:12:12 11/09/2020
// Design Name:   function4x1
// Module Name:   D:/Desktop/decoder2x4/decoder2x4/function_4_1_tb.v
// Project Name:  decoder2x4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: function4x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module function_4_1_tb;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire f;

	// Instantiate the Unit Under Test (UUT)
	function4x1 uut (
		.a(a), 
		.b(b),  
		.c(c), 
		.d(d),  
		.f(f)
	);

	initial begin
		// Initialize Inputs
	   a <= 1'b0; b <= 1'b0; c <= 1'b0; d <= 1'b0;
		# 10 ;
		a <= 1'b0; b <= 1'b0; c <= 1'b0; d <= 1'b1;
		# 10 ;
		a <= 1'b0; b <= 1'b0; c <= 1'b1; d <= 1'b0;
		# 10 ;
		a <= 1'b0; b <= 1'b0; c <= 1'b1; d <= 1'b1;
		# 10 ;
		a <= 1'b0; b <= 1'b1; c <= 1'b0; d <= 1'b0;
		# 10 ;
		a <= 1'b0; b <= 1'b1; c <= 1'b0; d <= 1'b1;
		# 10 ;
		a <= 1'b0; b <= 1'b1; c <= 1'b1; d <= 1'b0;
		# 10 ;
		a <= 1'b0; b <= 1'b1; c <= 1'b1; d <= 1'b1;
		# 10 ;
		a <= 1'b1; b <= 1'b0; c <= 1'b0; d <= 1'b0;
		# 10 ;
		a <= 1'b1; b <= 1'b0; c <= 1'b0; d <= 1'b1;
		# 10 ;
		a <= 1'b1; b <= 1'b0; c <= 1'b1; d <= 1'b0;
		# 10 ;
		a <= 1'b1; b <= 1'b0; c <= 1'b1; d <= 1'b1;
		# 10 ;
		a <= 1'b1; b <= 1'b1; c <= 1'b0; d <= 1'b0;
		# 10 ;
		a <= 1'b1; b <= 1'b1; c <= 1'b0; d <= 1'b1;
		# 10 ;
		a <= 1'b1; b <= 1'b1; c <= 1'b1; d <= 1'b0;
		# 10 ;
		a <= 1'b1; b <= 1'b1; c <= 1'b1; d <= 1'b1;
		# 10 ;
		$finish;
	end
      
endmodule

