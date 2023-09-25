/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9831066
--  Student Name: Mohammad Mahdi Nemati Haravani
--  Student Mail: adel110@aut.ac.ir
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Temperature Calculator Utils
---  Description: Module1:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

/***********************************************************/
/************** Design Your Own Modules Below **************/

module Full_Adder(
		input a ,
		input b ,
		input ci ,
		output s ,
		output co
	);
	
	assign s = a ^ b ^ ci;
	assign co = a & b | a & ci | b & ci ;

endmodule
	
/************** Design Your Own Modules Above **************/
/***********************************************************/