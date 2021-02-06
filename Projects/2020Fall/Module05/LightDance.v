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
---  Module Name: Light Dance
---  Description: Module5
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module LightDance (
	input        arst  , // async  reset
	input        clk   , // clock  posedge
	input        din   , // input  data
	input        load  , // load   enable 
	input  [7:0] pdata , // load   data
	output [7:0] qdata   // output data
);

	/* write your code here */
	
	DFlop DF_7(arst, clk, 		din ^ qdata[0], load, pdata[7], qdata[7]),
			DF_6(arst, clk, 				qdata[7], load, pdata[6], qdata[6]),
			DF_5(arst, clk, qdata[6] ^ qdata[0], load, pdata[5], qdata[5]),
			DF_4(arst, clk, qdata[5] ^ qdata[0], load, pdata[4], qdata[4]),
			DF_3(arst, clk, 				qdata[4], load, pdata[3], qdata[3]),
			DF_2(arst, clk, 				qdata[3], load, pdata[2], qdata[2]),
			DF_1(arst, clk, qdata[2] ^ qdata[0], load, pdata[1], qdata[1]),
			DF_0(arst, clk, qdata[1] ^ qdata[0], load, pdata[0], qdata[0]);
	
	/* write your code here */

endmodule