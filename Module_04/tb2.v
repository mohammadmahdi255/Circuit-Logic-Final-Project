`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:44:34 01/23/2021
// Design Name:   LampState
// Module Name:   E:/Desktop/Final Project/Module04/Module_04/tb2.v
// Project Name:  Module_04
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LampState
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb2;

	// Inputs
	reg [3:0] active_lights;

	// Outputs
	wire [15:0] lights_state;

	// Instantiate the Unit Under Test (UUT)
	LampState uut (
		.active_lights(active_lights), 
		.lights_state(lights_state)
	);

	initial begin
		// Initialize Inputs
		active_lights = 4'b1111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

