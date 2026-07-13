//==============================================================================
// Project      : VORTEX_RV
// Module       : ID/EX Pipeline Register
// File         : id_ex_reg.v
// Author       : Nandish Reddy L
//
// Description  :
//   Pipeline register between the Instruction Decode (ID)
//   and Execute (EX) stages.
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module id_ex_reg
(
    input  wire                     clk,
    input  wire                     rst_n,
    input  wire                     flush,

    // Data Signals
    input  wire [`XLEN-1:0]         pc_in,
    input  wire [`XLEN-1:0]         rs1_data_in,
    input  wire [`XLEN-1:0]         rs2_data_in,
    input  wire [`XLEN-1:0]         immediate_in,

    // Register Numbers
    input  wire [4:0]               rs1_in,
    input  wire [4:0]               rs2_in,
    input  wire [4:0]               rd_in,

    // Instruction Fields
    input  wire [2:0]               funct3_in,
    input  wire [6:0]               funct7_in,

    // Control Signals
    input  wire                     RegWrite_in,
    input  wire                     MemRead_in,
    input  wire                     MemWrite_in,
    input  wire                     MemToReg_in,
    input  wire                     ALUSrc_in,
    input  wire                     Branch_in,
    input  wire                     Jump_in,
    input  wire [1:0]               ALUOp_in,

    // Data Signals
    output reg  [`XLEN-1:0]         pc_out,
    output reg  [`XLEN-1:0]         rs1_data_out,
    output reg  [`XLEN-1:0]         rs2_data_out,
    output reg  [`XLEN-1:0]         immediate_out,

    // Register Numbers
    output reg  [4:0]               rs1_out,
    output reg  [4:0]               rs2_out,
    output reg  [4:0]               rd_out,

    // Instruction Fields
    output reg  [2:0]               funct3_out,
    output reg  [6:0]               funct7_out,

    // Control Signals
    output reg                      RegWrite_out,
    output reg                      MemRead_out,
    output reg                      MemWrite_out,
    output reg                      MemToReg_out,
    output reg                      ALUSrc_out,
    output reg                      Branch_out,
    output reg                      Jump_out,
    output reg  [1:0]               ALUOp_out
);

always @(posedge clk or negedge rst_n)
begin
    if (!rst_n)
    begin
        pc_out         <= {`XLEN{1'b0}};
        rs1_data_out   <= {`XLEN{1'b0}};
        rs2_data_out   <= {`XLEN{1'b0}};
        immediate_out  <= {`XLEN{1'b0}};

        rs1_out        <= 5'd0;
        rs2_out        <= 5'd0;
        rd_out         <= 5'd0;

        funct3_out     <= 3'd0;
        funct7_out     <= 7'd0;

        RegWrite_out   <= 1'b0;
        MemRead_out    <= 1'b0;
        MemWrite_out   <= 1'b0;
        MemToReg_out   <= 1'b0;
        ALUSrc_out     <= 1'b0;
        Branch_out     <= 1'b0;
        Jump_out       <= 1'b0;
        ALUOp_out      <= 2'b00;
    end
    else if (flush)
    begin
        pc_out         <= {`XLEN{1'b0}};
        rs1_data_out   <= {`XLEN{1'b0}};
        rs2_data_out   <= {`XLEN{1'b0}};
        immediate_out  <= {`XLEN{1'b0}};

        rs1_out        <= 5'd0;
        rs2_out        <= 5'd0;
        rd_out         <= 5'd0;

        funct3_out     <= 3'd0;
        funct7_out     <= 7'd0;

        RegWrite_out   <= 1'b0;
        MemRead_out    <= 1'b0;
        MemWrite_out   <= 1'b0;
        MemToReg_out   <= 1'b0;
        ALUSrc_out     <= 1'b0;
        Branch_out     <= 1'b0;
        Jump_out       <= 1'b0;
        ALUOp_out      <= 2'b00;
    end
    else
    begin
        pc_out         <= pc_in;
        rs1_data_out   <= rs1_data_in;
        rs2_data_out   <= rs2_data_in;
        immediate_out  <= immediate_in;

        rs1_out        <= rs1_in;
        rs2_out        <= rs2_in;
        rd_out         <= rd_in;

        funct3_out     <= funct3_in;
        funct7_out     <= funct7_in;

        RegWrite_out   <= RegWrite_in;
        MemRead_out    <= MemRead_in;
        MemWrite_out   <= MemWrite_in;
        MemToReg_out   <= MemToReg_in;
        ALUSrc_out     <= ALUSrc_in;
        Branch_out     <= Branch_in;
        Jump_out       <= Jump_in;
        ALUOp_out      <= ALUOp_in;
    end
end

endmodule

`default_nettype wire