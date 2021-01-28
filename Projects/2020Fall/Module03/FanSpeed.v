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
	wire [7:0] out, out_Bar, multi_in;
	wire [7:0] count;
	reg rst;
	genvar i;
		
	
	Conter_8_Bit c_0(arst | rst, clk, count);
	 
	always @* begin 

		if(speed != out) rst = 1'b1;
		else rst = 1'b0;
	
	end
	
	always@(speed) begin
		rst = 1;
	end
	
	always @(count or posedge clk) begin 
		
		if(count == 8'b00000000)
			rst = 0;
	
		if (count > speed)
			pwm_data = 0;
		else 
			pwm_data = 1;
	end
		
	
	/* write your code here */

endmodule