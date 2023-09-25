`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:27:42 01/23/2021
// Design Name:   decoder4x16
// Module Name:   E:/Desktop/Final Project/Module04/Module_04/tb1.v
// Project Name:  Module_04
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder4x16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb1;

	// Inputs
	reg [3:0] i;
	reg en;

	// Outputs
	wire [15:0] d;

	// Instantiate the Unit Under Test (UUT)
	decoder4x16 uut (
		.i(i), 
		.en(en), 
		.q(d)
	);

	initial begin
		// Initialize Inputs
		i = 4'b0110;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

