`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:28:48 01/20/2021
// Design Name:   Dflop
// Module Name:   E:/Desktop/Final Project/Module02/Module_02/tb.v
// Project Name:  Module_02
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Dflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg arst;
	reg clk;
	reg din;

	// Outputs
	wire [2:0] dout;

	// Instantiate the Unit Under Test (UUT)
	GasDetectorSensor  uut (
		.arst(arst), 
		.clk(clk), 
		.din(din), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		clk = 1'b0;
		
		arst = 1; din = 0; #20;
		arst = 0; din = 1; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 1; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 1; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 1; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 0; #20;
		
		arst = 0; din = 1; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 1; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 1; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 1; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 1; #20;
		arst = 0; din = 1; #20;
		
		arst = 0; din = 1; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 1; #20;
		arst = 0; din = 1; #20;
		arst = 0; din = 1; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 1; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 1; #20;
		arst = 0; din = 0; #20;
		
		arst = 0; din = 0; #20;
		arst = 0; din = 1; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 0; #20;
		arst = 0; din = 1; #20;
		arst = 1; din = 1; #5;
		arst = 0; din = 1; #20;
        
		// Add stimulus here

	end
	
	
	always 
			#10 clk = ~clk;
      
endmodule

