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
---  Module Name: System Testbench
---  Description: Lab 10 Part 4
-----------------------------------------------------------*/

module tb_system;

	// Inputs
	reg rst;
	reg rqst;
	reg clk;
	reg confirm;
	reg [3:0] din;

	// Outputs
	wire en_left;
	wire en_right;
	wire [3:0] dout;
	wire [3:0] dout_left;
	wire [3:0] dout_right;

	// Instantiate the Unit Under Test (UUT)
	system uut (
		.rst(rst), 
		.rqst(rqst), 
		.clk(clk), 
		.confirm(confirm), 
		.din(din),
		.en_left(en_left),
		.en_right(en_right),
		.dout(dout),
		.dout_left(dout_left), 
		.dout_right(dout_right)
	);

	initial begin
	
		clk = 1'b0;
	
		rst = 1'b1; #20
		rst = 1'b0; 
		
		rqst = 1'b0; din = 4'b0000; confirm = 1'b0; #20; // S0 -> S0
		rqst = 1'b1; din = 4'b0000; confirm = 1'b0; #20; // S0 -> S1
		
		rqst = 1'b1; din = 4'b1111; confirm = 1'b0; #20; // S1 -> S1
		rqst = 1'b1; din = 4'b1010; confirm = 1'b1; #20; // S1 -> S2
		
		rqst = 1'b1; din = 4'b0011; confirm = 1'b0; #20; // S2 -> S2
		rqst = 1'b1; din = 4'b0101; confirm = 1'b1; #20; // S2 -> S4
		
		rqst = 1'b1; din = 4'b1001; confirm = 1'b0; #20; // S4 -> S4
		rqst = 1'b1; din = 4'b1101; confirm = 1'b1; #20; // S4 -> S0
		
		
		
		
		rqst = 1'b0; din = 4'b0000; confirm = 1'b1; #20; // S0 -> S0
		rqst = 1'b1; din = 4'b0000; confirm = 1'b1; #20; // S0 -> S1
		
		rqst = 1'b1; din = 4'b1110; confirm = 1'b0; #20; // S1 -> S1
		rqst = 1'b1; din = 4'b1010; confirm = 1'b1; #20; // S1 -> S2
		
		rqst = 1'b1; din = 4'b0011; confirm = 1'b0; #20; // S2 -> S2
		rqst = 1'b1; din = 4'b0110; confirm = 1'b1; #20; // S2 -> S4
		
		rqst = 1'b1; din = 4'b1101; confirm = 1'b0; #20; // S4 -> S4
		rqst = 1'b1; din = 4'b1011; confirm = 1'b1; #20; // S4 -> S0
		
		
		
		
		rqst = 1'b0; din = 4'b0000; confirm = 1'b1; #20; // S0 -> S0
		rqst = 1'b1; din = 4'b0000; confirm = 1'b1; #20; // S0 -> S1
		
		rqst = 1'b1; din = 4'b1110; confirm = 1'b0; #20; // S1 -> S1
		rqst = 1'b1; din = 4'b1011; confirm = 1'b1; #20; // S1 -> S3
		
		rqst = 1'b1; din = 4'b0011; confirm = 1'b0; #20; // S3 -> S3
		rqst = 1'b1; din = 4'b0110; confirm = 1'b1; #20; // S3 -> S3
		
		rqst = 1'b1; din = 4'b1101; confirm = 1'b0; #20; // S3 -> S3
		rqst = 1'b1; din = 4'b1010; confirm = 1'b1; #20; // S3 -> S3
		
		rqst = 1'b0; din = 4'b0101; confirm = 1'b1; #20; // S3 -> S0
		
		
		$finish;

	end
	
	always 
			#10 clk = ~clk;
      
endmodule

