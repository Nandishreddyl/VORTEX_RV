//==============================================================================
// Project      : VORTEX_RV
// Module       : EX/MEM Pipeline Register
// File         : ex_mem_reg.v
// Author       : Nandish Reddy L
//
// Description  :
//   Pipeline register between Execute (EX)
//   and Memory (MEM) stages.
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module ex_mem_reg
(
    input  wire                     clk,
    input  wire                     rst_n,
    input  wire                     flush,

    //----------------------------------------------------------------------
    // Data Signals
    //----------------------------------------------------------------------

    input  wire [`XLEN-1:0]         alu_result_in,
    input  wire [`XLEN-1:0]         store_data_in,
    input  wire [`XLEN-1:0]         branch_target_in,

    //----------------------------------------------------------------------
    // Status Signals
    //----------------------------------------------------------------------

    input  wire                     zero_flag_in,
    input  wire                     branch_taken_in,

    //----------------------------------------------------------------------
    // Register Number
    //----------------------------------------------------------------------

    input  wire [4:0]               rd_in,

    //----------------------------------------------------------------------
    // Control Signals
    //----------------------------------------------------------------------

    input  wire                     RegWrite_in,
    input  wire                     MemRead_in,
    input  wire                     MemWrite_in,
    input  wire                     MemToReg_in,

    //----------------------------------------------------------------------
    // Outputs
    //----------------------------------------------------------------------

    output reg  [`XLEN-1:0]         alu_result_out,
    output reg  [`XLEN-1:0]         store_data_out,
    output reg  [`XLEN-1:0]         branch_target_out,

    output reg                      zero_flag_out,
    output reg                      branch_taken_out,

    output reg  [4:0]               rd_out,

    output reg                      RegWrite_out,
    output reg                      MemRead_out,
    output reg                      MemWrite_out,
    output reg                      MemToReg_out
);

always @(posedge clk or negedge rst_n)
begin

    // Asynchronous Reset
    if (!rst_n)
    begin
        alu_result_out    <= {`XLEN{1'b0}};
        store_data_out    <= {`XLEN{1'b0}};
        branch_target_out <= {`XLEN{1'b0}};

        zero_flag_out     <= 1'b0;
        branch_taken_out  <= 1'b0;

        rd_out            <= 5'd0;

        RegWrite_out      <= 1'b0;
        MemRead_out       <= 1'b0;
        MemWrite_out      <= 1'b0;
        MemToReg_out      <= 1'b0;
    end

    // Synchronous Flush
    else if (flush)
    begin
        alu_result_out    <= {`XLEN{1'b0}};
        store_data_out    <= {`XLEN{1'b0}};
        branch_target_out <= {`XLEN{1'b0}};

        zero_flag_out     <= 1'b0;
        branch_taken_out  <= 1'b0;

        rd_out            <= 5'd0;

        RegWrite_out      <= 1'b0;
        MemRead_out       <= 1'b0;
        MemWrite_out      <= 1'b0;
        MemToReg_out      <= 1'b0;
    end

    // Normal Pipeline Operation
    else
    begin
        alu_result_out    <= alu_result_in;
        store_data_out    <= store_data_in;
        branch_target_out <= branch_target_in;

        zero_flag_out     <= zero_flag_in;
        branch_taken_out  <= branch_taken_in;

        rd_out            <= rd_in;

        RegWrite_out      <= RegWrite_in;
        MemRead_out       <= MemRead_in;
        MemWrite_out      <= MemWrite_in;
        MemToReg_out      <= MemToReg_in;
    end

end

endmodule

`default_nettype wire