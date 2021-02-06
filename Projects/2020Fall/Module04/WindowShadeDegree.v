  
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
---  Module Name: Window Shade Degree
---  Description: Module4: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module WindowShadeDegree (
	input  [3:0] tcode  , // time code    [table2 time code   ]
	input  [3:0] ulight , // user light   [light degree mode  ]
	output [3:0] wshade   // shade level  [window shade level ]
);

	/* write your code here */
	
	reg [3:0] wshade;
	
	always @ (tcode or ulight) begin
	
		if(tcode[0] == 1'b1) begin
		
			wshade = 4'b1111;
		
		end
		else if(tcode[1] == 1'b1) begin
		
			wshade = 4'b1100;
		
		end
		else if(tcode[2] == 1'b1) begin
		
			wshade = ulight;
		
		end
		else begin
		
			wshade = 4'b0000;
			
		end
	
	end
	
	
	/* write your code here */

endmodule