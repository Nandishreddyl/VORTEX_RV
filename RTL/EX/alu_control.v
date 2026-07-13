//==============================================================================
// Project      : VORTEX_RV
// Module       : ALU Control
// File         : alu_control.v
// Author       : Nandish Reddy L
//
// Description  :
//   Generates the ALU control signal based on ALUOp,
//   funct3 and funct7.
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module alu_control
(
    input  wire [1:0] ALUOp,
    input  wire [2:0] funct3,
    input  wire [6:0] funct7,

    output reg  [3:0] ALUControl
);

always @(*)
begin

    //----------------------------------------------------------------------
    // Default Operation
    //----------------------------------------------------------------------

    ALUControl = `ALU_ADD;

    case(ALUOp)

        //--------------------------------------------------------------
        // Load / Store
        //--------------------------------------------------------------

        `ALUOP_LOAD_STORE:
        begin
            ALUControl = `ALU_ADD;
        end

        //--------------------------------------------------------------
        // Branch
        //--------------------------------------------------------------

        `ALUOP_BRANCH:
        begin
            ALUControl = `ALU_SUB;
        end

        //--------------------------------------------------------------
        // R-Type
        //--------------------------------------------------------------

        `ALUOP_RTYPE:
        begin

            case(funct3)

                3'b000:
                    ALUControl = (funct7 == 7'b0100000) ?
                                  `ALU_SUB : `ALU_ADD;

                3'b111:
                    ALUControl = `ALU_AND;

                3'b110:
                    ALUControl = `ALU_OR;

                3'b100:
                    ALUControl = `ALU_XOR;

                3'b001:
                    ALUControl = `ALU_SLL;

                3'b101:
                    ALUControl = (funct7 == 7'b0100000) ?
                                  `ALU_SRA : `ALU_SRL;

                3'b010:
                    ALUControl = `ALU_SLT;

                3'b011:
                    ALUControl = `ALU_SLTU;

                default:
                    ALUControl = `ALU_ADD;

            endcase

        end

        //--------------------------------------------------------------
        // I-Type
        //--------------------------------------------------------------

        `ALUOP_ITYPE:
        begin

            case(funct3)

                3'b000:
                    ALUControl = `ALU_ADD;

                3'b111:
                    ALUControl = `ALU_AND;

                3'b110:
                    ALUControl = `ALU_OR;

                3'b100:
                    ALUControl = `ALU_XOR;

                3'b001:
                    ALUControl = `ALU_SLL;

                3'b101:
                    ALUControl = (funct7 == 7'b0100000) ?
                                  `ALU_SRA : `ALU_SRL;

                3'b010:
                    ALUControl = `ALU_SLT;

                3'b011:
                    ALUControl = `ALU_SLTU;

                default:
                    ALUControl = `ALU_ADD;

            endcase

        end

        default:
        begin
            ALUControl = `ALU_ADD;
        end

    endcase

end

endmodule

`default_nettype wire