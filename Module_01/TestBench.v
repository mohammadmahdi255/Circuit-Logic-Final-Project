`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:32:53 01/20/2021
// Design Name:   TemperatureCalculator
// Module Name:   E:/Desktop/Final Project/Module01/Module_01/TestBench.v
// Project Name:  Module_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TemperatureCalculator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestBench;

	// Inputs
	reg [31:0] tc_base;
	reg [7:0] tc_ref;
	reg [15:0] adc_data;

	// Outputs
	wire [15:0] multi_8x8;
	wire [31:0] multi_16x16;
	wire [31:0] tempc;

	// Instantiate the Unit Under Test (UUT)
	TemperatureCalculator uut (
		.tc_base(tc_base), 
		.tc_ref(tc_ref), 
		.adc_data(adc_data), 
		.multi_8x8(multi_8x8), 
		.multi_16x16(multi_16x16), 
		.tempc(tempc)
	);

	initial begin
		// Initialize Inputs
		tc_base = 0;
		tc_ref = 0;
		adc_data = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

