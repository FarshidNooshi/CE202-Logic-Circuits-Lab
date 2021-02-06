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
---  Module Name: Active Lights
---  Description: Module4: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module LampState (
	input  [ 3:0] active_lights , // number of active light
	output [15:0] lights_state    // state of lights is on
);

	/* write your code here */
	genvar i;
	wire [15:0] out;
	
	decoder4x16 D_0(active_lights, 1'b1, out);
	
	assign lights_state[0] = ~out[0];
	
	for(i = 0 ; i < 15 ; i = i + 1) begin : loop_0
	
		assign lights_state[i + 1] =  ~out[i + 1] & lights_state[i];
	
	end
	
	/* write your code here */

endmodule