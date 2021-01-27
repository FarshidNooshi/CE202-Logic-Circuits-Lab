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
---  Module Name: FSM
---  Description: Lab 10 Part 2
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module fsm (
	input        rst ,
	input        rqst,
	input        clk ,
	input        confirm ,
	input  [3:0] pass_data ,
	output       en_left ,
	output       en_right ,
	output [3:0] dout
);

	/* write your code here */
	
	reg en_left, en_right, compare;
	reg [3:0] dout;
	wire A, B, C , Y;
	wire Password = 4'b1010;// can get changed due to supervisors permission.
	
	Dflop AF(rst, clk, A & C & rqst | A & rqst & ~confirm | C & rqst & confirm, A),
			YF(rst, clk, Y & A | compare & ~A, Y),
			BF(rst, clk, C & rqst & (~Y & confirm | ~Y & ~A | A & Y & confirm) | B & rqst & ~confirm, B),
			CF(rst, clk, ~A & rqst | B & C & rqst | C & rqst & ~confirm, C);
			
	always @ (pass_data) begin 
		if(Password == pass_data) begin
			compare = 1'b1;
		end
	end
	
	always @ (A or B or C) begin
	
		if(A == 1'b1 && B == 1'b1 && C == 1'b0) begin
		
			dout = pass_data;
			
			if(dout[0] == 1'b0) begin
				en_left = 1'b1;
				en_right = 1'b0;
			end
			if(dout[0] == 1'b1) begin
				en_left = 1'b0;
				en_right = 1'b1;
			end
			
		end
		else begin
				dout = 4'b0000;
				en_left = 1'b0;
				en_right = 1'b0;
		end
		
	end
	 
	
	/* write your code here */

endmodule
