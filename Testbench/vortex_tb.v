//==============================================================================
// Project      : VORTEX_RV
// Module       : Testbench
// File         : vortex_tb.v
// Author       : Nandish Reddy L
//
// Description  :
//   Testbench for the VORTEX_RV 5-Stage Pipeline Processor.
//
//   Part 1
//      - Clock Generation
//      - Reset Generation
//      - DUT Instantiation
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "vortex_rv_defines.vh"

module vortex_tb;

    //==========================================================================
    // Clock and Reset
    //==========================================================================

    reg clk;
    reg rst_n;

    //==========================================================================
    // Debug Signals
    //==========================================================================

    wire [`XLEN-1:0]        debug_pc;
    wire [`INSTR_WIDTH-1:0] debug_instruction;
    wire [`XLEN-1:0]        debug_alu_result;

    //==========================================================================
    // Device Under Test (DUT)
    //==========================================================================

    vortex_top dut
    (
        .clk               (clk),
        .rst_n             (rst_n),

        .debug_pc          (debug_pc),
        .debug_instruction (debug_instruction),
        .debug_alu_result  (debug_alu_result)
    );

    //==========================================================================
    // Clock Generation
    // 100 MHz Clock
    // Period = 10 ns
    //==========================================================================

    initial
    begin
        clk = 1'b0;

        forever
            #5 clk = ~clk;
    end

    //==========================================================================
    // Reset Generation
    //==========================================================================

    initial
    begin
        rst_n = 1'b0;

        #20;

        rst_n = 1'b1;
    end

    //==========================================================================
    // Waveform Dump
    //==========================================================================

    initial
    begin
        $dumpfile("vortex_tb.vcd");
        $dumpvars(0, vortex_tb);
    end

    //==========================================================================
    // Simulation Control
    //==========================================================================

    initial
    begin
        $display("==============================================");
        $display("      VORTEX_RV Simulation Started");
        $display("==============================================");

        #500;

        $display("==============================================");
        $display("      Simulation Finished");
        $display("==============================================");

        $finish;
    end

    //==========================================================================
// Console Monitor
// Displays processor activity every clock cycle
//==========================================================================

initial
begin

    $display("==============================================================================================");
    $display(" Time\tPC\t\tInstruction\tALU Result");
    $display("==============================================================================================");

    forever
    begin
        @(posedge clk);

        if (rst_n)
        begin
              $display("--------------------------------------------------------------------------------");

        $display("Cycle : %0t", $time);

        $display("PC          : %h", debug_pc);

        $display("Instruction : %h", debug_instruction);

        $display("ALU Result  : %h", debug_alu_result);

        end
    end

end
endmodule

`default_nettype wire