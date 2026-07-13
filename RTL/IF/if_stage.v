//==============================================================================
// Project      : VORTEX_RV
// Module       : Instruction Fetch (IF) Stage
// File         : if_stage.v
// Author       : Nandish Reddy L
//
// Description  :
//   Instruction Fetch Stage
//   - Program Counter
//   - Instruction Memory
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module if_stage
(
    //----------------------------------------------------------------------
    // Inputs
    //----------------------------------------------------------------------

    input  wire                     clk,
    input  wire                     rst_n,

    input  wire                     pc_write,

    input  wire                     branch_taken,
    input  wire [`XLEN-1:0]         branch_target,

    //----------------------------------------------------------------------
    // Outputs
    //----------------------------------------------------------------------

    output wire [`XLEN-1:0]         pc,
    output wire [`INSTR_WIDTH-1:0]  instruction,
    output wire [`XLEN-1:0]         pc_plus4
);

    //----------------------------------------------------------------------
    // Internal Signals
    //----------------------------------------------------------------------

    wire [`XLEN-1:0] next_pc;

    //----------------------------------------------------------------------
    // Next PC Logic
    //----------------------------------------------------------------------

    assign pc_plus4 = pc + 32'd4;

    assign next_pc = (branch_taken) ? branch_target : pc_plus4;

    //----------------------------------------------------------------------
    // Program Counter
    //----------------------------------------------------------------------

    pc u_pc
    (
        .clk        (clk),
        .rst_n      (rst_n),
        .pc_write   (pc_write),
        .next_pc    (next_pc),
        .pc         (pc)
    );

    //----------------------------------------------------------------------
    // Instruction Memory
    //----------------------------------------------------------------------

   instruction_memory u_instruction_memory
(
    .pc             (pc),
    .instruction    (instruction)
);

endmodule

`default_nettype wire