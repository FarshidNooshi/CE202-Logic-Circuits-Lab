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

module ActiveLamps (
	input  [3:0] tcode  , // time code    [table2 time code   ]
	input  [3:0] ulight , // user light   [light degree mode  ]
    input  [3:0] lenght     , // room length  [square room lenght ]
	output [3:0] active_lights  // number of active light
);

	/* write your code here */
	
	reg [3:0] active_lights;
	
	always @ (tcode or ulight or lenght) begin
	
		if(tcode[2] == 1'b1) begin
		
			active_lights = {2'b00, lenght[3:2]};
		
		end
		else if(tcode[3] == 1'b1) begin
		
			active_lights = ulight;
			
		end
		else begin
		
			active_lights = 4'b0000;
			
		end
	
	end
	
	/* write your code here */

endmodule