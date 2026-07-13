//==============================================================================
// Project      : VORTEX_RV
// File         : vortex_rv_defines.vh
// Author       : Nandish Reddy L
// Description  : Global definitions for the VORTEX_RV 5-Stage Pipeline Processor
//==============================================================================

`ifndef VORTEX_RV_DEFINES_VH
`define VORTEX_RV_DEFINES_VH

//==============================================================================
// Processor Configuration
//==============================================================================

`define XLEN            32
`define DATA_WIDTH      32
`define ADDR_WIDTH      32
`define INSTR_WIDTH     32
`define REG_ADDR_WIDTH   5

`define RESET_PC        32'h00000000

//==============================================================================
// Memory Configuration
//==============================================================================

`define IMEM_DEPTH      256
`define DMEM_DEPTH      256

//==============================================================================
// ALU Operations
//==============================================================================

`define ALU_ADD         4'b0000
`define ALU_SUB         4'b0001
`define ALU_AND         4'b0010
`define ALU_OR          4'b0011
`define ALU_XOR         4'b0100
`define ALU_SLL         4'b0101
`define ALU_SRL         4'b0110
`define ALU_SRA         4'b0111
`define ALU_SLT         4'b1000
`define ALU_SLTU        4'b1001

//==============================================================================
// RISC-V Opcodes
//==============================================================================

`define OPCODE_RTYPE    7'b0110011
`define OPCODE_ITYPE    7'b0010011
`define OPCODE_LOAD     7'b0000011
`define OPCODE_STORE    7'b0100011
`define OPCODE_BRANCH   7'b1100011
`define OPCODE_LUI      7'b0110111
`define OPCODE_AUIPC    7'b0010111
`define OPCODE_JAL      7'b1101111
`define OPCODE_JALR     7'b1100111

//==============================================================================
// Control Values
//==============================================================================

`define ENABLE          1'b1
`define DISABLE         1'b0

`define WRITE_ENABLE    1'b1
`define WRITE_DISABLE   1'b0

//==============================================================================
// ALU Operation Type
//==============================================================================

`define ALUOP_LOAD_STORE   2'b00
`define ALUOP_BRANCH       2'b01
`define ALUOP_RTYPE        2'b10
`define ALUOP_ITYPE        2'b11

`endif