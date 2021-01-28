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
---  Module Name: Temperature Calculator
---  Description: Module1: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns 

module TemperatureCalculator (
	input  [31:0] tc_base  , // base [environment degree ]
	input  [ 7:0] tc_ref   , // ref  [system work voltage]
	input  [15:0] adc_data , // adc  [sensor digital data]
	output [31:0] tempc      // temp [temperature celsius]
);

	/* write your code here */
	
	reg [7:0] ref; // unsigned tc_ref
	wire [15:0] multi_8x8;
	wire [31:0] multi_16x16;

	
	always @(tc_ref[7]) begin
	
		if(tc_ref[7] == 1'b1) ref = ~tc_ref + 1'b1;
		else ref = tc_ref;
		
	end
	
	
	Multiplier8x8 M_0(ref, ref, multi_8x8);
	Multiplier16x16 M_1({1'b0, adc_data[14:0]}, multi_8x8, multi_16x16);
	AdderSubtractor32x32 A_0(tc_base, {6'b0, multi_16x16[31:6]} + adc_data[15], adc_data[15], tempc);
	
	/* write your code here */

endmodule