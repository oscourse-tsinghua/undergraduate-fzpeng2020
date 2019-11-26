//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2014 leishangwen@163.com                       ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
// Module:  id
// File:    id.v
// Author:  Lei Silei, shyoshyo
// E-mail:  leishangwen@163.com, shyoshyo@qq.com
// Description: �����׶�
//   ����� mtc0/mfc0 �� sel �ֶ�
// Revision: 1.0
//////////////////////////////////////////////////////////////////////

`include "defines.v"

module id(
	input wire rst_n,
	input wire[`RegBus] pc_i,
	input wire[`InstBus] inst_i,
	
	// �Ѿ����⵽���쳣
	input wire[`ExceptionTypeBus] excepttype_i,

	input wire not_stall_i,

	//����ִ�н׶ε�ָ����һЩ��Ϣ�����ڽ���load����
	input wire[`AluOpBus] ex_aluop_i,
	
	// ������·
	// ����ִ�н׶ε�ָ��Ҫд����Ŀ�ļĴ�����Ϣ
	input wire ex_wreg_i,
	input wire[`RegBus] ex_wdata_i,
	input wire[`RegAddrBus] ex_wd_i,
	
	//���ڷô��׶ε�ָ��Ҫд����Ŀ�ļĴ�����Ϣ
	input wire mem_wreg_i,
	input wire[`RegBus] mem_wdata_i,
	input wire[`RegAddrBus] mem_wd_i,
	
	input wire[`CSRWriteTypeBus] ex_csr_reg_we_i,
	input wire[`CSRWriteTypeBus] mem_csr_reg_we_i,
	input wire[`CSRWriteTypeBus] wb_csr_reg_we_i,
	input wire ex_not_stall_i,
	input wire mem_not_stall_i,

	input wire[`RegBus] reg1_data_i,
	input wire[`RegBus] reg2_data_i,

	// ������һ��ָ����ת��ָ���ô��һ��ָ����������ʱ�� is_in_delayslot Ϊ true
	input wire is_in_delayslot_i,

	// step_i ��ʾ֮ǰ�����Ǹ�����
	input wire step_i,

	//��csr�������ȡ����csr�Ĵ�����ֵ
	input wire [1:0]prv_i,
	input wire[`RegBus] csr_reg_data_i,
	input wire csr_protect_i,
	output wire[`RegBus] csr_reg_data_o,
	output reg csr_reg_read_o,
	output reg[`CSRWriteTypeBus] csr_reg_we_o,
	output wire[`CSRAddrBus] csr_reg_addr_o,

	//�͵� regfile ����Ϣ�����ڷ��ʼĴ���
	output reg reg1_read_o,
	output reg reg2_read_o,
	output wire[`RegAddrBus] reg1_addr_o,
	output wire[`RegAddrBus] reg2_addr_o,
	
	
	// �͵�����һ�׶Σ�ִ�н׶ε���Ϣ
	
	// op �����ͣ�������
	output reg[`AluOpBus] aluop_o,
	output reg[`AluSelBus] alusel_o,
	
	// ���������ļĴ���
	output reg[`RegBus] reg1_o,
	output reg[`RegBus] reg2_o,

	// where to write in memory
	output reg[`RegBus] mem_addr_o,
	
	// ��Ҫд�صļĴ������Լ��Ƿ���Ҫд��
	output wire[`RegAddrBus] wd_o,
	output reg wreg_o,

	// ��һ��ָ������������
	output wire[`InstBus] inst_o,


	// ��һ��ָ���Ƿ����ӳٲ���
	output reg next_inst_in_delayslot_o,

	// �Ƿ���Ҫ��ת���Լ���ת��ַ����ӵ�ַ
	output reg branch_flag_o,
	output reg[`RegBus] branch_target_address_o,       
	output wire[`RegBus] link_addr_o,

	// ����ָ���Ƿ����ӳٲ���
	output reg is_in_delayslot_o,

	output reg[`ExceptionTypeBus] excepttype_o,
	output wire[`RegBus] current_inst_address_o,
	output reg not_stall_o,

	// step_o ��ʾ��ǰ�����Ǹ�����
	output reg step_o,

	// ��ͣ����
	output wire stallreq
);
	// �����a
	wire [6:0] opcode = inst_i[6:0];
	wire [2:0] funct3 = inst_i[14:12];
	wire [4:0] AMO_func5     = inst_i[31:27];
	wire [11:0] SYSTEM_func12 = inst_i[31:20];

	// Դ�Ĵ���
	assign reg1_addr_o = inst_i[19:15];
	assign reg2_addr_o = inst_i[24:20];
	assign csr_reg_addr_o = inst_i[31:20];

	// Ŀ�˼Ĵ���
	assign wd_o = inst_i[11:7];
	
	// �����
	reg [`RegBus] imm;

