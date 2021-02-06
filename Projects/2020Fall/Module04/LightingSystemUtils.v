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
---  Module Name: Lighting System Utils
---  Description: Module4:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

/***********************************************************/
/************** Design Your Own Modules Below **************/

module decoder4x16 (

	input [3:0] i,
	input en,
	output [15:0] q
	
);

	reg [15:0] d;

	always @(i or en) begin
		d = 16'b0;
		if(en) begin
			case(i)
				4'b0000: d[0] = 1'b1; 
				4'b0001: d[1] = 1'b1; 
				4'b0010: d[2] = 1'b1; 
				4'b0011: d[3] = 1'b1; 
				4'b0100: d[4] = 1'b1; 
				4'b0101: d[5] = 1'b1; 
				4'b0110: d[6] = 1'b1; 
				4'b0111: d[7] = 1'b1; 
				4'b1000: d[8] = 1'b1; 
				4'b1001: d[9] = 1'b1; 
				4'b1010: d[10] = 1'b1; 
				4'b1011: d[11] = 1'b1; 
				4'b1100: d[12] = 1'b1; 
				4'b1101: d[13] = 1'b1; 
				4'b1110: d[14] = 1'b1; 
				4'b1111: d[15] = 1'b1; 
			endcase
		end
	end
	
	assign q = d;


endmodule
	
/************** Design Your Own Modules Above **************/
/***********************************************************/