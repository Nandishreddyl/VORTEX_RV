//==============================================================================
// Project      : VORTEX_RV
// Module       : Instruction Memory
// File         : instruction_memory.v
// Author       : Nandish Reddy L
//
// Description  :
//   Read-only instruction memory.
//   Instructions are loaded using $readmemh().
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module instruction_memory
(
    input  wire [`XLEN-1:0] pc,

    output wire [`INSTR_WIDTH-1:0] instruction
);

    //--------------------------------------------------------------------------
    // Instruction Memory
    //--------------------------------------------------------------------------

    reg [`INSTR_WIDTH-1:0] memory [0:`IMEM_DEPTH-1];

    integer i;

//----------------------------------------------------------
// Load Program
//----------------------------------------------------------

`ifndef SYNTHESIS
initial begin
    $readmemh("../final_verification_test.mem", memory);
end
`endif


    assign instruction = memory[pc[9:2]];

    

endmodule

`default_nettype wire