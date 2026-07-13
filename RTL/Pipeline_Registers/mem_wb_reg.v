//==============================================================================
// Project      : VORTEX_RV
// Module       : MEM/WB Pipeline Register
// File         : mem_wb_reg.v
// Author       : Nandish Reddy L
//
// Description  :
//   Pipeline register between Memory (MEM)
//   and Write Back (WB) stages.
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module mem_wb_reg
(
    //----------------------------------------------------------------------
    // Inputs
    //----------------------------------------------------------------------

    input  wire                     clk,
    input  wire                     rst_n,
    input  wire                     flush,

    //----------------------------------------------------------------------
    // Data Signals
    //----------------------------------------------------------------------

    input  wire [`XLEN-1:0]         read_data_in,
    input  wire [`XLEN-1:0]         alu_result_in,

    //----------------------------------------------------------------------
    // Register Number
    //----------------------------------------------------------------------

    input  wire [4:0]               rd_in,

    //----------------------------------------------------------------------
    // Control Signals
    //----------------------------------------------------------------------

    input  wire                     RegWrite_in,
    input  wire                     MemToReg_in,

    //----------------------------------------------------------------------
    // Outputs
    //----------------------------------------------------------------------

    output reg  [`XLEN-1:0]         read_data_out,
    output reg  [`XLEN-1:0]         alu_result_out,

    output reg  [4:0]               rd_out,

    output reg                      RegWrite_out,
    output reg                      MemToReg_out
);

always @(posedge clk or negedge rst_n)
begin
    if (!rst_n)
    begin
        read_data_out  <= {`XLEN{1'b0}};
        alu_result_out <= {`XLEN{1'b0}};

        rd_out         <= 5'd0;

        RegWrite_out   <= 1'b0;
        MemToReg_out   <= 1'b0;
    end
    else if (flush)
    begin
        read_data_out  <= {`XLEN{1'b0}};
        alu_result_out <= {`XLEN{1'b0}};

        rd_out         <= 5'd0;

        RegWrite_out   <= 1'b0;
        MemToReg_out   <= 1'b0;
    end
    else
    begin
        read_data_out  <= read_data_in;
        alu_result_out <= alu_result_in;

        rd_out         <= rd_in;

        RegWrite_out   <= RegWrite_in;
        MemToReg_out   <= MemToReg_in;
    end
end

endmodule

`default_nettype wire