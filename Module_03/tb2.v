`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:51:04 01/22/2021
// Design Name:   Conter_3_Bit
// Module Name:   E:/Desktop/Final Project/Module03/Module_03/tb2.v
// Project Name:  Module_03
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Conter_3_Bit
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
	reg rst;
	reg clk;

	// Outputs
	wire [2:0] cont;

	// Instantiate the Unit Under Test (UUT)
	Conter_3_Bit uut (
		.rst(rst), 
		.clk(clk), 
		.cont(cont)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		#2;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#300;
        
		 $finish;
		// Add stimulus here

	end
	
	always 
	    #10 clk = ~clk;
      
endmodule

