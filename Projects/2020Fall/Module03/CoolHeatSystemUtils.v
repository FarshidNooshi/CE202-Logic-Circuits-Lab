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
--  Student Mail: farshidnooshi726@aut.at.ir
--  *******************************************************
--  Student ID  : 9831066
--  Student Name: Mohammad Mahdi Nemati Haravani
--  Student Mail: adel110@aut.at.ir
--  *******************************************************
--  Additional Comments: lab number 8 Group 6
--
--*/

/*-----------------------------------------------------------
---  Module Name: Cool Heat System Utils
---  Description: Module3:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

/***********************************************************/
/************** Design Your Own Modules Below **************/

module Dlatch(
		input   rst ,
		input   clk ,
		input   din ,
		output  q,
		output  qb
    );
	 
	 wire q, qb, sb, rb;
	 assign sb = ~din | ~clk;
	 assign rb = din | ~clk;
	 assign q = (~qb | ~sb) & ~rst ;
	 assign qb = ~q | ~rb | rst;

endmodule

module Counter_8_Bit(//counter 8 bit
		input   arst ,
		input   clk ,
		output [7:0] count
    );
	 
	reg [7:0] counter_up;
	
	initial begin
		counter_up = 8'b11111111;
	end

	always @(posedge clk or posedge arst) begin
	
		if(arst || counter_up == 8'b11111111)
			counter_up = 8'b0;
		else
			counter_up = counter_up + 1'b1;
	 
	end 
		
		assign count = counter_up;		 

endmodule
	
/************** Design Your Own Modules Above **************/
/***********************************************************/