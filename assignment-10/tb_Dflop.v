`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:59:11 12/26/2020
// Design Name:   Dflop
// Module Name:   E:/Desktop/Experiment 10/Experiment_10/tb_Dflop.v
// Project Name:  Experiment_10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Dflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Dflop;

	// Inputs
	reg rst;
	reg clk;
	reg din;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	Dflop uut (
		.rst(rst), 
		.clk(clk), 
		.din(din), 
		.q(q), 
		.qb(qb)
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

