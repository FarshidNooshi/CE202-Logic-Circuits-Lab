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
---  Module Name: Control Unit
---  Description: Module7:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

`define AAA 3'b001 // IDLE
`define BBB 3'b010 // ACTIVE
`define CCC 3'b011 // REQUEST
`define DDD 3'b100 // STORE
`define EEE 3'b101 // TRAP
`define FFF 3'b111 // FFF

`define STATE_IDLE    3'b001
`define STATE_ACTIVE  3'b010
`define STATE_REQUEST 3'b011
`define STATE_STORE   3'b100
`define STATE_TRAP    3'b101
`define STATE_OTHERS  3'b111


module ControlUnit (
	input         arst      , // async  reset
	input         clk       , // clock  posedge
	input         request   , // request input (asynch) 
	input         confirm   , // confirm input 
	input  [ 1:0] password  , // password from user
	input  [ 1:0] syskey    , // key  from memoty unit
	input  [34:0] configin  , // conf from user
	output [34:0] configout , // conf to memory unit
	output        write_en  , // conf mem write enable
	output [ 2:0] dbg_state   // current state (debug)
	);

	/* write your code here */
	
	wire [1:0] equal;
	reg [34:0] configout;
	reg write_en;
	
	PassCheckUnit PCU(password, syskey, equal[0]);
	
	// rst, set, enable, din, dout
	Dlatch DF_Compare(arst | ~request, 1'b0, dbg_state == 3'b010 & confirm & request, equal[0], equal[1]);
	
	// rst, set, clk, din, dout
	DFlop DF_X(arst | ~request, 1'b0, clk,
					dbg_state[2] & ~dbg_state[1] & request 
					| ~dbg_state[2] & dbg_state[1] & request & confirm 
					& (~equal[1] | dbg_state[0] & equal[1])
					, dbg_state[2]),
			DF_Y(arst | ~request, ~arst & request & ~(dbg_state[2] | dbg_state[1]), clk,
					~confirm & (~dbg_state[2] & dbg_state[1] & request | ~dbg_state[2] & dbg_state[0] & request) 
					| ~dbg_state[2] & request & confirm 
					& (dbg_state[0] & ~dbg_state[1] | equal[1] & dbg_state[1] & ~dbg_state[0])
					, dbg_state[1]),
			DF_Z(arst | (request & ~(dbg_state[2] | dbg_state[1])), ~arst & ~request, clk,
					~request | dbg_state[2] & (dbg_state[1] | dbg_state[0]) 
					| confirm & ~dbg_state[2] & ~dbg_state[0] | ~confirm 
					& (dbg_state[1] & dbg_state[0] | ~dbg_state[2] & ~dbg_state[1] & ~dbg_state[0])
					, dbg_state[0]);
					
			
	always @(dbg_state) begin
		if(dbg_state == 3'b100) begin
			configout = configin;
			write_en = 1'b1;
		end
		else write_en = 1'b0;
	end
	
	/* write your code here */

endmodule