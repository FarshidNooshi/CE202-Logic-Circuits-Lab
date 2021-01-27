`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:05:50 12/14/2020
// Design Name:   dlatch
// Module Name:   E:/Desktop/Experiment 9/Experiment_9/tb_dlatch.v
// Project Name:  Experiment_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dlatch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_dlatch;

	// Inputs
	reg c;
	reg din;

	// Outputs
	wire qout;
	wire qbout;

	// Instantiate the Unit Under Test (UUT)
	dlatch uut (
		.c(c), 
		.din(din), 
		.qout(qout), 
		.qbout(qbout)
	);

	initial begin
		// Initialize Inputs
		
		c = 1'b0;din = 1'b0;#10;
		c = 1'b0;din = 1'b1;#10;
		
		c = 1'b1;din = 1'b1;#10;
		c = 1'b0;din = 1'b0;#10;
		c = 1'b0;din = 1'b1;#10;
		
		c = 1'b1;din = 1'b0;#10;
		c = 1'b0;din = 1'b0;#10;
		c = 1'b0;din = 1'b1;#10;
		
		c = 1'b1;din = 1'b1;#10;
		c = 1'b0;din = 1'b0;#10;
		c = 1'b0;din = 1'b1;#10;
		
		c = 1'b1;din = 1'b0;
		c = 1'b1;din = 1'b0;#10;
		c = 1'b0;din = 1'b0;#10;
		c = 1'b0;din = 1'b1;#10;
		
		$finish;
		
        
		// Add stimulus here

	end
      
endmodule

