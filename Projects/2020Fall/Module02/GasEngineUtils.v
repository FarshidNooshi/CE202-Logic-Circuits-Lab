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
---  Module Name: Gas Engine Utils
---  Description: Module2:
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

module Dflop(
		input   rst ,
		input   clk ,
		input   din ,
		output  q,
		output  qb
    );
	 
	 wire q_1, qb_1;
	 
	 Dlatch	D0(rst, ~clk, din, q_1, qb_1),
				D1(rst, clk, q_1, q, qb);
	 


endmodule

module find_1011101010(
		input   rst ,
		input	  clk ,
		input	  din ,
		output  dout
		);

		wire [9:0] out, out_Bar;
		reg dout;
		genvar i;
		
		Dflop FF_0(rst, clk, din, out[0], out_Bar[0]);
		
		for (i = 0; i < 9 ; i = i + 1) begin : loop_0
			Dflop FF_0(rst, clk, out[i], out[i + 1], out_Bar[i + 1]);
		end
		
		always @* begin
			if(out == {10'b1011101010}) dout = 1'b1;
			else dout = 1'b0;
		end

endmodule

module find_101010010011(
		input   rst ,
		input	  clk ,
		input	  din ,
		output  dout
		);

		wire [11:0] out, out_Bar;
		reg dout;
		genvar i;
		
		Dflop FF_0(rst, clk, din, out[0], out_Bar[0]);
		
		for (i = 0; i < 11 ; i = i + 1) begin : loop_0
			Dflop FF_0(rst, clk, out[i], out[i + 1], out_Bar[i + 1]);
		end
		
		always @* begin
			if(out == {12'b101010010011}) dout = 1'b1;
			else dout = 1'b0;
		end

endmodule

module find_100100100(
		input   rst ,
		input	  clk ,
		input	  din ,
		output  dout
		);

		wire [8:0] out, out_Bar;
		reg dout;
		genvar i;
		
		Dflop FF_0(rst, clk, din, out[0], out_Bar[0]);
		
		for (i = 0; i < 8 ; i = i + 1) begin : loop_0
			Dflop FF_0(rst, clk, out[i], out[i + 1], out_Bar[i + 1]);
		end
		
		always @* begin
			if(out == {9'b100100100}) dout = 1'b1;
			else dout = 1'b0;
		end

endmodule 

/************** Design Your Own Modules Above **************/
/***********************************************************/