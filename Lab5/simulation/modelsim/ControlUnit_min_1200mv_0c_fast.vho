-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.2 Build 209 09/17/2014 SJ Full Version"

-- DATE "03/17/2021 15:27:23"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Control IS
    PORT (
	clk : IN std_logic;
	mclk : IN std_logic;
	enable : IN std_logic;
	statusC : IN std_logic;
	statusZ : IN std_logic;
	INST : IN std_logic_vector(31 DOWNTO 0);
	A_Mux : OUT std_logic;
	B_Mux : OUT std_logic;
	IM_MUX1 : OUT std_logic;
	REG_Mux : OUT std_logic;
	IM_MUX2 : OUT std_logic_vector(1 DOWNTO 0);
	DATA_Mux : OUT std_logic_vector(1 DOWNTO 0);
	ALU_op : OUT std_logic_vector(2 DOWNTO 0);
	inc_PC : OUT std_logic;
	ld_PC : OUT std_logic;
	clr_IR : OUT std_logic;
	ld_IR : OUT std_logic;
	clr_A : OUT std_logic;
	clr_B : OUT std_logic;
	clr_C : OUT std_logic;
	clr_Z : OUT std_logic;
	ld_A : OUT std_logic;
	ld_B : OUT std_logic;
	ld_C : OUT std_logic;
	ld_Z : OUT std_logic;
	T : OUT std_logic_vector(2 DOWNTO 0);
	wen : OUT std_logic;
	en : OUT std_logic
	);
END Control;

