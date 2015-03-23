`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:40:07 03/23/2015 
// Design Name: 
// Module Name:    Convert 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Convert(input clk,input [31:0]Inst,input [7:0]ram_addr,input [7:0] rom_addr, input[3:0]state, input[7:0]type,input[7:0]code,input[7:0]stage,
	input [7:0]pc,input [15:0]regs,
    output reg[255:0]strdata);
	 reg[3:0] temp;
	 integer i;
	 reg[31:0]Insts;
	always@(posedge clk)
	begin
		Insts<=Inst;
		//inst
		temp<=Insts[31:28];
		if(temp<4'b1010)
			strdata[255:248]=temp-4'b0000+"0";
		else
			strdata[255:248]=temp-4'b1010+"A";
			
		temp<=Insts[27:24];
		if(temp<4'b1010)
			strdata[247:240]=temp-4'b0000+"0";
		else
			strdata[247:240]=temp-4'b1010+"A";
		
		temp<=Insts[23:20];
		if(temp<4'b1010)
			strdata[239:232]=temp-4'b0000+"0";
		else
			strdata[239:232]=temp-4'b1010+"A";
		
		temp<=Insts[19:16];
		if(temp<4'b1010)
			strdata[231:224]=temp-4'b0000+"0";
		else
			strdata[231:224]=temp-4'b1010+"A";
		
		temp<=Insts[15:12];
		if(temp<4'b1010)
			strdata[223:216]=temp-4'b0000+"0";
		else
			strdata[223:216]=temp-4'b1010+"A";
		
		temp<=Insts[11:8];
		if(temp<4'b1010)
			strdata[215:208]=temp-4'b0000+"0";
		else
			strdata[215:208]=temp-4'b1010+"A";
		
		temp<=Insts[7:4];
		if(temp<4'b1010)
			strdata[207:200]=temp-4'b0000+"0";
		else
			strdata[207:200]=temp-4'b1010+"A";
		
		temp<=Insts[3:0];
		if(temp<4'b1010)
			strdata[199:192]=temp-4'b0000+"0";
		else
			strdata[199:192]=temp-4'b1010+"A";

		strdata[191:184]=" ";
		
		//read addr
		temp<=ram_addr[7:4];
		if(temp<4'b1010)
			strdata[183:176]=temp-4'b0000+"0";
		else
			strdata[183:176]=temp-4'b1010+"A";
		temp<=ram_addr[3:0];
		if(temp<4'b1010)
			strdata[175:168]=temp-4'b0000+"0";
		else
			strdata[175:168]=temp-4'b1010+"A";
		
		strdata[167:160]=" ";
		
		//write addr
		temp<=rom_addr[7:4];
		if(temp<4'b1010)
			strdata[159:152]=temp-4'b0000+"0";
		else
			strdata[159:152]=temp-4'b1010+"A";
		temp<=rom_addr[3:0];
		if(temp<4'b1010)
			strdata[151:144]=temp-4'b0000+"0";
		else
			strdata[151:144]=temp-4'b1010+"A";
		
		strdata[143:128]="  ";
		
		//change line
		//state
		temp<=state;
		if(temp<4'b1010)
			strdata[127:120]=temp-4'b0000+"0";
		else
			strdata[127:120]=temp-4'b1010+"A";
		
		strdata[119:112]=" ";
		
		//type
		strdata[111:104]=type;
		
		strdata[103:96]=" ";
		
		//code
		strdata[95:88]=code;
		strdata[87:80]=" ";
		
		//stage
		strdata[79:72]=stage;
		strdata[71:64]=" ";
		
		//pc
		temp<=pc[7:4];
		if(temp<4'b1010)
			strdata[63:56]=temp-4'b0000+"0";
		else
			strdata[63:56]=temp-4'b1010+"A";
		temp<=pc[3:0];
		if(temp<4'b1010)
			strdata[55:48]=temp-4'b0000+"0";
		else
			strdata[55:48]=temp-4'b1010+"A";
		
		strdata[47:40]=" ";
		
		//reg
		
		temp<=regs[15:12];
		if(temp<4'b1010)
			strdata[39:32]=temp-4'b0000+"0";
		else
			strdata[39:32]=temp-4'b1010+"A";
		temp<=regs[11:8];
		if(temp<4'b1010)
			strdata[31:24]=temp-4'b0000+"0";
		else
			strdata[31:24]=temp-4'b1010+"A";
		temp<=regs[7:4];
		if(temp<4'b1010)
			strdata[23:16]=temp-4'b0000+"0";
		else
			strdata[23:16]=temp-4'b1010+"A";
		temp<=regs[3:0];
		if(temp<4'b1010)
			strdata[15:8]=temp-4'b0000+"0";
		else
			strdata[15:8]=temp-4'b1010+"A";
		strdata[7:0]=" ";
	end

endmodule
