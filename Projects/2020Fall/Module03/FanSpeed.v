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
---  Module Name: Fan Speed (PWM)
---  Description: Module3: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module FanSpeed (
	input        arst     , // reset [asynch]  
	input        clk      , // clock [posedge] 
	input [7:0] speed    , // speed [duty-cycle]
	output       pwm_data   // data  [output]
);

	/* write your code here */
	reg pwm_data;
	wire [7:0] out, out_Bar, count;
	genvar i;
	
	for (i = 0 ; i < 8 ; i = i + 1) begin : loop_0
	
		Dlatch DL_0(1'b0, clk, speed[i], out[i], out_Bar[i]);
	
	end
	
	Counter_8_Bit c_0(arst | (clk && speed != out), clk, count);
	
	
	always @(count) begin 
	
		if (count >= speed)
			pwm_data = 0;
		else 
			pwm_data = 1;
			
			
	end
		
	
	/* write your code here */

endmodule