`ifdef RV32
	wire [`RegBus] imm_i_type  = {{20{inst_i[31]}}, inst_i[31:20]};
	wire [`RegBus] imm_s_type  = {{20{inst_i[31]}}, inst_i[31:25], inst_i[11:7]};
	wire [`RegBus] imm_u_type  = {inst_i[31:12], 12'b0};
	wire [`RegBus] imm_sb_type =
		{{19{inst_i[31]}}, inst_i[31], inst_i[7], inst_i[30:25], inst_i[11:8], 1'b0};
	wire [`RegBus] imm_uj_type =
		{{11{inst_i[31]}}, inst_i[31], inst_i[19:12], inst_i[20], inst_i[30:21], 1'b0};
	wire [`RegBus] zimm = {27'd0, inst_i[19:15]};
`else
	wire [`RegBus] imm_i_type  = {{52{inst_i[31]}}, inst_i[31:20]};
	wire [`RegBus] imm_s_type  = {{52{inst_i[31]}}, inst_i[31:25], inst_i[11:7]};
	wire [`RegBus] imm_u_type  = {{32{inst_i[31]}}, inst_i[31:12], 12'b0};
	wire [`RegBus] imm_sb_type =
		{{51{inst_i[31]}}, inst_i[31], inst_i[7], inst_i[30:25], inst_i[11:8], 1'b0};
	wire [`RegBus] imm_uj_type =
		{{43{inst_i[31]}}, inst_i[31], inst_i[19:12], inst_i[20], inst_i[30:21], 1'b0};
	wire [`RegBus] zimm = {32'd0, 27'd0, inst_i[19:15]};
`endif

	assign csr_reg_data_o = csr_reg_data_i;


	reg instvalid;

	reg stallreq_for_reg1_loadrelate;
	reg stallreq_for_reg2_loadrelate;

	wire stallreq_for_csr_write_relate;
	wire stallreq_for_csr_read_relate;
	wire pre_inst_is_load;
	reg excepttype_is_syscall;
	reg excepttype_is_break;
	reg excepttype_is_sret;
	reg excepttype_is_mret;
	reg excepttype_is_fence_i;

	assign link_addr_o = pc_i + 4'd4;

	assign stallreq_for_csr_write_relate =
		({ex_csr_reg_we_i, mem_csr_reg_we_i, wb_csr_reg_we_i} == {`CSRWriteDisable, `CSRWriteDisable, `CSRWriteDisable}) ? 1'b0 : 1'b1;
	
	assign stallreq_for_csr_read_relate =
		((csr_reg_read_o == `ReadEnable) && (ex_not_stall_i || mem_not_stall_i));

	assign stallreq = 
		stallreq_for_reg1_loadrelate  | stallreq_for_reg2_loadrelate |
		stallreq_for_csr_write_relate | stallreq_for_csr_read_relate;

	assign pre_inst_is_load = 
		(
			(ex_aluop_i == `EXE_LB_OP)        || (ex_aluop_i == `EXE_LBU_OP)       || (ex_aluop_i == `EXE_LH_OP)        ||
	  		(ex_aluop_i == `EXE_LHU_OP)       || (ex_aluop_i == `EXE_LW_OP)        || (ex_aluop_i == `EXE_LR_OP)        ||
	  		(ex_aluop_i == `EXE_SC_OP)        || (ex_aluop_i == `EXE_AMOSWAP_W_OP) || (ex_aluop_i == `EXE_AMOADD_W_OP)  ||
			(ex_aluop_i == `EXE_AMOXOR_W_OP)  || (ex_aluop_i == `EXE_AMOAND_W_OP)  || (ex_aluop_i == `EXE_AMOOR_W_OP)   ||
	  		(ex_aluop_i == `EXE_AMOMIN_W_OP)  || (ex_aluop_i == `EXE_AMOMAX_W_OP)  || (ex_aluop_i == `EXE_AMOMINU_W_OP) ||
	  		(ex_aluop_i == `EXE_AMOMAXU_W_OP)
  		) ? 1'b1 : 1'b0;

	assign inst_o = inst_i;
	
	always @(*)
		if (rst_n == `RstEnable)
		begin
			excepttype_o <= `ZeroWord;
			not_stall_o <= 1'b0;
		end
		else if(is_in_delayslot_i == `InDelaySlot)
		begin
			excepttype_o <= `ZeroWord;
			not_stall_o <= 1'b0;
		end
		else
		begin
			excepttype_o <= excepttype_i;
			
			excepttype_o[`Exception_INST_ILLEGAL] <= (instvalid | csr_protect_i);
			excepttype_o[`Exception_BREAK] <= excepttype_is_break;

			excepttype_o[`Exception_ERET_FROM_S] <= excepttype_is_sret;
			excepttype_o[`Exception_ERET_FROM_M] <= excepttype_is_mret;

			excepttype_o[`Exception_FENCEI] <= excepttype_is_fence_i;

			case(prv_i)
				`PRV_U: excepttype_o[`Exception_ECALL_FROM_U] <= excepttype_is_syscall;
				`PRV_S: excepttype_o[`Exception_ECALL_FROM_S] <= excepttype_is_syscall;
				`PRV_M: excepttype_o[`Exception_ECALL_FROM_M] <= excepttype_is_syscall;
				default: begin end
			endcase

			not_stall_o <= not_stall_i;
		end

	assign current_inst_address_o = pc_i;

	/******************* ��ָ���������� ********************/

	always @ (*) begin
		if (rst_n == `RstEnable)
		begin
			aluop_o <= `EXE_NOP_OP;
			alusel_o <= `EXE_RES_NOP;
			instvalid <= `InstValid;
			
			wreg_o <= `WriteDisable;
			
			reg1_read_o <= `ReadDisable;
			reg2_read_o <= `ReadDisable;
			
			imm <= `ZeroWord;

			mem_addr_o <= `ZeroWord;

			branch_target_address_o <= `ZeroWord;
			branch_flag_o <= `NotBranch;
			next_inst_in_delayslot_o <= `NotInDelaySlot;
			step_o <= 1'b0;

			excepttype_is_syscall <= `False_v;
			excepttype_is_break <= `False_v;
			excepttype_is_sret <= `False_v;
			excepttype_is_mret <= `False_v;
			excepttype_is_fence_i <= `False_v;

			csr_reg_read_o <= `ReadDisable;
			csr_reg_we_o <= `CSRWriteDisable;
		end
		else if(is_in_delayslot_i == `InDelaySlot)
		begin
			aluop_o <= `EXE_NOP_OP;
			alusel_o <= `EXE_RES_NOP;
			instvalid <= `InstValid;
			
			wreg_o <= `WriteDisable;
			
			reg1_read_o <= `ReadDisable;
			reg2_read_o <= `ReadDisable;
			
			imm <= `ZeroWord;

			mem_addr_o <= `ZeroWord;

			branch_target_address_o <= `ZeroWord;
			branch_flag_o <= `NotBranch;
			next_inst_in_delayslot_o <= `NotInDelaySlot;
			step_o <= 1'b0;

			excepttype_is_syscall <= `False_v;
			excepttype_is_break <= `False_v;
			excepttype_is_sret <= `False_v;
			excepttype_is_mret <= `False_v;
			excepttype_is_fence_i <= `False_v;

			csr_reg_read_o <= `ReadDisable;
			csr_reg_we_o <= `CSRWriteDisable;
		end
		else if((|excepttype_i) == 1'b1)
		begin
			aluop_o <= `EXE_NOP_OP;
			alusel_o <= `EXE_RES_NOP;
			instvalid <= `InstValid;
			
			wreg_o <= `WriteDisable;
			
			reg1_read_o <= `ReadDisable;
			reg2_read_o <= `ReadDisable;
			
			imm <= `ZeroWord;

			mem_addr_o <= `ZeroWord;

			branch_target_address_o <= `ZeroWord;
			branch_flag_o <= `NotBranch;
			next_inst_in_delayslot_o <= `NotInDelaySlot;
			step_o <= 1'b0;

			excepttype_is_syscall <= `False_v;
			excepttype_is_break <= `False_v;
			excepttype_is_sret <= `False_v;
			excepttype_is_mret <= `False_v;
			excepttype_is_fence_i <= `False_v;

			csr_reg_read_o <= `ReadDisable;
			csr_reg_we_o <= `CSRWriteDisable;
		end
		else
		begin
			// Ĭ�ϵ�ָ�����ͺ�������
			aluop_o <= `EXE_NOP_OP;
			alusel_o <= `EXE_RES_NOP;
			instvalid <= `InstInvalid;
			
			// �Ƿ�д���Ĵ���
			wreg_o <= `WriteDisable;
			
			// �Ƿ���ȡ�Ĵ���
			reg1_read_o <= `ReadDisable;
			reg2_read_o <= `ReadDisable;
			
			imm <= `ZeroWord;

			mem_addr_o <= `ZeroWord;

			// �Ƿ���ת����ת��ַ����һ��ָ���Ƿ����ӳٲ���
			branch_target_address_o <= `ZeroWord;
			branch_flag_o <= `NotBranch;
			next_inst_in_delayslot_o <= `NotInDelaySlot;
			step_o <= 1'b0;

			// �Ƿ񴥷� syscall, break, eret �쳣
			excepttype_is_syscall <= `False_v;
			excepttype_is_break <= `False_v;
			excepttype_is_sret <= `False_v;
			excepttype_is_mret <= `False_v;
			excepttype_is_fence_i <= `False_v;

			csr_reg_read_o <= `ReadDisable;
			csr_reg_we_o <= `CSRWriteDisable;
			// ++ change ++ //
			if(inst_i == 32'b0) instvalid <= `InstValid;
			
			case (opcode)
				`EXE_OP_IMM:
					case (funct3)
						`EXE_ADDI:
						begin
							aluop_o <= `EXE_ADD_OP;
							alusel_o <= `EXE_RES_ARITHMETIC;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;
							
							reg1_read_o <= `ReadEnable;
							
							imm <= imm_i_type;
						end

						`EXE_SLTI:
						begin
							aluop_o <= `EXE_SLT_OP;
							alusel_o <= `EXE_RES_ARITHMETIC;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;
							
							reg1_read_o <= `ReadEnable;
							
							imm <= imm_i_type;
						end

						`EXE_SLTIU:
						begin
							aluop_o <= `EXE_SLTU_OP;
							alusel_o <= `EXE_RES_ARITHMETIC;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;
							
							reg1_read_o <= `ReadEnable;
							
							imm <= imm_i_type;
						end


						`EXE_ANDI:
						begin
							aluop_o <= `EXE_AND_OP;
							alusel_o <= `EXE_RES_LOGIC;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;
							
							reg1_read_o <= `ReadEnable;
							
							imm <= imm_i_type;
						end

						`EXE_ORI:
						begin
							aluop_o <= `EXE_OR_OP;
							alusel_o <= `EXE_RES_LOGIC;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;
							
							reg1_read_o <= `ReadEnable;
							
							imm <= imm_i_type;
						end

						`EXE_XORI:
						begin
							aluop_o <= `EXE_XOR_OP;
							alusel_o <= `EXE_RES_LOGIC;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;
							
							reg1_read_o <= `ReadEnable;
							
							imm <= imm_i_type;
						end

						`EXE_SLLI:
						begin
							if(inst_i[31:25] == 7'b0000000)
							begin
								aluop_o <= `EXE_SLL_OP;
								alusel_o <= `EXE_RES_SHIFT;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								
								imm <= imm_i_type;
							end
							else
							begin
							end
						end

						`EXE_SRLI_SRAI:
						begin
							if(inst_i[31:25] == 7'b0000000)
							begin
								aluop_o <= `EXE_SRL_OP;
								alusel_o <= `EXE_RES_SHIFT;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								
								imm <= imm_i_type;
							end
							else if(inst_i[31:25] == 7'b0100000)
							begin
								aluop_o <= `EXE_SRA_OP;
								alusel_o <= `EXE_RES_SHIFT;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								
								imm <= imm_i_type;
							end
							else
							begin
							end
						end

						default:
						begin
						end
					endcase

				`EXE_LUI:
				begin
					aluop_o <= `EXE_OR_OP;
					alusel_o <= `EXE_RES_LOGIC;
					instvalid <= `InstValid;
					
					wreg_o <= `WriteEnable;
					
					imm <= imm_u_type;
				end
				
				`EXE_AUIPC:
				begin
					aluop_o <= `EXE_OR_OP;
					alusel_o <= `EXE_RES_LOGIC;
					instvalid <= `InstValid;
					
					wreg_o <= `WriteEnable;

					imm <= imm_u_type + pc_i;
				end
				
				`EXE_OP:
					case (funct3)
						`EXE_ADD_SUB_MUL:
						begin
							if(inst_i[31:25] == 7'b0000000)
							begin
								aluop_o <= `EXE_ADD_OP;
								alusel_o <= `EXE_RES_ARITHMETIC;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else if(inst_i[31:25] == 7'b0100000)
							begin
								aluop_o <= `EXE_SUB_OP;
								alusel_o <= `EXE_RES_ARITHMETIC;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else if(inst_i[31:25] == 7'b0000001)
							begin
								aluop_o <= `EXE_MUL_OP;
								alusel_o <= `EXE_RES_MUL;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else
							begin
							end
						end

						`EXE_SLL_MULH:
						begin
							if(inst_i[31:25] == 7'b0000000)
							begin
								aluop_o <= `EXE_SLL_OP;
								alusel_o <= `EXE_RES_SHIFT;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else if(inst_i[31:25] == 7'b0000001)
							begin
								aluop_o <= `EXE_MULH_OP;
								alusel_o <= `EXE_RES_MUL;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else
							begin
							end
						end

						`EXE_SLT_MULHSU:
						begin
							if(inst_i[31:25] == 7'b0000000)
							begin
								aluop_o <= `EXE_SLT_OP;
								alusel_o <= `EXE_RES_ARITHMETIC;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else if(inst_i[31:25] == 7'b0000001)
							begin
								aluop_o <= `EXE_MULHSU_OP;
								alusel_o <= `EXE_RES_MUL;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else
							begin
							end
						end

						`EXE_SLTU_MULHU:
						begin
							if(inst_i[31:25] == 7'b0000000)
							begin
								aluop_o <= `EXE_SLTU_OP;
								alusel_o <= `EXE_RES_ARITHMETIC;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else if(inst_i[31:25] == 7'b0000001)
							begin
								aluop_o <= `EXE_MULHU_OP;
								alusel_o <= `EXE_RES_MUL;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else
							begin
							end
						end

						`EXE_XOR_DIV:
						begin
							if(inst_i[31:25] == 7'b0000000)
							begin
								aluop_o <= `EXE_XOR_OP;
								alusel_o <= `EXE_RES_LOGIC;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else if(inst_i[31:25] == 7'b0000001)
							begin
								aluop_o <= `EXE_DIV_OP;
								alusel_o <= `EXE_RES_MUL;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else
							begin
							end
						end


						`EXE_SRL_SRA_DIVU:
						begin
							if(inst_i[31:25] == 7'b0000000)
							begin
								aluop_o <= `EXE_SRL_OP;
								alusel_o <= `EXE_RES_SHIFT;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else if(inst_i[31:25] == 7'b0100000)
							begin
								aluop_o <= `EXE_SRA_OP;
								alusel_o <= `EXE_RES_SHIFT;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else if(inst_i[31:25] == 7'b0000001)
							begin
								aluop_o <= `EXE_DIVU_OP;
								alusel_o <= `EXE_RES_MUL;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else
							begin
							end
						end

						`EXE_OR_REM:
						begin
							if(inst_i[31:25] == 7'b0000000)
							begin
								aluop_o <= `EXE_OR_OP;
								alusel_o <= `EXE_RES_LOGIC;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else if(inst_i[31:25] == 7'b0000001)
							begin
								aluop_o <= `EXE_REM_OP;
								alusel_o <= `EXE_RES_MUL;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else
							begin
							end
						end

						`EXE_AND_REMU:
						begin
							if(inst_i[31:25] == 7'b0000000)
							begin
								aluop_o <= `EXE_AND_OP;
								alusel_o <= `EXE_RES_LOGIC;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else if(inst_i[31:25] == 7'b0000001)
							begin
								aluop_o <= `EXE_REMU_OP;
								alusel_o <= `EXE_RES_MUL;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
							end
							else
							begin
							end
						end



						default:
						begin
						end
					endcase

				`EXE_JAL:
				begin
					aluop_o <= `EXE_JAL_OP;
					alusel_o <= `EXE_RES_JUMP_BRANCH;
					instvalid <= `InstValid;

					wreg_o <= `WriteEnable;

					branch_target_address_o <= pc_i + imm_uj_type;
					branch_flag_o <= `Branch;
					next_inst_in_delayslot_o <= `InDelaySlot;
				end
 
				`EXE_JALR:
					if(funct3 == 3'b000)
					begin
						aluop_o <= `EXE_JAL_OP;
						alusel_o <= `EXE_RES_JUMP_BRANCH;
						instvalid <= `InstValid;

						wreg_o <= `WriteEnable;

						reg1_read_o <= `ReadEnable;

						branch_target_address_o <= reg1_o + imm_i_type;
						branch_target_address_o[0] <= 1'b0;
						branch_flag_o <= `Branch;
						next_inst_in_delayslot_o <= `InDelaySlot;
					end

				`EXE_BRANCH:
					case(funct3)
						`EXE_BEQ:
						begin
							instvalid <= `InstValid;

							reg1_read_o <= `ReadEnable;
							reg2_read_o <= `ReadEnable;

							if(reg1_o == reg2_o)
							begin
								branch_target_address_o <= pc_i + imm_sb_type;
								branch_flag_o <= `Branch;
								next_inst_in_delayslot_o <= `InDelaySlot;
							end
						end

						`EXE_BNE:
						begin
							instvalid <= `InstValid;

							reg1_read_o <= `ReadEnable;
							reg2_read_o <= `ReadEnable;

							if(reg1_o != reg2_o)
							begin
								branch_target_address_o <= pc_i + imm_sb_type;
								branch_flag_o <= `Branch;
								next_inst_in_delayslot_o <= `InDelaySlot;
							end
						end

						`EXE_BLT:
						begin
							instvalid <= `InstValid;

							reg1_read_o <= `ReadEnable;
							reg2_read_o <= `ReadEnable;

							if($signed(reg1_o) < $signed(reg2_o))
							begin
								branch_target_address_o <= pc_i + imm_sb_type;
								branch_flag_o <= `Branch;
								next_inst_in_delayslot_o <= `InDelaySlot;
							end
						end

						`EXE_BLTU:
						begin
							instvalid <= `InstValid;

							reg1_read_o <= `ReadEnable;
							reg2_read_o <= `ReadEnable;

							if(reg1_o < reg2_o)
							begin
								branch_target_address_o <= pc_i + imm_sb_type;
								branch_flag_o <= `Branch;
								next_inst_in_delayslot_o <= `InDelaySlot;
							end
						end

						`EXE_BGE:
						begin
							instvalid <= `InstValid;

							reg1_read_o <= `ReadEnable;
							reg2_read_o <= `ReadEnable;

							if($signed(reg1_o) >= $signed(reg2_o))
							begin
								branch_target_address_o <= pc_i + imm_sb_type;
								branch_flag_o <= `Branch;
								next_inst_in_delayslot_o <= `InDelaySlot;
							end
						end

						`EXE_BGEU:
						begin
							instvalid <= `InstValid;

							reg1_read_o <= `ReadEnable;
							reg2_read_o <= `ReadEnable;

							if(reg1_o >= reg2_o)
							begin
								branch_target_address_o <= pc_i + imm_sb_type;
								branch_flag_o <= `Branch;
								next_inst_in_delayslot_o <= `InDelaySlot;
							end
						end

						default:
						begin
						end
					endcase

				`EXE_LOAD:
					case(funct3)
						`EXE_LB:
						begin
							aluop_o <= `EXE_LB_OP;
							alusel_o <= `EXE_RES_LOAD_STORE;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;
							
							reg1_read_o <= `ReadEnable;
							
							mem_addr_o <= imm_i_type + reg1_o;
						end

						`EXE_LH:
						begin
							aluop_o <= `EXE_LH_OP;
							alusel_o <= `EXE_RES_LOAD_STORE;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;
							
							reg1_read_o <= `ReadEnable;
							
							mem_addr_o <= imm_i_type + reg1_o;
						end

						`EXE_LW:
						begin
							aluop_o <= `EXE_LW_OP;
							alusel_o <= `EXE_RES_LOAD_STORE;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;
							
							reg1_read_o <= `ReadEnable;
							
							mem_addr_o <= imm_i_type + reg1_o;
						end
						
						`EXE_LBU:
						begin
							aluop_o <= `EXE_LBU_OP;
							alusel_o <= `EXE_RES_LOAD_STORE;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;
							
							reg1_read_o <= `ReadEnable;
							
							mem_addr_o <= imm_i_type + reg1_o;
						end

						`EXE_LHU:
						begin
							aluop_o <= `EXE_LHU_OP;
							alusel_o <= `EXE_RES_LOAD_STORE;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;
							
							reg1_read_o <= `ReadEnable;
							
							mem_addr_o <= imm_i_type + reg1_o;
						end

						default:
						begin
						end
					endcase

				`EXE_STORE:
					case(funct3)
						`EXE_SB:
						begin
							aluop_o <= `EXE_SB_OP;
							alusel_o <= `EXE_RES_LOAD_STORE;
							instvalid <= `InstValid;
							
							reg1_read_o <= `ReadEnable;
							reg2_read_o <= `ReadEnable;
							
							mem_addr_o <= imm_s_type + reg1_o;
						end

						`EXE_SH:
						begin
							aluop_o <= `EXE_SH_OP;
							alusel_o <= `EXE_RES_LOAD_STORE;
							instvalid <= `InstValid;
							
							reg1_read_o <= `ReadEnable;
							reg2_read_o <= `ReadEnable;
							
							mem_addr_o <= imm_s_type + reg1_o;
						end

						`EXE_SW:
						begin
							aluop_o <= `EXE_SW_OP;
							alusel_o <= `EXE_RES_LOAD_STORE;
							instvalid <= `InstValid;
							
							reg1_read_o <= `ReadEnable;
							reg2_read_o <= `ReadEnable;
							
							mem_addr_o <= imm_s_type + reg1_o;
						end

						default:
						begin
						end
					endcase

				`EXE_MISC_MEM:
					case(funct3)
						`EXE_FENCE:
							if(reg1_addr_o == `ZeroRegAddr && wd_o == `ZeroRegAddr && inst_i[31:28] == 4'b0)
							begin
								instvalid <= `InstValid;
							end

						`EXE_FENCE_I:
							if(reg1_addr_o == `ZeroRegAddr && wd_o == `ZeroRegAddr && imm_i_type == 32'b0)
							begin
								instvalid <= `InstValid;
								excepttype_is_fence_i <= `True_v;
							end
							
						default:
						begin
						end
					endcase

				`EXE_SYSTEM:
					case(funct3)
						`EXE_ECALL_EBREAK_URET_SRET_HRET_MRET:
							if(reg1_addr_o == `ZeroRegAddr && wd_o == `ZeroRegAddr)
								case(SYSTEM_func12)
									`EXE_ECALL:
									begin
										instvalid <= `InstValid;
										excepttype_is_syscall <= `True_v;
									end

									`EXE_EBREAK:
									begin
										instvalid <= `InstValid;
										excepttype_is_break <= `True_v;
									end

									`EXE_SRET:
										if(prv_i >= `PRV_S)
										begin
											instvalid <= `InstValid;
											excepttype_is_sret <= `True_v;
										end

									`EXE_MRET:
										if(prv_i >= `PRV_M)
										begin
											instvalid <= `InstValid;
											excepttype_is_mret <= `True_v;
										end

									`EXE_WFI:
										instvalid <= `InstValid;

									default:
									begin
										
									end
								endcase

						`EXE_CSRRW:
						begin
							aluop_o <= `EXE_CSRRW_OP;
							alusel_o <= `EXE_RES_MOVE;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;

							reg1_read_o <= `ReadEnable;

							if(wd_o != `ZeroRegAddr)
								csr_reg_read_o <= `ReadEnable;
							csr_reg_we_o <= `CSRWrite;
						end

						`EXE_CSRRS:
						begin
							aluop_o <= `EXE_CSRRS_OP;
							alusel_o <= `EXE_RES_MOVE;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;

							reg1_read_o <= `ReadEnable;

							csr_reg_read_o <= `ReadEnable;
							if(reg1_addr_o != `ZeroRegAddr)
								csr_reg_we_o <= `CSRWrite;
						end
						
						`EXE_CSRRC:
						begin
							aluop_o <= `EXE_CSRRC_OP;
							alusel_o <= `EXE_RES_MOVE;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;

							reg1_read_o <= `ReadEnable;

							csr_reg_read_o <= `ReadEnable;
							if(reg1_addr_o != `ZeroRegAddr)
								csr_reg_we_o <= `CSRWrite;
						end
						
						`EXE_CSRRWI:
						begin
							aluop_o <= `EXE_CSRRW_OP;
							alusel_o <= `EXE_RES_MOVE;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;

							imm <= zimm;

							if(wd_o != `ZeroRegAddr)
								csr_reg_read_o <= `ReadEnable;
							csr_reg_we_o <= `CSRWrite;
						end
						
						`EXE_CSRRSI:
						begin
							aluop_o <= `EXE_CSRRS_OP;
							alusel_o <= `EXE_RES_MOVE;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;

							imm <= zimm;

							csr_reg_read_o <= `ReadEnable;
							if(reg1_addr_o != `ZeroRegAddr)
								csr_reg_we_o <= `CSRWrite;
						end

						`EXE_CSRRCI:
						begin
							aluop_o <= `EXE_CSRRC_OP;
							alusel_o <= `EXE_RES_MOVE;
							instvalid <= `InstValid;
							
							wreg_o <= `WriteEnable;

							imm <= zimm;

							csr_reg_read_o <= `ReadEnable;
							if(reg1_addr_o != `ZeroRegAddr)
								csr_reg_we_o <= `CSRWrite;
						end

						default:
						begin

						end
					endcase

				`EXE_AMO:
					if(funct3 == `EXE_AMO_W)
					begin
						case(AMO_func5)
							`EXE_LR:
								if(reg2_addr_o == `ZeroRegAddr)
								begin
									aluop_o <= `EXE_LR_OP;
									alusel_o <= `EXE_RES_LOAD_STORE;
									instvalid <= `InstValid;
									
									wreg_o <= `WriteEnable;
									
									reg1_read_o <= `ReadEnable;

									mem_addr_o <= reg1_o;
								end

							`EXE_SC:
							begin
								aluop_o <= `EXE_SC_OP;
								alusel_o <= `EXE_RES_LOAD_STORE;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;

								mem_addr_o <= reg1_o;
							end

							`EXE_AMOSWAP:
							begin
								aluop_o <= `EXE_AMOSWAP_W_OP;
								alusel_o <= `EXE_RES_LOAD_STORE;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
								
								mem_addr_o <= reg1_o;
							end

							`EXE_AMOADD:
							begin
								aluop_o <= `EXE_AMOADD_W_OP;
								alusel_o <= `EXE_RES_LOAD_STORE;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
								
								mem_addr_o <= reg1_o;
							end
							
							`EXE_AMOXOR:
							begin
								aluop_o <= `EXE_AMOXOR_W_OP;
								alusel_o <= `EXE_RES_LOAD_STORE;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
								
								mem_addr_o <= reg1_o;
							end
							
							`EXE_AMOAND:
							begin
								aluop_o <= `EXE_AMOAND_W_OP;
								alusel_o <= `EXE_RES_LOAD_STORE;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
								
								mem_addr_o <= reg1_o;
							end
							
							`EXE_AMOOR:
							begin
								aluop_o <= `EXE_AMOOR_W_OP;
								alusel_o <= `EXE_RES_LOAD_STORE;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
								
								mem_addr_o <= reg1_o;
							end
							
							`EXE_AMOMIN:
							begin
								aluop_o <= `EXE_AMOMIN_W_OP;
								alusel_o <= `EXE_RES_LOAD_STORE;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
								
								mem_addr_o <= reg1_o;
							end

							`EXE_AMOMAX:
							begin
								aluop_o <= `EXE_AMOMAX_W_OP;
								alusel_o <= `EXE_RES_LOAD_STORE;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
								
								mem_addr_o <= reg1_o;
							end

							`EXE_AMOMINU:
							begin
								aluop_o <= `EXE_AMOMINU_W_OP;
								alusel_o <= `EXE_RES_LOAD_STORE;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
								
								mem_addr_o <= reg1_o;
							end
							
							`EXE_AMOMAXU:
							begin
								aluop_o <= `EXE_AMOMAXU_W_OP;
								alusel_o <= `EXE_RES_LOAD_STORE;
								instvalid <= `InstValid;
								
								wreg_o <= `WriteEnable;
								
								reg1_read_o <= `ReadEnable;
								reg2_read_o <= `ReadEnable;
								
								mem_addr_o <= reg1_o;
							end
							
							default:
							begin

							end
						endcase
					end

				default:
				begin

				end
			endcase
		end
	end
	
	
	/**************** ȷ��Դ������ 1 *****************/
	
	always @ (*)
	begin
		stallreq_for_reg1_loadrelate <= `NoStop;	

		if(rst_n == `RstEnable)
			reg1_o <= `ZeroWord;
		else if((reg1_read_o == 1'b1) && (reg1_addr_o == `ZeroRegAddr))
			reg1_o <= `ZeroWord;
		else if((reg1_read_o == 1'b1) && (pre_inst_is_load == 1'b1) && (ex_wreg_i == 1'b1) && (ex_wd_i == reg1_addr_o))
		begin
			stallreq_for_reg1_loadrelate <= `Stop;
			reg1_o <= `ZeroWord;
		end
		else if((reg1_read_o == 1'b1) && (ex_wreg_i == 1'b1) && (ex_wd_i == reg1_addr_o))
			reg1_o <= ex_wdata_i; 
		else if((reg1_read_o == 1'b1) && (mem_wreg_i == 1'b1) && (mem_wd_i == reg1_addr_o))
			reg1_o <= mem_wdata_i;
		else if(reg1_read_o == 1'b1)
			reg1_o <= reg1_data_i;
		else if(reg1_read_o == 1'b0)
			reg1_o <= imm;
		else
			reg1_o <= `ZeroWord;
	end
	
	/**************** ȷ��Դ������ 2 *****************/
	
	always @ (*)
	begin
		stallreq_for_reg2_loadrelate <= `NoStop;	

		if(rst_n == `RstEnable)
			reg2_o <= `ZeroWord;
		else if((reg2_read_o == 1'b1) && (reg2_addr_o == `ZeroRegAddr))
			reg2_o <= `ZeroWord;
		else if((reg2_read_o == 1'b1) && (pre_inst_is_load == 1'b1) && (ex_wreg_i == 1'b1) && (ex_wd_i == reg2_addr_o))
		begin
			stallreq_for_reg2_loadrelate <= `Stop;
			reg2_o <= `ZeroWord;
		end
		else if((reg2_read_o == 1'b1) && (ex_wreg_i == 1'b1) && (ex_wd_i == reg2_addr_o))
			reg2_o <= ex_wdata_i; 
		else if((reg2_read_o == 1'b1) && (mem_wreg_i == 1'b1) && (mem_wd_i == reg2_addr_o))
			reg2_o <= mem_wdata_i;
		else if(reg2_read_o == 1'b1)
			reg2_o <= reg2_data_i;
		else if(reg2_read_o == 1'b0)
			reg2_o <= imm;
		else
			reg2_o <= `ZeroWord;
	end

	/*********** ȷ����һ��ָ���Ƿ����ӳٲ��� **********/

	always @ (*)
	begin
		if(rst_n == `RstEnable)
		begin
			is_in_delayslot_o <= `NotInDelaySlot;
		end
		else
		begin
			is_in_delayslot_o <= is_in_delayslot_i;		
		end
	end
endmodule
