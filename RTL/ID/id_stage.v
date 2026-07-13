//==============================================================================
// Project      : VORTEX_RV
// Module       : Instruction Decode (ID) Stage
// File         : id_stage.v
// Author       : Nandish Reddy L
//
// Description  :
//   Integrates:
//      - Register File
//      - Control Unit
//      - Immediate Generator
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module id_stage
(
    input  wire                     clk,
    input  wire                     rst_n,

    input  wire [`INSTR_WIDTH-1:0]  instruction,

    // Write Back Interface
    input  wire                     wb_reg_write,
    input  wire [4:0]               wb_rd,
    input  wire [`XLEN-1:0]         wb_write_data,

    // Register File Outputs
    output wire [`XLEN-1:0]         rs1_data,
    output wire [`XLEN-1:0]         rs2_data,

    // Immediate
    output wire [`XLEN-1:0]         immediate,

    // Register Addresses
    output wire [4:0]               rs1,
    output wire [4:0]               rs2,
    output wire [4:0]               rd,

    // Function Fields
    output wire [2:0]               funct3,
    output wire [6:0]               funct7,

    // Control Signals
    output wire                     RegWrite,
    output wire                     MemRead,
    output wire                     MemWrite,
    output wire                     MemToReg,
    output wire                     ALUSrc,
    output wire                     Branch,
    output wire                     Jump,
    output wire [1:0]               ALUOp
);

    //----------------------------------------------------------------------
    // Instruction Fields
    //----------------------------------------------------------------------

    assign rs1    = instruction[19:15];
    assign rs2    = instruction[24:20];
    assign rd     = instruction[11:7];

    assign funct3 = instruction[14:12];
    assign funct7 = instruction[31:25];

    //----------------------------------------------------------------------
    // Register File
    //----------------------------------------------------------------------

    register_file u_register_file
    (
        .clk         (clk),
        .rst_n       (rst_n),

        .reg_write   (wb_reg_write),

        .rs1         (rs1),
        .rs2         (rs2),
        .rd          (wb_rd),

        .write_data  (wb_write_data),

        .read_data1  (rs1_data),
        .read_data2  (rs2_data)
    );

    //----------------------------------------------------------------------
    // Control Unit
    //----------------------------------------------------------------------

    control_unit u_control_unit
    (
        .opcode      (instruction[6:0]),

        .RegWrite    (RegWrite),
        .MemRead     (MemRead),
        .MemWrite    (MemWrite),
        .MemToReg    (MemToReg),
        .ALUSrc      (ALUSrc),
        .Branch      (Branch),
        .Jump        (Jump),
        .ALUOp       (ALUOp)
    );

    //----------------------------------------------------------------------
    // Immediate Generator
    //----------------------------------------------------------------------

    immediate_generator u_immediate_generator
    (
        .instruction (instruction),
        .immediate   (immediate)
    );

endmodule

`default_nettype wire