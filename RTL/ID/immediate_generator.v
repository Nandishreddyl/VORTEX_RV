//==============================================================================
// Project      : VORTEX_RV
// Module       : Immediate Generator
// File         : immediate_generator.v
// Author       : Nandish Reddy L
//
// Description  :
//   Generates the 32-bit immediate value for RV32I instructions.
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module immediate_generator
(
    input  wire [`INSTR_WIDTH-1:0] instruction,

    output reg  [`XLEN-1:0] immediate
);

    wire [6:0] opcode;

    assign opcode = instruction[6:0];

    always @(*)
    begin

        case(opcode)

            //----------------------------------------------------------
            // I-Type
            //----------------------------------------------------------

            `OPCODE_ITYPE,
            `OPCODE_LOAD,
            `OPCODE_JALR:
            begin
                immediate = {{20{instruction[31]}},
                             instruction[31:20]};
            end

            //----------------------------------------------------------
            // S-Type
            //----------------------------------------------------------

            `OPCODE_STORE:
            begin
                immediate = {{20{instruction[31]}},
                             instruction[31:25],
                             instruction[11:7]};
            end

            //----------------------------------------------------------
            // B-Type
            //----------------------------------------------------------

            `OPCODE_BRANCH:
            begin
                immediate = {{19{instruction[31]}},
                             instruction[31],
                             instruction[7],
                             instruction[30:25],
                             instruction[11:8],
                             1'b0};
            end

            //----------------------------------------------------------
            // U-Type
            //----------------------------------------------------------

            `OPCODE_LUI,
            `OPCODE_AUIPC:
            begin
                immediate = {instruction[31:12],
                             12'b0};
            end

            //----------------------------------------------------------
            // J-Type
            //----------------------------------------------------------

            `OPCODE_JAL:
            begin
                immediate = {{11{instruction[31]}},
                             instruction[31],
                             instruction[19:12],
                             instruction[20],
                             instruction[30:21],
                             1'b0};
            end

            //----------------------------------------------------------
            // Default
            //----------------------------------------------------------

            default:
            begin
                immediate = 32'b0;
            end

        endcase

    end

endmodule

`default_nettype wire