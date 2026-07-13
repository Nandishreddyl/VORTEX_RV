//==============================================================================
// Project      : VORTEX_RV
// Module       : Register File
// File         : register_file.v
// Author       : Nandish Reddy L
//
// Description  :
//   32 x 32-bit Register File
//   - Two asynchronous read ports
//   - One synchronous write port
//   - Register x0 is hardwired to zero
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

`include "../Include/vortex_rv_defines.vh"

module register_file
(
    input  wire                     clk,
    input  wire                     rst_n,

    input  wire                     reg_write,

    input  wire [4:0]               rs1,
    input  wire [4:0]               rs2,
    input  wire [4:0]               rd,

    input  wire [`XLEN-1:0]         write_data,

    output wire [`XLEN-1:0]         read_data1,
    output wire [`XLEN-1:0]         read_data2
);

    //--------------------------------------------------------------------------
    // Register File
    //--------------------------------------------------------------------------

    reg [`XLEN-1:0] registers [0:31];

    integer i;

    //--------------------------------------------------------------------------
    // Register Write
    //--------------------------------------------------------------------------

    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n)
        begin
            for (i = 0; i < 32; i = i + 1)
                registers[i] <= {`XLEN{1'b0}};
        end
        else if (reg_write && (rd != 5'd0))
        begin
            registers[rd] <= write_data;
          //  $display("--------------------------------");
//$display("Register Write");
//$display("x%0d <= %h", rd, write_data);
//$display("--------------------------------");
        end
    end

    //--------------------------------------------------------------------------
    // Register Read (Combinational)
    //--------------------------------------------------------------------------

    assign read_data1 = (rs1 == 5'd0) ? {`XLEN{1'b0}} : registers[rs1];

    assign read_data2 = (rs2 == 5'd0) ? {`XLEN{1'b0}} : registers[rs2];

endmodule

`default_nettype wire