`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:36:39 12/21/2020
// Design Name:   register
// Module Name:   E:/Desktop/Experiment 10/Experiment_10/tb_register.v
// Project Name:  Experiment_10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_register;

	// Inputs
	reg rst;
	reg clk;
	reg en;
	reg [3:0] din;

	// Outputs
	wire [3:0] qout;

	// Instantiate the Unit Under Test (UUT)
	register uut (
		.rst(rst), 
		.clk(clk), 
		.en(en), 
		.din(din), 
		.qout(qout)
	);

	initial begin
	
		rst = 1'b0;
		clk = 1'b0;
		en = 1'b0;
		din = 4'b0000;
		#60;
		
		rst = 1'b0;
		en = 1'b1;
		din = 4'b1001;
		#70;
		
		rst = 1'b0;
		en = 1'b0;
		din = 4'b1101;
		#60;
		
		rst = 1'b1;
		en = 1'b0;
		din = 4'b1101;
		#60;
		
		$finish;
		
	end
	
	always #40 clk = ~clk;
      
endmodule

