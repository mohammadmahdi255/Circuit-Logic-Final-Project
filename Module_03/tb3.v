`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:34:20 01/22/2021
// Design Name:   FanSpeed
// Module Name:   E:/Desktop/Final Project/Module03/Module_03/tb3.v
// Project Name:  Module_03
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FanSpeed
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb3;

	// Inputs
	reg arst;
	reg clk;
	reg [7:0] speed;

	// Outputs
	wire pwm_data;

	// Instantiate the Unit Under Test (UUT)
	FanSpeed uut (
		.arst(arst), 
		.clk(clk), 
		.speed(speed), 
		.pwm_data(pwm_data)
	);

	initial begin
		// Initialize Inputs
		arst = 1'b1; clk = 1'b1; speed = 8'b11001100; #10;
		arst = 1'b0; #350;
		
		arst = 1'b0; speed = 8'b11101110;#300;
        
		// Add stimulus here
		$finish;

	end
	
	always 
		#10 clk = ~clk;
      
endmodule

