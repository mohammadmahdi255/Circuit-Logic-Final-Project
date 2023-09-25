`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:37:09 01/23/2021
// Design Name:   CoolHeatSystem
// Module Name:   E:/Desktop/Final Project/Module03/Module_03/tb.v
// Project Name:  Module_03
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CoolHeatSystem
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
	reg [7:0] speed;
	reg [7:0] chs_conf;

	// Outputs
	wire [3:0] chs_power;
	wire chs_mode;
	wire pwm_data;

	// Instantiate the Unit Under Test (UUT)
	CoolHeatSystem uut (
		.arst(arst), 
		.clk(clk), 
		.speed(speed), 
		.chs_conf(chs_conf), 
		.chs_power(chs_power), 
		.chs_mode(chs_mode),
		.pwm_data(pwm_data)
	);

	initial begin
		// Initialize Inputs
		// Initialize Inputs
		chs_conf = 8'b01000111;
		clk = 1'b0;
		arst = 1'b0; clk = 1'b1; speed = 8'b01111000; #10;
		arst = 1'b0; #10000;
		
		chs_conf = 8'b01110110;
		arst = 1'b0; speed = 8'b11101110;#10000;
        
		// Add stimulus here
		$finish;
        
		// Add stimulus here

	end
	
	always 
		#10 clk = ~clk;
      
endmodule

