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
---  Module Name: Cool Heat System
---  Description: Module3:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module CoolHeatSystem (
	input        arst      , // reset [asynch]  
	input        clk       , // clock [posedge] 
	
	input  [7:0] speed     , // speed [duty-cycle]  
	
	input  [7:0] chs_conf  , // degree [temprature] 
	
	output [3:0] chs_power , // power  [cooler/heater] 
	output       chs_mode  , // model  [heat=1/cool=0]
	output       pwm_data    // data  [output]
);

	/* write your code here */
	FanSpeed FS_0(arst, clk, speed, pwm_data);
	ModePower MP_0(chs_conf, chs_power, chs_mode);
	/* write your code here  */

endmodule