//==============================================================================
// Project      : VORTEX_RV
// Module       : Write Back (WB) Stage
// File         : wb_stage.v
// Author       : Nandish Reddy L
//
// Description  :
//   Selects the final data to be written back into the register file.
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module wb_stage
(
    //----------------------------------------------------------------------
    // Inputs
    //----------------------------------------------------------------------

    input  wire [`XLEN-1:0] read_data,
    input  wire [`XLEN-1:0] alu_result,

    input  wire             MemToReg,
    input  wire             RegWrite,

    input  wire [4:0]       rd,

    //----------------------------------------------------------------------
    // Outputs
    //----------------------------------------------------------------------

    output wire [`XLEN-1:0] write_back_data,

    output wire             RegWrite_out,

    output wire [4:0]       rd_out
);

    //----------------------------------------------------------------------
    // Write Back Multiplexer
    //----------------------------------------------------------------------

    assign write_back_data =
           (MemToReg) ? read_data : alu_result;

    //----------------------------------------------------------------------
    // Pass-through Signals
    //----------------------------------------------------------------------

    assign RegWrite_out = RegWrite;

    assign rd_out = rd;

endmodule

`default_nettype wire