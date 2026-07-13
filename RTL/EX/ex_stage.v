//==============================================================================
// Project      : VORTEX_RV
// Module       : Execute (EX) Stage
// File         : ex_stage.v
// Author       : Nandish Reddy L
//
// Description  :
//   Execute (EX) Stage - Part 1
//   - Forwarding Multiplexers
//   - ALU Operand Selection
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module ex_stage
(
    //--------------------------------------------------------------------------
    // Inputs
    //--------------------------------------------------------------------------

    input  wire [`XLEN-1:0] pc,

    input  wire [`XLEN-1:0] rs1_data,
    input  wire [`XLEN-1:0] rs2_data,

    input  wire [`XLEN-1:0] immediate,

    input  wire [4:0]       rs1,
    input  wire [4:0]       rs2,
    input  wire [4:0]       rd,

    input  wire [2:0]       funct3,
    input  wire [6:0]       funct7,

    input  wire             ALUSrc,
    input  wire             Branch,
    input  wire             Jump,

    input  wire [1:0]       ALUOp,
    input  wire             RegWrite,
input  wire             MemRead,
input  wire             MemWrite,
input  wire             MemToReg,

    //----------------------------------------------------------------------
    // Forwarding Control
    //----------------------------------------------------------------------

    input  wire [1:0]       forward_a,
    input  wire [1:0]       forward_b,

    //----------------------------------------------------------------------
    // Forwarded Data
    //----------------------------------------------------------------------

    input  wire [`XLEN-1:0] ex_mem_result,
    input wire [`XLEN-1:0] wb_result,

//--------------------------------------------------------------------------
// Outputs
//--------------------------------------------------------------------------

output wire [`XLEN-1:0] alu_result_out,
output wire [`XLEN-1:0] store_data,
output wire [`XLEN-1:0] branch_target,

output wire             zero_flag,
output wire             branch_taken,

output wire [4:0]       rd_out,

// Control signals to EX/MEM register
output wire             RegWrite_out,
output wire             MemRead_out,
output wire             MemWrite_out,
output wire             MemToReg_out

);

    //--------------------------------------------------------------------------
    // Internal Signals
    //--------------------------------------------------------------------------

    reg  [`XLEN-1:0] forward_a_data;
    reg  [`XLEN-1:0] forward_b_data;

    wire [`XLEN-1:0] operand_a;
    wire [`XLEN-1:0] operand_b;

    wire [3:0]       alu_control;
    wire             zero;
    wire [`XLEN-1:0] alu_result;

    //--------------------------------------------------------------------------
    // Forwarding MUX - Operand A
    //--------------------------------------------------------------------------

    always @(*)
    begin
        case (forward_a)

            2'b00 : forward_a_data = rs1_data;

            2'b01 : forward_a_data = wb_result;

            2'b10 : forward_a_data = ex_mem_result;

            default : forward_a_data = rs1_data;

        endcase
    end

    //--------------------------------------------------------------------------
    // Forwarding MUX - Operand B
    //--------------------------------------------------------------------------

    always @(*)
    begin
        case (forward_b)

            2'b00 : forward_b_data = rs2_data;

            2'b01 : forward_b_data = wb_result;

            2'b10 : forward_b_data = ex_mem_result;

            default : forward_b_data = rs2_data;

        endcase
    end

    //--------------------------------------------------------------------------
    // ALU Operand Selection
    //--------------------------------------------------------------------------

    assign operand_a = forward_a_data;

    assign operand_b = (ALUSrc) ? immediate : forward_b_data;

    //--------------------------------------------------------------------------
    // Part 2 starts here
    //--------------------------------------------------------------------------

    // ALU Control
    // ALU
    // Branch Logic
    // Outputs

        //--------------------------------------------------------------------------
    // ALU Control
    //--------------------------------------------------------------------------

    alu_control u_alu_control
    (
        .ALUOp      (ALUOp),
        .funct3     (funct3),
        .funct7     (funct7),

        .ALUControl (alu_control)
    );

    //--------------------------------------------------------------------------
    // Arithmetic Logic Unit
    //--------------------------------------------------------------------------

    alu u_alu
    (
        .operand_a   (operand_a),
        .operand_b   (operand_b),
        .alu_control (alu_control),

        .result      (alu_result),
        .zero        (zero)
    );

    //--------------------------------------------------------------------------
    // Branch Logic
    //--------------------------------------------------------------------------

    assign branch_taken  = Branch & zero;

    assign branch_target = pc + immediate;

    //--------------------------------------------------------------------------
    // Outputs
    //--------------------------------------------------------------------------

    assign alu_result_out = alu_result;

    assign store_data = forward_b_data;

    assign zero_flag = zero;

    assign rd_out = rd;

    //--------------------------------------------------------------------------
    // Control Signals
    //--------------------------------------------------------------------------

    assign RegWrite_out = RegWrite;

    assign MemRead_out  = MemRead;

    assign MemWrite_out = MemWrite;

    assign MemToReg_out = MemToReg;

endmodule

`default_nettype wire