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

module tb;

	// Inputs
	reg [31:0] tc_base;
	reg [7:0] tc_ref;
	reg [15:0] adc_data;

	// Outputs
	wire [31:0] tempc;

	// Instantiate the Unit Under Test (UUT)
	TemperatureCalculator uut (
		.tc_base(tc_base), 
		.tc_ref(tc_ref), 
		.adc_data(adc_data),
		.tempc(tempc)
	);

	initial begin
		// Initialize Inputs
		tc_base = 32'b11111111111111111111111111111111;
		tc_ref = 8'b11111111;
		adc_data = 16'b1111111111111111;

		// Wait 100 ns for global reset to finish
		#100;
		
		tc_base = 32'b00000000000000000000000000011111;
		tc_ref = 8'b11111111;
		adc_data = 16'b0100000000000001;

		// Wait 100 ns for global reset to finish
		#100;
      
		tc_base = 32'b00000000000000000000000000011111;
		tc_ref = 8'b11111111;
		adc_data = 16'b1000000000000001;

		// Wait 100 ns for global reset to finish
		#100;
		
		tc_base = 32'b00000000000000000000000000011111;
		tc_ref = 8'b10000000;
		adc_data = 16'b0111111111111111;

		// Wait 100 ns for global reset to finish
		#100;
		
		tc_base = 32'b00000000000011111111111111111111;
		tc_ref = 8'b10000000;
		adc_data = 16'b0111111111111111;

		// Wait 100 ns for global reset to finish
		#100;
		
		$finish;
		// Add stimulus here

	end
      
endmodule