-- Design Ports Information
-- mclk	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[1]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[2]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[3]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[5]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[6]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[7]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[8]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[9]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[10]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[11]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[12]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[13]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[14]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[15]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[16]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[17]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[18]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[19]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[20]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[21]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[22]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[23]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Mux	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Mux	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX1	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_Mux	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX2[0]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX2[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_Mux[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_Mux[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_op[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_op[1]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_op[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inc_PC	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_PC	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_IR	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_IR	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_A	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_B	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_C	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_Z	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_A	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_B	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_C	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_Z	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wen	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[31]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[30]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[29]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[28]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[27]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[24]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[26]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[25]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- statusC	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- statusZ	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_mclk : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_statusC : std_logic;
SIGNAL ww_statusZ : std_logic;
SIGNAL ww_INST : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_A_Mux : std_logic;
SIGNAL ww_B_Mux : std_logic;
SIGNAL ww_IM_MUX1 : std_logic;
SIGNAL ww_REG_Mux : std_logic;
SIGNAL ww_IM_MUX2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DATA_Mux : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ALU_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_inc_PC : std_logic;
SIGNAL ww_ld_PC : std_logic;
SIGNAL ww_clr_IR : std_logic;
SIGNAL ww_ld_IR : std_logic;
SIGNAL ww_clr_A : std_logic;
SIGNAL ww_clr_B : std_logic;
SIGNAL ww_clr_C : std_logic;
SIGNAL ww_clr_Z : std_logic;
SIGNAL ww_ld_A : std_logic;
SIGNAL ww_ld_B : std_logic;
SIGNAL ww_ld_C : std_logic;
SIGNAL ww_ld_Z : std_logic;
SIGNAL ww_T : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_wen : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL \IM_MUX1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inc_PC~21clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IM_MUX2[1]~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA_Mux[1]~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \wen~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \enable~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mclk~input_o\ : std_logic;
SIGNAL \INST[0]~input_o\ : std_logic;
SIGNAL \INST[1]~input_o\ : std_logic;
SIGNAL \INST[2]~input_o\ : std_logic;
SIGNAL \INST[3]~input_o\ : std_logic;
SIGNAL \INST[4]~input_o\ : std_logic;
SIGNAL \INST[5]~input_o\ : std_logic;
SIGNAL \INST[6]~input_o\ : std_logic;
SIGNAL \INST[7]~input_o\ : std_logic;
SIGNAL \INST[8]~input_o\ : std_logic;
SIGNAL \INST[9]~input_o\ : std_logic;
SIGNAL \INST[10]~input_o\ : std_logic;
SIGNAL \INST[11]~input_o\ : std_logic;
SIGNAL \INST[12]~input_o\ : std_logic;
SIGNAL \INST[13]~input_o\ : std_logic;
SIGNAL \INST[14]~input_o\ : std_logic;
SIGNAL \INST[15]~input_o\ : std_logic;
SIGNAL \INST[16]~input_o\ : std_logic;
SIGNAL \INST[17]~input_o\ : std_logic;
SIGNAL \INST[18]~input_o\ : std_logic;
SIGNAL \INST[19]~input_o\ : std_logic;
SIGNAL \INST[20]~input_o\ : std_logic;
SIGNAL \INST[21]~input_o\ : std_logic;
SIGNAL \INST[22]~input_o\ : std_logic;
SIGNAL \INST[23]~input_o\ : std_logic;
SIGNAL \A_Mux~output_o\ : std_logic;
SIGNAL \B_Mux~output_o\ : std_logic;
SIGNAL \IM_MUX1~output_o\ : std_logic;
SIGNAL \REG_Mux~output_o\ : std_logic;
SIGNAL \IM_MUX2[0]~output_o\ : std_logic;
SIGNAL \IM_MUX2[1]~output_o\ : std_logic;
SIGNAL \DATA_Mux[0]~output_o\ : std_logic;
SIGNAL \DATA_Mux[1]~output_o\ : std_logic;
SIGNAL \ALU_op[0]~output_o\ : std_logic;
SIGNAL \ALU_op[1]~output_o\ : std_logic;
SIGNAL \ALU_op[2]~output_o\ : std_logic;
SIGNAL \inc_PC~output_o\ : std_logic;
SIGNAL \ld_PC~output_o\ : std_logic;
SIGNAL \clr_IR~output_o\ : std_logic;
SIGNAL \ld_IR~output_o\ : std_logic;
SIGNAL \clr_A~output_o\ : std_logic;
SIGNAL \clr_B~output_o\ : std_logic;
SIGNAL \clr_C~output_o\ : std_logic;
SIGNAL \clr_Z~output_o\ : std_logic;
SIGNAL \ld_A~output_o\ : std_logic;
SIGNAL \ld_B~output_o\ : std_logic;
SIGNAL \ld_C~output_o\ : std_logic;
SIGNAL \ld_Z~output_o\ : std_logic;
SIGNAL \T[0]~output_o\ : std_logic;
SIGNAL \T[1]~output_o\ : std_logic;
SIGNAL \T[2]~output_o\ : std_logic;
SIGNAL \wen~output_o\ : std_logic;
SIGNAL \en~output_o\ : std_logic;
SIGNAL \INST[30]~input_o\ : std_logic;
SIGNAL \INST[31]~input_o\ : std_logic;
SIGNAL \INST[28]~input_o\ : std_logic;
SIGNAL \INST[29]~input_o\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \enable~inputclkctrl_outclk\ : std_logic;
SIGNAL \present_state.state_2~q\ : std_logic;
SIGNAL \present_state.state_0~0_combout\ : std_logic;
SIGNAL \present_state.state_0~q\ : std_logic;
SIGNAL \present_state.state_1~0_combout\ : std_logic;
SIGNAL \present_state.state_1~q\ : std_logic;
SIGNAL \A_Mux~0_combout\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \DATA_Mux[1]~10_combout\ : std_logic;
SIGNAL \A_Mux~3_combout\ : std_logic;
SIGNAL \A_Mux~5_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \A_Mux~1_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal7~6_combout\ : std_logic;
SIGNAL \INST[26]~input_o\ : std_logic;
SIGNAL \INST[27]~input_o\ : std_logic;
SIGNAL \INST[25]~input_o\ : std_logic;
SIGNAL \INST[24]~input_o\ : std_logic;
SIGNAL \ld_A~5_combout\ : std_logic;
SIGNAL \ld_A~3_combout\ : std_logic;
SIGNAL \ld_A~13_combout\ : std_logic;
SIGNAL \A_Mux~4_combout\ : std_logic;
SIGNAL \A_Mux~2_combout\ : std_logic;
SIGNAL \A_Mux~6_combout\ : std_logic;
SIGNAL \A_Mux$latch~combout\ : std_logic;
SIGNAL \B_Mux~0_combout\ : std_logic;
SIGNAL \B_Mux~1_combout\ : std_logic;
SIGNAL \B_Mux~2_combout\ : std_logic;
SIGNAL \IM_MUX2[1]~4_combout\ : std_logic;
SIGNAL \B_Mux~3_combout\ : std_logic;
SIGNAL \B_Mux~4_combout\ : std_logic;
SIGNAL \B_Mux~5_combout\ : std_logic;
SIGNAL \B_Mux$latch~combout\ : std_logic;
SIGNAL \IM_MUX1~0_combout\ : std_logic;
SIGNAL \IM_MUX1~0clkctrl_outclk\ : std_logic;
SIGNAL \IM_MUX1$latch~combout\ : std_logic;
SIGNAL \REG_Mux~4_combout\ : std_logic;
SIGNAL \REG_Mux~5_combout\ : std_logic;
SIGNAL \REG_Mux$latch~combout\ : std_logic;
SIGNAL \IM_MUX2[1]~2_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \IM_MUX2[1]~3_combout\ : std_logic;
SIGNAL \IM_MUX2[0]~8_combout\ : std_logic;
SIGNAL \IM_MUX2[0]~9_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \Equal10~3_combout\ : std_logic;
SIGNAL \IM_MUX2[0]~5_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \inc_PC~15_combout\ : std_logic;
SIGNAL \IM_MUX2[1]~6_combout\ : std_logic;
SIGNAL \IM_MUX2[1]~7_combout\ : std_logic;
SIGNAL \IM_MUX2[1]~7clkctrl_outclk\ : std_logic;
SIGNAL \IM_MUX2[0]$latch~combout\ : std_logic;
SIGNAL \IM_MUX2[1]$latch~combout\ : std_logic;
SIGNAL \DATA_Mux[0]~4_combout\ : std_logic;
SIGNAL \DATA_Mux[0]~11_combout\ : std_logic;
SIGNAL \IM_MUX1~1_combout\ : std_logic;
SIGNAL \DATA_Mux[1]~7_combout\ : std_logic;
SIGNAL \inc_PC~24_combout\ : std_logic;
SIGNAL \DATA_Mux[1]~5_combout\ : std_logic;
SIGNAL \DATA_Mux[1]~6_combout\ : std_logic;
SIGNAL \DATA_Mux[1]~8_combout\ : std_logic;
SIGNAL \DATA_Mux[1]~8clkctrl_outclk\ : std_logic;
SIGNAL \DATA_Mux[0]$latch~combout\ : std_logic;
SIGNAL \DATA_Mux[1]~9_combout\ : std_logic;
SIGNAL \DATA_Mux[1]$latch~combout\ : std_logic;
SIGNAL \ALU_op[0]~12_combout\ : std_logic;
SIGNAL \ALU_op[0]~13_combout\ : std_logic;
SIGNAL \ALU_op[0]$latch~combout\ : std_logic;
SIGNAL \ALU_op[1]~7_combout\ : std_logic;
SIGNAL \ALU_op[1]~5_combout\ : std_logic;
SIGNAL \ALU_op[1]~17_combout\ : std_logic;
SIGNAL \ALU_op[1]$latch~combout\ : std_logic;
SIGNAL \ALU_op[2]~15_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \ALU_op[2]~14_combout\ : std_logic;
SIGNAL \Equal10~2_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \ALU_op[2]~16_combout\ : std_logic;
SIGNAL \ALU_op[2]$latch~combout\ : std_logic;
SIGNAL \inc_PC~25_combout\ : std_logic;
SIGNAL \inc_PC~16_combout\ : std_logic;
SIGNAL \inc_PC~23_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \inc_PC~22_combout\ : std_logic;
SIGNAL \inc_PC~17_combout\ : std_logic;
SIGNAL \inc_PC~18_combout\ : std_logic;
SIGNAL \statusC~input_o\ : std_logic;
SIGNAL \statusZ~input_o\ : std_logic;
SIGNAL \inc_PC~19_combout\ : std_logic;
SIGNAL \inc_PC~20_combout\ : std_logic;
SIGNAL \inc_PC~21_combout\ : std_logic;
SIGNAL \inc_PC~21clkctrl_outclk\ : std_logic;
SIGNAL \inc_PC$latch~combout\ : std_logic;
SIGNAL \ld_PC~1_combout\ : std_logic;
SIGNAL \ld_PC~2_combout\ : std_logic;
SIGNAL \ld_PC~0_combout\ : std_logic;
SIGNAL \ld_PC$latch~combout\ : std_logic;
SIGNAL \ld_IR$latch~combout\ : std_logic;
SIGNAL \clr_A~0_combout\ : std_logic;
SIGNAL \clr_A$latch~combout\ : std_logic;
SIGNAL \clr_B~0_combout\ : std_logic;
SIGNAL \clr_B~1_combout\ : std_logic;
SIGNAL \clr_B~2_combout\ : std_logic;
SIGNAL \clr_B$latch~combout\ : std_logic;
SIGNAL \clr_C~2_combout\ : std_logic;
SIGNAL \clr_C$latch~combout\ : std_logic;
SIGNAL \clr_Z~2_combout\ : std_logic;
SIGNAL \clr_Z$latch~combout\ : std_logic;
SIGNAL \ld_A~10_combout\ : std_logic;
SIGNAL \ld_A~11_combout\ : std_logic;
SIGNAL \ld_A~12_combout\ : std_logic;
SIGNAL \ld_A$latch~combout\ : std_logic;
SIGNAL \ld_B~0_combout\ : std_logic;
SIGNAL \ld_B~1_combout\ : std_logic;
SIGNAL \ld_B$latch~combout\ : std_logic;
SIGNAL \ld_C~0_combout\ : std_logic;
SIGNAL \ld_C$latch~combout\ : std_logic;
SIGNAL \wen~0_combout\ : std_logic;
SIGNAL \wen~1_combout\ : std_logic;
SIGNAL \wen~2_combout\ : std_logic;
SIGNAL \wen~2clkctrl_outclk\ : std_logic;
SIGNAL \wen$latch~combout\ : std_logic;
SIGNAL \en~0_combout\ : std_logic;
SIGNAL \en$latch~combout\ : std_logic;
SIGNAL \ALT_INV_present_state.state_0~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_mclk <= mclk;
ww_enable <= enable;
ww_statusC <= statusC;
ww_statusZ <= statusZ;
ww_INST <= INST;
A_Mux <= ww_A_Mux;
B_Mux <= ww_B_Mux;
IM_MUX1 <= ww_IM_MUX1;
REG_Mux <= ww_REG_Mux;
IM_MUX2 <= ww_IM_MUX2;
DATA_Mux <= ww_DATA_Mux;
ALU_op <= ww_ALU_op;
inc_PC <= ww_inc_PC;
ld_PC <= ww_ld_PC;
clr_IR <= ww_clr_IR;
ld_IR <= ww_ld_IR;
clr_A <= ww_clr_A;
clr_B <= ww_clr_B;
clr_C <= ww_clr_C;
clr_Z <= ww_clr_Z;
ld_A <= ww_ld_A;
ld_B <= ww_ld_B;
ld_C <= ww_ld_C;
ld_Z <= ww_ld_Z;
T <= ww_T;
wen <= ww_wen;
en <= ww_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\IM_MUX1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \IM_MUX1~0_combout\);

\inc_PC~21clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inc_PC~21_combout\);

\IM_MUX2[1]~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \IM_MUX2[1]~7_combout\);

\DATA_Mux[1]~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DATA_Mux[1]~8_combout\);

\wen~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \wen~2_combout\);

\enable~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \enable~input_o\);
\ALT_INV_present_state.state_0~q\ <= NOT \present_state.state_0~q\;

