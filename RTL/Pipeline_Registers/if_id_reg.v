//==============================================================================
// Project      : VORTEX_RV
// Module       : IF/ID Pipeline Register
// File         : if_id_reg.v
// Author       : Nandish Reddy L
//
// Description  :
//   Pipeline register between Instruction Fetch (IF) and
//   Instruction Decode (ID) stages.
//
//   Features:
//     - Pipeline stall support
//     - Pipeline flush support
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module if_id_reg
(
    input  wire                     clk,
    input  wire                     rst_n,

    input  wire                     write_enable,
    input  wire                     flush,

    input  wire [`XLEN-1:0]         pc_in,
    input  wire [`INSTR_WIDTH-1:0]  instruction_in,

    output reg  [`XLEN-1:0]         pc_out,
    output reg  [`INSTR_WIDTH-1:0]  instruction_out
);

    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n)
        begin
            pc_out          <= `RESET_PC;
            instruction_out <= 32'h00000013;   // NOP (ADDI x0,x0,0)
        end
        else if (flush)
        begin
            pc_out          <= `RESET_PC;
            instruction_out <= 32'h00000013;   // Insert NOP
        end
        else if (write_enable)
        begin
            pc_out          <= pc_in;
            instruction_out <= instruction_in;
        end
    end

endmodule

`default_nettype wire