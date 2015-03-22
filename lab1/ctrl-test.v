`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:28:54 03/22/2015
// Design Name:   ctrl
// Module Name:   X:/Archc/lab1/ctrl-test.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ctrl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ctrl_test;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] Inst_in;
	reg zero;
	reg overflow;
	reg MIO_ready;

	// Outputs
	wire MemRead;
	wire MemWrite;
	wire [2:0] ALU_operation;
	wire [4:0] state_out;
	wire CPU_MIO;
	wire IorD;
	wire IRWrite;
	wire [1:0] RegDst;
	wire RegWrite;
	wire [1:0] MemtoReg;
	wire ALUSrcA;
	wire [1:0] ALUSrcB;
	wire [1:0] PCSource;
	wire PCWrite;
	wire PCWriteCond;
	wire Beq;
 
	// Instantiate the Unit Under Test (UUT)
	ctrl uut (
		.clk(clk), 
		.reset(reset), 
		.Inst_in(Inst_in), 
		.zero(zero), 
		.overflow(overflow), 
		.MIO_ready(MIO_ready), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.ALU_operation(ALU_operation), 
		.state_out(state_out), 
		.CPU_MIO(CPU_MIO), 
		.IorD(IorD), 
		.IRWrite(IRWrite), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.MemtoReg(MemtoReg), 
		.ALUSrcA(ALUSrcA), 
		.ALUSrcB(ALUSrcB), 
		.PCSource(PCSource), 
		.PCWrite(PCWrite), 
		.PCWriteCond(PCWriteCond), 
		.Beq(Beq)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		Inst_in = 0;
		zero = 0;
		overflow = 0;
		MIO_ready = 0;
		reset=1;
		// Wait 100 ns for global reset to finish
		// Add stimulus here
		#70; 
			MIO_ready=1;
			reset=0;
		#80;
			Inst_in=32'b0000_0000_0000_0000_0000_0000_0010_0000;
		#80;
			Inst_in=32'b0000_0000_0000_0000_0000_0000_0010_0010;
		#80;
			Inst_in=32'b0000_0000_0000_0000_0000_0000_0010_0100;
		#80;
			Inst_in=32'b0000_0000_0000_0000_0000_0000_0010_0101;	
		#80;
			Inst_in=32'b0000_0000_0000_0000_0000_0000_0010_0110;	
		#80;
			Inst_in=32'b0000_0000_0000_0000_0000_0000_0010_0111;	
		#80;
			Inst_in=32'b0000_0000_0000_0000_0000_0000_0010_1010;
		#80;
			Inst_in=32'b0000_0000_0000_0000_0000_0000_0000_0010;
		#80;
			Inst_in=32'b0000_0000_0000_0000_0000_0000_0000_1000;
		#80;
			Inst_in=32'b0000_0000_0000_0000_0000_0000_0000_1010;
		#80; 
			Inst_in=32'b1000_1100_0000_0000_0000_0000_0000_0000;
		#100;
			Inst_in=32'b1010_1100_0000_0000_0000_0000_0000_0000;
		#80;
			Inst_in=32'b0000_1000_0000_0000_0000_0000_0000_0000;
		#60;
			Inst_in=32'b0001_0000_0000_0000_0000_0000_0000_0000;
		#60;
			Inst_in=32'b0000_1100_0000_0000_0000_0000_0000_0000;
		#60;
			Inst_in=32'b0010_0000_0000_0000_0000_0000_0000_0000;
		#80;
			Inst_in=32'b0011_1100_0000_0000_0000_0000_0000_0000;
	end
   always #10
		clk=~clk;

endmodule

