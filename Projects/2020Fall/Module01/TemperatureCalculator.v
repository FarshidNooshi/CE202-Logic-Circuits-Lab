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
	
	reg [7:0] ref;// unsigned tc_ref
	wire [15:0] multi_8x8;// ref * ref
	wire [31:0] multi_16x16; // ref * ref * {1'b0, adc_data[14:0]}

	
	always @(tc_ref) begin // multiplexer alternative
	
		if(tc_ref[7] == 1'b1) ref = ~tc_ref + 1'b1; // if negative -> from 2s compliment to unsigned
		else ref = tc_ref; // if positve -> it's ok
		
	end
	
	Multiplier8x8 M_0(ref, ref, multi_8x8);// calculate ref * ref
	Multiplier16x16 M_1({1'b0, adc_data[14:0]}, multi_8x8, multi_16x16); // calculate ref * ref * {1'b0, adc_data[14:0]}
	
	
	
	wire helper = 
	(multi_16x16[0] | multi_16x16[1] | multi_16x16[2] | multi_16x16[3] | multi_16x16[4] | multi_16x16[5]) & adc_data[15];
	// helper helps us for flooring.
	
	
	AdderSubtractor32x32 A_0(tc_base, {6'b0, multi_16x16[31:6]} + helper, adc_data[15], tempc); // calculate the answer
	//... + adc_data[15] is for negative and positive handling floor. positive is ok cuz [15] = 0, negative 
	/* write your code here */

endmodule