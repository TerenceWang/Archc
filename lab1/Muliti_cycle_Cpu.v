module Muliti_cycle_Cpu(
                        clk,
                        reset,
                        MIO_ready,
								switch,
                        pc_out, 			//TEST
                        Inst, 			//TEST
                        mem_w,
                        Addr_out,
                        data_out,
                        data_in,
                        CPU_MIO,
                        state,
								type,
								code,
								stage,
								regs
                        );

    input  clk,reset, MIO_ready;
	 input [4:0]switch;
	 output mem_w, CPU_MIO;
    output [31: 0] pc_out;
    output [31: 0] Inst;
    output [31: 0] Addr_out;
    output [31: 0] data_out;
    output [ 4: 0] state;
	 output [7 : 0] type;
	 output [7 : 0] code;
	 output [7 : 0] stage;
	 output [31: 0] regs;
    input  [31: 0] data_in;
    wire   [31: 0] Inst, Addr_out, PC_Current, pc_out, data_in, data_out;
    wire   [15: 0] imm;
    wire   [ 4: 0] state;
    wire   [ 2: 0] ALU_operation;
    wire   [ 1: 0] RegDst, MemtoReg, ALUSrcB, PCSource;
    wire   CPU_MIO, MemRead, MemWrite, IorD, IRWrite, RegWrite, ALUSrcA, PCWrite, PCWriteCond, Beq;
    wire   reset, MIO_ready, mem_w, zero, overflow, jalr;
	 reg [7:0]stages;
	 assign stage=stages;
	always@(*)
		begin 
			if(switch[4]==1)
				stages="1";
			else
				stages="0";
		end
    ctrl            x_ctrl(
                        .clk(clk),
                        .reset(reset),
                        .Inst_in(Inst),
                        .zero(zero),
                        .overflow(overflow),
                        .MIO_ready(MIO_ready),
                        .MemRead(MemRead),
                        .MemWrite(MemWrite),
                        .ALU_operation(ALU_operation),
                        .state_out(state),
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
                        .Beq(Beq),
								.type(type),
								.code(code)
						//		.JALR(jalr)
                        );

    data_path x_datapath(
                        .clk(clk),
                        .reset(reset),
                        .MIO_ready(MIO_ready),
								.switch(switch),
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
                        .Beq(Beq),
                        .ALU_operation(ALU_operation),
                        .PC_Current(PC_Current),
                        .data2CPU(data_in),
                        .Inst_R(Inst),
                        .data_out(data_out),
                        .M_addr(Addr_out),
                        .zero(zero),
                        .overflow(overflow),
								.regs(regs)
								//.JALR(jalr)
								);

    assign mem_w = MemWrite&&(~MemRead);
    assign pc_out = PC_Current;

endmodule