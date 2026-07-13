//==============================================================================
// Project      : VORTEX_RV
// Module       : Arithmetic Logic Unit (ALU)
// File         : alu.v
// Author       : Nandish Reddy L
//
// Description  :
//   Performs arithmetic and logical operations.
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module alu
(
    input  wire [`XLEN-1:0] operand_a,
    input  wire [`XLEN-1:0] operand_b,

    input  wire [3:0]       alu_control,

    output reg  [`XLEN-1:0] result,
    output wire             zero
);

    //----------------------------------------------------------------------
    // ALU Operation
    //----------------------------------------------------------------------

    always @(*)
    begin

        case (alu_control)

            `ALU_ADD :
                result = operand_a + operand_b;

            `ALU_SUB :
                result = operand_a - operand_b;

            `ALU_AND :
                result = operand_a & operand_b;

            `ALU_OR :
                result = operand_a | operand_b;

            `ALU_XOR :
                result = operand_a ^ operand_b;

            `ALU_SLL :
                result = operand_a << operand_b[4:0];

            `ALU_SRL :
                result = operand_a >> operand_b[4:0];

            `ALU_SRA :
                result = $signed(operand_a) >>> operand_b[4:0];

            `ALU_SLT :
                result = ($signed(operand_a) < $signed(operand_b)) ? 32'd1 : 32'd0;

            `ALU_SLTU :
                result = (operand_a < operand_b) ? 32'd1 : 32'd0;

            default :
                result = {`XLEN{1'b0}};

        endcase

    end

    //----------------------------------------------------------------------
    // Zero Flag
    //----------------------------------------------------------------------

    assign zero = (result == {`XLEN{1'b0}});

endmodule

`default_nettype wire