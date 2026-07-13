//==============================================================================
// Project      : VORTEX_RV
// Module       : Forwarding Unit
// File         : forwarding_unit.v
// Author       : Nandish Reddy L
//
// Description  :
//   Detects RAW data hazards and selects forwarded operands
//   for the ALU.
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

module forwarding_unit
(
    input  wire [4:0] rs1,
    input  wire [4:0] rs2,

    input  wire       ex_mem_RegWrite,
    input  wire [4:0] ex_mem_rd,

    input  wire       mem_wb_RegWrite,
    input  wire [4:0] mem_wb_rd,

    output reg  [1:0] forward_a,
    output reg  [1:0] forward_b
);

always @(*)
begin

    //----------------------------------------------------------------------
    // Default
    //----------------------------------------------------------------------

    forward_a = 2'b00;
    forward_b = 2'b00;

    //----------------------------------------------------------------------
    // Forward Operand A
    //----------------------------------------------------------------------

    if (ex_mem_RegWrite &&
        (ex_mem_rd != 5'd0) &&
        (ex_mem_rd == rs1))
    begin
        forward_a = 2'b10;
    end
    else if (mem_wb_RegWrite &&
             (mem_wb_rd != 5'd0) &&
             (mem_wb_rd == rs1))
    begin
        forward_a = 2'b01;
    end

    //----------------------------------------------------------------------
    // Forward Operand B
    //----------------------------------------------------------------------

    if (ex_mem_RegWrite &&
        (ex_mem_rd != 5'd0) &&
        (ex_mem_rd == rs2))
    begin
        forward_b = 2'b10;
    end
    else if (mem_wb_RegWrite &&
             (mem_wb_rd != 5'd0) &&
             (mem_wb_rd == rs2))
    begin
        forward_b = 2'b01;
    end

end

endmodule

`default_nettype wire