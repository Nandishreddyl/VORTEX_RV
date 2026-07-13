// This is the unpowered netlist.
module vortex_top (clk,
    rst_n,
    debug_alu_result,
    debug_instruction,
    debug_pc);
 input clk;
 input rst_n;
 output [31:0] debug_alu_result;
 output [31:0] debug_instruction;
 output [31:0] debug_pc;

 wire net68;
 wire net78;
 wire net79;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net69;
 wire net88;
 wire net89;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net70;
 wire net98;
 wire net99;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net36;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net37;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net38;
 wire net66;
 wire net67;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net100;
 wire net101;
 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire clknet_0_clk;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;
 wire net1;
 wire net10;
 wire net102;
 wire net103;
 wire net104;
 wire net105;
 wire net106;
 wire net107;
 wire net108;
 wire net109;
 wire net11;
 wire net110;
 wire net111;
 wire net112;
 wire net113;
 wire net114;
 wire net115;
 wire net116;
 wire net117;
 wire net118;
 wire net119;
 wire net12;
 wire net120;
 wire net121;
 wire net122;
 wire net123;
 wire net124;
 wire net125;
 wire net126;
 wire net127;
 wire net128;
 wire net129;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net2;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net3;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;

 sky130_fd_sc_hd__decap_3 FILLER_0_0_106 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_34 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_62 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_70 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_79 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_83 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_10_123 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_131 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_59 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_10_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_91 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_100 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_127 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_131 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_25 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_37 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_49 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_11_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_72 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_84 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_11_9 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_96 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_103 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_130 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_12_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_6 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_74 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_78 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_85 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_97 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_103 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_110 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_21 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_28 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_36 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_54 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_13_66 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_9 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_95 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_101 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_117 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_59 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_7 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_72 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_80 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_10 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15_103 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_15_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_17 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_46 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_50 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_121 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_130 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_14 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_21 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_16_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_16_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_16_81 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_16_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_97 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_17_102 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_110 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_17_18 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_26 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_35 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_44 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_78 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_90 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_121 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_133 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_18_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_19_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_19_125 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_131 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_18 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_30 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_93 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_1_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_111 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_1_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_119 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_45 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_1_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_71 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_95 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_109 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_20_121 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_21_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_111 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_21_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_22 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_34 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_21_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_93 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_128 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_16 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_34 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_48 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_72 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_76 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_83 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_22_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_90 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_22_97 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_2_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_117 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_123 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_37 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_6 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_3_104 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_108 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_133 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_35 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_55 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_3_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_69 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_9 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_101 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_125 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_131 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_40 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_7 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_78 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_89 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_5_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_125 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_131 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_5_77 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_5_9 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_103 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_6_127 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_131 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_6_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_35 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_47 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_6_74 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_82 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_6_90 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_94 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_7_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_7_17 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_28 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_40 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_52 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_66 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_7_75 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_84 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_89 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_9 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_105 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_8_112 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_8_118 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_124 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_133 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_41 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_8_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_61 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_82 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_103 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_134 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_9_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_42 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_61 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_9_98 ();
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_40 ();
 sky130_fd_sc_hd__decap_3 PHY_41 ();
 sky130_fd_sc_hd__decap_3 PHY_42 ();
 sky130_fd_sc_hd__decap_3 PHY_43 ();
 sky130_fd_sc_hd__decap_3 PHY_44 ();
 sky130_fd_sc_hd__decap_3 PHY_45 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_95 ();
 sky130_fd_sc_hd__inv_2 _074_ (.A(net22),
    .Y(_047_));
 sky130_fd_sc_hd__or2_1 _075_ (.A(net24),
    .B(net23),
    .X(_048_));
 sky130_fd_sc_hd__or4_1 _076_ (.A(net19),
    .B(net18),
    .C(net20),
    .D(net21),
    .X(_049_));
 sky130_fd_sc_hd__or4_1 _077_ (.A(net10),
    .B(net11),
    .C(net13),
    .D(net12),
    .X(_050_));
 sky130_fd_sc_hd__or4_1 _078_ (.A(net17),
    .B(net16),
    .C(net15),
    .D(net14),
    .X(_051_));
 sky130_fd_sc_hd__or4_1 _079_ (.A(_048_),
    .B(_049_),
    .C(_050_),
    .D(_051_),
    .X(_052_));
 sky130_fd_sc_hd__or2_1 _080_ (.A(net27),
    .B(net26),
    .X(_053_));
 sky130_fd_sc_hd__or3_1 _081_ (.A(net30),
    .B(net31),
    .C(net29),
    .X(_054_));
 sky130_fd_sc_hd__or4_1 _082_ (.A(net7),
    .B(net6),
    .C(net9),
    .D(net8),
    .X(_055_));
 sky130_fd_sc_hd__or4_1 _083_ (.A(net5),
    .B(net4),
    .C(net3),
    .D(net2),
    .X(_056_));
 sky130_fd_sc_hd__a2111o_1 _084_ (.A1(net28),
    .A2(_053_),
    .B1(_054_),
    .C1(_055_),
    .D1(_056_),
    .X(_057_));
 sky130_fd_sc_hd__nor3_1 _085_ (.A(_047_),
    .B(_052_),
    .C(_057_),
    .Y(_058_));
 sky130_fd_sc_hd__o21a_1 _086_ (.A1(_052_),
    .A2(_057_),
    .B1(_047_),
    .X(_059_));
 sky130_fd_sc_hd__nor2_1 _087_ (.A(_058_),
    .B(_059_),
    .Y(_000_));
 sky130_fd_sc_hd__inv_2 _088_ (.A(net25),
    .Y(_060_));
 sky130_fd_sc_hd__or4_1 _089_ (.A(_060_),
    .B(_047_),
    .C(_052_),
    .D(_057_),
    .X(_061_));
 sky130_fd_sc_hd__buf_1 _090_ (.A(_061_),
    .X(_062_));
 sky130_fd_sc_hd__o21a_1 _091_ (.A1(net110),
    .A2(_058_),
    .B1(_062_),
    .X(_001_));
 sky130_fd_sc_hd__xnor2_1 _092_ (.A(net104),
    .B(_062_),
    .Y(_002_));
 sky130_fd_sc_hd__nand2_1 _093_ (.A(net27),
    .B(net26),
    .Y(_063_));
 sky130_fd_sc_hd__and2_1 _094_ (.A(_053_),
    .B(_063_),
    .X(_064_));
 sky130_fd_sc_hd__mux2_1 _095_ (.A0(_064_),
    .A1(net27),
    .S(_062_),
    .X(_065_));
 sky130_fd_sc_hd__clkbuf_1 _096_ (.A(_065_),
    .X(_003_));
 sky130_fd_sc_hd__o21bai_1 _097_ (.A1(_062_),
    .A2(_063_),
    .B1_N(net102),
    .Y(_004_));
 sky130_fd_sc_hd__clkbuf_1 _098_ (.A(net127),
    .X(_066_));
 sky130_fd_sc_hd__clkbuf_1 _099_ (.A(_066_),
    .X(_005_));
 sky130_fd_sc_hd__clkbuf_1 _100_ (.A(net120),
    .X(_067_));
 sky130_fd_sc_hd__clkbuf_1 _101_ (.A(_067_),
    .X(_006_));
 sky130_fd_sc_hd__clkbuf_1 _102_ (.A(net121),
    .X(_068_));
 sky130_fd_sc_hd__clkbuf_1 _103_ (.A(_068_),
    .X(_007_));
 sky130_fd_sc_hd__clkbuf_1 _104_ (.A(net119),
    .X(_069_));
 sky130_fd_sc_hd__clkbuf_1 _105_ (.A(_069_),
    .X(_008_));
 sky130_fd_sc_hd__clkbuf_1 _106_ (.A(net118),
    .X(_070_));
 sky130_fd_sc_hd__clkbuf_1 _107_ (.A(_070_),
    .X(_009_));
 sky130_fd_sc_hd__clkbuf_1 _108_ (.A(net113),
    .X(_071_));
 sky130_fd_sc_hd__clkbuf_1 _109_ (.A(_071_),
    .X(_010_));
 sky130_fd_sc_hd__clkbuf_1 _110_ (.A(net124),
    .X(_072_));
 sky130_fd_sc_hd__clkbuf_1 _111_ (.A(_072_),
    .X(_011_));
 sky130_fd_sc_hd__clkbuf_1 _112_ (.A(net116),
    .X(_073_));
 sky130_fd_sc_hd__clkbuf_1 _113_ (.A(_073_),
    .X(_012_));
 sky130_fd_sc_hd__clkbuf_1 _114_ (.A(net105),
    .X(_030_));
 sky130_fd_sc_hd__clkbuf_1 _115_ (.A(_030_),
    .X(_013_));
 sky130_fd_sc_hd__clkbuf_1 _116_ (.A(net117),
    .X(_031_));
 sky130_fd_sc_hd__clkbuf_1 _117_ (.A(_031_),
    .X(_014_));
 sky130_fd_sc_hd__clkbuf_1 _118_ (.A(net129),
    .X(_032_));
 sky130_fd_sc_hd__clkbuf_1 _119_ (.A(_032_),
    .X(_015_));
 sky130_fd_sc_hd__clkbuf_1 _120_ (.A(net112),
    .X(_033_));
 sky130_fd_sc_hd__clkbuf_1 _121_ (.A(_033_),
    .X(_016_));
 sky130_fd_sc_hd__clkbuf_1 _122_ (.A(net122),
    .X(_034_));
 sky130_fd_sc_hd__clkbuf_1 _123_ (.A(_034_),
    .X(_017_));
 sky130_fd_sc_hd__clkbuf_1 _124_ (.A(net125),
    .X(_035_));
 sky130_fd_sc_hd__clkbuf_1 _125_ (.A(_035_),
    .X(_018_));
 sky130_fd_sc_hd__clkbuf_1 _126_ (.A(net13),
    .X(_036_));
 sky130_fd_sc_hd__clkbuf_1 _127_ (.A(_036_),
    .X(_019_));
 sky130_fd_sc_hd__clkbuf_1 _128_ (.A(net126),
    .X(_037_));
 sky130_fd_sc_hd__clkbuf_1 _129_ (.A(_037_),
    .X(_020_));
 sky130_fd_sc_hd__clkbuf_1 _130_ (.A(net123),
    .X(_038_));
 sky130_fd_sc_hd__clkbuf_1 _131_ (.A(_038_),
    .X(_021_));
 sky130_fd_sc_hd__clkbuf_1 _132_ (.A(net128),
    .X(_039_));
 sky130_fd_sc_hd__clkbuf_1 _133_ (.A(_039_),
    .X(_022_));
 sky130_fd_sc_hd__clkbuf_1 _134_ (.A(net115),
    .X(_040_));
 sky130_fd_sc_hd__clkbuf_1 _135_ (.A(_040_),
    .X(_023_));
 sky130_fd_sc_hd__clkbuf_1 _136_ (.A(net106),
    .X(_041_));
 sky130_fd_sc_hd__clkbuf_1 _137_ (.A(_041_),
    .X(_024_));
 sky130_fd_sc_hd__clkbuf_1 _138_ (.A(net107),
    .X(_042_));
 sky130_fd_sc_hd__clkbuf_1 _139_ (.A(_042_),
    .X(_025_));
 sky130_fd_sc_hd__clkbuf_1 _140_ (.A(net111),
    .X(_043_));
 sky130_fd_sc_hd__clkbuf_1 _141_ (.A(_043_),
    .X(_026_));
 sky130_fd_sc_hd__clkbuf_1 _142_ (.A(net108),
    .X(_044_));
 sky130_fd_sc_hd__clkbuf_1 _143_ (.A(_044_),
    .X(_027_));
 sky130_fd_sc_hd__clkbuf_1 _144_ (.A(net109),
    .X(_045_));
 sky130_fd_sc_hd__clkbuf_1 _145_ (.A(_045_),
    .X(_028_));
 sky130_fd_sc_hd__clkbuf_1 _146_ (.A(net114),
    .X(_046_));
 sky130_fd_sc_hd__clkbuf_1 _147_ (.A(_046_),
    .X(_029_));
 sky130_fd_sc_hd__dfrtp_1 _148_ (.CLK(clknet_2_2__leaf_clk),
    .D(_000_),
    .RESET_B(net32),
    .Q(net22));
 sky130_fd_sc_hd__dfrtp_1 _149_ (.CLK(clknet_2_3__leaf_clk),
    .D(_001_),
    .RESET_B(net34),
    .Q(net25));
 sky130_fd_sc_hd__dfrtp_1 _150_ (.CLK(clknet_2_3__leaf_clk),
    .D(_002_),
    .RESET_B(net34),
    .Q(net26));
 sky130_fd_sc_hd__dfrtp_1 _151_ (.CLK(clknet_2_1__leaf_clk),
    .D(_003_),
    .RESET_B(net32),
    .Q(net27));
 sky130_fd_sc_hd__dfrtp_1 _152_ (.CLK(clknet_2_3__leaf_clk),
    .D(net103),
    .RESET_B(net33),
    .Q(net28));
 sky130_fd_sc_hd__dfrtp_1 _153_ (.CLK(clknet_2_2__leaf_clk),
    .D(_005_),
    .RESET_B(net34),
    .Q(net29));
 sky130_fd_sc_hd__dfrtp_1 _154_ (.CLK(clknet_2_1__leaf_clk),
    .D(_006_),
    .RESET_B(net33),
    .Q(net30));
 sky130_fd_sc_hd__dfrtp_1 _155_ (.CLK(clknet_2_1__leaf_clk),
    .D(_007_),
    .RESET_B(net33),
    .Q(net31));
 sky130_fd_sc_hd__dfrtp_1 _156_ (.CLK(clknet_2_3__leaf_clk),
    .D(_008_),
    .RESET_B(net34),
    .Q(net2));
 sky130_fd_sc_hd__dfrtp_1 _157_ (.CLK(clknet_2_1__leaf_clk),
    .D(_009_),
    .RESET_B(net33),
    .Q(net3));
 sky130_fd_sc_hd__dfrtp_1 _158_ (.CLK(clknet_2_1__leaf_clk),
    .D(_010_),
    .RESET_B(net33),
    .Q(net4));
 sky130_fd_sc_hd__dfrtp_1 _159_ (.CLK(clknet_2_0__leaf_clk),
    .D(_011_),
    .RESET_B(net32),
    .Q(net5));
 sky130_fd_sc_hd__dfrtp_1 _160_ (.CLK(clknet_2_0__leaf_clk),
    .D(_012_),
    .RESET_B(net32),
    .Q(net6));
 sky130_fd_sc_hd__dfrtp_1 _161_ (.CLK(clknet_2_2__leaf_clk),
    .D(_013_),
    .RESET_B(net34),
    .Q(net7));
 sky130_fd_sc_hd__dfrtp_1 _162_ (.CLK(clknet_2_0__leaf_clk),
    .D(_014_),
    .RESET_B(net32),
    .Q(net8));
 sky130_fd_sc_hd__dfrtp_1 _163_ (.CLK(clknet_2_0__leaf_clk),
    .D(_015_),
    .RESET_B(net32),
    .Q(net9));
 sky130_fd_sc_hd__dfrtp_1 _164_ (.CLK(clknet_2_1__leaf_clk),
    .D(_016_),
    .RESET_B(net33),
    .Q(net10));
 sky130_fd_sc_hd__dfrtp_1 _165_ (.CLK(clknet_2_1__leaf_clk),
    .D(_017_),
    .RESET_B(net33),
    .Q(net11));
 sky130_fd_sc_hd__dfrtp_1 _166_ (.CLK(clknet_2_1__leaf_clk),
    .D(_018_),
    .RESET_B(net33),
    .Q(net12));
 sky130_fd_sc_hd__dfrtp_1 _167_ (.CLK(clknet_2_3__leaf_clk),
    .D(_019_),
    .RESET_B(net34),
    .Q(net13));
 sky130_fd_sc_hd__dfrtp_1 _168_ (.CLK(clknet_2_3__leaf_clk),
    .D(_020_),
    .RESET_B(net34),
    .Q(net14));
 sky130_fd_sc_hd__dfrtp_1 _169_ (.CLK(clknet_2_2__leaf_clk),
    .D(_021_),
    .RESET_B(net34),
    .Q(net15));
 sky130_fd_sc_hd__dfrtp_1 _170_ (.CLK(clknet_2_3__leaf_clk),
    .D(_022_),
    .RESET_B(net35),
    .Q(net16));
 sky130_fd_sc_hd__dfrtp_1 _171_ (.CLK(clknet_2_2__leaf_clk),
    .D(_023_),
    .RESET_B(net34),
    .Q(net17));
 sky130_fd_sc_hd__dfrtp_1 _172_ (.CLK(clknet_2_0__leaf_clk),
    .D(_024_),
    .RESET_B(net32),
    .Q(net18));
 sky130_fd_sc_hd__dfrtp_1 _173_ (.CLK(clknet_2_0__leaf_clk),
    .D(_025_),
    .RESET_B(net32),
    .Q(net19));
 sky130_fd_sc_hd__dfrtp_1 _174_ (.CLK(clknet_2_0__leaf_clk),
    .D(_026_),
    .RESET_B(net32),
    .Q(net20));
 sky130_fd_sc_hd__dfrtp_1 _175_ (.CLK(clknet_2_0__leaf_clk),
    .D(_027_),
    .RESET_B(net32),
    .Q(net21));
 sky130_fd_sc_hd__dfrtp_1 _176_ (.CLK(clknet_2_3__leaf_clk),
    .D(_028_),
    .RESET_B(net35),
    .Q(net23));
 sky130_fd_sc_hd__dfrtp_1 _177_ (.CLK(clknet_2_2__leaf_clk),
    .D(_029_),
    .RESET_B(net34),
    .Q(net24));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .X(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .X(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .X(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .X(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 fanout32 (.A(net35),
    .X(net32));
 sky130_fd_sc_hd__buf_2 fanout33 (.A(net35),
    .X(net33));
 sky130_fd_sc_hd__clkbuf_4 fanout34 (.A(net35),
    .X(net34));
 sky130_fd_sc_hd__clkbuf_2 fanout35 (.A(net1),
    .X(net35));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(net28),
    .X(net102));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(net20),
    .X(net111));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(net10),
    .X(net112));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(net4),
    .X(net113));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(net24),
    .X(net114));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(net17),
    .X(net115));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(net6),
    .X(net116));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(net8),
    .X(net117));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(net3),
    .X(net118));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(net2),
    .X(net119));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(net30),
    .X(net120));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(_004_),
    .X(net103));
 sky130_fd_sc_hd__dlygate4sd3_1 hold20 (.A(net31),
    .X(net121));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(net11),
    .X(net122));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(net15),
    .X(net123));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(net5),
    .X(net124));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(net12),
    .X(net125));
 sky130_fd_sc_hd__dlygate4sd3_1 hold25 (.A(net14),
    .X(net126));
 sky130_fd_sc_hd__dlygate4sd3_1 hold26 (.A(net29),
    .X(net127));
 sky130_fd_sc_hd__dlygate4sd3_1 hold27 (.A(net16),
    .X(net128));
 sky130_fd_sc_hd__dlygate4sd3_1 hold28 (.A(net9),
    .X(net129));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(net26),
    .X(net104));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(net7),
    .X(net105));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(net18),
    .X(net106));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(net19),
    .X(net107));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(net21),
    .X(net108));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(net23),
    .X(net109));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(net25),
    .X(net110));
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(rst_n),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_4 output10 (.A(net10),
    .X(debug_pc[18]));
 sky130_fd_sc_hd__clkbuf_4 output11 (.A(net11),
    .X(debug_pc[19]));
 sky130_fd_sc_hd__clkbuf_4 output12 (.A(net12),
    .X(debug_pc[20]));
 sky130_fd_sc_hd__clkbuf_4 output13 (.A(net13),
    .X(debug_pc[21]));
 sky130_fd_sc_hd__buf_2 output14 (.A(net14),
    .X(debug_pc[22]));
 sky130_fd_sc_hd__clkbuf_4 output15 (.A(net15),
    .X(debug_pc[23]));
 sky130_fd_sc_hd__clkbuf_4 output16 (.A(net16),
    .X(debug_pc[24]));
 sky130_fd_sc_hd__buf_2 output17 (.A(net17),
    .X(debug_pc[25]));
 sky130_fd_sc_hd__clkbuf_4 output18 (.A(net18),
    .X(debug_pc[26]));
 sky130_fd_sc_hd__clkbuf_4 output19 (.A(net19),
    .X(debug_pc[27]));
 sky130_fd_sc_hd__buf_2 output2 (.A(net2),
    .X(debug_pc[10]));
 sky130_fd_sc_hd__clkbuf_4 output20 (.A(net20),
    .X(debug_pc[28]));
 sky130_fd_sc_hd__clkbuf_4 output21 (.A(net21),
    .X(debug_pc[29]));
 sky130_fd_sc_hd__clkbuf_4 output22 (.A(net22),
    .X(debug_pc[2]));
 sky130_fd_sc_hd__buf_2 output23 (.A(net23),
    .X(debug_pc[30]));
 sky130_fd_sc_hd__clkbuf_4 output24 (.A(net24),
    .X(debug_pc[31]));
 sky130_fd_sc_hd__clkbuf_4 output25 (.A(net25),
    .X(debug_pc[3]));
 sky130_fd_sc_hd__clkbuf_4 output26 (.A(net26),
    .X(debug_pc[4]));
 sky130_fd_sc_hd__clkbuf_4 output27 (.A(net27),
    .X(debug_pc[5]));
 sky130_fd_sc_hd__clkbuf_4 output28 (.A(net28),
    .X(debug_pc[6]));
 sky130_fd_sc_hd__clkbuf_4 output29 (.A(net29),
    .X(debug_pc[7]));
 sky130_fd_sc_hd__buf_2 output3 (.A(net3),
    .X(debug_pc[11]));
 sky130_fd_sc_hd__clkbuf_4 output30 (.A(net30),
    .X(debug_pc[8]));
 sky130_fd_sc_hd__clkbuf_4 output31 (.A(net31),
    .X(debug_pc[9]));
 sky130_fd_sc_hd__clkbuf_4 output4 (.A(net4),
    .X(debug_pc[12]));
 sky130_fd_sc_hd__clkbuf_4 output5 (.A(net5),
    .X(debug_pc[13]));
 sky130_fd_sc_hd__clkbuf_4 output6 (.A(net6),
    .X(debug_pc[14]));
 sky130_fd_sc_hd__clkbuf_4 output7 (.A(net7),
    .X(debug_pc[15]));
 sky130_fd_sc_hd__clkbuf_4 output8 (.A(net8),
    .X(debug_pc[16]));
 sky130_fd_sc_hd__clkbuf_4 output9 (.A(net9),
    .X(debug_pc[17]));
 sky130_fd_sc_hd__conb_1 vortex_top_100 (.LO(net100));
 sky130_fd_sc_hd__conb_1 vortex_top_101 (.LO(net101));
 sky130_fd_sc_hd__conb_1 vortex_top_36 (.LO(net36));
 sky130_fd_sc_hd__conb_1 vortex_top_37 (.LO(net37));
 sky130_fd_sc_hd__conb_1 vortex_top_38 (.LO(net38));
 sky130_fd_sc_hd__conb_1 vortex_top_39 (.LO(net39));
 sky130_fd_sc_hd__conb_1 vortex_top_40 (.LO(net40));
 sky130_fd_sc_hd__conb_1 vortex_top_41 (.LO(net41));
 sky130_fd_sc_hd__conb_1 vortex_top_42 (.LO(net42));
 sky130_fd_sc_hd__conb_1 vortex_top_43 (.LO(net43));
 sky130_fd_sc_hd__conb_1 vortex_top_44 (.LO(net44));
 sky130_fd_sc_hd__conb_1 vortex_top_45 (.LO(net45));
 sky130_fd_sc_hd__conb_1 vortex_top_46 (.LO(net46));
 sky130_fd_sc_hd__conb_1 vortex_top_47 (.LO(net47));
 sky130_fd_sc_hd__conb_1 vortex_top_48 (.LO(net48));
 sky130_fd_sc_hd__conb_1 vortex_top_49 (.LO(net49));
 sky130_fd_sc_hd__conb_1 vortex_top_50 (.LO(net50));
 sky130_fd_sc_hd__conb_1 vortex_top_51 (.LO(net51));
 sky130_fd_sc_hd__conb_1 vortex_top_52 (.LO(net52));
 sky130_fd_sc_hd__conb_1 vortex_top_53 (.LO(net53));
 sky130_fd_sc_hd__conb_1 vortex_top_54 (.LO(net54));
 sky130_fd_sc_hd__conb_1 vortex_top_55 (.LO(net55));
 sky130_fd_sc_hd__conb_1 vortex_top_56 (.LO(net56));
 sky130_fd_sc_hd__conb_1 vortex_top_57 (.LO(net57));
 sky130_fd_sc_hd__conb_1 vortex_top_58 (.LO(net58));
 sky130_fd_sc_hd__conb_1 vortex_top_59 (.LO(net59));
 sky130_fd_sc_hd__conb_1 vortex_top_60 (.LO(net60));
 sky130_fd_sc_hd__conb_1 vortex_top_61 (.LO(net61));
 sky130_fd_sc_hd__conb_1 vortex_top_62 (.LO(net62));
 sky130_fd_sc_hd__conb_1 vortex_top_63 (.LO(net63));
 sky130_fd_sc_hd__conb_1 vortex_top_64 (.LO(net64));
 sky130_fd_sc_hd__conb_1 vortex_top_65 (.LO(net65));
 sky130_fd_sc_hd__conb_1 vortex_top_66 (.LO(net66));
 sky130_fd_sc_hd__conb_1 vortex_top_67 (.LO(net67));
 sky130_fd_sc_hd__conb_1 vortex_top_68 (.LO(net68));
 sky130_fd_sc_hd__conb_1 vortex_top_69 (.LO(net69));
 sky130_fd_sc_hd__conb_1 vortex_top_70 (.LO(net70));
 sky130_fd_sc_hd__conb_1 vortex_top_71 (.LO(net71));
 sky130_fd_sc_hd__conb_1 vortex_top_72 (.LO(net72));
 sky130_fd_sc_hd__conb_1 vortex_top_73 (.LO(net73));
 sky130_fd_sc_hd__conb_1 vortex_top_74 (.LO(net74));
 sky130_fd_sc_hd__conb_1 vortex_top_75 (.LO(net75));
 sky130_fd_sc_hd__conb_1 vortex_top_76 (.LO(net76));
 sky130_fd_sc_hd__conb_1 vortex_top_77 (.LO(net77));
 sky130_fd_sc_hd__conb_1 vortex_top_78 (.LO(net78));
 sky130_fd_sc_hd__conb_1 vortex_top_79 (.LO(net79));
 sky130_fd_sc_hd__conb_1 vortex_top_80 (.LO(net80));
 sky130_fd_sc_hd__conb_1 vortex_top_81 (.LO(net81));
 sky130_fd_sc_hd__conb_1 vortex_top_82 (.LO(net82));
 sky130_fd_sc_hd__conb_1 vortex_top_83 (.LO(net83));
 sky130_fd_sc_hd__conb_1 vortex_top_84 (.LO(net84));
 sky130_fd_sc_hd__conb_1 vortex_top_85 (.LO(net85));
 sky130_fd_sc_hd__conb_1 vortex_top_86 (.LO(net86));
 sky130_fd_sc_hd__conb_1 vortex_top_87 (.LO(net87));
 sky130_fd_sc_hd__conb_1 vortex_top_88 (.LO(net88));
 sky130_fd_sc_hd__conb_1 vortex_top_89 (.LO(net89));
 sky130_fd_sc_hd__conb_1 vortex_top_90 (.LO(net90));
 sky130_fd_sc_hd__conb_1 vortex_top_91 (.LO(net91));
 sky130_fd_sc_hd__conb_1 vortex_top_92 (.LO(net92));
 sky130_fd_sc_hd__conb_1 vortex_top_93 (.LO(net93));
 sky130_fd_sc_hd__conb_1 vortex_top_94 (.LO(net94));
 sky130_fd_sc_hd__conb_1 vortex_top_95 (.LO(net95));
 sky130_fd_sc_hd__conb_1 vortex_top_96 (.LO(net96));
 sky130_fd_sc_hd__conb_1 vortex_top_97 (.LO(net97));
 sky130_fd_sc_hd__conb_1 vortex_top_98 (.LO(net98));
 sky130_fd_sc_hd__conb_1 vortex_top_99 (.LO(net99));
 assign debug_alu_result[0] = net68;
 assign debug_alu_result[10] = net78;
 assign debug_alu_result[11] = net79;
 assign debug_alu_result[12] = net80;
 assign debug_alu_result[13] = net81;
 assign debug_alu_result[14] = net82;
 assign debug_alu_result[15] = net83;
 assign debug_alu_result[16] = net84;
 assign debug_alu_result[17] = net85;
 assign debug_alu_result[18] = net86;
 assign debug_alu_result[19] = net87;
 assign debug_alu_result[1] = net69;
 assign debug_alu_result[20] = net88;
 assign debug_alu_result[21] = net89;
 assign debug_alu_result[22] = net90;
 assign debug_alu_result[23] = net91;
 assign debug_alu_result[24] = net92;
 assign debug_alu_result[25] = net93;
 assign debug_alu_result[26] = net94;
 assign debug_alu_result[27] = net95;
 assign debug_alu_result[28] = net96;
 assign debug_alu_result[29] = net97;
 assign debug_alu_result[2] = net70;
 assign debug_alu_result[30] = net98;
 assign debug_alu_result[31] = net99;
 assign debug_alu_result[3] = net71;
 assign debug_alu_result[4] = net72;
 assign debug_alu_result[5] = net73;
 assign debug_alu_result[6] = net74;
 assign debug_alu_result[7] = net75;
 assign debug_alu_result[8] = net76;
 assign debug_alu_result[9] = net77;
 assign debug_instruction[0] = net36;
 assign debug_instruction[10] = net46;
 assign debug_instruction[11] = net47;
 assign debug_instruction[12] = net48;
 assign debug_instruction[13] = net49;
 assign debug_instruction[14] = net50;
 assign debug_instruction[15] = net51;
 assign debug_instruction[16] = net52;
 assign debug_instruction[17] = net53;
 assign debug_instruction[18] = net54;
 assign debug_instruction[19] = net55;
 assign debug_instruction[1] = net37;
 assign debug_instruction[20] = net56;
 assign debug_instruction[21] = net57;
 assign debug_instruction[22] = net58;
 assign debug_instruction[23] = net59;
 assign debug_instruction[24] = net60;
 assign debug_instruction[25] = net61;
 assign debug_instruction[26] = net62;
 assign debug_instruction[27] = net63;
 assign debug_instruction[28] = net64;
 assign debug_instruction[29] = net65;
 assign debug_instruction[2] = net38;
 assign debug_instruction[30] = net66;
 assign debug_instruction[31] = net67;
 assign debug_instruction[3] = net39;
 assign debug_instruction[4] = net40;
 assign debug_instruction[5] = net41;
 assign debug_instruction[6] = net42;
 assign debug_instruction[7] = net43;
 assign debug_instruction[8] = net44;
 assign debug_instruction[9] = net45;
 assign debug_pc[0] = net100;
 assign debug_pc[1] = net101;
endmodule

