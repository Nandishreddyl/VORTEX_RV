//==============================================================================
// Project      : VORTEX_RV
// Module       : Program Counter (PC)
// File         : pc.v
// Author       : Nandish Reddy L
//
// Description  :
//   Program Counter
//   - Reset to RESET_PC
//   - Supports pipeline stall through pc_write
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module pc
(
    input  wire                 clk,
    input  wire                 rst_n,

    input  wire                 pc_write,

    input  wire [`XLEN-1:0]     next_pc,

    output reg  [`XLEN-1:0]     pc
);

always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        pc <= `RESET_PC;

    else if(pc_write)
begin
    if (pc >= 32'h00000050)
        pc <= pc;          // Hold PC after last instruction
    else
        pc <= next_pc;
end

else
    pc <= pc;      // Hold PC during stall
end

endmodule

`default_nettype wire              