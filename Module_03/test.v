`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:43:48 01/22/2021
// Design Name:   multiplexer8x1
// Module Name:   E:/Desktop/Final Project/Module03/Module_03/test.v
// Project Name:  Module_03
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplexer8x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [7:0] w;
	reg [2:0] s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	multiplexer8x1 uut (
		.w(w), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		w = 8'b11101010;
		s = 3'b101;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

