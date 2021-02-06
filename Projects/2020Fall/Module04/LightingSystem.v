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
---  Module Name: Lighting System
---  Description: Module4: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns 

module LightingSystem (
	input  [ 3:0] tcode      , // time code    [table2 time code   ]
	input  [ 3:0] ulight     , // user light   [light degree mode  ]
	input  [ 3:0] lenght     , // room length  [square room lenght ]
	output [ 3:0] wshade     , // shade level  [window shade level ]
	output [ 3:0] lightnum   , // number on    [number of active   ]
	output [15:0] lightstate   // lights state [lights state decode]
);

	/* write your code here */
	ActiveLamps AL_0(tcode, ulight, lenght, lightnum);
	WindowShadeDegree WSD_0(tcode, ulight, wshade);
	LampState LS_0(lightnum, lightstate);
	/* write your code here */

endmodule