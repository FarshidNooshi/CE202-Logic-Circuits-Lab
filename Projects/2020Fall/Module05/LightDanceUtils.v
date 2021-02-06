/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9831066
--  Student Name: Mohammad Mahdi Nemati Haravani
--  Student Mail: adel110@aut.at.ir
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name:  Light Dance Utils
---  Description: Module5:
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
    );/*
	 reg qout, qbout;
	 always@(rst or clk or din) begin 
		if (rst == 1'b1) begin
			qout = 1'b0;
			qbout = ~q;
		end 
		else if (clk == 1'b1) begin
			qout = din;
			qbout = ~din;
		end 
	 end
	 assign q = qout;
	 assign qb = qbout;
	 */
	 wire q, qb, sb, rb;
	 assign sb = ~din | ~clk;
	 assign rb = din | ~clk;
	 assign q = (~qb | ~sb) & ~rst ;
	 assign qb = ~q | ~rb | rst;

endmodule
	
/************** Design Your Own Modules Above **************/
/***********************************************************/