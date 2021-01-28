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
--  Student Name: Mohammad MAhdi Nemati Haravani
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

module SRlatch(
		input   rst ,
		input   clk ,
		input   S,
		input   R,
		output  q,
		output  qb
    );
	 
	 wire q, qb, sb, rb;
	 assign sb = ~S | ~clk;
	 assign rb = ~R | ~clk;
	 assign q = (~qb | ~sb) & ~rst ;
	 assign qb = ~q | ~rb | rst;

endmodule

module JKflop(
		input   rst ,
		input   clk ,
		input   J,
		input   K,
		output  q,
		output  qb
    );
	 
	 wire q_1, qb_1;
	 
	 SRlatch	SR0(rst, ~clk, J & qb, K & q,q_1, qb_1),
				SR1(rst, clk, q_1, qb_1, q, qb);

endmodule

module Conter_8_Bit(//counter 8 bit
		input   rst ,
		input   clk ,
		output [7:0] count
    );
	 
	reg[7:0] cont;
	
	always@(rst) begin
		cont = 0;
	end
	
	always@(posedge clk) begin 
		if (cont == 8'b11111111)
			cont = 0;
		else 
			cont = cont + 1;
	end			 
	assign count = cont;

endmodule

module multiplexer8x1(
		input [7:0] w,
		input [2:0]	s,
		output y	
    );
	 
	/* write your code here */
	wire [7:0] m;
			
	assign m[0] = w[7] & ~s[2] & ~s[1] & ~s[0];
	assign m[1] = w[6] & ~s[2] & ~s[1] &  s[0];
	assign m[2] = w[5] & ~s[2] &  s[1] & ~s[0];
	assign m[3] = w[4] & ~s[2] &  s[1] &  s[0];
	assign m[4] = w[3] &  s[2] & ~s[1] & ~s[0];
	assign m[5] = w[2] &  s[2] & ~s[1] &  s[0];
	assign m[6] = w[1] &  s[2] &  s[1] & ~s[0];
	assign m[7] = w[0] &  s[2] &  s[1] &  s[0];
	
	assign y = m[0] | m[1] | m[2] | m[3] | m[4] | m[5] | m[6] | m[7];
		 
	/* write your code here */

endmodule
	
/************** Design Your Own Modules Above **************/
/***********************************************************/