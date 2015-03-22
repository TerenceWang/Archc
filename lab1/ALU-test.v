`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:39:37 03/22/2015
// Design Name:   alu
// Module Name:   X:/Archc/lab1/ALU-test.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_test;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [2:0] ALU_operation;

	// Outputs
	wire [31:0] res;
	wire zero;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.A(A), 
		.B(B), 
		.ALU_operation(ALU_operation), 
		.res(res), 
		.zero(zero), 
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		begin 
		A = 32'hffff_0000;
		B = 32'h0000_ffff;
		ALU_operation = 0;
		end 
		// Wait 100 ns for global reset to finish
		#100
			ALU_operation=ALU_operation+1;
		#100
			ALU_operation=ALU_operation+1;
		#100
			ALU_operation=ALU_operation+1;
		#100
			ALU_operation=ALU_operation+1;
		#100
			ALU_operation=ALU_operation+1;
		#100
			ALU_operation=ALU_operation+1;
		#100
			ALU_operation=ALU_operation+1;	
		#100
			ALU_operation=ALU_operation+1;			
		// Add stimulus here

	end
      
endmodule

