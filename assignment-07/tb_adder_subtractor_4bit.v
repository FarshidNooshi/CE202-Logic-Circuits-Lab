`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:57:12 11/24/2020
// Design Name:   Adder_Subtractor_4bit
// Module Name:   E:/Desktop/Expriment 7/Expriment_7/tb_adder_subtractor_4bit.v
// Project Name:  Expriment_7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder_Subtractor_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_adder_subtractor_4bit;

	reg [3:0] A;
	reg [3:0] B;
	reg sel;

	wire [3:0] sum;
	wire [3:0] sum_delay;
	wire cout;
	wire cout_delay;

	// Instantiate the Unit Under Test (UUT)
	Adder_Subtractor_4bit test_adder_subtractor_4bit (.A(A), .B(B), .sel(sel), .S(sum), .cout(cout));
	Adder_Subtractor_4bit_Delay test_adder_subtractor_4bit_delay (.A(A), .B(B), .sel(sel), .S(sum_delay), .cout(cout_delay));

	initial begin
		// Initialize Inputs
		A = 4'b0000; B = 4'b1001; sel = 1;
		#100;
		A = 4'b0001; B = 4'b1010; sel = 1;
		#100;
		A = 4'b0010; B = 4'b1111; sel = 1;
		#100;
		A = 4'b0011; B = 4'b1100; sel = 1;
		#100;
		A = 4'b0100; B = 4'b0110; sel = 1;
		#100;
		A = 4'b0101; B = 4'b1111; sel = 1;
		#100;
		A = 4'b0110; B = 4'b1110; sel = 1;
		#100;
		A = 4'b1111; B = 4'b1111; sel = 1;
		#100;
		
		A = 4'b0000; B = 4'b1001; sel = 0;
		#100;
		A = 4'b0001; B = 4'b1010; sel = 0;
		#100;
		A = 4'b0010; B = 4'b1000; sel = 0;
		#100;
		A = 4'b0011; B = 4'b1100; sel = 0;
		#100;
		A = 4'b0100; B = 4'b0110; sel = 0;
		#100;
		A = 4'b0101; B = 4'b1111; sel = 0;
		#100;
		A = 4'b0110; B = 4'b1110; sel = 0;
		#100;
		A = 4'b0111; B = 4'b1111; sel = 0;
		#100;
        
		// Add stimulus here

	end
      
endmodule

