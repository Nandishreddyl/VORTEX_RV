//==============================================================================
// Project      : VORTEX_RV
// Module       : Memory (MEM) Stage
// File         : mem_stage.v
// Author       : Nandish Reddy L
//
// Description  :
//   Memory stage of the VORTEX_RV processor.
//   - Instantiates Data Memory
//   - Passes ALU result and control signals to WB stage
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module mem_stage
(
    //----------------------------------------------------------------------
    // Inputs
    //----------------------------------------------------------------------

    input  wire                     clk,

    input  wire [`XLEN-1:0]         alu_result,
    input  wire [`XLEN-1:0]         store_data,

    input  wire                     MemRead,
    input  wire                     MemWrite,

    input  wire                     RegWrite,
    input  wire                     MemToReg,

    input  wire [4:0]               rd,

    //----------------------------------------------------------------------
    // Outputs
    //----------------------------------------------------------------------

    output wire [`XLEN-1:0]         read_data,

    output wire [`XLEN-1:0]         alu_result_out,

    output wire                     RegWrite_out,
    output wire                     MemToReg_out,

    output wire [4:0]               rd_out
);

    //----------------------------------------------------------------------
    // Data Memory
    //----------------------------------------------------------------------

    data_memory u_data_memory
    (
        .clk        (clk),

        .MemRead    (MemRead),
        .MemWrite   (MemWrite),

        .address    (alu_result),
        .write_data (store_data),

        .read_data  (read_data)
    );

    //----------------------------------------------------------------------
    // Pass-through Signals
    //----------------------------------------------------------------------

    assign alu_result_out = alu_result;

    assign rd_out = rd;

    assign RegWrite_out = RegWrite;

    assign MemToReg_out = MemToReg;

endmodule

`default_nettype wire