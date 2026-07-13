//==============================================================================
// Project      : VORTEX_RV
// Module       : Hazard Detection Unit
// File         : hazard_detection_unit.v
// Author       : Nandish Reddy L
//
// Description  :
//   Detects Load-Use hazards and generates pipeline stall signals.
//==============================================================================

`timescale 1ns / 1ps
`default_nettype none

module hazard_detection_unit
(
    //----------------------------------------------------------------------
    // Inputs
    //----------------------------------------------------------------------

    input  wire        id_ex_MemRead,

    input  wire [4:0]  id_ex_rd,

    input  wire [4:0]  if_id_rs1,
    input  wire [4:0]  if_id_rs2,

    //----------------------------------------------------------------------
    // Outputs
    //----------------------------------------------------------------------

    output reg         pc_write,
    output reg         if_id_write,
    output reg         id_ex_flush
);

always @(*)
begin

    //----------------------------------------------------------------------
    // Default
    //----------------------------------------------------------------------

    pc_write    = 1'b1;
    if_id_write = 1'b1;
    id_ex_flush = 1'b0;

    //----------------------------------------------------------------------
    // Load-Use Hazard
    //----------------------------------------------------------------------

    if ( id_ex_MemRead &&
         (id_ex_rd != 5'd0) &&
         (
            (id_ex_rd == if_id_rs1) ||
            (id_ex_rd == if_id_rs2)
         )
       )
    begin
        pc_write    = 1'b0;
        if_id_write = 1'b0;
        id_ex_flush = 1'b1;
    end

end

endmodule

`default_nettype wire