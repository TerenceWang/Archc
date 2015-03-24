`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:44:06 03/24/2015
// Design Name:   Top_Muliti_IOBUS
// Module Name:   E:/Archc/lab1/top_test.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top_Muliti_IOBUS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_test;

	// Inputs
	reg clk_50mhz;
	reg [4:0] BTN;
	reg [7:0] SW;
	reg [4:0] switch;
	reg button;

	// Outputs
	wire LCDRS;
	wire LCDRW;
	wire LCDE;
	wire [3:0] LCDDAT;

	// Instantiate the Unit Under Test (UUT)
	Top_Muliti_IOBUS uut (
		.clk_50mhz(clk_50mhz), 
		.BTN(BTN), 
		.SW(SW), 
		.switch(switch), 
		.button(button), 
		.LCDRS(LCDRS), 
		.LCDRW(LCDRW), 
		.LCDE(LCDE), 
		.LCDDAT(LCDDAT)
	);

	initial begin
		// Initialize Inputs
		clk_50mhz = 0;
		BTN = 0;
		SW = 0;
		switch = 0;
		button = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
     always #5
			clk_50mhz=~clk_50mhz;
endmodule

