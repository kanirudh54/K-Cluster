--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: top_level_synthesis.vhd
-- /___/   /\     Timestamp: Sun May 11 11:06:34 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm top_level -w -dir netgen/synthesis -ofmt vhdl -sim top_level.ngc top_level_synthesis.vhd 
-- Device	: xc6slx45-3-csg324
-- Input file	: top_level.ngc
-- Output file	: C:\Xilinx\kmeans\netgen\synthesis\top_level_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: top_level
-- Xilinx	: C:\Xilinx\14.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity top_level is
  port (
    fx2Clk_in : in STD_LOGIC := 'X'; 
    fx2GotData_in : in STD_LOGIC := 'X'; 
    fx2GotRoom_in : in STD_LOGIC := 'X'; 
    fx2Read_out : out STD_LOGIC; 
    fx2OE_out : out STD_LOGIC; 
    fx2Write_out : out STD_LOGIC; 
    fx2PktEnd_out : out STD_LOGIC; 
    slide_sw_in : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    fx2Addr_out : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    fx2Data_io : inout STD_LOGIC_VECTOR ( 7 downto 0 ); 
    led_out : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end top_level;

architecture Structure of top_level is
  signal slide_sw_in_7_IBUF_0 : STD_LOGIC; 
  signal slide_sw_in_6_IBUF_1 : STD_LOGIC; 
  signal slide_sw_in_5_IBUF_2 : STD_LOGIC; 
  signal slide_sw_in_4_IBUF_3 : STD_LOGIC; 
  signal slide_sw_in_3_IBUF_4 : STD_LOGIC; 
  signal slide_sw_in_2_IBUF_5 : STD_LOGIC; 
  signal slide_sw_in_1_IBUF_6 : STD_LOGIC; 
  signal slide_sw_in_0_IBUF_7 : STD_LOGIC; 
  signal fx2Clk_in_BUFGP_8 : STD_LOGIC; 
  signal fx2GotData_in_IBUF_9 : STD_LOGIC; 
  signal fx2GotRoom_in_IBUF_10 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal fx2Addr_out_1_OBUF_12 : STD_LOGIC; 
  signal fx2Addr_out_0_OBUF_28 : STD_LOGIC; 
  signal fx2OE_out_OBUF_29 : STD_LOGIC; 
  signal fx2PktEnd_out_OBUF_30 : STD_LOGIC; 
  signal Mmult_reg3_next_0_31 : STD_LOGIC; 
  signal Mmult_reg3_next_1_32 : STD_LOGIC; 
  signal Mmult_reg3_next_2_33 : STD_LOGIC; 
  signal Mmult_reg3_next_3_34 : STD_LOGIC; 
  signal Mmult_reg3_next_4_35 : STD_LOGIC; 
  signal Mmult_reg3_next_5_36 : STD_LOGIC; 
  signal Mmult_reg3_next_6_37 : STD_LOGIC; 
  signal Mmult_reg3_next_7_38 : STD_LOGIC; 
  signal Mmult_reg3_next_reg1_0_x_reg2_0_Q : STD_LOGIC; 
  signal Mmult_reg3_next_Madd_3 : STD_LOGIC; 
  signal Mmult_reg3_next_Madd_5 : STD_LOGIC; 
  signal Mmult_reg3_next_Madd_31 : STD_LOGIC; 
  signal Mmult_reg3_next_Madd_41 : STD_LOGIC; 
  signal Mmult_reg3_next_Madd_51 : STD_LOGIC; 
  signal Mmult_reg3_next_Madd_12 : STD_LOGIC; 
  signal Mmult_reg3_next_Madd_22 : STD_LOGIC; 
  signal Mmult_reg3_next_Madd_32 : STD_LOGIC; 
  signal Mmult_reg3_next_Madd_42 : STD_LOGIC; 
  signal Mmult_reg3_next_Madd_52 : STD_LOGIC; 
  signal Mmult_reg3_next_Madd_62 : STD_LOGIC; 
  signal Mmult_reg3_next_Madd_72 : STD_LOGIC; 
  signal Mmult_reg3_next_reg1_0_x_reg2_1_mand1_80 : STD_LOGIC; 
  signal Mmult_reg3_next_Madd1_cy_5_mand1_91 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_31_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_30_Q_95 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_30_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_29_Q_97 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_29_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_28_Q_99 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_28_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_27_Q_101 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_27_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_26_Q_103 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_26_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_25_Q_105 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_25_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_24_Q_107 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_24_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_23_Q_109 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_23_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_22_Q_111 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_22_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_21_Q_113 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_21_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_20_Q_115 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_20_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_19_Q_117 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_19_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_18_Q_119 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_18_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_17_Q_121 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_17_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_16_Q_123 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_16_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_15_Q_125 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_15_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_14_Q_127 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_14_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_13_Q_129 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_13_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_12_Q_131 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_12_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_11_Q_133 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_11_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_10_Q_135 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_10_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_9_Q_137 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_9_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_8_Q_139 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_8_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_7_Q_141 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_7_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_6_Q_143 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_6_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_5_Q_145 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_5_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_4_Q_147 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_4_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_3_Q_149 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_3_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_2_Q_151 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_2_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_1_Q_153 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_1_Q : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_0_Q_155 : STD_LOGIC; 
  signal comm_fpga_fx2_state_FSM_FFd1_In : STD_LOGIC; 
  signal comm_fpga_fx2_state_FSM_FFd2_In : STD_LOGIC; 
  signal comm_fpga_fx2_state_FSM_FFd3_In : STD_LOGIC; 
  signal comm_fpga_fx2_state_FSM_FFd4_In : STD_LOGIC; 
  signal comm_fpga_fx2_n0223_inv : STD_LOGIC; 
  signal comm_fpga_fx2_n0227_inv : STD_LOGIC; 
  signal comm_fpga_fx2_f2hReady_out_inv : STD_LOGIC; 
  signal comm_fpga_fx2_count_8_GND_6_o_equal_9_o : STD_LOGIC; 
  signal comm_fpga_fx2_count_31_GND_6_o_equal_19_o : STD_LOGIC; 
  signal comm_fpga_fx2_n0124 : STD_LOGIC; 
  signal comm_fpga_fx2_isAligned_238 : STD_LOGIC; 
  signal comm_fpga_fx2_isWrite_239 : STD_LOGIC; 
  signal comm_fpga_fx2_state_FSM_FFd4_272 : STD_LOGIC; 
  signal comm_fpga_fx2_state_FSM_FFd3_273 : STD_LOGIC; 
  signal comm_fpga_fx2_state_FSM_FFd2_274 : STD_LOGIC; 
  signal comm_fpga_fx2_state_FSM_FFd1_275 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_dataOut12_276 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_Q : STD_LOGIC; 
  signal comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_2_279 : STD_LOGIC; 
  signal comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_3_280 : STD_LOGIC; 
  signal comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_4_281 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal comm_fpga_fx2_state_FSM_FFd4_In1_290 : STD_LOGIC; 
  signal comm_fpga_fx2_state_FSM_FFd1_In1_291 : STD_LOGIC; 
  signal comm_fpga_fx2_state_FSM_FFd1_In2_292 : STD_LOGIC; 
  signal comm_fpga_fx2_state_FSM_FFd1_In3_293 : STD_LOGIC; 
  signal comm_fpga_fx2_state_FSM_FFd1_In4_294 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next11_296 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next13 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next3 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next48 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next5 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next46 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next7 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next9 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next1 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next22 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next37 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next40 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next41 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next42 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next43 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next44 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next21 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next15 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next17 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next19 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next24 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next26 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next28 : STD_LOGIC; 
  signal comm_fpga_fx2_Mmux_count_next30 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_0_rt_360 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal GND_4_o_h2fValid_AND_2_o1_rstpot_370 : STD_LOGIC; 
  signal GND_4_o_h2fValid_AND_2_o1_cepot_371 : STD_LOGIC; 
  signal reg0_0_dpot1_372 : STD_LOGIC; 
  signal reg0_1_dpot1_373 : STD_LOGIC; 
  signal reg0_2_dpot1_374 : STD_LOGIC; 
  signal reg0_3_dpot1_375 : STD_LOGIC; 
  signal reg0_4_dpot1_376 : STD_LOGIC; 
  signal reg0_5_dpot1_377 : STD_LOGIC; 
  signal reg0_6_dpot1_378 : STD_LOGIC; 
  signal reg0_7_dpot1_379 : STD_LOGIC; 
  signal reg1_0_dpot1_380 : STD_LOGIC; 
  signal reg1_1_dpot1_381 : STD_LOGIC; 
  signal reg1_2_dpot1_382 : STD_LOGIC; 
  signal reg1_3_dpot1_383 : STD_LOGIC; 
  signal reg1_4_dpot1_384 : STD_LOGIC; 
  signal reg1_5_dpot1_385 : STD_LOGIC; 
  signal reg1_6_dpot1_386 : STD_LOGIC; 
  signal reg1_7_dpot1_387 : STD_LOGIC; 
  signal reg2_0_dpot1_388 : STD_LOGIC; 
  signal reg2_1_dpot1_389 : STD_LOGIC; 
  signal reg2_2_dpot1_390 : STD_LOGIC; 
  signal reg2_3_dpot1_391 : STD_LOGIC; 
  signal reg2_4_dpot1_392 : STD_LOGIC; 
  signal reg2_5_dpot1_393 : STD_LOGIC; 
  signal reg2_6_dpot1_394 : STD_LOGIC; 
  signal reg2_7_dpot1_395 : STD_LOGIC; 
  signal comm_fpga_fx2_state_FSM_FFd3_1_396 : STD_LOGIC; 
  signal comm_fpga_fx2_state_FSM_FFd2_1_397 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal comm_fpga_fx2_chanAddr : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal reg1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal reg2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal reg0 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mmult_reg3_next_Madd_cy : STD_LOGIC_VECTOR ( 6 downto 5 ); 
  signal Mmult_reg3_next_Madd1_lut : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal Mmult_reg3_next_Madd1_cy : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal Mmult_reg3_next_Madd2_lut : STD_LOGIC_VECTOR ( 6 downto 1 ); 
  signal Mmult_reg3_next_Madd2_cy : STD_LOGIC_VECTOR ( 6 downto 1 ); 
  signal comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal comm_fpga_fx2_count_next : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal comm_fpga_fx2_dataOut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal comm_fpga_fx2_count : STD_LOGIC_VECTOR ( 31 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => fx2Addr_out_1_OBUF_12
    );
  reg1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg1_0_dpot1_380,
      Q => reg1(0)
    );
  reg1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg1_1_dpot1_381,
      Q => reg1(1)
    );
  reg1_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg1_2_dpot1_382,
      Q => reg1(2)
    );
  reg1_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg1_3_dpot1_383,
      Q => reg1(3)
    );
  reg1_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg1_4_dpot1_384,
      Q => reg1(4)
    );
  reg1_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg1_5_dpot1_385,
      Q => reg1(5)
    );
  reg1_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg1_6_dpot1_386,
      Q => reg1(6)
    );
  reg1_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg1_7_dpot1_387,
      Q => reg1(7)
    );
  reg2_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg2_0_dpot1_388,
      Q => reg2(0)
    );
  reg2_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg2_1_dpot1_389,
      Q => reg2(1)
    );
  reg2_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg2_2_dpot1_390,
      Q => reg2(2)
    );
  reg2_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg2_3_dpot1_391,
      Q => reg2(3)
    );
  reg2_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg2_4_dpot1_392,
      Q => reg2(4)
    );
  reg2_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg2_5_dpot1_393,
      Q => reg2(5)
    );
  reg2_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg2_6_dpot1_394,
      Q => reg2(6)
    );
  reg2_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg2_7_dpot1_395,
      Q => reg2(7)
    );
  reg0_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg0_0_dpot1_372,
      Q => reg0(0)
    );
  reg0_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg0_1_dpot1_373,
      Q => reg0(1)
    );
  reg0_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg0_2_dpot1_374,
      Q => reg0(2)
    );
  reg0_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg0_3_dpot1_375,
      Q => reg0(3)
    );
  reg0_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg0_4_dpot1_376,
      Q => reg0(4)
    );
  reg0_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg0_5_dpot1_377,
      Q => reg0(5)
    );
  reg0_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg0_6_dpot1_378,
      Q => reg0(6)
    );
  reg0_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => GND_4_o_h2fValid_AND_2_o1_cepot_371,
      D => reg0_7_dpot1_379,
      Q => reg0(7)
    );
  Mmult_reg3_next_Madd2_lut_1_Q : LUT4
    generic map(
      INIT => X"7888"
    )
    port map (
      I0 => reg1(0),
      I1 => reg2(1),
      I2 => reg1(1),
      I3 => reg2(0),
      O => Mmult_reg3_next_Madd2_lut(1)
    );
  Mmult_reg3_next_Madd2_cy_1_Q : MUXCY
    port map (
      CI => N0,
      DI => Mmult_reg3_next_reg1_0_x_reg2_1_mand1_80,
      S => Mmult_reg3_next_Madd2_lut(1),
      O => Mmult_reg3_next_Madd2_cy(1)
    );
  Mmult_reg3_next_Madd2_xor_1_Q : XORCY
    port map (
      CI => N0,
      LI => Mmult_reg3_next_Madd2_lut(1),
      O => Mmult_reg3_next_Madd_12
    );
  Mmult_reg3_next_Madd2_cy_2_Q : MUXCY
    port map (
      CI => Mmult_reg3_next_Madd2_cy(1),
      DI => Mmult_reg3_next_Madd1_lut(2),
      S => Mmult_reg3_next_Madd2_lut(2),
      O => Mmult_reg3_next_Madd2_cy(2)
    );
  Mmult_reg3_next_Madd2_xor_2_Q : XORCY
    port map (
      CI => Mmult_reg3_next_Madd2_cy(1),
      LI => Mmult_reg3_next_Madd2_lut(2),
      O => Mmult_reg3_next_Madd_22
    );
  Mmult_reg3_next_Madd2_cy_3_Q : MUXCY
    port map (
      CI => Mmult_reg3_next_Madd2_cy(2),
      DI => Mmult_reg3_next_Madd_31,
      S => Mmult_reg3_next_Madd2_lut(3),
      O => Mmult_reg3_next_Madd2_cy(3)
    );
  Mmult_reg3_next_Madd2_xor_3_Q : XORCY
    port map (
      CI => Mmult_reg3_next_Madd2_cy(2),
      LI => Mmult_reg3_next_Madd2_lut(3),
      O => Mmult_reg3_next_Madd_32
    );
  Mmult_reg3_next_Madd2_cy_4_Q : MUXCY
    port map (
      CI => Mmult_reg3_next_Madd2_cy(3),
      DI => Mmult_reg3_next_Madd_41,
      S => Mmult_reg3_next_Madd2_lut(4),
      O => Mmult_reg3_next_Madd2_cy(4)
    );
  Mmult_reg3_next_Madd2_xor_4_Q : XORCY
    port map (
      CI => Mmult_reg3_next_Madd2_cy(3),
      LI => Mmult_reg3_next_Madd2_lut(4),
      O => Mmult_reg3_next_Madd_42
    );
  Mmult_reg3_next_Madd2_cy_5_Q : MUXCY
    port map (
      CI => Mmult_reg3_next_Madd2_cy(4),
      DI => Mmult_reg3_next_Madd_51,
      S => Mmult_reg3_next_Madd2_lut(5),
      O => Mmult_reg3_next_Madd2_cy(5)
    );
  Mmult_reg3_next_Madd2_xor_5_Q : XORCY
    port map (
      CI => Mmult_reg3_next_Madd2_cy(4),
      LI => Mmult_reg3_next_Madd2_lut(5),
      O => Mmult_reg3_next_Madd_52
    );
  Mmult_reg3_next_Madd2_cy_6_Q : MUXCY
    port map (
      CI => Mmult_reg3_next_Madd2_cy(5),
      DI => Mmult_reg3_next_Madd1_cy_5_mand1_91,
      S => Mmult_reg3_next_Madd2_lut(6),
      O => Mmult_reg3_next_Madd2_cy(6)
    );
  Mmult_reg3_next_Madd2_xor_6_Q : XORCY
    port map (
      CI => Mmult_reg3_next_Madd2_cy(5),
      LI => Mmult_reg3_next_Madd2_lut(6),
      O => Mmult_reg3_next_Madd_62
    );
  Mmult_reg3_next_Madd2_xor_7_Q : XORCY
    port map (
      CI => Mmult_reg3_next_Madd2_cy(6),
      LI => Mmult_reg3_next_Madd_cy(6),
      O => Mmult_reg3_next_Madd_72
    );
  Mmult_reg3_next_7 : FD
    port map (
      C => fx2Clk_in_BUFGP_8,
      D => Mmult_reg3_next_reg1_0_x_reg2_0_Q,
      Q => Mmult_reg3_next_7_38
    );
  Mmult_reg3_next_6 : FD
    port map (
      C => fx2Clk_in_BUFGP_8,
      D => Mmult_reg3_next_Madd_12,
      Q => Mmult_reg3_next_6_37
    );
  Mmult_reg3_next_5 : FD
    port map (
      C => fx2Clk_in_BUFGP_8,
      D => Mmult_reg3_next_Madd_22,
      Q => Mmult_reg3_next_5_36
    );
  Mmult_reg3_next_4 : FD
    port map (
      C => fx2Clk_in_BUFGP_8,
      D => Mmult_reg3_next_Madd_32,
      Q => Mmult_reg3_next_4_35
    );
  Mmult_reg3_next_3 : FD
    port map (
      C => fx2Clk_in_BUFGP_8,
      D => Mmult_reg3_next_Madd_42,
      Q => Mmult_reg3_next_3_34
    );
  Mmult_reg3_next_2 : FD
    port map (
      C => fx2Clk_in_BUFGP_8,
      D => Mmult_reg3_next_Madd_52,
      Q => Mmult_reg3_next_2_33
    );
  Mmult_reg3_next_1 : FD
    port map (
      C => fx2Clk_in_BUFGP_8,
      D => Mmult_reg3_next_Madd_62,
      Q => Mmult_reg3_next_1_32
    );
  Mmult_reg3_next_0 : FD
    port map (
      C => fx2Clk_in_BUFGP_8,
      D => Mmult_reg3_next_Madd_72,
      Q => Mmult_reg3_next_0_31
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_31_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_30_Q_95,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_31_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(31)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_30_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_29_Q_97,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_30_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(30)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_30_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_29_Q_97,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_30_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_30_Q_95
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_29_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_28_Q_99,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_29_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(29)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_29_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_28_Q_99,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_29_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_29_Q_97
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_28_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_27_Q_101,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_28_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(28)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_28_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_27_Q_101,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_28_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_28_Q_99
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_27_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_26_Q_103,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_27_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(27)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_27_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_26_Q_103,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_27_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_27_Q_101
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_26_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_25_Q_105,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_26_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(26)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_26_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_25_Q_105,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_26_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_26_Q_103
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_25_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_24_Q_107,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_25_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(25)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_25_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_24_Q_107,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_25_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_25_Q_105
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_24_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_23_Q_109,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_24_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(24)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_24_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_23_Q_109,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_24_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_24_Q_107
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_23_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_22_Q_111,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_23_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(23)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_23_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_22_Q_111,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_23_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_23_Q_109
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_22_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_21_Q_113,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_22_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(22)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_22_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_21_Q_113,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_22_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_22_Q_111
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_21_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_20_Q_115,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_21_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(21)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_21_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_20_Q_115,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_21_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_21_Q_113
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_20_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_19_Q_117,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_20_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(20)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_20_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_19_Q_117,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_20_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_20_Q_115
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_19_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_18_Q_119,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_19_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(19)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_19_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_18_Q_119,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_19_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_19_Q_117
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_18_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_17_Q_121,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_18_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(18)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_18_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_17_Q_121,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_18_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_18_Q_119
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_17_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_16_Q_123,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_17_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(17)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_17_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_16_Q_123,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_17_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_17_Q_121
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_16_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_15_Q_125,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_16_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(16)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_16_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_15_Q_125,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_16_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_16_Q_123
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_15_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_14_Q_127,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_15_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(15)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_15_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_14_Q_127,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_15_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_15_Q_125
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_14_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_13_Q_129,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_14_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(14)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_14_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_13_Q_129,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_14_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_14_Q_127
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_13_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_12_Q_131,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_13_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(13)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_13_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_12_Q_131,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_13_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_13_Q_129
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_12_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_11_Q_133,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_12_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(12)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_12_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_11_Q_133,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_12_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_12_Q_131
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_11_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_10_Q_135,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_11_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(11)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_11_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_10_Q_135,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_11_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_11_Q_133
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_10_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_9_Q_137,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_10_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(10)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_10_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_9_Q_137,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_10_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_10_Q_135
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_9_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_8_Q_139,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_9_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(9)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_9_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_8_Q_139,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_9_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_9_Q_137
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_8_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_7_Q_141,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_8_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(8)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_8_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_7_Q_141,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_8_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_8_Q_139
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_7_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_6_Q_143,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_7_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(7)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_7_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_6_Q_143,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_7_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_7_Q_141
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_6_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_5_Q_145,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_6_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(6)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_6_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_5_Q_145,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_6_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_6_Q_143
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_5_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_4_Q_147,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_5_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(5)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_5_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_4_Q_147,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_5_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_5_Q_145
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_4_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_3_Q_149,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_4_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(4)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_4_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_3_Q_149,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_4_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_4_Q_147
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_3_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_2_Q_151,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_3_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(3)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_3_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_2_Q_151,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_3_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_3_Q_149
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_2_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_1_Q_153,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_2_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(2)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_2_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_1_Q_153,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_2_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_2_Q_151
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_1_Q : XORCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_0_Q_155,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_1_Q,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(1)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_1_Q : MUXCY
    port map (
      CI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_0_Q_155,
      DI => fx2Addr_out_1_OBUF_12,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_1_Q,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_1_Q_153
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_xor_0_Q : XORCY
    port map (
      CI => fx2Addr_out_1_OBUF_12,
      LI => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_0_rt_360,
      O => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(0)
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_0_Q : MUXCY
    port map (
      CI => fx2Addr_out_1_OBUF_12,
      DI => N0,
      S => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_0_rt_360,
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_0_Q_155
    );
  comm_fpga_fx2_state_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      D => comm_fpga_fx2_state_FSM_FFd2_In,
      Q => comm_fpga_fx2_state_FSM_FFd2_274
    );
  comm_fpga_fx2_state_FSM_FFd3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      D => comm_fpga_fx2_state_FSM_FFd3_In,
      Q => comm_fpga_fx2_state_FSM_FFd3_273
    );
  comm_fpga_fx2_state_FSM_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      D => comm_fpga_fx2_state_FSM_FFd1_In,
      Q => comm_fpga_fx2_state_FSM_FFd1_275
    );
  comm_fpga_fx2_state_FSM_FFd4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      D => comm_fpga_fx2_state_FSM_FFd4_In,
      Q => comm_fpga_fx2_state_FSM_FFd4_272
    );
  comm_fpga_fx2_count_31 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(31),
      Q => comm_fpga_fx2_count(31)
    );
  comm_fpga_fx2_count_30 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(30),
      Q => comm_fpga_fx2_count(30)
    );
  comm_fpga_fx2_count_29 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(29),
      Q => comm_fpga_fx2_count(29)
    );
  comm_fpga_fx2_count_28 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(28),
      Q => comm_fpga_fx2_count(28)
    );
  comm_fpga_fx2_count_27 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(27),
      Q => comm_fpga_fx2_count(27)
    );
  comm_fpga_fx2_count_26 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(26),
      Q => comm_fpga_fx2_count(26)
    );
  comm_fpga_fx2_count_25 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(25),
      Q => comm_fpga_fx2_count(25)
    );
  comm_fpga_fx2_count_24 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(24),
      Q => comm_fpga_fx2_count(24)
    );
  comm_fpga_fx2_count_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(23),
      Q => comm_fpga_fx2_count(23)
    );
  comm_fpga_fx2_count_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(22),
      Q => comm_fpga_fx2_count(22)
    );
  comm_fpga_fx2_count_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(21),
      Q => comm_fpga_fx2_count(21)
    );
  comm_fpga_fx2_count_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(20),
      Q => comm_fpga_fx2_count(20)
    );
  comm_fpga_fx2_count_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(19),
      Q => comm_fpga_fx2_count(19)
    );
  comm_fpga_fx2_count_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(18),
      Q => comm_fpga_fx2_count(18)
    );
  comm_fpga_fx2_count_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(17),
      Q => comm_fpga_fx2_count(17)
    );
  comm_fpga_fx2_count_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(16),
      Q => comm_fpga_fx2_count(16)
    );
  comm_fpga_fx2_count_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(15),
      Q => comm_fpga_fx2_count(15)
    );
  comm_fpga_fx2_count_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(14),
      Q => comm_fpga_fx2_count(14)
    );
  comm_fpga_fx2_count_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(13),
      Q => comm_fpga_fx2_count(13)
    );
  comm_fpga_fx2_count_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(12),
      Q => comm_fpga_fx2_count(12)
    );
  comm_fpga_fx2_count_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(11),
      Q => comm_fpga_fx2_count(11)
    );
  comm_fpga_fx2_count_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(10),
      Q => comm_fpga_fx2_count(10)
    );
  comm_fpga_fx2_count_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(9),
      Q => comm_fpga_fx2_count(9)
    );
  comm_fpga_fx2_count_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(8),
      Q => comm_fpga_fx2_count(8)
    );
  comm_fpga_fx2_count_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(7),
      Q => comm_fpga_fx2_count(7)
    );
  comm_fpga_fx2_count_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(6),
      Q => comm_fpga_fx2_count(6)
    );
  comm_fpga_fx2_count_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(5),
      Q => comm_fpga_fx2_count(5)
    );
  comm_fpga_fx2_count_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(4),
      Q => comm_fpga_fx2_count(4)
    );
  comm_fpga_fx2_count_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(3),
      Q => comm_fpga_fx2_count(3)
    );
  comm_fpga_fx2_count_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(2),
      Q => comm_fpga_fx2_count(2)
    );
  comm_fpga_fx2_count_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(1),
      Q => comm_fpga_fx2_count(1)
    );
  comm_fpga_fx2_count_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0223_inv,
      D => comm_fpga_fx2_count_next(0),
      Q => comm_fpga_fx2_count(0)
    );
  comm_fpga_fx2_isWrite : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0227_inv,
      D => N47,
      Q => comm_fpga_fx2_isWrite_239
    );
  comm_fpga_fx2_chanAddr_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0227_inv,
      D => N48,
      Q => comm_fpga_fx2_chanAddr(6)
    );
  comm_fpga_fx2_chanAddr_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0227_inv,
      D => N49,
      Q => comm_fpga_fx2_chanAddr(5)
    );
  comm_fpga_fx2_chanAddr_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0227_inv,
      D => N50,
      Q => comm_fpga_fx2_chanAddr(4)
    );
  comm_fpga_fx2_chanAddr_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0227_inv,
      D => N51,
      Q => comm_fpga_fx2_chanAddr(3)
    );
  comm_fpga_fx2_chanAddr_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0227_inv,
      D => N52,
      Q => comm_fpga_fx2_chanAddr(2)
    );
  comm_fpga_fx2_chanAddr_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0227_inv,
      D => N53,
      Q => comm_fpga_fx2_chanAddr(1)
    );
  comm_fpga_fx2_chanAddr_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0227_inv,
      D => N54,
      Q => comm_fpga_fx2_chanAddr(0)
    );
  comm_fpga_fx2_isAligned : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      CE => comm_fpga_fx2_n0124,
      D => comm_fpga_fx2_count_8_GND_6_o_equal_9_o,
      Q => comm_fpga_fx2_isAligned_238
    );
  Mmult_reg3_next_Madd_lut_3_1 : LUT4
    generic map(
      INIT => X"6AC0"
    )
    port map (
      I0 => reg2(3),
      I1 => reg2(0),
      I2 => reg1(3),
      I3 => reg1(0),
      O => Mmult_reg3_next_Madd_3
    );
  Mmult_reg3_next_Madd1_lut_2_1 : LUT4
    generic map(
      INIT => X"7888"
    )
    port map (
      I0 => reg1(1),
      I1 => reg2(1),
      I2 => reg1(0),
      I3 => reg2(2),
      O => Mmult_reg3_next_Madd1_lut(2)
    );
  Mmult_reg3_next_reg1_0_x_reg2_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => reg1(0),
      I1 => reg2(0),
      O => Mmult_reg3_next_reg1_0_x_reg2_0_Q
    );
  Mmult_reg3_next_reg1_0_x_reg2_1_mand1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => reg1(0),
      I1 => reg2(1),
      O => Mmult_reg3_next_reg1_0_x_reg2_1_mand1_80
    );
  comm_fpga_fx2_Mmux_fifoOp21 : LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd4_272,
      I1 => fx2GotRoom_in_IBUF_10,
      I2 => comm_fpga_fx2_state_FSM_FFd2_274,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_f2hReady_out_inv
    );
  comm_fpga_fx2_state_n0249_1_1 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd1_275,
      I1 => comm_fpga_fx2_state_FSM_FFd4_272,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd2_274,
      O => fx2PktEnd_out_OBUF_30
    );
  comm_fpga_fx2_n0227_inv1 : LUT5
    generic map(
      INIT => X"A0A0A002"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_state_FSM_FFd4_272,
      I2 => comm_fpga_fx2_state_FSM_FFd1_275,
      I3 => comm_fpga_fx2_state_FSM_FFd2_274,
      I4 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_n0227_inv
    );
  comm_fpga_fx2_state_n0249_0_1 : LUT4
    generic map(
      INIT => X"BBA8"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd2_274,
      I1 => comm_fpga_fx2_state_FSM_FFd4_272,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      O => fx2Addr_out_0_OBUF_28
    );
  comm_fpga_fx2_n0223_inv1 : LUT6
    generic map(
      INIT => X"000A00000F0FCFF0"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => fx2GotRoom_in_IBUF_10,
      I2 => comm_fpga_fx2_state_FSM_FFd2_1_397,
      I3 => comm_fpga_fx2_state_FSM_FFd3_1_396,
      I4 => comm_fpga_fx2_state_FSM_FFd4_272,
      I5 => comm_fpga_fx2_state_FSM_FFd1_275,
      O => comm_fpga_fx2_n0223_inv
    );
  comm_fpga_fx2_n0124_3_1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd4_272,
      I1 => comm_fpga_fx2_state_FSM_FFd1_275,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd2_274,
      O => comm_fpga_fx2_n0124
    );
  comm_fpga_fx2_Mmux_fifoOp11 : LUT5
    generic map(
      INIT => X"0C1C1818"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd3_273,
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd1_275,
      I3 => fx2GotData_in_IBUF_9,
      I4 => comm_fpga_fx2_state_FSM_FFd4_272,
      O => fx2OE_out_OBUF_29
    );
  comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_1_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => comm_fpga_fx2_count(4),
      I1 => comm_fpga_fx2_count(5),
      I2 => comm_fpga_fx2_count(6),
      O => N5
    );
  comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_2 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => comm_fpga_fx2_count(9),
      I1 => comm_fpga_fx2_count(31),
      I2 => comm_fpga_fx2_count(30),
      I3 => comm_fpga_fx2_count(29),
      I4 => comm_fpga_fx2_count(0),
      I5 => comm_fpga_fx2_count(28),
      O => comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_Q
    );
  comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_3 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => comm_fpga_fx2_count(22),
      I1 => comm_fpga_fx2_count(23),
      I2 => comm_fpga_fx2_count(24),
      I3 => comm_fpga_fx2_count(25),
      I4 => comm_fpga_fx2_count(27),
      I5 => comm_fpga_fx2_count(26),
      O => comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_2_279
    );
  comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_4 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => comm_fpga_fx2_count(20),
      I1 => comm_fpga_fx2_count(21),
      I2 => comm_fpga_fx2_count(19),
      I3 => comm_fpga_fx2_count(18),
      I4 => comm_fpga_fx2_count(17),
      I5 => comm_fpga_fx2_count(16),
      O => comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_3_280
    );
  comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_5 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => comm_fpga_fx2_count(14),
      I1 => comm_fpga_fx2_count(15),
      I2 => comm_fpga_fx2_count(13),
      I3 => comm_fpga_fx2_count(12),
      I4 => comm_fpga_fx2_count(11),
      I5 => comm_fpga_fx2_count(10),
      O => comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_4_281
    );
  comm_fpga_fx2_Mmux_dataOut1_SW0 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => comm_fpga_fx2_chanAddr(1),
      I1 => slide_sw_in_0_IBUF_7,
      I2 => reg2(0),
      O => N7
    );
  comm_fpga_fx2_Mmux_dataOut1 : LUT6
    generic map(
      INIT => X"80888000A2AAA222"
    )
    port map (
      I0 => comm_fpga_fx2_Mmux_dataOut12_276,
      I1 => comm_fpga_fx2_chanAddr(0),
      I2 => Mmult_reg3_next_7_38,
      I3 => comm_fpga_fx2_chanAddr(1),
      I4 => reg1(0),
      I5 => N7,
      O => comm_fpga_fx2_dataOut(0)
    );
  comm_fpga_fx2_Mmux_dataOut2_SW0 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => comm_fpga_fx2_chanAddr(0),
      I1 => slide_sw_in_1_IBUF_6,
      I2 => reg1(1),
      O => N9
    );
  comm_fpga_fx2_Mmux_dataOut2 : LUT6
    generic map(
      INIT => X"80888000A2AAA222"
    )
    port map (
      I0 => comm_fpga_fx2_Mmux_dataOut12_276,
      I1 => comm_fpga_fx2_chanAddr(1),
      I2 => Mmult_reg3_next_6_37,
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => reg2(1),
      I5 => N9,
      O => comm_fpga_fx2_dataOut(1)
    );
  comm_fpga_fx2_Mmux_dataOut3_SW0 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => comm_fpga_fx2_chanAddr(1),
      I1 => slide_sw_in_2_IBUF_5,
      I2 => reg2(2),
      O => N11
    );
  comm_fpga_fx2_Mmux_dataOut3 : LUT6
    generic map(
      INIT => X"80888000A2AAA222"
    )
    port map (
      I0 => comm_fpga_fx2_Mmux_dataOut12_276,
      I1 => comm_fpga_fx2_chanAddr(0),
      I2 => Mmult_reg3_next_5_36,
      I3 => comm_fpga_fx2_chanAddr(1),
      I4 => reg1(2),
      I5 => N11,
      O => comm_fpga_fx2_dataOut(2)
    );
  comm_fpga_fx2_Mmux_dataOut4_SW0 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => comm_fpga_fx2_chanAddr(0),
      I1 => slide_sw_in_3_IBUF_4,
      I2 => reg1(3),
      O => N13
    );
  comm_fpga_fx2_Mmux_dataOut4 : LUT6
    generic map(
      INIT => X"80888000A2AAA222"
    )
    port map (
      I0 => comm_fpga_fx2_Mmux_dataOut12_276,
      I1 => comm_fpga_fx2_chanAddr(1),
      I2 => Mmult_reg3_next_4_35,
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => reg2(3),
      I5 => N13,
      O => comm_fpga_fx2_dataOut(3)
    );
  comm_fpga_fx2_Mmux_dataOut5_SW0 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => comm_fpga_fx2_chanAddr(0),
      I1 => slide_sw_in_4_IBUF_3,
      I2 => reg1(4),
      O => N15
    );
  comm_fpga_fx2_Mmux_dataOut5 : LUT6
    generic map(
      INIT => X"80888000A2AAA222"
    )
    port map (
      I0 => comm_fpga_fx2_Mmux_dataOut12_276,
      I1 => comm_fpga_fx2_chanAddr(1),
      I2 => Mmult_reg3_next_3_34,
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => reg2(4),
      I5 => N15,
      O => comm_fpga_fx2_dataOut(4)
    );
  comm_fpga_fx2_Mmux_dataOut6_SW0 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => comm_fpga_fx2_chanAddr(0),
      I1 => slide_sw_in_5_IBUF_2,
      I2 => reg1(5),
      O => N17
    );
  comm_fpga_fx2_Mmux_dataOut6 : LUT6
    generic map(
      INIT => X"80888000A2AAA222"
    )
    port map (
      I0 => comm_fpga_fx2_Mmux_dataOut12_276,
      I1 => comm_fpga_fx2_chanAddr(1),
      I2 => Mmult_reg3_next_2_33,
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => reg2(5),
      I5 => N17,
      O => comm_fpga_fx2_dataOut(5)
    );
  comm_fpga_fx2_Mmux_dataOut7_SW0 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => comm_fpga_fx2_chanAddr(0),
      I1 => slide_sw_in_6_IBUF_1,
      I2 => reg1(6),
      O => N19
    );
  comm_fpga_fx2_Mmux_dataOut7 : LUT6
    generic map(
      INIT => X"80888000A2AAA222"
    )
    port map (
      I0 => comm_fpga_fx2_Mmux_dataOut12_276,
      I1 => comm_fpga_fx2_chanAddr(1),
      I2 => Mmult_reg3_next_1_32,
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => reg2(6),
      I5 => N19,
      O => comm_fpga_fx2_dataOut(6)
    );
  comm_fpga_fx2_Mmux_dataOut8_SW0 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => comm_fpga_fx2_chanAddr(0),
      I1 => slide_sw_in_7_IBUF_0,
      I2 => reg1(7),
      O => N21
    );
  comm_fpga_fx2_Mmux_dataOut8 : LUT6
    generic map(
      INIT => X"80888000A2AAA222"
    )
    port map (
      I0 => comm_fpga_fx2_Mmux_dataOut12_276,
      I1 => comm_fpga_fx2_chanAddr(1),
      I2 => Mmult_reg3_next_0_31,
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => reg2(7),
      I5 => N21,
      O => comm_fpga_fx2_dataOut(7)
    );
  comm_fpga_fx2_state_FSM_FFd4_In1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => fx2GotRoom_in_IBUF_10,
      I1 => comm_fpga_fx2_isAligned_238,
      I2 => comm_fpga_fx2_state_FSM_FFd2_274,
      I3 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_state_FSM_FFd4_In1_290
    );
  comm_fpga_fx2_state_FSM_FFd1_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd4_272,
      I1 => comm_fpga_fx2_state_FSM_FFd1_275,
      O => comm_fpga_fx2_state_FSM_FFd1_In1_291
    );
  comm_fpga_fx2_state_FSM_FFd1_In2 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd4_272,
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      O => comm_fpga_fx2_state_FSM_FFd1_In2_292
    );
  comm_fpga_fx2_state_FSM_FFd1_In3 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_isWrite_239,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_state_FSM_FFd1_In3_293
    );
  comm_fpga_fx2_state_FSM_FFd1_In4 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => fx2GotRoom_in_IBUF_10,
      I1 => comm_fpga_fx2_isAligned_238,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_state_FSM_FFd1_In4_294
    );
  comm_fpga_fx2_state_FSM_FFd1_In5 : LUT6
    generic map(
      INIT => X"F4F4F444FCFCCCCC"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_state_FSM_FFd1_In1_291,
      I2 => comm_fpga_fx2_state_FSM_FFd1_In2_292,
      I3 => comm_fpga_fx2_state_FSM_FFd1_In4_294,
      I4 => comm_fpga_fx2_state_FSM_FFd1_In3_293,
      I5 => comm_fpga_fx2_count_31_GND_6_o_equal_19_o,
      O => comm_fpga_fx2_state_FSM_FFd1_In
    );
  comm_fpga_fx2_Mmux_dataOut12_SW0 : LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
    port map (
      I0 => comm_fpga_fx2_chanAddr(5),
      I1 => comm_fpga_fx2_chanAddr(4),
      I2 => comm_fpga_fx2_state_FSM_FFd1_275,
      I3 => fx2GotRoom_in_IBUF_10,
      I4 => comm_fpga_fx2_state_FSM_FFd4_272,
      O => N25
    );
  comm_fpga_fx2_Mmux_dataOut12 : LUT6
    generic map(
      INIT => X"0000000000000008"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd3_273,
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_chanAddr(6),
      I3 => comm_fpga_fx2_chanAddr(3),
      I4 => comm_fpga_fx2_chanAddr(2),
      I5 => N25,
      O => comm_fpga_fx2_Mmux_dataOut12_276
    );
  comm_fpga_fx2_Mmux_count_next111 : LUT6
    generic map(
      INIT => X"0000B8F0F0F0F0F0"
    )
    port map (
      I0 => N48,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(14),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next11_296
    );
  comm_fpga_fx2_Mmux_count_next112 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(14),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next11_296,
      O => comm_fpga_fx2_count_next(14)
    );
  comm_fpga_fx2_Mmux_count_next131 : LUT6
    generic map(
      INIT => X"0000B8F0F0F0F0F0"
    )
    port map (
      I0 => N47,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(15),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next13
    );
  comm_fpga_fx2_Mmux_count_next132 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(15),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next13,
      O => comm_fpga_fx2_count_next(15)
    );
  comm_fpga_fx2_Mmux_count_next310 : LUT6
    generic map(
      INIT => X"0000B8F0F0F0F0F0"
    )
    port map (
      I0 => N52,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(10),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next3
    );
  comm_fpga_fx2_Mmux_count_next311 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(10),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next3,
      O => comm_fpga_fx2_count_next(10)
    );
  comm_fpga_fx2_Mmux_count_next481 : LUT6
    generic map(
      INIT => X"0000B8F0F0F0F0F0"
    )
    port map (
      I0 => N53,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(9),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next48
    );
  comm_fpga_fx2_Mmux_count_next482 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(9),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next48,
      O => comm_fpga_fx2_count_next(9)
    );
  comm_fpga_fx2_Mmux_count_next51 : LUT6
    generic map(
      INIT => X"0000B8F0F0F0F0F0"
    )
    port map (
      I0 => N51,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(11),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next5
    );
  comm_fpga_fx2_Mmux_count_next52 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(11),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next5,
      O => comm_fpga_fx2_count_next(11)
    );
  comm_fpga_fx2_Mmux_count_next461 : LUT6
    generic map(
      INIT => X"0000B8F0F0F0F0F0"
    )
    port map (
      I0 => N54,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(8),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next46
    );
  comm_fpga_fx2_Mmux_count_next462 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(8),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next46,
      O => comm_fpga_fx2_count_next(8)
    );
  comm_fpga_fx2_Mmux_count_next71 : LUT6
    generic map(
      INIT => X"0000B8F0F0F0F0F0"
    )
    port map (
      I0 => N50,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(12),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next7
    );
  comm_fpga_fx2_Mmux_count_next72 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(12),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next7,
      O => comm_fpga_fx2_count_next(12)
    );
  comm_fpga_fx2_Mmux_count_next91 : LUT6
    generic map(
      INIT => X"0000B8F0F0F0F0F0"
    )
    port map (
      I0 => N49,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(13),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next9
    );
  comm_fpga_fx2_Mmux_count_next92 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(13),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next9,
      O => comm_fpga_fx2_count_next(13)
    );
  comm_fpga_fx2_Mmux_count_next11 : LUT5
    generic map(
      INIT => X"00F0B8F0"
    )
    port map (
      I0 => N54,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(0),
      I3 => comm_fpga_fx2_state_FSM_FFd2_274,
      I4 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next1
    );
  comm_fpga_fx2_Mmux_count_next12 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(0),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next1,
      O => comm_fpga_fx2_count_next(0)
    );
  comm_fpga_fx2_Mmux_count_next221 : LUT5
    generic map(
      INIT => X"00F0B8F0"
    )
    port map (
      I0 => N53,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(1),
      I3 => comm_fpga_fx2_state_FSM_FFd2_274,
      I4 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next22
    );
  comm_fpga_fx2_Mmux_count_next222 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(1),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next22,
      O => comm_fpga_fx2_count_next(1)
    );
  comm_fpga_fx2_Mmux_count_next371 : LUT5
    generic map(
      INIT => X"00F0B8F0"
    )
    port map (
      I0 => N52,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(2),
      I3 => comm_fpga_fx2_state_FSM_FFd2_274,
      I4 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next37
    );
  comm_fpga_fx2_Mmux_count_next372 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(2),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next37,
      O => comm_fpga_fx2_count_next(2)
    );
  comm_fpga_fx2_Mmux_count_next401 : LUT5
    generic map(
      INIT => X"00F0B8F0"
    )
    port map (
      I0 => N51,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(3),
      I3 => comm_fpga_fx2_state_FSM_FFd2_274,
      I4 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next40
    );
  comm_fpga_fx2_Mmux_count_next402 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(3),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next40,
      O => comm_fpga_fx2_count_next(3)
    );
  comm_fpga_fx2_Mmux_count_next411 : LUT5
    generic map(
      INIT => X"00F0B8F0"
    )
    port map (
      I0 => N50,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(4),
      I3 => comm_fpga_fx2_state_FSM_FFd2_274,
      I4 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next41
    );
  comm_fpga_fx2_Mmux_count_next412 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(4),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next41,
      O => comm_fpga_fx2_count_next(4)
    );
  comm_fpga_fx2_Mmux_count_next421 : LUT5
    generic map(
      INIT => X"00F0B8F0"
    )
    port map (
      I0 => N49,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(5),
      I3 => comm_fpga_fx2_state_FSM_FFd2_274,
      I4 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next42
    );
  comm_fpga_fx2_Mmux_count_next422 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(5),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next42,
      O => comm_fpga_fx2_count_next(5)
    );
  comm_fpga_fx2_Mmux_count_next431 : LUT5
    generic map(
      INIT => X"00F0B8F0"
    )
    port map (
      I0 => N48,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(6),
      I3 => comm_fpga_fx2_state_FSM_FFd2_274,
      I4 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next43
    );
  comm_fpga_fx2_Mmux_count_next432 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(6),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next43,
      O => comm_fpga_fx2_count_next(6)
    );
  comm_fpga_fx2_Mmux_count_next441 : LUT5
    generic map(
      INIT => X"00F0B8F0"
    )
    port map (
      I0 => N47,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(7),
      I3 => comm_fpga_fx2_state_FSM_FFd2_274,
      I4 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next44
    );
  comm_fpga_fx2_Mmux_count_next442 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(7),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next44,
      O => comm_fpga_fx2_count_next(7)
    );
  comm_fpga_fx2_Mmux_count_next211 : LUT6
    generic map(
      INIT => X"0000F0B8F0F0F0F0"
    )
    port map (
      I0 => N51,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(19),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next21
    );
  comm_fpga_fx2_Mmux_count_next212 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(19),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next21,
      O => comm_fpga_fx2_count_next(19)
    );
  comm_fpga_fx2_Mmux_count_next151 : LUT6
    generic map(
      INIT => X"0000F0B8F0F0F0F0"
    )
    port map (
      I0 => N54,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(16),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next15
    );
  comm_fpga_fx2_Mmux_count_next152 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(16),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next15,
      O => comm_fpga_fx2_count_next(16)
    );
  comm_fpga_fx2_Mmux_count_next171 : LUT6
    generic map(
      INIT => X"0000F0B8F0F0F0F0"
    )
    port map (
      I0 => N53,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(17),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next17
    );
  comm_fpga_fx2_Mmux_count_next172 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(17),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next17,
      O => comm_fpga_fx2_count_next(17)
    );
  comm_fpga_fx2_Mmux_count_next191 : LUT6
    generic map(
      INIT => X"0000F0B8F0F0F0F0"
    )
    port map (
      I0 => N52,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(18),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next19
    );
  comm_fpga_fx2_Mmux_count_next192 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(18),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next19,
      O => comm_fpga_fx2_count_next(18)
    );
  comm_fpga_fx2_Mmux_count_next241 : LUT6
    generic map(
      INIT => X"0000F0B8F0F0F0F0"
    )
    port map (
      I0 => N50,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(20),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next24
    );
  comm_fpga_fx2_Mmux_count_next242 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(20),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next24,
      O => comm_fpga_fx2_count_next(20)
    );
  comm_fpga_fx2_Mmux_count_next261 : LUT6
    generic map(
      INIT => X"0000F0B8F0F0F0F0"
    )
    port map (
      I0 => N49,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(21),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next26
    );
  comm_fpga_fx2_Mmux_count_next262 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(21),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next26,
      O => comm_fpga_fx2_count_next(21)
    );
  comm_fpga_fx2_Mmux_count_next281 : LUT6
    generic map(
      INIT => X"0000F0B8F0F0F0F0"
    )
    port map (
      I0 => N48,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(22),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next28
    );
  comm_fpga_fx2_Mmux_count_next282 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(22),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next28,
      O => comm_fpga_fx2_count_next(22)
    );
  comm_fpga_fx2_Mmux_count_next301 : LUT6
    generic map(
      INIT => X"0000F0B8F0F0F0F0"
    )
    port map (
      I0 => N47,
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_count(23),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => comm_fpga_fx2_Mmux_count_next30
    );
  comm_fpga_fx2_Mmux_count_next302 : LUT5
    generic map(
      INIT => X"AAFFAA80"
    )
    port map (
      I0 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(23),
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd1_275,
      I4 => comm_fpga_fx2_Mmux_count_next30,
      O => comm_fpga_fx2_count_next(23)
    );
  comm_fpga_fx2_Mmux_count_next32_SW0 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_count(25),
      I2 => N53,
      O => N33
    );
  comm_fpga_fx2_Mmux_count_next32 : LUT6
    generic map(
      INIT => X"FEFFEAEB14150001"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd1_275,
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => N33,
      I4 => comm_fpga_fx2_count(25),
      I5 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(25),
      O => comm_fpga_fx2_count_next(25)
    );
  comm_fpga_fx2_Mmux_count_next33_SW0 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_count(26),
      I2 => N52,
      O => N35
    );
  comm_fpga_fx2_Mmux_count_next33 : LUT6
    generic map(
      INIT => X"FEFFEAEB14150001"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd1_275,
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => N35,
      I4 => comm_fpga_fx2_count(26),
      I5 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(26),
      O => comm_fpga_fx2_count_next(26)
    );
  comm_fpga_fx2_Mmux_count_next34_SW0 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_count(27),
      I2 => N51,
      O => N37
    );
  comm_fpga_fx2_Mmux_count_next34 : LUT6
    generic map(
      INIT => X"FEFFEAEB14150001"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd1_275,
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => N37,
      I4 => comm_fpga_fx2_count(27),
      I5 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(27),
      O => comm_fpga_fx2_count_next(27)
    );
  comm_fpga_fx2_Mmux_count_next35_SW0 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_count(28),
      I2 => N50,
      O => N39
    );
  comm_fpga_fx2_Mmux_count_next35 : LUT6
    generic map(
      INIT => X"FEFFEAEB14150001"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd1_275,
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => N39,
      I4 => comm_fpga_fx2_count(28),
      I5 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(28),
      O => comm_fpga_fx2_count_next(28)
    );
  comm_fpga_fx2_Mmux_count_next36_SW0 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_count(29),
      I2 => N49,
      O => N41
    );
  comm_fpga_fx2_Mmux_count_next36 : LUT6
    generic map(
      INIT => X"FEFFEAEB14150001"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd1_275,
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => N41,
      I4 => comm_fpga_fx2_count(29),
      I5 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(29),
      O => comm_fpga_fx2_count_next(29)
    );
  comm_fpga_fx2_Mmux_count_next38_SW0 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_count(30),
      I2 => N48,
      O => N43
    );
  comm_fpga_fx2_Mmux_count_next38 : LUT6
    generic map(
      INIT => X"FEFFEAEB14150001"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd1_275,
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => N43,
      I4 => comm_fpga_fx2_count(30),
      I5 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(30),
      O => comm_fpga_fx2_count_next(30)
    );
  comm_fpga_fx2_Mmux_count_next39_SW0 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_count(31),
      I2 => N47,
      O => N45
    );
  comm_fpga_fx2_Mmux_count_next39 : LUT6
    generic map(
      INIT => X"FEFFEAEB14150001"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd1_275,
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => N45,
      I4 => comm_fpga_fx2_count(31),
      I5 => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(31),
      O => comm_fpga_fx2_count_next(31)
    );
  slide_sw_in_7_IBUF : IBUF
    port map (
      I => slide_sw_in(7),
      O => slide_sw_in_7_IBUF_0
    );
  slide_sw_in_6_IBUF : IBUF
    port map (
      I => slide_sw_in(6),
      O => slide_sw_in_6_IBUF_1
    );
  slide_sw_in_5_IBUF : IBUF
    port map (
      I => slide_sw_in(5),
      O => slide_sw_in_5_IBUF_2
    );
  slide_sw_in_4_IBUF : IBUF
    port map (
      I => slide_sw_in(4),
      O => slide_sw_in_4_IBUF_3
    );
  slide_sw_in_3_IBUF : IBUF
    port map (
      I => slide_sw_in(3),
      O => slide_sw_in_3_IBUF_4
    );
  slide_sw_in_2_IBUF : IBUF
    port map (
      I => slide_sw_in(2),
      O => slide_sw_in_2_IBUF_5
    );
  slide_sw_in_1_IBUF : IBUF
    port map (
      I => slide_sw_in(1),
      O => slide_sw_in_1_IBUF_6
    );
  slide_sw_in_0_IBUF : IBUF
    port map (
      I => slide_sw_in(0),
      O => slide_sw_in_0_IBUF_7
    );
  fx2GotData_in_IBUF : IBUF
    port map (
      I => fx2GotData_in,
      O => fx2GotData_in_IBUF_9
    );
  fx2GotRoom_in_IBUF : IBUF
    port map (
      I => fx2GotRoom_in,
      O => fx2GotRoom_in_IBUF_10
    );
  fx2Data_io_7_IOBUF : IOBUF
    port map (
      I => comm_fpga_fx2_dataOut(7),
      T => comm_fpga_fx2_f2hReady_out_inv,
      O => N47,
      IO => fx2Data_io(7)
    );
  fx2Data_io_6_IOBUF : IOBUF
    port map (
      I => comm_fpga_fx2_dataOut(6),
      T => comm_fpga_fx2_f2hReady_out_inv,
      O => N48,
      IO => fx2Data_io(6)
    );
  fx2Data_io_5_IOBUF : IOBUF
    port map (
      I => comm_fpga_fx2_dataOut(5),
      T => comm_fpga_fx2_f2hReady_out_inv,
      O => N49,
      IO => fx2Data_io(5)
    );
  fx2Data_io_4_IOBUF : IOBUF
    port map (
      I => comm_fpga_fx2_dataOut(4),
      T => comm_fpga_fx2_f2hReady_out_inv,
      O => N50,
      IO => fx2Data_io(4)
    );
  fx2Data_io_3_IOBUF : IOBUF
    port map (
      I => comm_fpga_fx2_dataOut(3),
      T => comm_fpga_fx2_f2hReady_out_inv,
      O => N51,
      IO => fx2Data_io(3)
    );
  fx2Data_io_2_IOBUF : IOBUF
    port map (
      I => comm_fpga_fx2_dataOut(2),
      T => comm_fpga_fx2_f2hReady_out_inv,
      O => N52,
      IO => fx2Data_io(2)
    );
  fx2Data_io_1_IOBUF : IOBUF
    port map (
      I => comm_fpga_fx2_dataOut(1),
      T => comm_fpga_fx2_f2hReady_out_inv,
      O => N53,
      IO => fx2Data_io(1)
    );
  fx2Data_io_0_IOBUF : IOBUF
    port map (
      I => comm_fpga_fx2_dataOut(0),
      T => comm_fpga_fx2_f2hReady_out_inv,
      O => N54,
      IO => fx2Data_io(0)
    );
  fx2Addr_out_1_OBUF : OBUF
    port map (
      I => fx2Addr_out_1_OBUF_12,
      O => fx2Addr_out(1)
    );
  fx2Addr_out_0_OBUF : OBUF
    port map (
      I => fx2Addr_out_0_OBUF_28,
      O => fx2Addr_out(0)
    );
  led_out_7_OBUF : OBUF
    port map (
      I => reg0(7),
      O => led_out(7)
    );
  led_out_6_OBUF : OBUF
    port map (
      I => reg0(6),
      O => led_out(6)
    );
  led_out_5_OBUF : OBUF
    port map (
      I => reg0(5),
      O => led_out(5)
    );
  led_out_4_OBUF : OBUF
    port map (
      I => reg0(4),
      O => led_out(4)
    );
  led_out_3_OBUF : OBUF
    port map (
      I => reg0(3),
      O => led_out(3)
    );
  led_out_2_OBUF : OBUF
    port map (
      I => reg0(2),
      O => led_out(2)
    );
  led_out_1_OBUF : OBUF
    port map (
      I => reg0(1),
      O => led_out(1)
    );
  led_out_0_OBUF : OBUF
    port map (
      I => reg0(0),
      O => led_out(0)
    );
  fx2Read_out_OBUF : OBUF
    port map (
      I => fx2OE_out_OBUF_29,
      O => fx2Read_out
    );
  fx2OE_out_OBUF : OBUF
    port map (
      I => fx2OE_out_OBUF_29,
      O => fx2OE_out
    );
  fx2Write_out_OBUF : OBUF
    port map (
      I => comm_fpga_fx2_f2hReady_out_inv,
      O => fx2Write_out
    );
  fx2PktEnd_out_OBUF : OBUF
    port map (
      I => fx2PktEnd_out_OBUF_30,
      O => fx2PktEnd_out
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => comm_fpga_fx2_count(0),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_cy_0_rt_360
    );
  comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_1_SW1 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => comm_fpga_fx2_count(8),
      I1 => comm_fpga_fx2_count(7),
      I2 => comm_fpga_fx2_count(3),
      I3 => comm_fpga_fx2_count(2),
      I4 => comm_fpga_fx2_count(1),
      O => N63
    );
  comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_6 : LUT6
    generic map(
      INIT => X"0000000040000000"
    )
    port map (
      I0 => N5,
      I1 => comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_4_281,
      I2 => comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_3_280,
      I3 => comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_2_279,
      I4 => comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_Q,
      I5 => N63,
      O => comm_fpga_fx2_count_31_GND_6_o_equal_19_o
    );
  comm_fpga_fx2_state_FSM_FFd4_In2_SW0 : LUT4
    generic map(
      INIT => X"0AA2"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_state_FSM_FFd1_275,
      I2 => comm_fpga_fx2_state_FSM_FFd2_274,
      I3 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => N65
    );
  comm_fpga_fx2_state_FSM_FFd4_In2_SW1 : LUT3
    generic map(
      INIT => X"CD"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_state_FSM_FFd1_275,
      I2 => comm_fpga_fx2_state_FSM_FFd2_274,
      O => N66
    );
  comm_fpga_fx2_state_FSM_FFd4_In2_SW2 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_state_FSM_FFd1_275,
      I2 => comm_fpga_fx2_state_FSM_FFd2_274,
      O => N67
    );
  comm_fpga_fx2_state_FSM_FFd4_In3 : LUT6
    generic map(
      INIT => X"77777722F5A0F5A0"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd4_272,
      I1 => N67,
      I2 => N66,
      I3 => N65,
      I4 => comm_fpga_fx2_state_FSM_FFd4_In1_290,
      I5 => comm_fpga_fx2_count_31_GND_6_o_equal_19_o,
      O => comm_fpga_fx2_state_FSM_FFd4_In
    );
  comm_fpga_fx2_state_FSM_FFd2_In11_SW0 : LUT3
    generic map(
      INIT => X"AD"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_state_FSM_FFd1_275,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => N69
    );
  comm_fpga_fx2_state_FSM_FFd2_In11_SW1 : LUT3
    generic map(
      INIT => X"D0"
    )
    port map (
      I0 => fx2GotRoom_in_IBUF_10,
      I1 => comm_fpga_fx2_isAligned_238,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => N70
    );
  comm_fpga_fx2_state_FSM_FFd3_In1 : LUT6
    generic map(
      INIT => X"5C7E183A587A587A"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd4_272,
      I1 => comm_fpga_fx2_state_FSM_FFd2_274,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => N69,
      I4 => N70,
      I5 => comm_fpga_fx2_count_31_GND_6_o_equal_19_o,
      O => comm_fpga_fx2_state_FSM_FFd3_In
    );
  comm_fpga_fx2_state_FSM_FFd2_In11_SW2 : LUT5
    generic map(
      INIT => X"F05F02FF"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_isWrite_239,
      I2 => comm_fpga_fx2_state_FSM_FFd4_272,
      I3 => comm_fpga_fx2_state_FSM_FFd2_274,
      I4 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => N72
    );
  comm_fpga_fx2_state_FSM_FFd2_In11_SW3 : LUT5
    generic map(
      INIT => X"FF5F02FF"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_isWrite_239,
      I2 => comm_fpga_fx2_state_FSM_FFd4_272,
      I3 => comm_fpga_fx2_state_FSM_FFd2_274,
      I4 => comm_fpga_fx2_state_FSM_FFd3_273,
      O => N73
    );
  comm_fpga_fx2_state_FSM_FFd2_In1 : LUT5
    generic map(
      INIT => X"0D2F0F0F"
    )
    port map (
      I0 => fx2GotRoom_in_IBUF_10,
      I1 => comm_fpga_fx2_isAligned_238,
      I2 => N72,
      I3 => N73,
      I4 => comm_fpga_fx2_count_31_GND_6_o_equal_19_o,
      O => comm_fpga_fx2_state_FSM_FFd2_In
    );
  Mmult_reg3_next_Madd1_xor_4_11 : LUT6
    generic map(
      INIT => X"E46C28A0EC6C20A0"
    )
    port map (
      I0 => reg2(2),
      I1 => reg2(1),
      I2 => reg1(2),
      I3 => reg1(1),
      I4 => reg1(3),
      I5 => reg1(0),
      O => Mmult_reg3_next_Madd_41
    );
  Mmult_reg3_next_Madd1_cy_4_1 : LUT6
    generic map(
      INIT => X"8880800080808000"
    )
    port map (
      I0 => reg2(2),
      I1 => reg2(1),
      I2 => reg1(2),
      I3 => reg1(1),
      I4 => reg1(3),
      I5 => reg1(0),
      O => Mmult_reg3_next_Madd1_cy(4)
    );
  Mmult_reg3_next_Madd_xor_5_11 : LUT6
    generic map(
      INIT => X"28A0A0A0A0A0A0A0"
    )
    port map (
      I0 => reg2(3),
      I1 => reg2(0),
      I2 => reg1(2),
      I3 => reg1(3),
      I4 => reg1(1),
      I5 => reg1(0),
      O => Mmult_reg3_next_Madd_5
    );
  Mmult_reg3_next_Madd_cy_5_11 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => reg2(3),
      I1 => reg2(0),
      I2 => reg1(2),
      I3 => reg1(3),
      I4 => reg1(1),
      I5 => reg1(0),
      O => Mmult_reg3_next_Madd_cy(5)
    );
  Mmult_reg3_next_Madd2_lut_5_Q : LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      I0 => reg2(2),
      I1 => reg1(3),
      I2 => Mmult_reg3_next_Madd_5,
      I3 => Mmult_reg3_next_Madd1_cy(4),
      O => Mmult_reg3_next_Madd2_lut(5)
    );
  Mmult_reg3_next_Madd2_lut_2_Q : LUT6
    generic map(
      INIT => X"96665AAA3CCCF000"
    )
    port map (
      I0 => reg2(2),
      I1 => reg2(1),
      I2 => reg2(0),
      I3 => reg1(2),
      I4 => reg1(1),
      I5 => reg1(0),
      O => Mmult_reg3_next_Madd2_lut(2)
    );
  comm_fpga_fx2_count_31_GND_6_o_equal_19_o_31_1_SW2 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => comm_fpga_fx2_count(8),
      I1 => comm_fpga_fx2_count(0),
      O => N75
    );
  comm_fpga_fx2_count_8_GND_6_o_equal_9_o_8_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => N5,
      I1 => comm_fpga_fx2_count(1),
      I2 => comm_fpga_fx2_count(2),
      I3 => comm_fpga_fx2_count(3),
      I4 => comm_fpga_fx2_count(7),
      I5 => N75,
      O => comm_fpga_fx2_count_8_GND_6_o_equal_9_o
    );
  Mmult_reg3_next_Madd2_lut_4_Q : LUT6
    generic map(
      INIT => X"D57F55FF2A80AA00"
    )
    port map (
      I0 => reg2(3),
      I1 => reg2(0),
      I2 => reg1(3),
      I3 => reg1(1),
      I4 => reg1(0),
      I5 => Mmult_reg3_next_Madd_41,
      O => Mmult_reg3_next_Madd2_lut(4)
    );
  Mmult_reg3_next_Madd2_lut_3_Q : LUT6
    generic map(
      INIT => X"47778777B8887888"
    )
    port map (
      I0 => reg1(2),
      I1 => reg2(1),
      I2 => reg1(1),
      I3 => reg2(2),
      I4 => reg1(0),
      I5 => Mmult_reg3_next_Madd_3,
      O => Mmult_reg3_next_Madd2_lut(3)
    );
  Mmult_reg3_next_Madd1_xor_5_11 : LUT6
    generic map(
      INIT => X"2028080888888888"
    )
    port map (
      I0 => reg2(2),
      I1 => reg1(3),
      I2 => reg1(2),
      I3 => reg1(0),
      I4 => reg1(1),
      I5 => reg2(1),
      O => Mmult_reg3_next_Madd_51
    );
  Mmult_reg3_next_Madd1_cy_5_mand1 : LUT6
    generic map(
      INIT => X"8080808080000000"
    )
    port map (
      I0 => reg1(3),
      I1 => reg2(2),
      I2 => reg2(1),
      I3 => reg1(1),
      I4 => reg1(0),
      I5 => reg1(2),
      O => Mmult_reg3_next_Madd1_cy_5_mand1_91
    );
  Mmult_reg3_next_Madd2_lut_6_Q : LUT5
    generic map(
      INIT => X"9F605FA0"
    )
    port map (
      I0 => reg2(3),
      I1 => reg2(2),
      I2 => reg1(3),
      I3 => Mmult_reg3_next_Madd_cy(5),
      I4 => Mmult_reg3_next_Madd1_cy(4),
      O => Mmult_reg3_next_Madd2_lut(6)
    );
  Mmult_reg3_next_Madd1_xor_3_11 : LUT5
    generic map(
      INIT => X"B7888888"
    )
    port map (
      I0 => reg1(2),
      I1 => reg2(1),
      I2 => reg1(0),
      I3 => reg2(2),
      I4 => reg1(1),
      O => Mmult_reg3_next_Madd_31
    );
  Mmult_reg3_next_Madd_cy_6_11 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => reg1(3),
      I1 => reg2(3),
      I2 => reg2(0),
      I3 => reg1(0),
      I4 => reg1(1),
      I5 => reg1(2),
      O => Mmult_reg3_next_Madd_cy(6)
    );
  GND_4_o_h2fValid_AND_2_o1_rstpot : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd2_1_397,
      I1 => comm_fpga_fx2_state_FSM_FFd3_1_396,
      I2 => comm_fpga_fx2_chanAddr(2),
      I3 => comm_fpga_fx2_chanAddr(3),
      I4 => comm_fpga_fx2_chanAddr(6),
      O => GND_4_o_h2fValid_AND_2_o1_rstpot_370
    );
  GND_4_o_h2fValid_AND_2_o1_cepot : LUT5
    generic map(
      INIT => X"02000000"
    )
    port map (
      I0 => fx2GotData_in_IBUF_9,
      I1 => comm_fpga_fx2_chanAddr(5),
      I2 => comm_fpga_fx2_chanAddr(4),
      I3 => comm_fpga_fx2_state_FSM_FFd4_272,
      I4 => comm_fpga_fx2_state_FSM_FFd1_275,
      O => GND_4_o_h2fValid_AND_2_o1_cepot_371
    );
  reg0_0_dpot1 : LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => N54,
      I1 => reg0(0),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg0_0_dpot1_372
    );
  reg0_1_dpot1 : LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => N53,
      I1 => reg0(1),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg0_1_dpot1_373
    );
  reg0_2_dpot1 : LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => N52,
      I1 => reg0(2),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg0_2_dpot1_374
    );
  reg0_3_dpot1 : LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => N51,
      I1 => reg0(3),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg0_3_dpot1_375
    );
  reg0_4_dpot1 : LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => N50,
      I1 => reg0(4),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg0_4_dpot1_376
    );
  reg0_5_dpot1 : LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => N49,
      I1 => reg0(5),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg0_5_dpot1_377
    );
  reg0_6_dpot1 : LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => N48,
      I1 => reg0(6),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg0_6_dpot1_378
    );
  reg0_7_dpot1 : LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => N47,
      I1 => reg0(7),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg0_7_dpot1_379
    );
  reg1_0_dpot1 : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => N54,
      I1 => reg1(0),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg1_0_dpot1_380
    );
  reg1_1_dpot1 : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => N53,
      I1 => reg1(1),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg1_1_dpot1_381
    );
  reg1_2_dpot1 : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => N52,
      I1 => reg1(2),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg1_2_dpot1_382
    );
  reg1_3_dpot1 : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => N51,
      I1 => reg1(3),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg1_3_dpot1_383
    );
  reg1_4_dpot1 : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => N50,
      I1 => reg1(4),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg1_4_dpot1_384
    );
  reg1_5_dpot1 : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => N49,
      I1 => reg1(5),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg1_5_dpot1_385
    );
  reg1_6_dpot1 : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => N48,
      I1 => reg1(6),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg1_6_dpot1_386
    );
  reg1_7_dpot1 : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => N47,
      I1 => reg1(7),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg1_7_dpot1_387
    );
  reg2_0_dpot1 : LUT5
    generic map(
      INIT => X"CCACCCCC"
    )
    port map (
      I0 => N54,
      I1 => reg2(0),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg2_0_dpot1_388
    );
  reg2_1_dpot1 : LUT5
    generic map(
      INIT => X"CCACCCCC"
    )
    port map (
      I0 => N53,
      I1 => reg2(1),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg2_1_dpot1_389
    );
  reg2_2_dpot1 : LUT5
    generic map(
      INIT => X"CCACCCCC"
    )
    port map (
      I0 => N52,
      I1 => reg2(2),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg2_2_dpot1_390
    );
  reg2_3_dpot1 : LUT5
    generic map(
      INIT => X"CCACCCCC"
    )
    port map (
      I0 => N51,
      I1 => reg2(3),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg2_3_dpot1_391
    );
  reg2_4_dpot1 : LUT5
    generic map(
      INIT => X"CCACCCCC"
    )
    port map (
      I0 => N50,
      I1 => reg2(4),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg2_4_dpot1_392
    );
  reg2_5_dpot1 : LUT5
    generic map(
      INIT => X"CCACCCCC"
    )
    port map (
      I0 => N49,
      I1 => reg2(5),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg2_5_dpot1_393
    );
  reg2_6_dpot1 : LUT5
    generic map(
      INIT => X"CCACCCCC"
    )
    port map (
      I0 => N48,
      I1 => reg2(6),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg2_6_dpot1_394
    );
  reg2_7_dpot1 : LUT5
    generic map(
      INIT => X"CCACCCCC"
    )
    port map (
      I0 => N47,
      I1 => reg2(7),
      I2 => comm_fpga_fx2_chanAddr(1),
      I3 => comm_fpga_fx2_chanAddr(0),
      I4 => GND_4_o_h2fValid_AND_2_o1_rstpot_370,
      O => reg2_7_dpot1_395
    );
  comm_fpga_fx2_state_FSM_FFd3_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      D => comm_fpga_fx2_state_FSM_FFd3_In,
      Q => comm_fpga_fx2_state_FSM_FFd3_1_396
    );
  comm_fpga_fx2_state_FSM_FFd2_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => fx2Clk_in_BUFGP_8,
      D => comm_fpga_fx2_state_FSM_FFd2_In,
      Q => comm_fpga_fx2_state_FSM_FFd2_1_397
    );
  comm_fpga_fx2_Mmux_count_next31 : MUXF7
    port map (
      I0 => N77,
      I1 => N78,
      S => comm_fpga_fx2_GND_6_o_GND_6_o_sub_18_OUT(24),
      O => comm_fpga_fx2_count_next(24)
    );
  comm_fpga_fx2_Mmux_count_next31_F : LUT6
    generic map(
      INIT => X"0404454404044044"
    )
    port map (
      I0 => comm_fpga_fx2_state_FSM_FFd1_275,
      I1 => comm_fpga_fx2_count(24),
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => fx2GotData_in_IBUF_9,
      I4 => comm_fpga_fx2_state_FSM_FFd2_274,
      I5 => N54,
      O => N77
    );
  comm_fpga_fx2_Mmux_count_next31_G : LUT6
    generic map(
      INIT => X"FFFFFAAEFFFFFAA2"
    )
    port map (
      I0 => comm_fpga_fx2_count(24),
      I1 => fx2GotData_in_IBUF_9,
      I2 => comm_fpga_fx2_state_FSM_FFd3_273,
      I3 => comm_fpga_fx2_state_FSM_FFd2_274,
      I4 => comm_fpga_fx2_state_FSM_FFd1_275,
      I5 => N54,
      O => N78
    );
  fx2Clk_in_BUFGP : BUFGP
    port map (
      I => fx2Clk_in,
      O => fx2Clk_in_BUFGP_8
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_31_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(31),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_31_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_30_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(30),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_30_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_29_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(29),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_29_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_28_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(28),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_28_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_27_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(27),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_27_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_26_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(26),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_26_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_25_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(25),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_25_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_24_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(24),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_24_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_23_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(23),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_23_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_22_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(22),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_22_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_21_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(21),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_21_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_20_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(20),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_20_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_19_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(19),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_19_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_18_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(18),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_18_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_17_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(17),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_17_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_16_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(16),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_16_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_15_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(15),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_15_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_14_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(14),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_14_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_13_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(13),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_13_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_12_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(12),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_12_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_11_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(11),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_11_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_10_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(10),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_10_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_9_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(9),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_9_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_8_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(8),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_8_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_7_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(7),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_7_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_6_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(6),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_6_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_5_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(5),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_5_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_4_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(4),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_4_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_3_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(3),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_3_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_2_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(2),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_2_Q
    );
  comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_1_INV_0 : INV
    port map (
      I => comm_fpga_fx2_count(1),
      O => comm_fpga_fx2_Msub_GND_6_o_GND_6_o_sub_18_OUT_31_0_lut_1_Q
    );

end Structure;

