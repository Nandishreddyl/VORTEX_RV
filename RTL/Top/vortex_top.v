//==============================================================================
// Project      : VORTEX_RV
// Module       : Top Module
// File         : vortex_top.v
// Author       : Nandish Reddy L
//
// Description  :
//   Top-level integration of the 5-Stage Pipelined RISC-V Processor
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module vortex_top
(
    //----------------------------------------------------------------------
    // Inputs
    //----------------------------------------------------------------------

    input  wire clk,
    input  wire rst_n,
     output wire [`XLEN-1:0]         debug_pc,
    output wire [`INSTR_WIDTH-1:0]  debug_instruction,
    output wire [`XLEN-1:0]         debug_alu_result
);

    //==========================================================================
    // IF Stage Signals
    //==========================================================================

    wire [`XLEN-1:0]        if_pc;
    wire [`XLEN-1:0]        if_pc_plus4;
    wire [`INSTR_WIDTH-1:0] if_instruction;

    wire                    pc_write;

    //==========================================================================
    // IF/ID Register Signals
    //==========================================================================

    wire [`XLEN-1:0]        id_pc;
    wire [`INSTR_WIDTH-1:0] id_instruction;

    wire                    if_id_write;

    //==========================================================================
    // Branch Signals
    //==========================================================================

    wire                    branch_taken;
    wire [`XLEN-1:0]        branch_target;

    //==========================================================================
    // IF Stage
    //==========================================================================

    if_stage u_if_stage
(
    .clk(clk),
    .rst_n(rst_n),
    .pc_write(pc_write),

    .branch_taken(branch_taken),
    .branch_target(branch_target),

    .pc(if_pc),
    .instruction(if_instruction),
    .pc_plus4(if_pc_plus4)
);

    //==========================================================================
    // IF/ID Pipeline Register
    //==========================================================================

    if_id_reg u_if_id_reg
    (
        .clk            (clk),
        .rst_n          (rst_n),

        .write_enable   (if_id_write),
        .flush          (branch_taken),

        .pc_in          (if_pc),
        .instruction_in (if_instruction),

        .pc_out         (id_pc),
        .instruction_out(id_instruction)
    );

    //==========================================================================
    // Remaining stages will be added in the next steps
    //==========================================================================


    //==========================================================================
    // ID Stage Signals
    //==========================================================================

    wire [`XLEN-1:0] id_rs1_data;
    wire [`XLEN-1:0] id_rs2_data;
    wire [`XLEN-1:0] id_immediate;

    wire [4:0] id_rs1;
    wire [4:0] id_rs2;
    wire [4:0] id_rd;

    wire [2:0] id_funct3;
    wire [6:0] id_funct7;

    wire        id_RegWrite;
    wire        id_MemRead;
    wire        id_MemWrite;
    wire        id_MemToReg;
    wire        id_ALUSrc;
    wire        id_Branch;
    wire        id_Jump;

    wire [1:0]  id_ALUOp;

    //==========================================================================
    // Hazard Detection Signals
    //==========================================================================

    wire id_ex_flush;

    //==========================================================================
    // ID/EX Register Signals
    //==========================================================================

    wire [`XLEN-1:0] ex_pc;
    wire [`XLEN-1:0] ex_rs1_data;
    wire [`XLEN-1:0] ex_rs2_data;
    wire [`XLEN-1:0] ex_immediate;

    wire [4:0] ex_rs1;
    wire [4:0] ex_rs2;
    wire [4:0] ex_rd;

    wire [2:0] ex_funct3;
    wire [6:0] ex_funct7;

    wire ex_RegWrite;
    wire ex_MemRead;
    wire ex_MemWrite;
    wire ex_MemToReg;
    wire ex_ALUSrc;
    wire ex_Branch;
    wire ex_Jump;

    wire [1:0] ex_ALUOp;

    //==========================================================================
    // ID Stage
    //==========================================================================

    id_stage u_id_stage
    (
        .clk            (clk),
        .rst_n          (rst_n),

        .instruction    (id_instruction),

        // Write Back Interface
        .wb_reg_write   (wb_RegWrite),
        .wb_rd          (wb_rd),
        .wb_write_data  (wb_write_data),

        // Outputs
        .rs1_data       (id_rs1_data),
        .rs2_data       (id_rs2_data),

        .immediate      (id_immediate),

        .rs1            (id_rs1),
        .rs2            (id_rs2),
        .rd             (id_rd),

        .funct3         (id_funct3),
        .funct7         (id_funct7),

        .RegWrite       (id_RegWrite),
        .MemRead        (id_MemRead),
        .MemWrite       (id_MemWrite),
        .MemToReg       (id_MemToReg),
        .ALUSrc         (id_ALUSrc),
        .Branch         (id_Branch),
        .Jump           (id_Jump),
        .ALUOp          (id_ALUOp)
    );

    //==========================================================================
    // Hazard Detection Unit
    //==========================================================================

    hazard_detection_unit u_hazard_detection
    (
        .id_ex_MemRead  (ex_MemRead),

        .id_ex_rd       (ex_rd),

        .if_id_rs1      (id_rs1),
        .if_id_rs2      (id_rs2),

        .pc_write       (pc_write),
        .if_id_write    (if_id_write),
        .id_ex_flush    (id_ex_flush)
    );

    //==========================================================================
    // ID/EX Pipeline Register
    //==========================================================================

    id_ex_reg u_id_ex_reg
    (
        .clk            (clk),
        .rst_n          (rst_n),
        .flush          (id_ex_flush),

        .pc_in          (id_pc),

        .rs1_data_in    (id_rs1_data),
        .rs2_data_in    (id_rs2_data),

        .immediate_in   (id_immediate),

        .rs1_in         (id_rs1),
        .rs2_in         (id_rs2),
        .rd_in          (id_rd),

        .funct3_in      (id_funct3),
        .funct7_in      (id_funct7),

        .RegWrite_in    (id_RegWrite),
        .MemRead_in     (id_MemRead),
        .MemWrite_in    (id_MemWrite),
        .MemToReg_in    (id_MemToReg),
        .ALUSrc_in      (id_ALUSrc),
        .Branch_in      (id_Branch),
        .Jump_in        (id_Jump),
        .ALUOp_in       (id_ALUOp),

        .pc_out         (ex_pc),

        .rs1_data_out   (ex_rs1_data),
        .rs2_data_out   (ex_rs2_data),

        .immediate_out  (ex_immediate),

        .rs1_out        (ex_rs1),
        .rs2_out        (ex_rs2),
        .rd_out         (ex_rd),

        .funct3_out     (ex_funct3),
        .funct7_out     (ex_funct7),

        .RegWrite_out   (ex_RegWrite),
        .MemRead_out    (ex_MemRead),
        .MemWrite_out   (ex_MemWrite),
        .MemToReg_out   (ex_MemToReg),
        .ALUSrc_out     (ex_ALUSrc),
        .Branch_out     (ex_Branch),
        .Jump_out       (ex_Jump),
        .ALUOp_out      (ex_ALUOp)
    );







    //==========================================================================
    // EX Stage Signals
    //==========================================================================

    wire [1:0] ex_forward_a;
    wire [1:0] ex_forward_b;

    wire [`XLEN-1:0] ex_alu_result;
    wire [`XLEN-1:0] ex_store_data;
    wire [`XLEN-1:0] ex_branch_target;

    wire ex_zero_flag;
    wire ex_branch_taken;

    //==========================================================================
    // EX/MEM Register Signals
    //==========================================================================

    wire [`XLEN-1:0] mem_alu_result;
    wire [`XLEN-1:0] mem_store_data;
    wire [`XLEN-1:0] mem_branch_target;

    wire mem_zero_flag;
    wire mem_branch_taken;

    wire [4:0] mem_rd;

    wire mem_RegWrite;
    wire mem_MemRead;
    wire mem_MemWrite;
    wire mem_MemToReg;

    //==========================================================================
    // MEM/WB Signals
    //==========================================================================

    wire [`XLEN-1:0] wb_read_data;
    wire [`XLEN-1:0] wb_alu_result;

    wire [4:0]       wb_rd;

    wire             wb_RegWrite;
    wire             wb_MemToReg;

    wire [`XLEN-1:0] wb_write_data;

    //==========================================================
// Outputs of MEM Stage (Before MEM/WB Register)
//==========================================================

wire [`XLEN-1:0] mem_read_data;
wire [`XLEN-1:0] mem_alu_result_wb;

wire [4:0]       mem_rd_wb;

wire             mem_RegWrite_wb;
wire             mem_MemToReg_wb;

        //==========================================================================
    // Forwarding Unit
    //==========================================================================

    forwarding_unit u_forwarding_unit
    (
        .rs1                (ex_rs1),
        .rs2                (ex_rs2),

        .ex_mem_RegWrite    (mem_RegWrite),
        .ex_mem_rd          (mem_rd),

        .mem_wb_RegWrite    (wb_RegWrite),
        .mem_wb_rd          (wb_rd),

        .forward_a          (ex_forward_a),
        .forward_b          (ex_forward_b)
    );

wire        ex_RegWrite_out;
wire        ex_MemRead_out;
wire        ex_MemWrite_out;
wire        ex_MemToReg_out;

wire [4:0]  ex_rd_out;
        //==========================================================================
    // Execute Stage
    //==========================================================================

    ex_stage u_ex_stage
    (
        .pc                 (ex_pc),

        .rs1_data           (ex_rs1_data),
        .rs2_data           (ex_rs2_data),

        .immediate          (ex_immediate),

        .rs1                (ex_rs1),
        .rs2                (ex_rs2),
        .rd                 (ex_rd),

        .funct3             (ex_funct3),
        .funct7             (ex_funct7),

        .ALUSrc             (ex_ALUSrc),
        .Branch             (ex_Branch),
        .Jump               (ex_Jump),

        .ALUOp              (ex_ALUOp),

        .RegWrite           (ex_RegWrite),
        .MemRead            (ex_MemRead),
        .MemWrite           (ex_MemWrite),
        .MemToReg           (ex_MemToReg),

        .forward_a          (ex_forward_a),
        .forward_b          (ex_forward_b),

        .ex_mem_result      (mem_alu_result),
        .wb_result          (wb_write_data),

        .alu_result_out     (ex_alu_result),
        .store_data         (ex_store_data),
        .branch_target      (ex_branch_target),

        .zero_flag          (ex_zero_flag),
        .branch_taken       (ex_branch_taken),

        .rd_out             (ex_rd_out),

.RegWrite_out       (ex_RegWrite_out),
.MemRead_out        (ex_MemRead_out),
.MemWrite_out       (ex_MemWrite_out),
.MemToReg_out       (ex_MemToReg_out)
    );


        //==========================================================================
    // EX/MEM Pipeline Register
    //==========================================================================

  ex_mem_reg u_ex_mem_reg
(
    .clk                (clk),
    .rst_n              (rst_n),

    .flush              (branch_taken),

    .alu_result_in      (ex_alu_result),
    .store_data_in      (ex_store_data),
    .branch_target_in   (ex_branch_target),

    .zero_flag_in       (ex_zero_flag),
    .branch_taken_in    (ex_branch_taken),

    .rd_in              (ex_rd_out),

    .RegWrite_in        (ex_RegWrite_out),
    .MemRead_in         (ex_MemRead_out),
    .MemWrite_in        (ex_MemWrite_out),
    .MemToReg_in        (ex_MemToReg_out),

    .alu_result_out     (mem_alu_result),
    .store_data_out     (mem_store_data),
    .branch_target_out  (mem_branch_target),

    .zero_flag_out      (mem_zero_flag),
    .branch_taken_out   (mem_branch_taken),

    .rd_out             (mem_rd),

    .RegWrite_out       (mem_RegWrite),
    .MemRead_out        (mem_MemRead),
    .MemWrite_out       (mem_MemWrite),
    .MemToReg_out       (mem_MemToReg)
);

assign branch_taken  = ex_branch_taken;
assign branch_target = ex_branch_target;
    //==========================================================================
    // MEM/WB Register Signals
    //==========================================================================

    wire [`XLEN-1:0] memwb_read_data;
    wire [`XLEN-1:0] memwb_alu_result;

    wire [4:0]       memwb_rd;

    wire             memwb_RegWrite;
    wire             memwb_MemToReg;

    //==========================================================================
    // Memory Stage
    //==========================================================================

    mem_stage u_mem_stage
    (
        .clk            (clk),

        .alu_result     (mem_alu_result),
        .store_data     (mem_store_data),

        .MemRead        (mem_MemRead),
        .MemWrite       (mem_MemWrite),

        .RegWrite       (mem_RegWrite),
        .MemToReg       (mem_MemToReg),

        .rd             (mem_rd),

       .read_data      (mem_read_data),

.alu_result_out (mem_alu_result_wb),

.RegWrite_out   (mem_RegWrite_wb),

.MemToReg_out   (mem_MemToReg_wb),

.rd_out         (mem_rd_wb)
    );

        //==========================================================================
    // MEM/WB Pipeline Register
    //==========================================================================

    mem_wb_reg u_mem_wb_reg
    (
        .clk            (clk),
        .rst_n          (rst_n),

        .flush          (1'b0),

        .read_data_in   (mem_read_data),

.alu_result_in  (mem_alu_result_wb),

.rd_in          (mem_rd_wb),

.RegWrite_in    (mem_RegWrite_wb),

.MemToReg_in    (mem_MemToReg_wb),

        .read_data_out  (memwb_read_data),
        .alu_result_out (memwb_alu_result),

        .rd_out         (memwb_rd),

        .RegWrite_out   (memwb_RegWrite),
        .MemToReg_out   (memwb_MemToReg)
    );


    //==========================================================================
    // Write Back Stage
    //==========================================================================

    wb_stage u_wb_stage
    (
        .read_data      (memwb_read_data),
        .alu_result     (memwb_alu_result),

        .MemToReg       (memwb_MemToReg),
        .RegWrite       (memwb_RegWrite),

        .rd             (memwb_rd),

        .write_back_data(wb_write_data),

        .RegWrite_out   (wb_RegWrite),

        .rd_out         (wb_rd)
    );

     assign debug_pc          = if_pc;

    assign debug_instruction = if_instruction;

   assign debug_alu_result = wb_write_data;


endmodule

`default_nettype wire