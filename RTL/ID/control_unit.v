//==============================================================================
// Project      : VORTEX_RV
// Module       : Main Control Unit
// File         : control_unit.v
// Author       : Nandish Reddy L
//
// Description  :
//   Generates the main control signals based on the instruction opcode.
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module control_unit
(
    input  wire [6:0] opcode,

    output reg        RegWrite,
    output reg        MemRead,
    output reg        MemWrite,
    output reg        MemToReg,
    output reg        ALUSrc,
    output reg        Branch,
    output reg        Jump,
    output reg [1:0]  ALUOp
);

always @(*)
begin

    //----------------------------------------------------------------------
    // Default Values
    //----------------------------------------------------------------------

    RegWrite = 1'b0;
    MemRead  = 1'b0;
    MemWrite = 1'b0;
    MemToReg = 1'b0;
    ALUSrc   = 1'b0;
    Branch   = 1'b0;
    Jump     = 1'b0;
    ALUOp    = `ALUOP_LOAD_STORE;

    //----------------------------------------------------------------------
    // Opcode Decode
    //----------------------------------------------------------------------

    case(opcode)

        //==============================================================
        // R-Type
        //==============================================================

        `OPCODE_RTYPE:
        begin
            RegWrite = 1'b1;
            ALUSrc   = 1'b0;
            ALUOp    = `ALUOP_RTYPE;
        end

        //==============================================================
        // I-Type Arithmetic
        //==============================================================

        `OPCODE_ITYPE:
        begin
            RegWrite = 1'b1;
            ALUSrc   = 1'b1;
            ALUOp    = `ALUOP_ITYPE;
        end

        //==============================================================
        // Load
        //==============================================================

        `OPCODE_LOAD:
        begin
            RegWrite = 1'b1;
            MemRead  = 1'b1;
            MemToReg = 1'b1;
            ALUSrc   = 1'b1;
            ALUOp    = `ALUOP_LOAD_STORE;
        end

        //==============================================================
        // Store
        //==============================================================

        `OPCODE_STORE:
        begin
            MemWrite = 1'b1;
            ALUSrc   = 1'b1;
            ALUOp    = `ALUOP_LOAD_STORE;
        end

        //==============================================================
        // Branch
        //==============================================================

        `OPCODE_BRANCH:
        begin
            Branch = 1'b1;
            ALUOp  = `ALUOP_BRANCH;
        end

        //==============================================================
        // JAL
        //==============================================================

        `OPCODE_JAL:
        begin
            RegWrite = 1'b1;
            Jump     = 1'b1;
        end

        //==============================================================
        // JALR
        //==============================================================

        `OPCODE_JALR:
        begin
            RegWrite = 1'b1;
            Jump     = 1'b1;
            ALUSrc   = 1'b1;
        end

        //==============================================================
        // LUI
        //==============================================================

        `OPCODE_LUI:
        begin
            RegWrite = 1'b1;
            ALUSrc   = 1'b1;
            ALUOp    = `ALUOP_ITYPE;
        end

        //==============================================================
        // AUIPC
        //==============================================================

        `OPCODE_AUIPC:
        begin
            RegWrite = 1'b1;
            ALUSrc   = 1'b1;
            ALUOp    = `ALUOP_ITYPE;
        end

        default:
        begin
        end

    endcase

end

endmodule

`default_nettype wire