-- Location: IOOBUF_X83_Y73_N9
\A_Mux~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_Mux$latch~combout\,
	devoe => ww_devoe,
	o => \A_Mux~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\B_Mux~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_Mux$latch~combout\,
	devoe => ww_devoe,
	o => \B_Mux~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\IM_MUX1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IM_MUX1$latch~combout\,
	devoe => ww_devoe,
	o => \IM_MUX1~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\REG_Mux~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_Mux$latch~combout\,
	devoe => ww_devoe,
	o => \REG_Mux~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\IM_MUX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IM_MUX2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \IM_MUX2[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\IM_MUX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IM_MUX2[1]$latch~combout\,
	devoe => ww_devoe,
	o => \IM_MUX2[1]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\DATA_Mux[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_Mux[0]$latch~combout\,
	devoe => ww_devoe,
	o => \DATA_Mux[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\DATA_Mux[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_Mux[1]$latch~combout\,
	devoe => ww_devoe,
	o => \DATA_Mux[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\ALU_op[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_op[0]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_op[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\ALU_op[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_op[1]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_op[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\ALU_op[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_op[2]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_op[2]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\inc_PC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inc_PC$latch~combout\,
	devoe => ww_devoe,
	o => \inc_PC~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\ld_PC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_PC$latch~combout\,
	devoe => ww_devoe,
	o => \ld_PC~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\clr_IR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clr_IR~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\ld_IR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_IR$latch~combout\,
	devoe => ww_devoe,
	o => \ld_IR~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\clr_A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr_A$latch~combout\,
	devoe => ww_devoe,
	o => \clr_A~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\clr_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr_B$latch~combout\,
	devoe => ww_devoe,
	o => \clr_B~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\clr_C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr_C$latch~combout\,
	devoe => ww_devoe,
	o => \clr_C~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\clr_Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr_Z$latch~combout\,
	devoe => ww_devoe,
	o => \clr_Z~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\ld_A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_A$latch~combout\,
	devoe => ww_devoe,
	o => \ld_A~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\ld_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_B$latch~combout\,
	devoe => ww_devoe,
	o => \ld_B~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\ld_C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_C$latch~combout\,
	devoe => ww_devoe,
	o => \ld_C~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\ld_Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_C$latch~combout\,
	devoe => ww_devoe,
	o => \ld_Z~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\T[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_present_state.state_0~q\,
	devoe => ww_devoe,
	o => \T[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\T[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \present_state.state_1~q\,
	devoe => ww_devoe,
	o => \T[1]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\T[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \present_state.state_2~q\,
	devoe => ww_devoe,
	o => \T[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\wen~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wen$latch~combout\,
	devoe => ww_devoe,
	o => \wen~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \en$latch~combout\,
	devoe => ww_devoe,
	o => \en~output_o\);

-- Location: IOIBUF_X83_Y73_N1
\INST[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(30),
	o => \INST[30]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\INST[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(31),
	o => \INST[31]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\INST[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(28),
	o => \INST[28]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\INST[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(29),
	o => \INST[29]~input_o\);

-- Location: LCCOMB_X81_Y71_N12
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\INST[30]~input_o\ & (!\INST[31]~input_o\ & (!\INST[28]~input_o\ & !\INST[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[30]~input_o\,
	datab => \INST[31]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \Equal7~0_combout\);

-- Location: IOIBUF_X81_Y73_N1
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: CLKCTRL_G19
\enable~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \enable~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \enable~inputclkctrl_outclk\);

-- Location: FF_X80_Y71_N29
\present_state.state_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \present_state.state_1~q\,
	clrn => \enable~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.state_2~q\);

-- Location: LCCOMB_X81_Y71_N24
\present_state.state_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.state_0~0_combout\ = !\present_state.state_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.state_2~q\,
	combout => \present_state.state_0~0_combout\);

-- Location: FF_X81_Y71_N25
\present_state.state_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \present_state.state_0~0_combout\,
	clrn => \enable~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.state_0~q\);

-- Location: LCCOMB_X81_Y71_N14
\present_state.state_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.state_1~0_combout\ = !\present_state.state_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.state_0~q\,
	combout => \present_state.state_1~0_combout\);

-- Location: FF_X81_Y71_N15
\present_state.state_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \present_state.state_1~0_combout\,
	clrn => \enable~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.state_1~q\);

-- Location: LCCOMB_X81_Y71_N16
\A_Mux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux~0_combout\ = (\Equal7~0_combout\ & !\present_state.state_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal7~0_combout\,
	datac => \present_state.state_1~q\,
	combout => \A_Mux~0_combout\);

-- Location: LCCOMB_X79_Y71_N10
\Equal7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = (\INST[31]~input_o\ & (!\INST[30]~input_o\ & (\INST[29]~input_o\ & !\INST[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \Equal7~5_combout\);

-- Location: LCCOMB_X79_Y71_N28
\Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (\INST[31]~input_o\ & (!\INST[30]~input_o\ & (!\INST[29]~input_o\ & \INST[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X80_Y71_N6
\DATA_Mux[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]~10_combout\ = (\INST[31]~input_o\ & ((\INST[30]~input_o\) # ((\INST[29]~input_o\) # (\INST[28]~input_o\)))) # (!\INST[31]~input_o\ & ((\INST[29]~input_o\ $ (!\INST[28]~input_o\)) # (!\INST[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \DATA_Mux[1]~10_combout\);

-- Location: LCCOMB_X79_Y71_N26
\A_Mux~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux~3_combout\ = (!\Equal7~5_combout\ & (!\Equal7~2_combout\ & (\present_state.state_2~q\ & \DATA_Mux[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~5_combout\,
	datab => \Equal7~2_combout\,
	datac => \present_state.state_2~q\,
	datad => \DATA_Mux[1]~10_combout\,
	combout => \A_Mux~3_combout\);

-- Location: LCCOMB_X79_Y71_N12
\A_Mux~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux~5_combout\ = (\Equal7~0_combout\ & ((\A_Mux~3_combout\) # ((\present_state.state_1~q\ & \Equal7~2_combout\)))) # (!\Equal7~0_combout\ & (\present_state.state_1~q\ & ((\Equal7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \present_state.state_1~q\,
	datac => \A_Mux~3_combout\,
	datad => \Equal7~2_combout\,
	combout => \A_Mux~5_combout\);

-- Location: LCCOMB_X82_Y71_N20
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (!\INST[30]~input_o\ & (!\INST[31]~input_o\ & (\INST[29]~input_o\ & !\INST[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[30]~input_o\,
	datab => \INST[31]~input_o\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X79_Y71_N16
\Equal7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = (!\INST[31]~input_o\ & (!\INST[30]~input_o\ & (\INST[29]~input_o\ & \INST[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \Equal7~4_combout\);

-- Location: LCCOMB_X79_Y71_N24
\A_Mux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux~1_combout\ = (!\Equal7~1_combout\ & !\Equal7~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~1_combout\,
	datad => \Equal7~4_combout\,
	combout => \A_Mux~1_combout\);

-- Location: LCCOMB_X82_Y71_N28
\Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (\INST[30]~input_o\ & (!\INST[31]~input_o\ & (!\INST[29]~input_o\ & !\INST[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[30]~input_o\,
	datab => \INST[31]~input_o\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X82_Y71_N8
\Equal7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~6_combout\ = (!\INST[30]~input_o\ & (!\INST[31]~input_o\ & (!\INST[29]~input_o\ & \INST[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[30]~input_o\,
	datab => \INST[31]~input_o\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \Equal7~6_combout\);

-- Location: IOIBUF_X79_Y73_N1
\INST[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(26),
	o => \INST[26]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\INST[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(27),
	o => \INST[27]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\INST[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(25),
	o => \INST[25]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\INST[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(24),
	o => \INST[24]~input_o\);

-- Location: LCCOMB_X81_Y71_N20
\ld_A~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~5_combout\ = (\INST[26]~input_o\ & (\INST[27]~input_o\ $ (((\INST[25]~input_o\) # (\INST[24]~input_o\))))) # (!\INST[26]~input_o\ & (\INST[27]~input_o\ & ((!\INST[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[26]~input_o\,
	datab => \INST[27]~input_o\,
	datac => \INST[25]~input_o\,
	datad => \INST[24]~input_o\,
	combout => \ld_A~5_combout\);

-- Location: LCCOMB_X81_Y71_N10
\ld_A~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~3_combout\ = (\INST[31]~input_o\) # (\ld_A~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST[31]~input_o\,
	datad => \ld_A~5_combout\,
	combout => \ld_A~3_combout\);

-- Location: LCCOMB_X81_Y71_N0
\ld_A~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~13_combout\ = (\ld_A~3_combout\) # (((!\INST[29]~input_o\) # (!\INST[28]~input_o\)) # (!\INST[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_A~3_combout\,
	datab => \INST[30]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \ld_A~13_combout\);

-- Location: LCCOMB_X79_Y71_N4
\A_Mux~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux~4_combout\ = (!\Equal7~6_combout\ & (\A_Mux~3_combout\ & ((\Equal7~3_combout\) # (!\ld_A~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~3_combout\,
	datab => \Equal7~6_combout\,
	datac => \A_Mux~3_combout\,
	datad => \ld_A~13_combout\,
	combout => \A_Mux~4_combout\);

-- Location: LCCOMB_X79_Y71_N0
\A_Mux~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux~2_combout\ = (\enable~input_o\ & \present_state.state_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datad => \present_state.state_0~q\,
	combout => \A_Mux~2_combout\);

-- Location: LCCOMB_X79_Y71_N20
\A_Mux~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux~6_combout\ = (\A_Mux~1_combout\ & (\A_Mux~2_combout\ & ((\A_Mux~5_combout\) # (\A_Mux~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~5_combout\,
	datab => \A_Mux~1_combout\,
	datac => \A_Mux~4_combout\,
	datad => \A_Mux~2_combout\,
	combout => \A_Mux~6_combout\);

-- Location: LCCOMB_X81_Y71_N8
\A_Mux$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux$latch~combout\ = (\A_Mux~6_combout\ & (\A_Mux~0_combout\)) # (!\A_Mux~6_combout\ & ((\A_Mux$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~0_combout\,
	datac => \A_Mux$latch~combout\,
	datad => \A_Mux~6_combout\,
	combout => \A_Mux$latch~combout\);

-- Location: LCCOMB_X81_Y71_N6
\B_Mux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux~0_combout\ = (!\INST[30]~input_o\ & (\INST[31]~input_o\ & (\INST[29]~input_o\ $ (\INST[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[30]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[31]~input_o\,
	combout => \B_Mux~0_combout\);

-- Location: LCCOMB_X81_Y71_N18
\B_Mux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux~1_combout\ = (\present_state.state_1~q\) # (\B_Mux~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_1~q\,
	datad => \B_Mux~0_combout\,
	combout => \B_Mux~1_combout\);

-- Location: LCCOMB_X80_Y71_N22
\B_Mux~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux~2_combout\ = (\Equal7~5_combout\ & (\enable~input_o\ & (\present_state.state_1~q\ & \present_state.state_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~5_combout\,
	datab => \enable~input_o\,
	datac => \present_state.state_1~q\,
	datad => \present_state.state_0~q\,
	combout => \B_Mux~2_combout\);

-- Location: LCCOMB_X80_Y71_N0
\IM_MUX2[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[1]~4_combout\ = (\enable~input_o\ & \present_state.state_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~input_o\,
	datad => \present_state.state_2~q\,
	combout => \IM_MUX2[1]~4_combout\);

-- Location: LCCOMB_X80_Y71_N14
\B_Mux~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux~3_combout\ = (!\INST[30]~input_o\ & ((\INST[29]~input_o\ & (\INST[31]~input_o\ & !\INST[28]~input_o\)) # (!\INST[29]~input_o\ & ((\INST[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \B_Mux~3_combout\);

-- Location: LCCOMB_X81_Y71_N22
\B_Mux~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux~4_combout\ = (!\present_state.state_1~q\ & \present_state.state_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.state_1~q\,
	datad => \present_state.state_0~q\,
	combout => \B_Mux~4_combout\);

-- Location: LCCOMB_X80_Y71_N12
\B_Mux~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux~5_combout\ = (\B_Mux~2_combout\) # ((\IM_MUX2[1]~4_combout\ & (\B_Mux~3_combout\ & \B_Mux~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Mux~2_combout\,
	datab => \IM_MUX2[1]~4_combout\,
	datac => \B_Mux~3_combout\,
	datad => \B_Mux~4_combout\,
	combout => \B_Mux~5_combout\);

-- Location: LCCOMB_X81_Y71_N26
\B_Mux$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux$latch~combout\ = (\B_Mux~5_combout\ & (!\B_Mux~1_combout\)) # (!\B_Mux~5_combout\ & ((\B_Mux$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Mux~1_combout\,
	datac => \B_Mux$latch~combout\,
	datad => \B_Mux~5_combout\,
	combout => \B_Mux$latch~combout\);

-- Location: LCCOMB_X79_Y71_N6
\IM_MUX1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1~0_combout\ = (!\Equal7~0_combout\ & (\enable~input_o\ & (\A_Mux~4_combout\ & \A_Mux~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \enable~input_o\,
	datac => \A_Mux~4_combout\,
	datad => \A_Mux~1_combout\,
	combout => \IM_MUX1~0_combout\);

-- Location: CLKCTRL_G10
\IM_MUX1~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \IM_MUX1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \IM_MUX1~0clkctrl_outclk\);

-- Location: LCCOMB_X83_Y72_N28
\IM_MUX1$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1$latch~combout\ = (GLOBAL(\IM_MUX1~0clkctrl_outclk\) & (\Equal7~3_combout\)) # (!GLOBAL(\IM_MUX1~0clkctrl_outclk\) & ((\IM_MUX1$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal7~3_combout\,
	datac => \IM_MUX1~0clkctrl_outclk\,
	datad => \IM_MUX1$latch~combout\,
	combout => \IM_MUX1$latch~combout\);

-- Location: LCCOMB_X82_Y71_N2
\REG_Mux~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_Mux~4_combout\ = (!\INST[31]~input_o\ & (!\INST[30]~input_o\ & \INST[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST[31]~input_o\,
	datac => \INST[30]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \REG_Mux~4_combout\);

-- Location: LCCOMB_X82_Y71_N18
\REG_Mux~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_Mux~5_combout\ = (\REG_Mux~4_combout\ & (\enable~input_o\ & \present_state.state_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_Mux~4_combout\,
	datac => \enable~input_o\,
	datad => \present_state.state_0~q\,
	combout => \REG_Mux~5_combout\);

-- Location: LCCOMB_X82_Y71_N24
\REG_Mux$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_Mux$latch~combout\ = (\REG_Mux~5_combout\ & ((!\Equal7~1_combout\))) # (!\REG_Mux~5_combout\ & (\REG_Mux$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_Mux$latch~combout\,
	datac => \Equal7~1_combout\,
	datad => \REG_Mux~5_combout\,
	combout => \REG_Mux$latch~combout\);

-- Location: LCCOMB_X79_Y72_N16
\IM_MUX2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[1]~2_combout\ = (\INST[26]~input_o\ $ (\INST[27]~input_o\)) # (!\INST[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST[26]~input_o\,
	datac => \INST[25]~input_o\,
	datad => \INST[27]~input_o\,
	combout => \IM_MUX2[1]~2_combout\);

-- Location: LCCOMB_X81_Y72_N22
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (!\INST[31]~input_o\ & (\INST[30]~input_o\ & (\INST[28]~input_o\ & \INST[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X80_Y72_N4
\IM_MUX2[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[1]~3_combout\ = (\IM_MUX2[1]~2_combout\) # ((\INST[24]~input_o\ $ (!\INST[27]~input_o\)) # (!\Equal10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~2_combout\,
	datab => \INST[24]~input_o\,
	datac => \INST[27]~input_o\,
	datad => \Equal10~0_combout\,
	combout => \IM_MUX2[1]~3_combout\);

-- Location: LCCOMB_X80_Y72_N12
\IM_MUX2[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[0]~8_combout\ = (\INST[26]~input_o\) # ((\INST[24]~input_o\) # ((\INST[27]~input_o\) # (!\Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[26]~input_o\,
	datab => \INST[24]~input_o\,
	datac => \INST[27]~input_o\,
	datad => \Equal10~0_combout\,
	combout => \IM_MUX2[0]~8_combout\);

-- Location: LCCOMB_X80_Y72_N26
\IM_MUX2[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[0]~9_combout\ = (\IM_MUX2[1]~3_combout\ & \IM_MUX2[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IM_MUX2[1]~3_combout\,
	datad => \IM_MUX2[0]~8_combout\,
	combout => \IM_MUX2[0]~9_combout\);

-- Location: LCCOMB_X79_Y72_N10
\Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (\INST[30]~input_o\ & (!\INST[31]~input_o\ & \INST[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST[30]~input_o\,
	datac => \INST[31]~input_o\,
	datad => \INST[27]~input_o\,
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X80_Y72_N28
\Equal10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~3_combout\ = (\Equal10~1_combout\ & (\INST[24]~input_o\ & (\INST[28]~input_o\ & \INST[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \INST[24]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \Equal10~3_combout\);

-- Location: LCCOMB_X80_Y72_N22
\IM_MUX2[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[0]~5_combout\ = (\Equal10~3_combout\ & ((\INST[26]~input_o\ & (\IM_MUX2[0]~9_combout\)) # (!\INST[26]~input_o\ & ((!\INST[25]~input_o\))))) # (!\Equal10~3_combout\ & (\IM_MUX2[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~9_combout\,
	datab => \Equal10~3_combout\,
	datac => \INST[26]~input_o\,
	datad => \INST[25]~input_o\,
	combout => \IM_MUX2[0]~5_combout\);

-- Location: LCCOMB_X81_Y72_N12
\Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (!\INST[27]~input_o\ & (\Equal10~0_combout\ & \INST[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[27]~input_o\,
	datac => \Equal10~0_combout\,
	datad => \INST[24]~input_o\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X80_Y72_N24
\inc_PC~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~15_combout\ = (\INST[25]~input_o\ & ((\INST[26]~input_o\) # ((!\Equal10~3_combout\)))) # (!\INST[25]~input_o\ & (!\Equal10~3_combout\ & ((\INST[26]~input_o\) # (!\Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datab => \INST[26]~input_o\,
	datac => \Equal14~0_combout\,
	datad => \Equal10~3_combout\,
	combout => \inc_PC~15_combout\);

-- Location: LCCOMB_X81_Y72_N4
\IM_MUX2[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[1]~6_combout\ = (\INST[31]~input_o\ & ((\INST[30]~input_o\) # ((\INST[28]~input_o\ & \INST[29]~input_o\)))) # (!\INST[31]~input_o\ & (\INST[30]~input_o\ & (\INST[28]~input_o\ & \INST[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \IM_MUX2[1]~6_combout\);

-- Location: LCCOMB_X80_Y72_N2
\IM_MUX2[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[1]~7_combout\ = (\IM_MUX2[1]~4_combout\ & (\IM_MUX2[1]~6_combout\ & ((!\inc_PC~15_combout\) # (!\IM_MUX2[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~9_combout\,
	datab => \IM_MUX2[1]~4_combout\,
	datac => \inc_PC~15_combout\,
	datad => \IM_MUX2[1]~6_combout\,
	combout => \IM_MUX2[1]~7_combout\);

-- Location: CLKCTRL_G11
\IM_MUX2[1]~7clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \IM_MUX2[1]~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \IM_MUX2[1]~7clkctrl_outclk\);

-- Location: LCCOMB_X80_Y72_N14
\IM_MUX2[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[0]$latch~combout\ = (GLOBAL(\IM_MUX2[1]~7clkctrl_outclk\) & (\IM_MUX2[0]~5_combout\)) # (!GLOBAL(\IM_MUX2[1]~7clkctrl_outclk\) & ((\IM_MUX2[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~5_combout\,
	datab => \IM_MUX2[0]$latch~combout\,
	datad => \IM_MUX2[1]~7clkctrl_outclk\,
	combout => \IM_MUX2[0]$latch~combout\);

-- Location: LCCOMB_X79_Y72_N14
\IM_MUX2[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[1]$latch~combout\ = (GLOBAL(\IM_MUX2[1]~7clkctrl_outclk\) & (!\IM_MUX2[1]~3_combout\)) # (!GLOBAL(\IM_MUX2[1]~7clkctrl_outclk\) & ((\IM_MUX2[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~3_combout\,
	datac => \IM_MUX2[1]$latch~combout\,
	datad => \IM_MUX2[1]~7clkctrl_outclk\,
	combout => \IM_MUX2[1]$latch~combout\);

-- Location: LCCOMB_X82_Y71_N12
\DATA_Mux[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[0]~4_combout\ = (\INST[30]~input_o\ & (!\INST[29]~input_o\ & (!\INST[28]~input_o\ & !\INST[31]~input_o\))) # (!\INST[30]~input_o\ & (\INST[31]~input_o\ & (\INST[29]~input_o\ $ (\INST[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[29]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[31]~input_o\,
	combout => \DATA_Mux[0]~4_combout\);

-- Location: LCCOMB_X82_Y71_N22
\DATA_Mux[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[0]~11_combout\ = (\present_state.state_0~q\ & ((\present_state.state_1~q\ & (!\REG_Mux~4_combout\)) # (!\present_state.state_1~q\ & ((\DATA_Mux[0]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_Mux~4_combout\,
	datab => \present_state.state_1~q\,
	datac => \DATA_Mux[0]~4_combout\,
	datad => \present_state.state_0~q\,
	combout => \DATA_Mux[0]~11_combout\);

-- Location: LCCOMB_X82_Y71_N6
\IM_MUX1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1~1_combout\ = (!\Equal7~6_combout\ & (!\Equal7~0_combout\ & ((\Equal7~3_combout\) # (!\ld_A~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_A~13_combout\,
	datab => \Equal7~3_combout\,
	datac => \Equal7~6_combout\,
	datad => \Equal7~0_combout\,
	combout => \IM_MUX1~1_combout\);

-- Location: LCCOMB_X80_Y71_N2
\DATA_Mux[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]~7_combout\ = (\enable~input_o\ & (\present_state.state_2~q\ & (!\present_state.state_1~q\ & \DATA_Mux[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \present_state.state_2~q\,
	datac => \present_state.state_1~q\,
	datad => \DATA_Mux[1]~10_combout\,
	combout => \DATA_Mux[1]~7_combout\);

-- Location: LCCOMB_X82_Y71_N14
\inc_PC~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~24_combout\ = (\INST[30]~input_o\) # (\INST[29]~input_o\ $ (((!\INST[28]~input_o\) # (!\INST[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[30]~input_o\,
	datab => \INST[31]~input_o\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \inc_PC~24_combout\);

-- Location: LCCOMB_X82_Y71_N30
\DATA_Mux[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]~5_combout\ = (!\INST[30]~input_o\ & (\INST[29]~input_o\ $ (((\INST[31]~input_o\ & \INST[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[30]~input_o\,
	datab => \INST[31]~input_o\,
	datac => \INST[29]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \DATA_Mux[1]~5_combout\);

-- Location: LCCOMB_X82_Y71_N0
\DATA_Mux[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]~6_combout\ = (\enable~input_o\ & (((\DATA_Mux[1]~5_combout\ & \present_state.state_1~q\)) # (!\present_state.state_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \present_state.state_0~q\,
	datac => \DATA_Mux[1]~5_combout\,
	datad => \present_state.state_1~q\,
	combout => \DATA_Mux[1]~6_combout\);

-- Location: LCCOMB_X82_Y71_N16
\DATA_Mux[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]~8_combout\ = (\DATA_Mux[1]~6_combout\) # ((\DATA_Mux[1]~7_combout\ & ((\IM_MUX1~1_combout\) # (!\inc_PC~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~1_combout\,
	datab => \DATA_Mux[1]~7_combout\,
	datac => \inc_PC~24_combout\,
	datad => \DATA_Mux[1]~6_combout\,
	combout => \DATA_Mux[1]~8_combout\);

-- Location: CLKCTRL_G12
\DATA_Mux[1]~8clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DATA_Mux[1]~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DATA_Mux[1]~8clkctrl_outclk\);

-- Location: LCCOMB_X82_Y71_N4
\DATA_Mux[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[0]$latch~combout\ = (GLOBAL(\DATA_Mux[1]~8clkctrl_outclk\) & (\DATA_Mux[0]~11_combout\)) # (!GLOBAL(\DATA_Mux[1]~8clkctrl_outclk\) & ((\DATA_Mux[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_Mux[0]~11_combout\,
	datac => \DATA_Mux[0]$latch~combout\,
	datad => \DATA_Mux[1]~8clkctrl_outclk\,
	combout => \DATA_Mux[0]$latch~combout\);

-- Location: LCCOMB_X79_Y71_N22
\DATA_Mux[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]~9_combout\ = (!\Equal7~3_combout\ & (\present_state.state_2~q\ & \inc_PC~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal7~3_combout\,
	datac => \present_state.state_2~q\,
	datad => \inc_PC~24_combout\,
	combout => \DATA_Mux[1]~9_combout\);

-- Location: LCCOMB_X75_Y71_N28
\DATA_Mux[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]$latch~combout\ = (GLOBAL(\DATA_Mux[1]~8clkctrl_outclk\) & (\DATA_Mux[1]~9_combout\)) # (!GLOBAL(\DATA_Mux[1]~8clkctrl_outclk\) & ((\DATA_Mux[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_Mux[1]~9_combout\,
	datac => \DATA_Mux[1]~8clkctrl_outclk\,
	datad => \DATA_Mux[1]$latch~combout\,
	combout => \DATA_Mux[1]$latch~combout\);

-- Location: LCCOMB_X80_Y72_N18
\ALU_op[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[0]~12_combout\ = (\INST[24]~input_o\ & (((\INST[26]~input_o\)))) # (!\INST[24]~input_o\ & (\INST[27]~input_o\ $ (((\INST[25]~input_o\ & \INST[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datab => \INST[26]~input_o\,
	datac => \INST[27]~input_o\,
	datad => \INST[24]~input_o\,
	combout => \ALU_op[0]~12_combout\);

-- Location: LCCOMB_X80_Y72_N20
\ALU_op[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[0]~13_combout\ = (\ALU_op[0]~12_combout\) # (!\Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal10~0_combout\,
	datad => \ALU_op[0]~12_combout\,
	combout => \ALU_op[0]~13_combout\);

-- Location: LCCOMB_X76_Y72_N20
\ALU_op[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[0]$latch~combout\ = (GLOBAL(\IM_MUX1~0clkctrl_outclk\) & (\ALU_op[0]~13_combout\)) # (!GLOBAL(\IM_MUX1~0clkctrl_outclk\) & ((\ALU_op[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_op[0]~13_combout\,
	datac => \IM_MUX1~0clkctrl_outclk\,
	datad => \ALU_op[0]$latch~combout\,
	combout => \ALU_op[0]$latch~combout\);

-- Location: LCCOMB_X79_Y72_N28
\ALU_op[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[1]~7_combout\ = (\INST[27]~input_o\ & (\INST[26]~input_o\ & (\INST[25]~input_o\ & !\INST[24]~input_o\))) # (!\INST[27]~input_o\ & (!\INST[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[27]~input_o\,
	datab => \INST[26]~input_o\,
	datac => \INST[25]~input_o\,
	datad => \INST[24]~input_o\,
	combout => \ALU_op[1]~7_combout\);

-- Location: LCCOMB_X79_Y72_N22
\ALU_op[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[1]~5_combout\ = (\ALU_op[1]~7_combout\ & !\INST[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_op[1]~7_combout\,
	datac => \INST[31]~input_o\,
	combout => \ALU_op[1]~5_combout\);

-- Location: LCCOMB_X79_Y72_N4
\ALU_op[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[1]~17_combout\ = (\ALU_op[1]~5_combout\ & (\INST[28]~input_o\ & (\INST[29]~input_o\ & \INST[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_op[1]~5_combout\,
	datab => \INST[28]~input_o\,
	datac => \INST[29]~input_o\,
	datad => \INST[30]~input_o\,
	combout => \ALU_op[1]~17_combout\);

-- Location: LCCOMB_X79_Y72_N12
\ALU_op[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[1]$latch~combout\ = (GLOBAL(\IM_MUX1~0clkctrl_outclk\) & (\ALU_op[1]~17_combout\)) # (!GLOBAL(\IM_MUX1~0clkctrl_outclk\) & ((\ALU_op[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_op[1]~17_combout\,
	datac => \IM_MUX1~0clkctrl_outclk\,
	datad => \ALU_op[1]$latch~combout\,
	combout => \ALU_op[1]$latch~combout\);

-- Location: LCCOMB_X80_Y72_N0
\ALU_op[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[2]~15_combout\ = (!\Equal7~3_combout\ & (((\INST[26]~input_o\) # (!\Equal14~0_combout\)) # (!\INST[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datab => \INST[26]~input_o\,
	datac => \Equal14~0_combout\,
	datad => \Equal7~3_combout\,
	combout => \ALU_op[2]~15_combout\);

-- Location: LCCOMB_X80_Y72_N8
\Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (!\INST[27]~input_o\ & (\Equal10~0_combout\ & !\INST[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[27]~input_o\,
	datac => \Equal10~0_combout\,
	datad => \INST[24]~input_o\,
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X81_Y72_N10
\Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (\INST[27]~input_o\ & (\Equal10~0_combout\ & !\INST[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[27]~input_o\,
	datac => \Equal10~0_combout\,
	datad => \INST[24]~input_o\,
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X80_Y72_N16
\ALU_op[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[2]~14_combout\ = (\INST[25]~input_o\ & ((\INST[26]~input_o\ & ((\Equal11~0_combout\))) # (!\INST[26]~input_o\ & (\Equal12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datab => \Equal12~0_combout\,
	datac => \Equal11~0_combout\,
	datad => \INST[26]~input_o\,
	combout => \ALU_op[2]~14_combout\);

-- Location: LCCOMB_X80_Y72_N10
\Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~2_combout\ = (!\INST[25]~input_o\ & !\INST[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datad => \INST[26]~input_o\,
	combout => \Equal10~2_combout\);

-- Location: LCCOMB_X80_Y72_N30
\Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = (\Equal10~2_combout\ & (!\INST[24]~input_o\ & (!\INST[27]~input_o\ & \Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~2_combout\,
	datab => \INST[24]~input_o\,
	datac => \INST[27]~input_o\,
	datad => \Equal10~0_combout\,
	combout => \Equal12~1_combout\);

-- Location: LCCOMB_X80_Y72_N6
\ALU_op[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[2]~16_combout\ = (\ALU_op[2]~14_combout\) # ((\ALU_op[2]~15_combout\ & (\inc_PC~15_combout\ & !\Equal12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_op[2]~15_combout\,
	datab => \ALU_op[2]~14_combout\,
	datac => \inc_PC~15_combout\,
	datad => \Equal12~1_combout\,
	combout => \ALU_op[2]~16_combout\);

-- Location: LCCOMB_X76_Y72_N18
\ALU_op[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[2]$latch~combout\ = (GLOBAL(\IM_MUX1~0clkctrl_outclk\) & (\ALU_op[2]~16_combout\)) # (!GLOBAL(\IM_MUX1~0clkctrl_outclk\) & ((\ALU_op[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_op[2]~16_combout\,
	datac => \IM_MUX1~0clkctrl_outclk\,
	datad => \ALU_op[2]$latch~combout\,
	combout => \ALU_op[2]$latch~combout\);

-- Location: LCCOMB_X79_Y71_N30
\inc_PC~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~25_combout\ = (\INST[31]~input_o\ & (!\INST[30]~input_o\ & (!\INST[28]~input_o\ & !\INST[29]~input_o\))) # (!\INST[31]~input_o\ & (\INST[30]~input_o\ & (\INST[28]~input_o\ $ (\INST[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \inc_PC~25_combout\);

-- Location: LCCOMB_X80_Y71_N16
\inc_PC~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~16_combout\ = (\present_state.state_1~q\ & (\present_state.state_0~q\ & ((\inc_PC~25_combout\) # (!\present_state.state_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_1~q\,
	datab => \present_state.state_0~q\,
	datac => \present_state.state_2~q\,
	datad => \inc_PC~25_combout\,
	combout => \inc_PC~16_combout\);

-- Location: LCCOMB_X80_Y71_N20
\inc_PC~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~23_combout\ = (\present_state.state_2~q\ & \IM_MUX2[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_2~q\,
	datad => \IM_MUX2[1]~6_combout\,
	combout => \inc_PC~23_combout\);

-- Location: LCCOMB_X81_Y72_N14
\Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~0_combout\ = (!\INST[25]~input_o\ & (\INST[26]~input_o\ & \Equal14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datac => \INST[26]~input_o\,
	datad => \Equal14~0_combout\,
	combout => \Equal20~0_combout\);

-- Location: LCCOMB_X81_Y72_N8
\inc_PC~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~22_combout\ = ((\INST[27]~input_o\) # ((!\INST[26]~input_o\) # (!\Equal10~0_combout\))) # (!\INST[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datab => \INST[27]~input_o\,
	datac => \Equal10~0_combout\,
	datad => \INST[26]~input_o\,
	combout => \inc_PC~22_combout\);

-- Location: LCCOMB_X81_Y72_N0
\inc_PC~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~17_combout\ = (!\Equal20~0_combout\ & (\inc_PC~22_combout\ & ((!\Equal11~0_combout\) # (!\Equal10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~2_combout\,
	datab => \Equal20~0_combout\,
	datac => \inc_PC~22_combout\,
	datad => \Equal11~0_combout\,
	combout => \inc_PC~17_combout\);

-- Location: LCCOMB_X80_Y71_N10
\inc_PC~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~18_combout\ = (\inc_PC~16_combout\) # ((\ld_A~13_combout\ & (\inc_PC~23_combout\ & \inc_PC~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_PC~16_combout\,
	datab => \ld_A~13_combout\,
	datac => \inc_PC~23_combout\,
	datad => \inc_PC~17_combout\,
	combout => \inc_PC~18_combout\);

-- Location: IOIBUF_X89_Y73_N8
\statusC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_statusC,
	o => \statusC~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\statusZ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_statusZ,
	o => \statusZ~input_o\);

-- Location: LCCOMB_X81_Y72_N20
\inc_PC~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~19_combout\ = (\INST[25]~input_o\ & (((!\INST[26]~input_o\ & \statusZ~input_o\)))) # (!\INST[25]~input_o\ & (\statusC~input_o\ & (\INST[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datab => \statusC~input_o\,
	datac => \INST[26]~input_o\,
	datad => \statusZ~input_o\,
	combout => \inc_PC~19_combout\);

-- Location: LCCOMB_X81_Y72_N30
\inc_PC~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~20_combout\ = (((\Equal11~0_combout\ & \inc_PC~19_combout\)) # (!\present_state.state_2~q\)) # (!\IM_MUX2[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \inc_PC~19_combout\,
	datac => \IM_MUX2[1]~6_combout\,
	datad => \present_state.state_2~q\,
	combout => \inc_PC~20_combout\);

-- Location: LCCOMB_X81_Y72_N18
\inc_PC~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~21_combout\ = (\enable~input_o\ & (((\inc_PC~20_combout\) # (!\inc_PC~17_combout\)) # (!\ld_A~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \ld_A~13_combout\,
	datac => \inc_PC~20_combout\,
	datad => \inc_PC~17_combout\,
	combout => \inc_PC~21_combout\);

-- Location: CLKCTRL_G14
\inc_PC~21clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inc_PC~21clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inc_PC~21clkctrl_outclk\);

-- Location: LCCOMB_X80_Y71_N26
\inc_PC$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC$latch~combout\ = (GLOBAL(\inc_PC~21clkctrl_outclk\) & (\inc_PC~18_combout\)) # (!GLOBAL(\inc_PC~21clkctrl_outclk\) & ((\inc_PC$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_PC~18_combout\,
	datac => \inc_PC$latch~combout\,
	datad => \inc_PC~21clkctrl_outclk\,
	combout => \inc_PC$latch~combout\);

-- Location: LCCOMB_X79_Y71_N14
\ld_PC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_PC~1_combout\ = (\INST[31]~input_o\ & (!\INST[30]~input_o\ & (!\INST[28]~input_o\ & !\INST[29]~input_o\))) # (!\INST[31]~input_o\ & (\INST[30]~input_o\ & (\INST[28]~input_o\ $ (\INST[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \ld_PC~1_combout\);

-- Location: LCCOMB_X80_Y71_N18
\ld_PC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_PC~2_combout\ = (\present_state.state_0~q\ & ((\ld_PC~1_combout\) # (!\present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_2~q\,
	datac => \ld_PC~1_combout\,
	datad => \present_state.state_0~q\,
	combout => \ld_PC~2_combout\);

-- Location: LCCOMB_X80_Y71_N30
\ld_PC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_PC~0_combout\ = (\ld_PC~2_combout\) # ((\ld_A~13_combout\ & (\inc_PC~17_combout\ & \inc_PC~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_A~13_combout\,
	datab => \inc_PC~17_combout\,
	datac => \inc_PC~23_combout\,
	datad => \ld_PC~2_combout\,
	combout => \ld_PC~0_combout\);

-- Location: LCCOMB_X80_Y71_N8
\ld_PC$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_PC$latch~combout\ = (GLOBAL(\inc_PC~21clkctrl_outclk\) & (\ld_PC~0_combout\)) # (!GLOBAL(\inc_PC~21clkctrl_outclk\) & ((\ld_PC$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_PC~0_combout\,
	datac => \ld_PC$latch~combout\,
	datad => \inc_PC~21clkctrl_outclk\,
	combout => \ld_PC$latch~combout\);

-- Location: LCCOMB_X66_Y72_N0
\ld_IR$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_IR$latch~combout\ = (GLOBAL(\inc_PC~21clkctrl_outclk\) & (!\present_state.state_0~q\)) # (!GLOBAL(\inc_PC~21clkctrl_outclk\) & ((\ld_IR$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state.state_0~q\,
	datac => \inc_PC~21clkctrl_outclk\,
	datad => \ld_IR$latch~combout\,
	combout => \ld_IR$latch~combout\);

-- Location: LCCOMB_X81_Y72_N6
\clr_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_A~0_combout\ = (\present_state.state_2~q\ & (\INST[26]~input_o\ & (\Equal14~0_combout\ & !\INST[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_2~q\,
	datab => \INST[26]~input_o\,
	datac => \Equal14~0_combout\,
	datad => \INST[25]~input_o\,
	combout => \clr_A~0_combout\);

-- Location: LCCOMB_X82_Y72_N12
\clr_A$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_A$latch~combout\ = (GLOBAL(\inc_PC~21clkctrl_outclk\) & ((\clr_A~0_combout\))) # (!GLOBAL(\inc_PC~21clkctrl_outclk\) & (\clr_A$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_A$latch~combout\,
	datac => \clr_A~0_combout\,
	datad => \inc_PC~21clkctrl_outclk\,
	combout => \clr_A$latch~combout\);

-- Location: LCCOMB_X81_Y72_N2
\clr_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_B~0_combout\ = (!\INST[31]~input_o\ & (\INST[30]~input_o\ & (\INST[29]~input_o\ $ (!\INST[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[30]~input_o\,
	combout => \clr_B~0_combout\);

-- Location: LCCOMB_X81_Y72_N16
\clr_B~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_B~1_combout\ = (\INST[25]~input_o\ & (!\INST[27]~input_o\ & (\INST[26]~input_o\ & !\INST[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datab => \INST[27]~input_o\,
	datac => \INST[26]~input_o\,
	datad => \INST[24]~input_o\,
	combout => \clr_B~1_combout\);

-- Location: LCCOMB_X81_Y72_N26
\clr_B~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_B~2_combout\ = (\clr_B~0_combout\ & (\present_state.state_2~q\ & ((\clr_B~1_combout\) # (!\INST[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_B~0_combout\,
	datab => \INST[29]~input_o\,
	datac => \present_state.state_2~q\,
	datad => \clr_B~1_combout\,
	combout => \clr_B~2_combout\);

-- Location: LCCOMB_X82_Y72_N6
\clr_B$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_B$latch~combout\ = (GLOBAL(\inc_PC~21clkctrl_outclk\) & ((\clr_B~2_combout\))) # (!GLOBAL(\inc_PC~21clkctrl_outclk\) & (\clr_B$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_B$latch~combout\,
	datac => \clr_B~2_combout\,
	datad => \inc_PC~21clkctrl_outclk\,
	combout => \clr_B$latch~combout\);

-- Location: LCCOMB_X81_Y72_N28
\clr_C~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_C~2_combout\ = (\present_state.state_2~q\ & (\INST[26]~input_o\ & (\Equal14~0_combout\ & \INST[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_2~q\,
	datab => \INST[26]~input_o\,
	datac => \Equal14~0_combout\,
	datad => \INST[25]~input_o\,
	combout => \clr_C~2_combout\);

-- Location: LCCOMB_X82_Y72_N28
\clr_C$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_C$latch~combout\ = (GLOBAL(\inc_PC~21clkctrl_outclk\) & (\clr_C~2_combout\)) # (!GLOBAL(\inc_PC~21clkctrl_outclk\) & ((\clr_C$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr_C~2_combout\,
	datac => \inc_PC~21clkctrl_outclk\,
	datad => \clr_C$latch~combout\,
	combout => \clr_C$latch~combout\);

-- Location: LCCOMB_X81_Y72_N24
\clr_Z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_Z~2_combout\ = (\Equal11~0_combout\ & (!\INST[26]~input_o\ & (\present_state.state_2~q\ & !\INST[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \INST[26]~input_o\,
	datac => \present_state.state_2~q\,
	datad => \INST[25]~input_o\,
	combout => \clr_Z~2_combout\);

-- Location: LCCOMB_X82_Y72_N18
\clr_Z$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_Z$latch~combout\ = (GLOBAL(\inc_PC~21clkctrl_outclk\) & (\clr_Z~2_combout\)) # (!GLOBAL(\inc_PC~21clkctrl_outclk\) & ((\clr_Z$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr_Z~2_combout\,
	datac => \inc_PC~21clkctrl_outclk\,
	datad => \clr_Z$latch~combout\,
	combout => \clr_Z$latch~combout\);

-- Location: LCCOMB_X81_Y71_N2
\ld_A~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~10_combout\ = (\INST[29]~input_o\) # ((\INST[31]~input_o\ & ((\INST[30]~input_o\) # (!\INST[28]~input_o\))) # (!\INST[31]~input_o\ & ((\INST[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[30]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \INST[31]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \ld_A~10_combout\);

-- Location: LCCOMB_X81_Y71_N28
\ld_A~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~11_combout\ = (\B_Mux~4_combout\ & (((!\ld_A~13_combout\ & \Equal10~0_combout\)) # (!\ld_A~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_A~10_combout\,
	datab => \ld_A~13_combout\,
	datac => \Equal10~0_combout\,
	datad => \B_Mux~4_combout\,
	combout => \ld_A~11_combout\);

-- Location: LCCOMB_X81_Y71_N30
\ld_A~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~12_combout\ = (\ld_A~11_combout\) # ((\Equal7~2_combout\ & (\present_state.state_0~q\ & \present_state.state_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_A~11_combout\,
	datab => \Equal7~2_combout\,
	datac => \present_state.state_0~q\,
	datad => \present_state.state_1~q\,
	combout => \ld_A~12_combout\);

-- Location: LCCOMB_X81_Y71_N4
\ld_A$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A$latch~combout\ = (GLOBAL(\inc_PC~21clkctrl_outclk\) & (\ld_A~12_combout\)) # (!GLOBAL(\inc_PC~21clkctrl_outclk\) & ((\ld_A$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_A~12_combout\,
	datac => \ld_A$latch~combout\,
	datad => \inc_PC~21clkctrl_outclk\,
	combout => \ld_A$latch~combout\);

-- Location: LCCOMB_X79_Y71_N8
\ld_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_B~0_combout\ = (!\INST[30]~input_o\ & ((\INST[29]~input_o\ & (!\INST[28]~input_o\ & \INST[31]~input_o\)) # (!\INST[29]~input_o\ & (\INST[28]~input_o\ & !\INST[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[29]~input_o\,
	datab => \INST[28]~input_o\,
	datac => \INST[31]~input_o\,
	datad => \INST[30]~input_o\,
	combout => \ld_B~0_combout\);

-- Location: LCCOMB_X79_Y71_N18
\ld_B~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_B~1_combout\ = (\present_state.state_0~q\ & ((\present_state.state_1~q\ & ((\Equal7~5_combout\))) # (!\present_state.state_1~q\ & (\ld_B~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_B~0_combout\,
	datab => \present_state.state_1~q\,
	datac => \present_state.state_0~q\,
	datad => \Equal7~5_combout\,
	combout => \ld_B~1_combout\);

-- Location: LCCOMB_X76_Y71_N4
\ld_B$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_B$latch~combout\ = (GLOBAL(\inc_PC~21clkctrl_outclk\) & (\ld_B~1_combout\)) # (!GLOBAL(\inc_PC~21clkctrl_outclk\) & ((\ld_B$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_B~1_combout\,
	datac => \ld_B$latch~combout\,
	datad => \inc_PC~21clkctrl_outclk\,
	combout => \ld_B$latch~combout\);

-- Location: LCCOMB_X80_Y71_N24
\ld_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_C~0_combout\ = (\IM_MUX2[1]~6_combout\ & (!\ld_A~13_combout\ & \present_state.state_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX2[1]~6_combout\,
	datac => \ld_A~13_combout\,
	datad => \present_state.state_2~q\,
	combout => \ld_C~0_combout\);

-- Location: LCCOMB_X80_Y71_N4
\ld_C$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_C$latch~combout\ = (GLOBAL(\inc_PC~21clkctrl_outclk\) & (\ld_C~0_combout\)) # (!GLOBAL(\inc_PC~21clkctrl_outclk\) & ((\ld_C$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_C~0_combout\,
	datac => \ld_C$latch~combout\,
	datad => \inc_PC~21clkctrl_outclk\,
	combout => \ld_C$latch~combout\);

-- Location: LCCOMB_X82_Y71_N10
\wen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wen~0_combout\ = (\present_state.state_0~q\ & ((\present_state.state_1~q\ & (\REG_Mux~4_combout\)) # (!\present_state.state_1~q\ & ((!\B_Mux~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_0~q\,
	datab => \present_state.state_1~q\,
	datac => \REG_Mux~4_combout\,
	datad => \B_Mux~0_combout\,
	combout => \wen~0_combout\);

-- Location: LCCOMB_X79_Y71_N2
\wen~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wen~1_combout\ = (\Equal7~5_combout\) # ((\REG_Mux~4_combout\) # (\Equal7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~5_combout\,
	datac => \REG_Mux~4_combout\,
	datad => \Equal7~2_combout\,
	combout => \wen~1_combout\);

-- Location: LCCOMB_X80_Y71_N28
\wen~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wen~2_combout\ = (\enable~input_o\ & (((\DATA_Mux[1]~10_combout\ & \wen~1_combout\)) # (!\present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[1]~10_combout\,
	datab => \enable~input_o\,
	datac => \present_state.state_2~q\,
	datad => \wen~1_combout\,
	combout => \wen~2_combout\);

-- Location: CLKCTRL_G13
\wen~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \wen~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \wen~2clkctrl_outclk\);

-- Location: LCCOMB_X74_Y71_N28
\wen$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \wen$latch~combout\ = (GLOBAL(\wen~2clkctrl_outclk\) & (\wen~0_combout\)) # (!GLOBAL(\wen~2clkctrl_outclk\) & ((\wen$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wen~0_combout\,
	datac => \wen~2clkctrl_outclk\,
	datad => \wen$latch~combout\,
	combout => \wen$latch~combout\);

-- Location: LCCOMB_X82_Y71_N26
\en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \en~0_combout\ = (\present_state.state_0~q\ & (((\B_Mux~0_combout\) # (!\A_Mux~1_combout\)) # (!\present_state.state_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_1~q\,
	datab => \B_Mux~0_combout\,
	datac => \A_Mux~1_combout\,
	datad => \present_state.state_0~q\,
	combout => \en~0_combout\);

-- Location: LCCOMB_X83_Y71_N28
\en$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \en$latch~combout\ = (GLOBAL(\wen~2clkctrl_outclk\) & ((\en~0_combout\))) # (!GLOBAL(\wen~2clkctrl_outclk\) & (\en$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en$latch~combout\,
	datac => \en~0_combout\,
	datad => \wen~2clkctrl_outclk\,
	combout => \en$latch~combout\);

-- Location: IOIBUF_X65_Y0_N22
\mclk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mclk,
	o => \mclk~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\INST[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(0),
	o => \INST[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\INST[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(1),
	o => \INST[1]~input_o\);

-- Location: IOIBUF_X115_Y40_N1
\INST[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(2),
	o => \INST[2]~input_o\);

-- Location: IOIBUF_X0_Y53_N1
\INST[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(3),
	o => \INST[3]~input_o\);

-- Location: IOIBUF_X13_Y73_N15
\INST[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(4),
	o => \INST[4]~input_o\);

-- Location: IOIBUF_X113_Y73_N1
\INST[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(5),
	o => \INST[5]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\INST[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(6),
	o => \INST[6]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\INST[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(7),
	o => \INST[7]~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\INST[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(8),
	o => \INST[8]~input_o\);

-- Location: IOIBUF_X98_Y73_N15
\INST[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(9),
	o => \INST[9]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\INST[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(10),
	o => \INST[10]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\INST[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(11),
	o => \INST[11]~input_o\);

-- Location: IOIBUF_X115_Y44_N1
\INST[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(12),
	o => \INST[12]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\INST[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(13),
	o => \INST[13]~input_o\);

-- Location: IOIBUF_X115_Y69_N15
\INST[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(14),
	o => \INST[14]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\INST[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(15),
	o => \INST[15]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\INST[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(16),
	o => \INST[16]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\INST[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(17),
	o => \INST[17]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\INST[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(18),
	o => \INST[18]~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\INST[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(19),
	o => \INST[19]~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\INST[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(20),
	o => \INST[20]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\INST[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(21),
	o => \INST[21]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\INST[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(22),
	o => \INST[22]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\INST[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(23),
	o => \INST[23]~input_o\);

ww_A_Mux <= \A_Mux~output_o\;

ww_B_Mux <= \B_Mux~output_o\;

ww_IM_MUX1 <= \IM_MUX1~output_o\;

ww_REG_Mux <= \REG_Mux~output_o\;

ww_IM_MUX2(0) <= \IM_MUX2[0]~output_o\;

ww_IM_MUX2(1) <= \IM_MUX2[1]~output_o\;

ww_DATA_Mux(0) <= \DATA_Mux[0]~output_o\;

ww_DATA_Mux(1) <= \DATA_Mux[1]~output_o\;

ww_ALU_op(0) <= \ALU_op[0]~output_o\;

ww_ALU_op(1) <= \ALU_op[1]~output_o\;

ww_ALU_op(2) <= \ALU_op[2]~output_o\;

ww_inc_PC <= \inc_PC~output_o\;

ww_ld_PC <= \ld_PC~output_o\;

ww_clr_IR <= \clr_IR~output_o\;

ww_ld_IR <= \ld_IR~output_o\;

ww_clr_A <= \clr_A~output_o\;

ww_clr_B <= \clr_B~output_o\;

ww_clr_C <= \clr_C~output_o\;

ww_clr_Z <= \clr_Z~output_o\;

ww_ld_A <= \ld_A~output_o\;

ww_ld_B <= \ld_B~output_o\;

ww_ld_C <= \ld_C~output_o\;

ww_ld_Z <= \ld_Z~output_o\;

ww_T(0) <= \T[0]~output_o\;

ww_T(1) <= \T[1]~output_o\;

ww_T(2) <= \T[2]~output_o\;

ww_wen <= \wen~output_o\;

ww_en <= \en~output_o\;
END structure;


