`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:57:00 03/24/2015 
// Design Name: 
// Module Name:    h_l_select 
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
module h_l_select(input cnt, input [31:0]regs,output [15:0]out
    );
	reg [15:0]temp;
	assign out=temp;
	always@(*)
	begin 
		if(cnt==0)
			temp<=regs[31:16];
		else
			temp<=regs[15:0];
	end

endmodule
