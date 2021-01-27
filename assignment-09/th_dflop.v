`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:28:10 12/14/2020
// Design Name:   dflop
// Module Name:   E:/Desktop/Experiment 9/Experiment_9/tb_dflop.v
// Project Name:  Experiment_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_dflop;

	// Inputs
	reg rst;
	reg clk;
	reg din;

	// Outputs
	wire qout;
	wire qbout;

	// Instantiate the Unit Under Test (UUT)
	dflop uut (
		.rst(rst), 
		.clk(clk), 
		.din(din),
		.qout(qout), 
		.qbout(qbout)
	);

	initial begin
		// Initialize Inputs
		rst = 1'b0;
		
		clk = 1'b0;
		#40;
		din = 1'b0;
		#40;
		
		clk = ~clk;
		#15;
		din = 1'b1;
		#15;
		din = 1'b0;
		#15;
		din = 1'b1;
		#15;
		din = 1'b0;
		#15;
		din = 1'b1;
		#5;
		
		
		clk = ~clk;
		#15;
		din = 1'b1;
		#15;
		din = 1'b0;
		#15;
		din = 1'b1;
		#15;
		din = 1'b0;
		#15;
		din = 1'b1;
		#5;
		

		clk = ~clk;
		#15;
		din = 1'b1;
		#15;
		din = 1'b0;
		#15;
		din = 1'b1;
		#15;
		din = 1'b0;
		#15;
		din = 1'b0;
		rst = 1'b1;
		#5;
		
		clk = ~clk;
		#15;
		din = 1'b1;
		#15;
		din = 1'b0;
		#15;
		din = 1'b1;
		#15;
		din = 1'b0;
		#15;
		din = 1'b1;
		#5;

		$finish;
        
		// Add stimulus here

	end

endmodule

