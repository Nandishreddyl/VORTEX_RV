//==============================================================================
// Project      : VORTEX_RV
// Module       : Data Memory
// File         : data_memory.v
// Author       : Nandish Reddy L
//
// Description  :
//   256 x 32-bit Data Memory
//   Supports:
//      - LW
//      - SW
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module data_memory
(
    input  wire                     clk,

    input  wire                     MemRead,
    input  wire                     MemWrite,

    input  wire [`XLEN-1:0]         address,
    input  wire [`XLEN-1:0]         write_data,

    output wire [`XLEN-1:0]         read_data
);

    //--------------------------------------------------------------------------
    // Data Memory
    //--------------------------------------------------------------------------

    reg [`XLEN-1:0] memory [0:`DMEM_DEPTH-1];

integer i;

initial
begin
    for(i = 0; i < `DMEM_DEPTH; i = i + 1)
        memory[i] = {`XLEN{1'b0}};

    // Test value for Load Hazard Verification
    memory[0] = 32'd25;
end

    //--------------------------------------------------------------------------
    // Memory Write
    //--------------------------------------------------------------------------

    always @(posedge clk)
    begin
        if (MemWrite)
            memory[address[9:2]] <= write_data;
    end

    //--------------------------------------------------------------------------
    // Memory Read
    //--------------------------------------------------------------------------

    assign read_data =
        (MemRead) ? memory[address[9:2]] : {`XLEN{1'b0}};

endmodule

`default_nettype wire