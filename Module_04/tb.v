`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:36:27 01/24/2021
// Design Name:   LightingSystem
// Module Name:   E:/Desktop/Final Project/Module04/Module_04/tb.v
// Project Name:  Module_04
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LightingSystem
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
	reg [3:0] tcode;
	reg [3:0] ulight;
	reg [3:0] lenght;

	// Outputs
	wire [3:0] wshade;
	wire [3:0] lightnum;
	wire [15:0] lightstate;

	// Instantiate the Unit Under Test (UUT)
	LightingSystem uut (
		.tcode(tcode), 
		.ulight(ulight), 
		.lenght(lenght), 
		.wshade(wshade), 
		.lightnum(lightnum), 
		.lightstate(lightstate)
	);

	initial begin
		// Initialize Inputs
		
		tcode = 4'b0001;
		ulight = 4'b0101;
		lenght = 4'b0011;
		#10;
		
		tcode = 4'b0001;
		ulight = 4'b0111;
		lenght = 4'b1011;
		#10;
	
		tcode = 4'b0010;
		ulight = 4'b1101;
		lenght = 4'b0011;
		#10;
		
		tcode = 4'b0010;
		ulight = 4'b1101;
		lenght = 4'b1010;
		#10;
	
		tcode = 4'b0100;
		ulight = 4'b1101;
		lenght = 4'b0011;
		#10;
		
		tcode = 4'b0100;
		ulight = 4'b0101;
		lenght = 4'b1101;
		#10;
		
		tcode = 4'b1000;
		ulight = 4'b0101;
		lenght = 4'b1101;
		#10;
		
		tcode = 4'b1000;
		ulight = 4'b1101;
		lenght = 4'b1101;
		#10;
		
		tcode = 4'b0000;
		ulight = 4'b0101;
		lenght = 4'b1101;
		#10;
		
		
		tcode = 4'b0000;
		ulight = 4'b0110;
		lenght = 4'b0101;
		#10;
		
		$finish;
        
		// Add stimulus here

	end
      
endmodule

