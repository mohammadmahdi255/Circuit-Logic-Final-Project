`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:11:36 01/21/2021
// Design Name:   JKflop
// Module Name:   E:/Desktop/Final Project/Module03/Module_03/tb1.v
// Project Name:  Module_03
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JKflop
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
	reg rst;
	reg clk;
	reg J;
	reg K;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	JKflop uut (
		.rst(rst), 
		.clk(clk), 
		.J(J), 
		.K(K), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		// Initialize Inputs
		rst = 1'b1;
		clk = 1'b1;
		J = 1'b0;
		K = 1'b0;

		// Wait 100 ns for global reset to finish
		#20;
		
		rst = 1'b0;
		J = 1'b1;
		K = 1'b0;

		// Wait 100 ns for global reset to finish
		#20;
		
		J = 1'b0;
		K = 1'b0;

		// Wait 100 ns for global reset to finish
		#20;
		
		J = 1'b1;
		K = 1'b1;

		// Wait 100 ns for global reset to finish
		#20;
		
		J = 1'b1;
		K = 1'b0;

		// Wait 100 ns for global reset to finish
		#20;
		
		J = 1'b0;
		K = 1'b1;

		// Wait 100 ns for global reset to finish
		#60;
		
		$finish;
        
		// Add stimulus here

	end
      
	always 
	    #10 clk = ~clk;
		
endmodule

