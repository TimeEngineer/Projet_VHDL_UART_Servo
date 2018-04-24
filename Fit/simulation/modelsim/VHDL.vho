-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "04/24/2018 13:17:52"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	IP IS
    PORT (
	clk : IN std_logic;
	input : IN std_logic_vector(7 DOWNTO 0);
	go : IN std_logic;
	rst : IN std_logic;
	Rx : IN std_logic;
	Done0 : OUT std_logic;
	Q0 : OUT std_logic;
	Done1 : OUT std_logic;
	Q1 : OUT std_logic;
	Done2 : OUT std_logic;
	Q2 : OUT std_logic
	);
END IP;

-- Design Ports Information
-- input[0]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[1]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[2]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[3]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[4]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[5]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[6]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Done0	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q0	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Done1	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q1	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Done2	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q2	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- go	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Rx	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF IP IS
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
SIGNAL ww_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_go : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Rx : std_logic;
SIGNAL ww_Done0 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_Done1 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Done2 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|C5|Add0~2_combout\ : std_logic;
SIGNAL \C1|C5|Add0~12_combout\ : std_logic;
SIGNAL \C1|C2|Add1~0_combout\ : std_logic;
SIGNAL \C1|C2|Add1~4_combout\ : std_logic;
SIGNAL \C1|C2|Add2~6_combout\ : std_logic;
SIGNAL \C1|C2|Add3~2_combout\ : std_logic;
SIGNAL \C1|C2|Add3~6_combout\ : std_logic;
SIGNAL \C1|C2|Add3~10_combout\ : std_logic;
SIGNAL \C1|C2|output[6]~10_combout\ : std_logic;
SIGNAL \C1|C6|Add0~0_combout\ : std_logic;
SIGNAL \C1|C6|Add0~10_combout\ : std_logic;
SIGNAL \C1|C3|Add1~0_combout\ : std_logic;
SIGNAL \C1|C3|Add1~5\ : std_logic;
SIGNAL \C1|C3|Add1~6_combout\ : std_logic;
SIGNAL \C1|C3|Add2~2_combout\ : std_logic;
SIGNAL \C1|C3|Add2~7\ : std_logic;
SIGNAL \C1|C3|Add2~8_combout\ : std_logic;
SIGNAL \C1|C3|Add3~4_combout\ : std_logic;
SIGNAL \C1|C3|Add3~6_combout\ : std_logic;
SIGNAL \C1|C3|output[5]~8_combout\ : std_logic;
SIGNAL \C1|C7|Add0~0_combout\ : std_logic;
SIGNAL \C1|C7|Add0~10_combout\ : std_logic;
SIGNAL \C1|C7|Add0~12_combout\ : std_logic;
SIGNAL \C1|C4|Add1~0_combout\ : std_logic;
SIGNAL \C1|C4|Add1~4_combout\ : std_logic;
SIGNAL \C1|C4|Add2~6_combout\ : std_logic;
SIGNAL \C1|C4|Add3~2_combout\ : std_logic;
SIGNAL \C1|C4|Add3~6_combout\ : std_logic;
SIGNAL \C1|C4|output[4]~6_combout\ : std_logic;
SIGNAL \C1|C4|output[5]~8_combout\ : std_logic;
SIGNAL \C1|C0|Add0~2_combout\ : std_logic;
SIGNAL \C1|C0|Add0~6_combout\ : std_logic;
SIGNAL \C1|C0|Add0~8_combout\ : std_logic;
SIGNAL \C1|C0|Add0~12_combout\ : std_logic;
SIGNAL \C1|C0|Add0~15\ : std_logic;
SIGNAL \C1|C0|Add0~16_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[0]~32_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[4]~40_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[5]~42_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[7]~46_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[9]~50_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[21]~74_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[25]~82_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[29]~91\ : std_logic;
SIGNAL \C0|C1|C1|i[30]~92_combout\ : std_logic;
SIGNAL \C0|C1|C0|Add0~5\ : std_logic;
SIGNAL \C0|C1|C0|Add0~6_combout\ : std_logic;
SIGNAL \C0|C1|C0|Add0~7\ : std_logic;
SIGNAL \C0|C1|C0|Add0~8_combout\ : std_logic;
SIGNAL \C0|C1|C0|Add0~9\ : std_logic;
SIGNAL \C0|C1|C0|Add0~10_combout\ : std_logic;
SIGNAL \C0|C1|C0|Add0~11\ : std_logic;
SIGNAL \C0|C1|C0|Add0~12_combout\ : std_logic;
SIGNAL \C1|C5|Selector0~0_combout\ : std_logic;
SIGNAL \C1|C7|State~12_combout\ : std_logic;
SIGNAL \C1|C1|clocked~1_combout\ : std_logic;
SIGNAL \C1|C5|Count[6]~12_combout\ : std_logic;
SIGNAL \C1|C5|Count[6]~13_combout\ : std_logic;
SIGNAL \C1|C5|Count[6]~14_combout\ : std_logic;
SIGNAL \C1|C5|Selector8~0_combout\ : std_logic;
SIGNAL \C1|C5|Selector8~1_combout\ : std_logic;
SIGNAL \C1|C6|Count[7]~5_combout\ : std_logic;
SIGNAL \C1|C6|Count[7]~7_combout\ : std_logic;
SIGNAL \C1|C3|Add0~1_combout\ : std_logic;
SIGNAL \C1|C3|Add0~2_combout\ : std_logic;
SIGNAL \C1|C6|Count[7]~10_combout\ : std_logic;
SIGNAL \C1|C6|Count[5]~15_combout\ : std_logic;
SIGNAL \C1|C6|Count[5]~16_combout\ : std_logic;
SIGNAL \C1|C6|Count[0]~21_combout\ : std_logic;
SIGNAL \C1|C7|Count[0]~1_combout\ : std_logic;
SIGNAL \C1|C4|Add0~2_combout\ : std_logic;
SIGNAL \C1|C7|Count[6]~13_combout\ : std_logic;
SIGNAL \C1|C7|Count[5]~15_combout\ : std_logic;
SIGNAL \C1|C7|Count[5]~16_combout\ : std_logic;
SIGNAL \C1|C1|Selector16~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|reg~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|reg~2_combout\ : std_logic;
SIGNAL \C0|C1|C1|Equal0~4_combout\ : std_logic;
SIGNAL \C0|C1|C0|Equal0~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector38~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector34~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector33~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector31~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector29~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector17~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector13~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector8~0_combout\ : std_logic;
SIGNAL \C0|C1|C0|counter~0_combout\ : std_logic;
SIGNAL \C0|C1|C0|counter~1_combout\ : std_logic;
SIGNAL \C0|C1|C0|counter~2_combout\ : std_logic;
SIGNAL \C1|C1|regSelector[1]~feeder_combout\ : std_logic;
SIGNAL \C1|C1|output1[6]~feeder_combout\ : std_logic;
SIGNAL \C1|C0|Add0~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \C1|C0|Count~1_combout\ : std_logic;
SIGNAL \C1|C0|Count~2_combout\ : std_logic;
SIGNAL \C1|C0|Add0~1\ : std_logic;
SIGNAL \C1|C0|Add0~3\ : std_logic;
SIGNAL \C1|C0|Add0~4_combout\ : std_logic;
SIGNAL \C1|C0|Count~3_combout\ : std_logic;
SIGNAL \C1|C0|Equal0~1_combout\ : std_logic;
SIGNAL \C1|C0|Count~0_combout\ : std_logic;
SIGNAL \C1|C0|Add0~5\ : std_logic;
SIGNAL \C1|C0|Add0~7\ : std_logic;
SIGNAL \C1|C0|Add0~9\ : std_logic;
SIGNAL \C1|C0|Add0~10_combout\ : std_logic;
SIGNAL \C1|C0|Add0~11\ : std_logic;
SIGNAL \C1|C0|Add0~13\ : std_logic;
SIGNAL \C1|C0|Add0~14_combout\ : std_logic;
SIGNAL \C1|C0|Equal0~0_combout\ : std_logic;
SIGNAL \C1|C0|Equal0~2_combout\ : std_logic;
SIGNAL \C1|C0|Tick7us~feeder_combout\ : std_logic;
SIGNAL \C1|C0|Tick7us~regout\ : std_logic;
SIGNAL \C1|C5|Selector12~0_combout\ : std_logic;
SIGNAL \C1|C5|State.Pulse~regout\ : std_logic;
SIGNAL \C1|C5|Add0~0_combout\ : std_logic;
SIGNAL \C1|C5|Count[0]~21_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[1]~35\ : std_logic;
SIGNAL \C0|C1|C1|i[2]~37\ : std_logic;
SIGNAL \C0|C1|C1|i[3]~38_combout\ : std_logic;
SIGNAL \C0|C1|C0|Add0~0_combout\ : std_logic;
SIGNAL \C0|C1|C0|counter~4_combout\ : std_logic;
SIGNAL \Rx~combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector42~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|EtatPresent.Etat1~regout\ : std_logic;
SIGNAL \C0|C1|C1|Selector43~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|EtatPresent.Etat2~regout\ : std_logic;
SIGNAL \C0|C1|C1|Selector51~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|clr~regout\ : std_logic;
SIGNAL \C0|C1|C0|Add0~1\ : std_logic;
SIGNAL \C0|C1|C0|Add0~2_combout\ : std_logic;
SIGNAL \C0|C1|C0|Add0~3\ : std_logic;
SIGNAL \C0|C1|C0|Add0~4_combout\ : std_logic;
SIGNAL \C0|C1|C0|counter~3_combout\ : std_logic;
SIGNAL \C0|C1|C0|Equal0~1_combout\ : std_logic;
SIGNAL \C0|C1|C0|tick~feeder_combout\ : std_logic;
SIGNAL \C0|C1|C0|tick~regout\ : std_logic;
SIGNAL \C0|C1|C1|Selector41~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector41~1_combout\ : std_logic;
SIGNAL \C0|C1|C1|EtatPresent.Etat0~regout\ : std_logic;
SIGNAL \C0|C1|C1|Selector35~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[11]~55\ : std_logic;
SIGNAL \C0|C1|C1|i[12]~56_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector26~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[12]~57\ : std_logic;
SIGNAL \C0|C1|C1|i[13]~58_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector25~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[13]~59\ : std_logic;
SIGNAL \C0|C1|C1|i[14]~60_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector24~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[14]~61\ : std_logic;
SIGNAL \C0|C1|C1|i[15]~62_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector23~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[15]~63\ : std_logic;
SIGNAL \C0|C1|C1|i[16]~64_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector22~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[16]~65\ : std_logic;
SIGNAL \C0|C1|C1|i[17]~66_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector21~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[17]~67\ : std_logic;
SIGNAL \C0|C1|C1|i[18]~69\ : std_logic;
SIGNAL \C0|C1|C1|i[19]~70_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector19~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[19]~71\ : std_logic;
SIGNAL \C0|C1|C1|i[20]~73\ : std_logic;
SIGNAL \C0|C1|C1|i[21]~75\ : std_logic;
SIGNAL \C0|C1|C1|i[22]~76_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector16~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[22]~77\ : std_logic;
SIGNAL \C0|C1|C1|i[23]~79\ : std_logic;
SIGNAL \C0|C1|C1|i[24]~80_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector14~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[24]~81\ : std_logic;
SIGNAL \C0|C1|C1|i[25]~83\ : std_logic;
SIGNAL \C0|C1|C1|i[26]~84_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector12~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[26]~85\ : std_logic;
SIGNAL \C0|C1|C1|i[27]~87\ : std_logic;
SIGNAL \C0|C1|C1|i[28]~88_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector10~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[28]~89\ : std_logic;
SIGNAL \C0|C1|C1|i[29]~90_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector9~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[27]~86_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector11~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Equal0~11_combout\ : std_logic;
SIGNAL \C0|C1|C1|Equal0~12_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[18]~68_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector20~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Equal0~8_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[23]~78_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector15~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[20]~72_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector18~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Equal0~9_combout\ : std_logic;
SIGNAL \C0|C1|C1|Equal0~13_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector45~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector46~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector46~1_combout\ : std_logic;
SIGNAL \C0|C1|C1|EtatPresent.Etat5~regout\ : std_logic;
SIGNAL \C0|C1|C1|EtatPresent.Etat6~feeder_combout\ : std_logic;
SIGNAL \C0|C1|C1|EtatPresent.Etat6~regout\ : std_logic;
SIGNAL \C0|C1|C1|Selector48~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|EtatPresent.Etat7~regout\ : std_logic;
SIGNAL \C0|C1|C1|Selector49~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|EtatPresent.Etat8~regout\ : std_logic;
SIGNAL \C0|C1|C1|Selector45~1_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector45~2_combout\ : std_logic;
SIGNAL \C0|C1|C1|EtatPresent.Etat4~regout\ : std_logic;
SIGNAL \C0|C1|C1|Selector44~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|EtatPresent.Etat3~regout\ : std_logic;
SIGNAL \C0|C1|C1|i[3]~39\ : std_logic;
SIGNAL \C0|C1|C1|i[4]~41\ : std_logic;
SIGNAL \C0|C1|C1|i[5]~43\ : std_logic;
SIGNAL \C0|C1|C1|i[6]~44_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector32~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[6]~45\ : std_logic;
SIGNAL \C0|C1|C1|i[7]~47\ : std_logic;
SIGNAL \C0|C1|C1|i[8]~48_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector30~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[8]~49\ : std_logic;
SIGNAL \C0|C1|C1|i[9]~51\ : std_logic;
SIGNAL \C0|C1|C1|i[10]~52_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector28~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[10]~53\ : std_logic;
SIGNAL \C0|C1|C1|i[11]~54_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector27~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Equal0~5_combout\ : std_logic;
SIGNAL \C0|C1|C1|Equal0~6_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[2]~36_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector36~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Equal0~3_combout\ : std_logic;
SIGNAL \C0|C1|C1|Equal0~7_combout\ : std_logic;
SIGNAL \C0|C1|C1|Equal0~10_combout\ : std_logic;
SIGNAL \C0|C1|C1|i~31_combout\ : std_logic;
SIGNAL \C0|C1|C1|i[0]~33\ : std_logic;
SIGNAL \C0|C1|C1|i[1]~34_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector37~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Equal0~2_combout\ : std_logic;
SIGNAL \C0|C1|C1|reg~1_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector0~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector50~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|EtatPresent.Etat9~regout\ : std_logic;
SIGNAL \C0|C1|C1|output[0]~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|reg~5_combout\ : std_logic;
SIGNAL \C0|C1|C1|reg~7_combout\ : std_logic;
SIGNAL \C0|C1|C1|output[7]~feeder_combout\ : std_logic;
SIGNAL \C0|C1|C1|reg~3_combout\ : std_logic;
SIGNAL \C0|C1|C1|reg~4_combout\ : std_logic;
SIGNAL \C0|C1|C1|Selector39~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|dataValid~regout\ : std_logic;
SIGNAL \C1|C1|clocked~0_combout\ : std_logic;
SIGNAL \C1|C1|Selector12~0_combout\ : std_logic;
SIGNAL \C1|C1|Selector13~0_combout\ : std_logic;
SIGNAL \C1|C1|Selector13~1_combout\ : std_logic;
SIGNAL \C1|C1|EtatPresent.Etat1~regout\ : std_logic;
SIGNAL \C1|C1|Selector14~0_combout\ : std_logic;
SIGNAL \C1|C1|EtatPresent.Etat2~regout\ : std_logic;
SIGNAL \C1|C1|Selector15~1_combout\ : std_logic;
SIGNAL \C1|C1|Selector15~0_combout\ : std_logic;
SIGNAL \C1|C1|Selector17~0_combout\ : std_logic;
SIGNAL \C1|C1|Selector15~2_combout\ : std_logic;
SIGNAL \C1|C1|EtatPresent.Etat3~regout\ : std_logic;
SIGNAL \C1|C1|Selector16~1_combout\ : std_logic;
SIGNAL \C1|C1|Selector16~2_combout\ : std_logic;
SIGNAL \C1|C1|regSelector[7]~feeder_combout\ : std_logic;
SIGNAL \C1|C1|regSelector[7]~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|reg~8_combout\ : std_logic;
SIGNAL \C0|C1|C1|reg~10_combout\ : std_logic;
SIGNAL \C0|C1|C1|reg~9_combout\ : std_logic;
SIGNAL \C1|C1|regSelector[5]~feeder_combout\ : std_logic;
SIGNAL \C1|C1|Equal1~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|reg~11_combout\ : std_logic;
SIGNAL \C0|C1|C1|reg~12_combout\ : std_logic;
SIGNAL \C0|C1|C1|output[3]~feeder_combout\ : std_logic;
SIGNAL \C1|C1|regSelector[3]~feeder_combout\ : std_logic;
SIGNAL \C0|C1|C1|reg~13_combout\ : std_logic;
SIGNAL \C0|C1|C1|output[2]~feeder_combout\ : std_logic;
SIGNAL \C1|C1|regSelector[2]~feeder_combout\ : std_logic;
SIGNAL \C1|C1|Equal1~1_combout\ : std_logic;
SIGNAL \C1|C1|Selector19~0_combout\ : std_logic;
SIGNAL \C1|C1|EtatPresent.Etat7~regout\ : std_logic;
SIGNAL \C1|C1|WideOr3~0_combout\ : std_logic;
SIGNAL \C1|C1|Selector16~3_combout\ : std_logic;
SIGNAL \C1|C1|EtatPresent.Etat4~regout\ : std_logic;
SIGNAL \C1|C1|Selector17~1_combout\ : std_logic;
SIGNAL \C1|C1|EtatPresent.Etat5~regout\ : std_logic;
SIGNAL \C1|C1|Selector18~0_combout\ : std_logic;
SIGNAL \C1|C1|EtatPresent.Etat6~regout\ : std_logic;
SIGNAL \C1|C1|Selector12~1_combout\ : std_logic;
SIGNAL \C1|C1|EtatPresent.Etat0~regout\ : std_logic;
SIGNAL \C1|C1|Selector8~0_combout\ : std_logic;
SIGNAL \C1|C1|Selector8~1_combout\ : std_logic;
SIGNAL \C1|C1|dataValid0~regout\ : std_logic;
SIGNAL \C1|C1|Selector7~0_combout\ : std_logic;
SIGNAL \C1|C1|regValue[5]~0_combout\ : std_logic;
SIGNAL \C1|C1|output0[0]~feeder_combout\ : std_logic;
SIGNAL \C1|C1|output0[0]~0_combout\ : std_logic;
SIGNAL \C1|C5|Selector8~2_combout\ : std_logic;
SIGNAL \C1|C5|Add0~1\ : std_logic;
SIGNAL \C1|C5|Add0~3\ : std_logic;
SIGNAL \C1|C5|Add0~4_combout\ : std_logic;
SIGNAL \C1|C5|Selector7~0_combout\ : std_logic;
SIGNAL \C1|C5|Count[2]~0_combout\ : std_logic;
SIGNAL \C1|C5|Count[6]~9_combout\ : std_logic;
SIGNAL \C1|C5|Count[7]~10_combout\ : std_logic;
SIGNAL \C1|C1|Selector3~0_combout\ : std_logic;
SIGNAL \C1|C1|Selector5~0_combout\ : std_logic;
SIGNAL \C1|C1|Selector6~0_combout\ : std_logic;
SIGNAL \C1|C1|output0[1]~feeder_combout\ : std_logic;
SIGNAL \C1|C2|Add3~1\ : std_logic;
SIGNAL \C1|C2|Add3~3\ : std_logic;
SIGNAL \C1|C2|Add3~4_combout\ : std_logic;
SIGNAL \C1|C2|Add3~0_combout\ : std_logic;
SIGNAL \C1|C2|Add4~1_cout\ : std_logic;
SIGNAL \C1|C2|output[1]~1_cout\ : std_logic;
SIGNAL \C1|C2|output[2]~3_cout\ : std_logic;
SIGNAL \C1|C2|output[3]~5_cout\ : std_logic;
SIGNAL \C1|C2|output[4]~6_combout\ : std_logic;
SIGNAL \C1|C5|Add0~5\ : std_logic;
SIGNAL \C1|C5|Add0~6_combout\ : std_logic;
SIGNAL \C1|C5|Count[3]~19_combout\ : std_logic;
SIGNAL \C1|C5|Count[3]~20_combout\ : std_logic;
SIGNAL \C1|C5|Add0~7\ : std_logic;
SIGNAL \C1|C5|Add0~8_combout\ : std_logic;
SIGNAL \C1|C5|Count[7]~5_combout\ : std_logic;
SIGNAL \C1|C5|Count[7]~6_combout\ : std_logic;
SIGNAL \C1|C5|Count[7]~7_combout\ : std_logic;
SIGNAL \C1|C5|Count[4]~17_combout\ : std_logic;
SIGNAL \C1|C5|Count[4]~18_combout\ : std_logic;
SIGNAL \C1|C5|Add0~9\ : std_logic;
SIGNAL \C1|C5|Add0~10_combout\ : std_logic;
SIGNAL \C1|C5|Count[5]~15_combout\ : std_logic;
SIGNAL \C1|C1|Selector2~0_combout\ : std_logic;
SIGNAL \C1|C1|output0[5]~feeder_combout\ : std_logic;
SIGNAL \C1|C2|Add0~2_combout\ : std_logic;
SIGNAL \C1|C2|Add1~1\ : std_logic;
SIGNAL \C1|C2|Add1~2_combout\ : std_logic;
SIGNAL \C1|C1|Selector4~0_combout\ : std_logic;
SIGNAL \C1|C1|regValue[3]~feeder_combout\ : std_logic;
SIGNAL \C1|C2|Add2~1_cout\ : std_logic;
SIGNAL \C1|C2|Add2~3\ : std_logic;
SIGNAL \C1|C2|Add2~4_combout\ : std_logic;
SIGNAL \C1|C2|Add2~2_combout\ : std_logic;
SIGNAL \C1|C2|Add3~5\ : std_logic;
SIGNAL \C1|C2|Add3~7\ : std_logic;
SIGNAL \C1|C2|Add3~8_combout\ : std_logic;
SIGNAL \C1|C2|output[4]~7\ : std_logic;
SIGNAL \C1|C2|output[5]~8_combout\ : std_logic;
SIGNAL \C1|C5|Count[5]~16_combout\ : std_logic;
SIGNAL \C1|C5|Add0~11\ : std_logic;
SIGNAL \C1|C5|Add0~13\ : std_logic;
SIGNAL \C1|C5|Add0~14_combout\ : std_logic;
SIGNAL \C1|C5|Count[7]~8_combout\ : std_logic;
SIGNAL \C1|C1|Selector0~0_combout\ : std_logic;
SIGNAL \C1|C2|Add0~0_combout\ : std_logic;
SIGNAL \C0|C1|C1|reg~6_combout\ : std_logic;
SIGNAL \C1|C1|Selector1~0_combout\ : std_logic;
SIGNAL \C1|C2|Add0~1_combout\ : std_logic;
SIGNAL \C1|C2|Add1~3\ : std_logic;
SIGNAL \C1|C2|Add1~5\ : std_logic;
SIGNAL \C1|C2|Add1~6_combout\ : std_logic;
SIGNAL \C1|C2|Add2~5\ : std_logic;
SIGNAL \C1|C2|Add2~7\ : std_logic;
SIGNAL \C1|C2|Add2~8_combout\ : std_logic;
SIGNAL \C1|C2|Add3~9\ : std_logic;
SIGNAL \C1|C2|Add3~11\ : std_logic;
SIGNAL \C1|C2|Add3~12_combout\ : std_logic;
SIGNAL \C1|C2|output[5]~9\ : std_logic;
SIGNAL \C1|C2|output[6]~11\ : std_logic;
SIGNAL \C1|C2|output[7]~12_combout\ : std_logic;
SIGNAL \C1|C5|Count[7]~11_combout\ : std_logic;
SIGNAL \C1|C5|Add0~15\ : std_logic;
SIGNAL \C1|C5|Add0~16_combout\ : std_logic;
SIGNAL \C1|C5|Count[8]~3_combout\ : std_logic;
SIGNAL \C1|C5|Count[8]~4_combout\ : std_logic;
SIGNAL \C1|C5|Equal0~0_combout\ : std_logic;
SIGNAL \C1|C5|State~12_combout\ : std_logic;
SIGNAL \C1|C5|Selector11~0_combout\ : std_logic;
SIGNAL \C1|C5|State.Init~regout\ : std_logic;
SIGNAL \C1|C5|Count[0]~1_combout\ : std_logic;
SIGNAL \C1|C5|Count[0]~2_combout\ : std_logic;
SIGNAL \C1|C5|Count[0]~22_combout\ : std_logic;
SIGNAL \C1|C5|Equal0~1_combout\ : std_logic;
SIGNAL \C1|C5|Equal0~2_combout\ : std_logic;
SIGNAL \C1|C5|Selector13~0_combout\ : std_logic;
SIGNAL \C1|C5|State.Relax~regout\ : std_logic;
SIGNAL \C1|C5|Selector10~0_combout\ : std_logic;
SIGNAL \C1|C5|State.Idle~regout\ : std_logic;
SIGNAL \C1|C5|Done~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \C1|C5|Selector0~1_combout\ : std_logic;
SIGNAL \C1|C5|Q~regout\ : std_logic;
SIGNAL \C1|C6|Count[0]~22_combout\ : std_logic;
SIGNAL \C1|C6|Add0~1\ : std_logic;
SIGNAL \C1|C6|Add0~2_combout\ : std_logic;
SIGNAL \C1|C6|Selector13~0_combout\ : std_logic;
SIGNAL \C1|C6|State.Relax~regout\ : std_logic;
SIGNAL \C1|C6|Selector8~0_combout\ : std_logic;
SIGNAL \C1|C6|Selector12~0_combout\ : std_logic;
SIGNAL \C1|C6|State.Pulse~regout\ : std_logic;
SIGNAL \C1|C6|Selector8~1_combout\ : std_logic;
SIGNAL \C1|C6|Selector8~2_combout\ : std_logic;
SIGNAL \C1|C6|Add0~3\ : std_logic;
SIGNAL \C1|C6|Add0~5\ : std_logic;
SIGNAL \C1|C6|Add0~6_combout\ : std_logic;
SIGNAL \C1|C6|Count[3]~19_combout\ : std_logic;
SIGNAL \C1|C6|Count[7]~6_combout\ : std_logic;
SIGNAL \C1|C6|Count[3]~20_combout\ : std_logic;
SIGNAL \C1|C6|Add0~7\ : std_logic;
SIGNAL \C1|C6|Add0~8_combout\ : std_logic;
SIGNAL \C1|C6|Count[4]~17_combout\ : std_logic;
SIGNAL \C1|C1|output1[4]~feeder_combout\ : std_logic;
SIGNAL \C1|C1|Equal2~0_combout\ : std_logic;
SIGNAL \C1|C1|output1[0]~0_combout\ : std_logic;
SIGNAL \C1|C1|output1[0]~feeder_combout\ : std_logic;
SIGNAL \C1|C3|Add3~1\ : std_logic;
SIGNAL \C1|C3|Add3~2_combout\ : std_logic;
SIGNAL \C1|C3|Add3~0_combout\ : std_logic;
SIGNAL \C1|C3|Add4~1_cout\ : std_logic;
SIGNAL \C1|C3|output[1]~1_cout\ : std_logic;
SIGNAL \C1|C3|output[2]~3_cout\ : std_logic;
SIGNAL \C1|C3|output[3]~5_cout\ : std_logic;
SIGNAL \C1|C3|output[4]~6_combout\ : std_logic;
SIGNAL \C1|C6|Count[4]~18_combout\ : std_logic;
SIGNAL \C1|C6|Equal0~1_combout\ : std_logic;
SIGNAL \C1|C6|Count[7]~9_combout\ : std_logic;
SIGNAL \C1|C6|Add0~4_combout\ : std_logic;
SIGNAL \C1|C6|Selector7~0_combout\ : std_logic;
SIGNAL \C1|C6|Count[2]~0_combout\ : std_logic;
SIGNAL \C1|C6|State~12_combout\ : std_logic;
SIGNAL \C1|C1|Selector9~0_combout\ : std_logic;
SIGNAL \C1|C1|Selector9~1_combout\ : std_logic;
SIGNAL \C1|C1|dataValid1~regout\ : std_logic;
SIGNAL \C1|C6|Selector11~0_combout\ : std_logic;
SIGNAL \C1|C6|State.Init~regout\ : std_logic;
SIGNAL \C1|C6|Count[0]~1_combout\ : std_logic;
SIGNAL \C1|C6|Count[0]~2_combout\ : std_logic;
SIGNAL \C1|C3|Add0~0_combout\ : std_logic;
SIGNAL \C1|C3|Add1~1\ : std_logic;
SIGNAL \C1|C3|Add1~3\ : std_logic;
SIGNAL \C1|C3|Add1~4_combout\ : std_logic;
SIGNAL \C1|C3|Add1~2_combout\ : std_logic;
SIGNAL \C1|C3|Add2~1_cout\ : std_logic;
SIGNAL \C1|C3|Add2~3\ : std_logic;
SIGNAL \C1|C3|Add2~5\ : std_logic;
SIGNAL \C1|C3|Add2~6_combout\ : std_logic;
SIGNAL \C1|C3|Add2~4_combout\ : std_logic;
SIGNAL \C1|C3|Add3~3\ : std_logic;
SIGNAL \C1|C3|Add3~5\ : std_logic;
SIGNAL \C1|C3|Add3~7\ : std_logic;
SIGNAL \C1|C3|Add3~9\ : std_logic;
SIGNAL \C1|C3|Add3~11\ : std_logic;
SIGNAL \C1|C3|Add3~12_combout\ : std_logic;
SIGNAL \C1|C3|Add3~10_combout\ : std_logic;
SIGNAL \C1|C3|Add3~8_combout\ : std_logic;
SIGNAL \C1|C3|output[4]~7\ : std_logic;
SIGNAL \C1|C3|output[5]~9\ : std_logic;
SIGNAL \C1|C3|output[6]~11\ : std_logic;
SIGNAL \C1|C3|output[7]~12_combout\ : std_logic;
SIGNAL \C1|C6|Add0~9\ : std_logic;
SIGNAL \C1|C6|Add0~11\ : std_logic;
SIGNAL \C1|C6|Add0~13\ : std_logic;
SIGNAL \C1|C6|Add0~14_combout\ : std_logic;
SIGNAL \C1|C6|Count[7]~8_combout\ : std_logic;
SIGNAL \C1|C6|Count[7]~11_combout\ : std_logic;
SIGNAL \C1|C6|Add0~15\ : std_logic;
SIGNAL \C1|C6|Add0~16_combout\ : std_logic;
SIGNAL \C1|C6|Count[8]~3_combout\ : std_logic;
SIGNAL \C1|C6|Count[8]~4_combout\ : std_logic;
SIGNAL \C1|C6|Add0~12_combout\ : std_logic;
SIGNAL \C1|C6|Count[6]~13_combout\ : std_logic;
SIGNAL \C1|C6|Count[6]~12_combout\ : std_logic;
SIGNAL \C1|C3|output[6]~10_combout\ : std_logic;
SIGNAL \C1|C6|Count[6]~14_combout\ : std_logic;
SIGNAL \C1|C6|Equal0~0_combout\ : std_logic;
SIGNAL \C1|C6|Equal0~2_combout\ : std_logic;
SIGNAL \C1|C6|Selector10~0_combout\ : std_logic;
SIGNAL \C1|C6|State.Idle~regout\ : std_logic;
SIGNAL \C1|C6|Done~0_combout\ : std_logic;
SIGNAL \C1|C6|Selector0~0_combout\ : std_logic;
SIGNAL \C1|C6|Selector0~1_combout\ : std_logic;
SIGNAL \C1|C6|Q~regout\ : std_logic;
SIGNAL \C1|C1|Selector10~0_combout\ : std_logic;
SIGNAL \C1|C1|dataValid2~regout\ : std_logic;
SIGNAL \C1|C7|Selector11~0_combout\ : std_logic;
SIGNAL \C1|C7|State.Init~regout\ : std_logic;
SIGNAL \C1|C7|Selector12~0_combout\ : std_logic;
SIGNAL \C1|C7|State.Pulse~regout\ : std_logic;
SIGNAL \C1|C7|Selector13~0_combout\ : std_logic;
SIGNAL \C1|C7|State.Relax~regout\ : std_logic;
SIGNAL \C1|C7|Count[0]~2_combout\ : std_logic;
SIGNAL \C1|C7|Count[7]~10_combout\ : std_logic;
SIGNAL \C1|C7|Count[6]~12_combout\ : std_logic;
SIGNAL \C1|C1|output2[1]~0_combout\ : std_logic;
SIGNAL \C1|C4|Add0~1_combout\ : std_logic;
SIGNAL \C1|C1|output2[4]~feeder_combout\ : std_logic;
SIGNAL \C1|C4|Add1~1\ : std_logic;
SIGNAL \C1|C4|Add1~2_combout\ : std_logic;
SIGNAL \C1|C4|Add2~1_cout\ : std_logic;
SIGNAL \C1|C4|Add2~3\ : std_logic;
SIGNAL \C1|C4|Add2~4_combout\ : std_logic;
SIGNAL \C1|C4|Add2~2_combout\ : std_logic;
SIGNAL \C1|C1|output2[0]~feeder_combout\ : std_logic;
SIGNAL \C1|C4|Add3~1\ : std_logic;
SIGNAL \C1|C4|Add3~3\ : std_logic;
SIGNAL \C1|C4|Add3~5\ : std_logic;
SIGNAL \C1|C4|Add3~7\ : std_logic;
SIGNAL \C1|C4|Add3~9\ : std_logic;
SIGNAL \C1|C4|Add3~10_combout\ : std_logic;
SIGNAL \C1|C4|Add3~8_combout\ : std_logic;
SIGNAL \C1|C4|Add3~4_combout\ : std_logic;
SIGNAL \C1|C4|Add3~0_combout\ : std_logic;
SIGNAL \C1|C4|Add4~1_cout\ : std_logic;
SIGNAL \C1|C4|output[1]~1_cout\ : std_logic;
SIGNAL \C1|C4|output[2]~3_cout\ : std_logic;
SIGNAL \C1|C4|output[3]~5_cout\ : std_logic;
SIGNAL \C1|C4|output[4]~7\ : std_logic;
SIGNAL \C1|C4|output[5]~9\ : std_logic;
SIGNAL \C1|C4|output[6]~10_combout\ : std_logic;
SIGNAL \C1|C7|Count[6]~14_combout\ : std_logic;
SIGNAL \C1|C4|Add0~0_combout\ : std_logic;
SIGNAL \C1|C4|Add1~3\ : std_logic;
SIGNAL \C1|C4|Add1~5\ : std_logic;
SIGNAL \C1|C4|Add1~6_combout\ : std_logic;
SIGNAL \C1|C4|Add2~5\ : std_logic;
SIGNAL \C1|C4|Add2~7\ : std_logic;
SIGNAL \C1|C4|Add2~8_combout\ : std_logic;
SIGNAL \C1|C4|Add3~11\ : std_logic;
SIGNAL \C1|C4|Add3~12_combout\ : std_logic;
SIGNAL \C1|C4|output[6]~11\ : std_logic;
SIGNAL \C1|C4|output[7]~12_combout\ : std_logic;
SIGNAL \C1|C7|Count[7]~5_combout\ : std_logic;
SIGNAL \C1|C7|Count[7]~6_combout\ : std_logic;
SIGNAL \C1|C7|Count[7]~7_combout\ : std_logic;
SIGNAL \C1|C7|Count[0]~21_combout\ : std_logic;
SIGNAL \C1|C7|Count[0]~22_combout\ : std_logic;
SIGNAL \C1|C7|Add0~1\ : std_logic;
SIGNAL \C1|C7|Add0~3\ : std_logic;
SIGNAL \C1|C7|Add0~5\ : std_logic;
SIGNAL \C1|C7|Add0~6_combout\ : std_logic;
SIGNAL \C1|C7|Count[3]~19_combout\ : std_logic;
SIGNAL \C1|C7|Count[3]~20_combout\ : std_logic;
SIGNAL \C1|C7|Add0~7\ : std_logic;
SIGNAL \C1|C7|Add0~8_combout\ : std_logic;
SIGNAL \C1|C7|Count[4]~17_combout\ : std_logic;
SIGNAL \C1|C7|Count[4]~18_combout\ : std_logic;
SIGNAL \C1|C7|Add0~9\ : std_logic;
SIGNAL \C1|C7|Add0~11\ : std_logic;
SIGNAL \C1|C7|Add0~13\ : std_logic;
SIGNAL \C1|C7|Add0~14_combout\ : std_logic;
SIGNAL \C1|C7|Count[7]~8_combout\ : std_logic;
SIGNAL \C1|C7|Count[7]~11_combout\ : std_logic;
SIGNAL \C1|C7|Add0~15\ : std_logic;
SIGNAL \C1|C7|Add0~16_combout\ : std_logic;
SIGNAL \C1|C7|Count[8]~3_combout\ : std_logic;
SIGNAL \C1|C7|Count[8]~4_combout\ : std_logic;
SIGNAL \C1|C7|Equal0~0_combout\ : std_logic;
SIGNAL \C1|C7|Count[7]~9_combout\ : std_logic;
SIGNAL \C1|C7|Add0~4_combout\ : std_logic;
SIGNAL \C1|C7|Selector7~0_combout\ : std_logic;
SIGNAL \C1|C7|Count[2]~0_combout\ : std_logic;
SIGNAL \C1|C7|Add0~2_combout\ : std_logic;
SIGNAL \C1|C7|Selector8~0_combout\ : std_logic;
SIGNAL \C1|C7|Selector8~1_combout\ : std_logic;
SIGNAL \C1|C7|Selector8~2_combout\ : std_logic;
SIGNAL \C1|C7|Equal0~1_combout\ : std_logic;
SIGNAL \C1|C7|Equal0~2_combout\ : std_logic;
SIGNAL \C1|C7|Selector10~0_combout\ : std_logic;
SIGNAL \C1|C7|State.Idle~regout\ : std_logic;
SIGNAL \C1|C7|Done~0_combout\ : std_logic;
SIGNAL \C1|C7|Selector0~0_combout\ : std_logic;
SIGNAL \C1|C7|Selector0~1_combout\ : std_logic;
SIGNAL \C1|C7|Q~regout\ : std_logic;
SIGNAL \C1|C6|Count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \C1|C7|Count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \C0|C1|C0|counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \C0|C1|C1|reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C0|C1|C1|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C0|C1|C1|i\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \C1|C0|Count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \C1|C1|regValue\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|C1|regSelector\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|C1|output2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|C1|output1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|C1|output0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|C5|Count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;
SIGNAL \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\ : std_logic;
SIGNAL \C1|C7|ALT_INV_Done~0_combout\ : std_logic;
SIGNAL \C1|C6|ALT_INV_Done~0_combout\ : std_logic;
SIGNAL \C1|C5|ALT_INV_Done~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_input <= input;
ww_go <= go;
ww_rst <= rst;
ww_Rx <= Rx;
Done0 <= ww_Done0;
Q0 <= ww_Q0;
Done1 <= ww_Done1;
Q1 <= ww_Q1;
Done2 <= ww_Done2;
Q2 <= ww_Q2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_rst~combout\ <= NOT \rst~combout\;
\C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\ <= NOT \C0|C1|C1|EtatPresent.Etat3~regout\;
\C1|C7|ALT_INV_Done~0_combout\ <= NOT \C1|C7|Done~0_combout\;
\C1|C6|ALT_INV_Done~0_combout\ <= NOT \C1|C6|Done~0_combout\;
\C1|C5|ALT_INV_Done~0_combout\ <= NOT \C1|C5|Done~0_combout\;

-- Location: LCCOMB_X20_Y24_N2
\C1|C5|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Add0~2_combout\ = (\C1|C5|Count\(1) & (\C1|C5|Add0~1\ & VCC)) # (!\C1|C5|Count\(1) & (!\C1|C5|Add0~1\))
-- \C1|C5|Add0~3\ = CARRY((!\C1|C5|Count\(1) & !\C1|C5|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C5|Count\(1),
	datad => VCC,
	cin => \C1|C5|Add0~1\,
	combout => \C1|C5|Add0~2_combout\,
	cout => \C1|C5|Add0~3\);

-- Location: LCCOMB_X20_Y24_N12
\C1|C5|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Add0~12_combout\ = (\C1|C5|Count\(6) & ((GND) # (!\C1|C5|Add0~11\))) # (!\C1|C5|Count\(6) & (\C1|C5|Add0~11\ $ (GND)))
-- \C1|C5|Add0~13\ = CARRY((\C1|C5|Count\(6)) # (!\C1|C5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Count\(6),
	datad => VCC,
	cin => \C1|C5|Add0~11\,
	combout => \C1|C5|Add0~12_combout\,
	cout => \C1|C5|Add0~13\);

-- Location: LCCOMB_X21_Y23_N12
\C1|C2|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add1~0_combout\ = (\C1|C1|output0\(0) & (\C1|C1|output0\(4) $ (GND))) # (!\C1|C1|output0\(0) & (!\C1|C1|output0\(4) & VCC))
-- \C1|C2|Add1~1\ = CARRY((\C1|C1|output0\(0) & !\C1|C1|output0\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output0\(0),
	datab => \C1|C1|output0\(4),
	datad => VCC,
	combout => \C1|C2|Add1~0_combout\,
	cout => \C1|C2|Add1~1\);

-- Location: LCCOMB_X21_Y23_N16
\C1|C2|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add1~4_combout\ = ((\C1|C1|output0\(2) $ (\C1|C2|Add0~1_combout\ $ (\C1|C2|Add1~3\)))) # (GND)
-- \C1|C2|Add1~5\ = CARRY((\C1|C1|output0\(2) & ((!\C1|C2|Add1~3\) # (!\C1|C2|Add0~1_combout\))) # (!\C1|C1|output0\(2) & (!\C1|C2|Add0~1_combout\ & !\C1|C2|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output0\(2),
	datab => \C1|C2|Add0~1_combout\,
	datad => VCC,
	cin => \C1|C2|Add1~3\,
	combout => \C1|C2|Add1~4_combout\,
	cout => \C1|C2|Add1~5\);

-- Location: LCCOMB_X21_Y23_N26
\C1|C2|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add2~6_combout\ = (\C1|C2|Add1~4_combout\ & ((\C1|C2|Add0~1_combout\ & (!\C1|C2|Add2~5\)) # (!\C1|C2|Add0~1_combout\ & (\C1|C2|Add2~5\ & VCC)))) # (!\C1|C2|Add1~4_combout\ & ((\C1|C2|Add0~1_combout\ & ((\C1|C2|Add2~5\) # (GND))) # 
-- (!\C1|C2|Add0~1_combout\ & (!\C1|C2|Add2~5\))))
-- \C1|C2|Add2~7\ = CARRY((\C1|C2|Add1~4_combout\ & (\C1|C2|Add0~1_combout\ & !\C1|C2|Add2~5\)) # (!\C1|C2|Add1~4_combout\ & ((\C1|C2|Add0~1_combout\) # (!\C1|C2|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Add1~4_combout\,
	datab => \C1|C2|Add0~1_combout\,
	datad => VCC,
	cin => \C1|C2|Add2~5\,
	combout => \C1|C2|Add2~6_combout\,
	cout => \C1|C2|Add2~7\);

-- Location: LCCOMB_X20_Y23_N2
\C1|C2|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add3~2_combout\ = (\C1|C1|output0\(1) & ((\C1|C1|output0\(2) & (\C1|C2|Add3~1\ & VCC)) # (!\C1|C1|output0\(2) & (!\C1|C2|Add3~1\)))) # (!\C1|C1|output0\(1) & ((\C1|C1|output0\(2) & (!\C1|C2|Add3~1\)) # (!\C1|C1|output0\(2) & ((\C1|C2|Add3~1\) # 
-- (GND)))))
-- \C1|C2|Add3~3\ = CARRY((\C1|C1|output0\(1) & (!\C1|C1|output0\(2) & !\C1|C2|Add3~1\)) # (!\C1|C1|output0\(1) & ((!\C1|C2|Add3~1\) # (!\C1|C1|output0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output0\(1),
	datab => \C1|C1|output0\(2),
	datad => VCC,
	cin => \C1|C2|Add3~1\,
	combout => \C1|C2|Add3~2_combout\,
	cout => \C1|C2|Add3~3\);

-- Location: LCCOMB_X20_Y23_N6
\C1|C2|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add3~6_combout\ = (\C1|C1|output0\(4) & ((\C1|C2|Add2~2_combout\ & (!\C1|C2|Add3~5\)) # (!\C1|C2|Add2~2_combout\ & ((\C1|C2|Add3~5\) # (GND))))) # (!\C1|C1|output0\(4) & ((\C1|C2|Add2~2_combout\ & (\C1|C2|Add3~5\ & VCC)) # (!\C1|C2|Add2~2_combout\ 
-- & (!\C1|C2|Add3~5\))))
-- \C1|C2|Add3~7\ = CARRY((\C1|C1|output0\(4) & ((!\C1|C2|Add3~5\) # (!\C1|C2|Add2~2_combout\))) # (!\C1|C1|output0\(4) & (!\C1|C2|Add2~2_combout\ & !\C1|C2|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output0\(4),
	datab => \C1|C2|Add2~2_combout\,
	datad => VCC,
	cin => \C1|C2|Add3~5\,
	combout => \C1|C2|Add3~6_combout\,
	cout => \C1|C2|Add3~7\);

-- Location: LCCOMB_X20_Y23_N10
\C1|C2|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add3~10_combout\ = (\C1|C2|Add2~6_combout\ & ((\C1|C2|Add0~1_combout\ & (!\C1|C2|Add3~9\)) # (!\C1|C2|Add0~1_combout\ & (\C1|C2|Add3~9\ & VCC)))) # (!\C1|C2|Add2~6_combout\ & ((\C1|C2|Add0~1_combout\ & ((\C1|C2|Add3~9\) # (GND))) # 
-- (!\C1|C2|Add0~1_combout\ & (!\C1|C2|Add3~9\))))
-- \C1|C2|Add3~11\ = CARRY((\C1|C2|Add2~6_combout\ & (\C1|C2|Add0~1_combout\ & !\C1|C2|Add3~9\)) # (!\C1|C2|Add2~6_combout\ & ((\C1|C2|Add0~1_combout\) # (!\C1|C2|Add3~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Add2~6_combout\,
	datab => \C1|C2|Add0~1_combout\,
	datad => VCC,
	cin => \C1|C2|Add3~9\,
	combout => \C1|C2|Add3~10_combout\,
	cout => \C1|C2|Add3~11\);

-- Location: LCCOMB_X20_Y23_N26
\C1|C2|output[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|output[6]~10_combout\ = ((\C1|C2|Add3~10_combout\ $ (\C1|C2|Add0~1_combout\ $ (\C1|C2|output[5]~9\)))) # (GND)
-- \C1|C2|output[6]~11\ = CARRY((\C1|C2|Add3~10_combout\ & ((!\C1|C2|output[5]~9\) # (!\C1|C2|Add0~1_combout\))) # (!\C1|C2|Add3~10_combout\ & (!\C1|C2|Add0~1_combout\ & !\C1|C2|output[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Add3~10_combout\,
	datab => \C1|C2|Add0~1_combout\,
	datad => VCC,
	cin => \C1|C2|output[5]~9\,
	combout => \C1|C2|output[6]~10_combout\,
	cout => \C1|C2|output[6]~11\);

-- Location: LCCOMB_X25_Y21_N4
\C1|C6|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Add0~0_combout\ = \C1|C6|Count\(0) $ (VCC)
-- \C1|C6|Add0~1\ = CARRY(\C1|C6|Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C6|Count\(0),
	datad => VCC,
	combout => \C1|C6|Add0~0_combout\,
	cout => \C1|C6|Add0~1\);

-- Location: LCCOMB_X25_Y21_N14
\C1|C6|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Add0~10_combout\ = (\C1|C6|Count\(5) & (\C1|C6|Add0~9\ & VCC)) # (!\C1|C6|Count\(5) & (!\C1|C6|Add0~9\))
-- \C1|C6|Add0~11\ = CARRY((!\C1|C6|Count\(5) & !\C1|C6|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|Count\(5),
	datad => VCC,
	cin => \C1|C6|Add0~9\,
	combout => \C1|C6|Add0~10_combout\,
	cout => \C1|C6|Add0~11\);

-- Location: LCCOMB_X22_Y21_N0
\C1|C3|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add1~0_combout\ = (\C1|C1|output1\(0) & (\C1|C1|output1\(4) $ (GND))) # (!\C1|C1|output1\(0) & (!\C1|C1|output1\(4) & VCC))
-- \C1|C3|Add1~1\ = CARRY((\C1|C1|output1\(0) & !\C1|C1|output1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output1\(0),
	datab => \C1|C1|output1\(4),
	datad => VCC,
	combout => \C1|C3|Add1~0_combout\,
	cout => \C1|C3|Add1~1\);

-- Location: LCCOMB_X22_Y21_N4
\C1|C3|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add1~4_combout\ = ((\C1|C3|Add0~1_combout\ $ (\C1|C1|output1\(2) $ (\C1|C3|Add1~3\)))) # (GND)
-- \C1|C3|Add1~5\ = CARRY((\C1|C3|Add0~1_combout\ & (\C1|C1|output1\(2) & !\C1|C3|Add1~3\)) # (!\C1|C3|Add0~1_combout\ & ((\C1|C1|output1\(2)) # (!\C1|C3|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C3|Add0~1_combout\,
	datab => \C1|C1|output1\(2),
	datad => VCC,
	cin => \C1|C3|Add1~3\,
	combout => \C1|C3|Add1~4_combout\,
	cout => \C1|C3|Add1~5\);

-- Location: LCCOMB_X22_Y21_N6
\C1|C3|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add1~6_combout\ = \C1|C1|output1\(3) $ (\C1|C3|Add1~5\ $ (!\C1|C3|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output1\(3),
	datad => \C1|C3|Add0~0_combout\,
	cin => \C1|C3|Add1~5\,
	combout => \C1|C3|Add1~6_combout\);

-- Location: LCCOMB_X22_Y21_N24
\C1|C3|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add2~2_combout\ = (\C1|C3|Add1~0_combout\ & ((\C1|C1|output1\(4) & (!\C1|C3|Add2~1_cout\)) # (!\C1|C1|output1\(4) & (\C1|C3|Add2~1_cout\ & VCC)))) # (!\C1|C3|Add1~0_combout\ & ((\C1|C1|output1\(4) & ((\C1|C3|Add2~1_cout\) # (GND))) # 
-- (!\C1|C1|output1\(4) & (!\C1|C3|Add2~1_cout\))))
-- \C1|C3|Add2~3\ = CARRY((\C1|C3|Add1~0_combout\ & (\C1|C1|output1\(4) & !\C1|C3|Add2~1_cout\)) # (!\C1|C3|Add1~0_combout\ & ((\C1|C1|output1\(4)) # (!\C1|C3|Add2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C3|Add1~0_combout\,
	datab => \C1|C1|output1\(4),
	datad => VCC,
	cin => \C1|C3|Add2~1_cout\,
	combout => \C1|C3|Add2~2_combout\,
	cout => \C1|C3|Add2~3\);

-- Location: LCCOMB_X22_Y21_N28
\C1|C3|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add2~6_combout\ = (\C1|C3|Add0~1_combout\ & ((\C1|C3|Add1~4_combout\ & (!\C1|C3|Add2~5\)) # (!\C1|C3|Add1~4_combout\ & ((\C1|C3|Add2~5\) # (GND))))) # (!\C1|C3|Add0~1_combout\ & ((\C1|C3|Add1~4_combout\ & (\C1|C3|Add2~5\ & VCC)) # 
-- (!\C1|C3|Add1~4_combout\ & (!\C1|C3|Add2~5\))))
-- \C1|C3|Add2~7\ = CARRY((\C1|C3|Add0~1_combout\ & ((!\C1|C3|Add2~5\) # (!\C1|C3|Add1~4_combout\))) # (!\C1|C3|Add0~1_combout\ & (!\C1|C3|Add1~4_combout\ & !\C1|C3|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C3|Add0~1_combout\,
	datab => \C1|C3|Add1~4_combout\,
	datad => VCC,
	cin => \C1|C3|Add2~5\,
	combout => \C1|C3|Add2~6_combout\,
	cout => \C1|C3|Add2~7\);

-- Location: LCCOMB_X22_Y21_N30
\C1|C3|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add2~8_combout\ = \C1|C3|Add0~0_combout\ $ (\C1|C3|Add2~7\ $ (\C1|C3|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C3|Add0~0_combout\,
	datad => \C1|C3|Add1~6_combout\,
	cin => \C1|C3|Add2~7\,
	combout => \C1|C3|Add2~8_combout\);

-- Location: LCCOMB_X23_Y21_N22
\C1|C3|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add3~4_combout\ = ((\C1|C1|output1\(2) $ (\C1|C1|output1\(3) $ (!\C1|C3|Add3~3\)))) # (GND)
-- \C1|C3|Add3~5\ = CARRY((\C1|C1|output1\(2) & ((\C1|C1|output1\(3)) # (!\C1|C3|Add3~3\))) # (!\C1|C1|output1\(2) & (\C1|C1|output1\(3) & !\C1|C3|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output1\(2),
	datab => \C1|C1|output1\(3),
	datad => VCC,
	cin => \C1|C3|Add3~3\,
	combout => \C1|C3|Add3~4_combout\,
	cout => \C1|C3|Add3~5\);

-- Location: LCCOMB_X23_Y21_N24
\C1|C3|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add3~6_combout\ = (\C1|C3|Add2~2_combout\ & ((\C1|C1|output1\(4) & (!\C1|C3|Add3~5\)) # (!\C1|C1|output1\(4) & (\C1|C3|Add3~5\ & VCC)))) # (!\C1|C3|Add2~2_combout\ & ((\C1|C1|output1\(4) & ((\C1|C3|Add3~5\) # (GND))) # (!\C1|C1|output1\(4) & 
-- (!\C1|C3|Add3~5\))))
-- \C1|C3|Add3~7\ = CARRY((\C1|C3|Add2~2_combout\ & (\C1|C1|output1\(4) & !\C1|C3|Add3~5\)) # (!\C1|C3|Add2~2_combout\ & ((\C1|C1|output1\(4)) # (!\C1|C3|Add3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C3|Add2~2_combout\,
	datab => \C1|C1|output1\(4),
	datad => VCC,
	cin => \C1|C3|Add3~5\,
	combout => \C1|C3|Add3~6_combout\,
	cout => \C1|C3|Add3~7\);

-- Location: LCCOMB_X23_Y21_N10
\C1|C3|output[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|output[5]~8_combout\ = (\C1|C3|Add0~2_combout\ & ((\C1|C3|Add3~8_combout\ & (\C1|C3|output[4]~7\ & VCC)) # (!\C1|C3|Add3~8_combout\ & (!\C1|C3|output[4]~7\)))) # (!\C1|C3|Add0~2_combout\ & ((\C1|C3|Add3~8_combout\ & (!\C1|C3|output[4]~7\)) # 
-- (!\C1|C3|Add3~8_combout\ & ((\C1|C3|output[4]~7\) # (GND)))))
-- \C1|C3|output[5]~9\ = CARRY((\C1|C3|Add0~2_combout\ & (!\C1|C3|Add3~8_combout\ & !\C1|C3|output[4]~7\)) # (!\C1|C3|Add0~2_combout\ & ((!\C1|C3|output[4]~7\) # (!\C1|C3|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C3|Add0~2_combout\,
	datab => \C1|C3|Add3~8_combout\,
	datad => VCC,
	cin => \C1|C3|output[4]~7\,
	combout => \C1|C3|output[5]~8_combout\,
	cout => \C1|C3|output[5]~9\);

-- Location: LCCOMB_X28_Y24_N6
\C1|C7|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Add0~0_combout\ = \C1|C7|Count\(0) $ (VCC)
-- \C1|C7|Add0~1\ = CARRY(\C1|C7|Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C7|Count\(0),
	datad => VCC,
	combout => \C1|C7|Add0~0_combout\,
	cout => \C1|C7|Add0~1\);

-- Location: LCCOMB_X28_Y24_N16
\C1|C7|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Add0~10_combout\ = (\C1|C7|Count\(5) & (\C1|C7|Add0~9\ & VCC)) # (!\C1|C7|Count\(5) & (!\C1|C7|Add0~9\))
-- \C1|C7|Add0~11\ = CARRY((!\C1|C7|Count\(5) & !\C1|C7|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Count\(5),
	datad => VCC,
	cin => \C1|C7|Add0~9\,
	combout => \C1|C7|Add0~10_combout\,
	cout => \C1|C7|Add0~11\);

-- Location: LCCOMB_X28_Y24_N18
\C1|C7|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Add0~12_combout\ = (\C1|C7|Count\(6) & ((GND) # (!\C1|C7|Add0~11\))) # (!\C1|C7|Count\(6) & (\C1|C7|Add0~11\ $ (GND)))
-- \C1|C7|Add0~13\ = CARRY((\C1|C7|Count\(6)) # (!\C1|C7|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C7|Count\(6),
	datad => VCC,
	cin => \C1|C7|Add0~11\,
	combout => \C1|C7|Add0~12_combout\,
	cout => \C1|C7|Add0~13\);

-- Location: LCCOMB_X23_Y24_N20
\C1|C4|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add1~0_combout\ = (\C1|C1|output2\(0) & (\C1|C1|output2\(4) $ (GND))) # (!\C1|C1|output2\(0) & (!\C1|C1|output2\(4) & VCC))
-- \C1|C4|Add1~1\ = CARRY((\C1|C1|output2\(0) & !\C1|C1|output2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output2\(0),
	datab => \C1|C1|output2\(4),
	datad => VCC,
	combout => \C1|C4|Add1~0_combout\,
	cout => \C1|C4|Add1~1\);

-- Location: LCCOMB_X23_Y24_N24
\C1|C4|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add1~4_combout\ = ((\C1|C4|Add0~1_combout\ $ (\C1|C1|output2\(2) $ (\C1|C4|Add1~3\)))) # (GND)
-- \C1|C4|Add1~5\ = CARRY((\C1|C4|Add0~1_combout\ & (\C1|C1|output2\(2) & !\C1|C4|Add1~3\)) # (!\C1|C4|Add0~1_combout\ & ((\C1|C1|output2\(2)) # (!\C1|C4|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C4|Add0~1_combout\,
	datab => \C1|C1|output2\(2),
	datad => VCC,
	cin => \C1|C4|Add1~3\,
	combout => \C1|C4|Add1~4_combout\,
	cout => \C1|C4|Add1~5\);

-- Location: LCCOMB_X23_Y24_N8
\C1|C4|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add2~6_combout\ = (\C1|C4|Add1~4_combout\ & ((\C1|C4|Add0~1_combout\ & (!\C1|C4|Add2~5\)) # (!\C1|C4|Add0~1_combout\ & (\C1|C4|Add2~5\ & VCC)))) # (!\C1|C4|Add1~4_combout\ & ((\C1|C4|Add0~1_combout\ & ((\C1|C4|Add2~5\) # (GND))) # 
-- (!\C1|C4|Add0~1_combout\ & (!\C1|C4|Add2~5\))))
-- \C1|C4|Add2~7\ = CARRY((\C1|C4|Add1~4_combout\ & (\C1|C4|Add0~1_combout\ & !\C1|C4|Add2~5\)) # (!\C1|C4|Add1~4_combout\ & ((\C1|C4|Add0~1_combout\) # (!\C1|C4|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C4|Add1~4_combout\,
	datab => \C1|C4|Add0~1_combout\,
	datad => VCC,
	cin => \C1|C4|Add2~5\,
	combout => \C1|C4|Add2~6_combout\,
	cout => \C1|C4|Add2~7\);

-- Location: LCCOMB_X24_Y24_N20
\C1|C4|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add3~2_combout\ = (\C1|C1|output2\(1) & ((\C1|C1|output2\(2) & (\C1|C4|Add3~1\ & VCC)) # (!\C1|C1|output2\(2) & (!\C1|C4|Add3~1\)))) # (!\C1|C1|output2\(1) & ((\C1|C1|output2\(2) & (!\C1|C4|Add3~1\)) # (!\C1|C1|output2\(2) & ((\C1|C4|Add3~1\) # 
-- (GND)))))
-- \C1|C4|Add3~3\ = CARRY((\C1|C1|output2\(1) & (!\C1|C1|output2\(2) & !\C1|C4|Add3~1\)) # (!\C1|C1|output2\(1) & ((!\C1|C4|Add3~1\) # (!\C1|C1|output2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output2\(1),
	datab => \C1|C1|output2\(2),
	datad => VCC,
	cin => \C1|C4|Add3~1\,
	combout => \C1|C4|Add3~2_combout\,
	cout => \C1|C4|Add3~3\);

-- Location: LCCOMB_X24_Y24_N24
\C1|C4|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add3~6_combout\ = (\C1|C1|output2\(4) & ((\C1|C4|Add2~2_combout\ & (!\C1|C4|Add3~5\)) # (!\C1|C4|Add2~2_combout\ & ((\C1|C4|Add3~5\) # (GND))))) # (!\C1|C1|output2\(4) & ((\C1|C4|Add2~2_combout\ & (\C1|C4|Add3~5\ & VCC)) # (!\C1|C4|Add2~2_combout\ 
-- & (!\C1|C4|Add3~5\))))
-- \C1|C4|Add3~7\ = CARRY((\C1|C1|output2\(4) & ((!\C1|C4|Add3~5\) # (!\C1|C4|Add2~2_combout\))) # (!\C1|C1|output2\(4) & (!\C1|C4|Add2~2_combout\ & !\C1|C4|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output2\(4),
	datab => \C1|C4|Add2~2_combout\,
	datad => VCC,
	cin => \C1|C4|Add3~5\,
	combout => \C1|C4|Add3~6_combout\,
	cout => \C1|C4|Add3~7\);

-- Location: LCCOMB_X24_Y24_N10
\C1|C4|output[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|output[4]~6_combout\ = ((\C1|C4|Add3~6_combout\ $ (\C1|C1|output2\(4) $ (\C1|C4|output[3]~5_cout\)))) # (GND)
-- \C1|C4|output[4]~7\ = CARRY((\C1|C4|Add3~6_combout\ & ((!\C1|C4|output[3]~5_cout\) # (!\C1|C1|output2\(4)))) # (!\C1|C4|Add3~6_combout\ & (!\C1|C1|output2\(4) & !\C1|C4|output[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C4|Add3~6_combout\,
	datab => \C1|C1|output2\(4),
	datad => VCC,
	cin => \C1|C4|output[3]~5_cout\,
	combout => \C1|C4|output[4]~6_combout\,
	cout => \C1|C4|output[4]~7\);

-- Location: LCCOMB_X24_Y24_N12
\C1|C4|output[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|output[5]~8_combout\ = (\C1|C4|Add0~2_combout\ & ((\C1|C4|Add3~8_combout\ & (\C1|C4|output[4]~7\ & VCC)) # (!\C1|C4|Add3~8_combout\ & (!\C1|C4|output[4]~7\)))) # (!\C1|C4|Add0~2_combout\ & ((\C1|C4|Add3~8_combout\ & (!\C1|C4|output[4]~7\)) # 
-- (!\C1|C4|Add3~8_combout\ & ((\C1|C4|output[4]~7\) # (GND)))))
-- \C1|C4|output[5]~9\ = CARRY((\C1|C4|Add0~2_combout\ & (!\C1|C4|Add3~8_combout\ & !\C1|C4|output[4]~7\)) # (!\C1|C4|Add0~2_combout\ & ((!\C1|C4|output[4]~7\) # (!\C1|C4|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C4|Add0~2_combout\,
	datab => \C1|C4|Add3~8_combout\,
	datad => VCC,
	cin => \C1|C4|output[4]~7\,
	combout => \C1|C4|output[5]~8_combout\,
	cout => \C1|C4|output[5]~9\);

-- Location: LCCOMB_X28_Y22_N6
\C1|C0|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Add0~2_combout\ = (\C1|C0|Count\(1) & (\C1|C0|Add0~1\ & VCC)) # (!\C1|C0|Count\(1) & (!\C1|C0|Add0~1\))
-- \C1|C0|Add0~3\ = CARRY((!\C1|C0|Count\(1) & !\C1|C0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Count\(1),
	datad => VCC,
	cin => \C1|C0|Add0~1\,
	combout => \C1|C0|Add0~2_combout\,
	cout => \C1|C0|Add0~3\);

-- Location: LCCOMB_X28_Y22_N10
\C1|C0|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Add0~6_combout\ = (\C1|C0|Count\(3) & (\C1|C0|Add0~5\ & VCC)) # (!\C1|C0|Count\(3) & (!\C1|C0|Add0~5\))
-- \C1|C0|Add0~7\ = CARRY((!\C1|C0|Count\(3) & !\C1|C0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Count\(3),
	datad => VCC,
	cin => \C1|C0|Add0~5\,
	combout => \C1|C0|Add0~6_combout\,
	cout => \C1|C0|Add0~7\);

-- Location: LCCOMB_X28_Y22_N12
\C1|C0|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Add0~8_combout\ = (\C1|C0|Count\(4) & ((GND) # (!\C1|C0|Add0~7\))) # (!\C1|C0|Count\(4) & (\C1|C0|Add0~7\ $ (GND)))
-- \C1|C0|Add0~9\ = CARRY((\C1|C0|Count\(4)) # (!\C1|C0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C0|Count\(4),
	datad => VCC,
	cin => \C1|C0|Add0~7\,
	combout => \C1|C0|Add0~8_combout\,
	cout => \C1|C0|Add0~9\);

-- Location: LCCOMB_X28_Y22_N16
\C1|C0|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Add0~12_combout\ = (\C1|C0|Count\(6) & ((GND) # (!\C1|C0|Add0~11\))) # (!\C1|C0|Count\(6) & (\C1|C0|Add0~11\ $ (GND)))
-- \C1|C0|Add0~13\ = CARRY((\C1|C0|Count\(6)) # (!\C1|C0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C0|Count\(6),
	datad => VCC,
	cin => \C1|C0|Add0~11\,
	combout => \C1|C0|Add0~12_combout\,
	cout => \C1|C0|Add0~13\);

-- Location: LCCOMB_X28_Y22_N18
\C1|C0|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Add0~14_combout\ = (\C1|C0|Count\(7) & (\C1|C0|Add0~13\ & VCC)) # (!\C1|C0|Count\(7) & (!\C1|C0|Add0~13\))
-- \C1|C0|Add0~15\ = CARRY((!\C1|C0|Count\(7) & !\C1|C0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C0|Count\(7),
	datad => VCC,
	cin => \C1|C0|Add0~13\,
	combout => \C1|C0|Add0~14_combout\,
	cout => \C1|C0|Add0~15\);

-- Location: LCCOMB_X28_Y22_N20
\C1|C0|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Add0~16_combout\ = \C1|C0|Count\(8) $ (\C1|C0|Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Count\(8),
	cin => \C1|C0|Add0~15\,
	combout => \C1|C0|Add0~16_combout\);

-- Location: LCFF_X18_Y21_N3
\C0|C1|C1|i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[0]~32_combout\,
	sdata => \C0|C1|C1|Selector38~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(0));

-- Location: LCFF_X18_Y21_N11
\C0|C1|C1|i[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[4]~40_combout\,
	sdata => \C0|C1|C1|Selector34~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(4));

-- Location: LCFF_X18_Y21_N13
\C0|C1|C1|i[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[5]~42_combout\,
	sdata => \C0|C1|C1|Selector33~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(5));

-- Location: LCFF_X18_Y21_N17
\C0|C1|C1|i[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[7]~46_combout\,
	sdata => \C0|C1|C1|Selector31~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(7));

-- Location: LCFF_X18_Y21_N21
\C0|C1|C1|i[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[9]~50_combout\,
	sdata => \C0|C1|C1|Selector29~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(9));

-- Location: LCFF_X18_Y20_N13
\C0|C1|C1|i[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[21]~74_combout\,
	sdata => \C0|C1|C1|Selector17~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(21));

-- Location: LCFF_X18_Y20_N21
\C0|C1|C1|i[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[25]~82_combout\,
	sdata => \C0|C1|C1|Selector13~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(25));

-- Location: LCFF_X18_Y20_N31
\C0|C1|C1|i[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[30]~92_combout\,
	sdata => \C0|C1|C1|Selector8~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(30));

-- Location: LCCOMB_X18_Y21_N2
\C0|C1|C1|i[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[0]~32_combout\ = (\C0|C1|C1|i\(0) & (\C0|C1|C1|i~31_combout\ $ (GND))) # (!\C0|C1|C1|i\(0) & (!\C0|C1|C1|i~31_combout\ & VCC))
-- \C0|C1|C1|i[0]~33\ = CARRY((\C0|C1|C1|i\(0) & !\C0|C1|C1|i~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(0),
	datab => \C0|C1|C1|i~31_combout\,
	datad => VCC,
	combout => \C0|C1|C1|i[0]~32_combout\,
	cout => \C0|C1|C1|i[0]~33\);

-- Location: LCCOMB_X18_Y21_N10
\C0|C1|C1|i[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[4]~40_combout\ = (\C0|C1|C1|i\(4) & (\C0|C1|C1|i[3]~39\ $ (GND))) # (!\C0|C1|C1|i\(4) & (!\C0|C1|C1|i[3]~39\ & VCC))
-- \C0|C1|C1|i[4]~41\ = CARRY((\C0|C1|C1|i\(4) & !\C0|C1|C1|i[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(4),
	datad => VCC,
	cin => \C0|C1|C1|i[3]~39\,
	combout => \C0|C1|C1|i[4]~40_combout\,
	cout => \C0|C1|C1|i[4]~41\);

-- Location: LCCOMB_X18_Y21_N12
\C0|C1|C1|i[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[5]~42_combout\ = (\C0|C1|C1|i\(5) & (!\C0|C1|C1|i[4]~41\)) # (!\C0|C1|C1|i\(5) & ((\C0|C1|C1|i[4]~41\) # (GND)))
-- \C0|C1|C1|i[5]~43\ = CARRY((!\C0|C1|C1|i[4]~41\) # (!\C0|C1|C1|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(5),
	datad => VCC,
	cin => \C0|C1|C1|i[4]~41\,
	combout => \C0|C1|C1|i[5]~42_combout\,
	cout => \C0|C1|C1|i[5]~43\);

-- Location: LCCOMB_X18_Y21_N16
\C0|C1|C1|i[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[7]~46_combout\ = (\C0|C1|C1|i\(7) & (!\C0|C1|C1|i[6]~45\)) # (!\C0|C1|C1|i\(7) & ((\C0|C1|C1|i[6]~45\) # (GND)))
-- \C0|C1|C1|i[7]~47\ = CARRY((!\C0|C1|C1|i[6]~45\) # (!\C0|C1|C1|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(7),
	datad => VCC,
	cin => \C0|C1|C1|i[6]~45\,
	combout => \C0|C1|C1|i[7]~46_combout\,
	cout => \C0|C1|C1|i[7]~47\);

-- Location: LCCOMB_X18_Y21_N20
\C0|C1|C1|i[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[9]~50_combout\ = (\C0|C1|C1|i\(9) & (!\C0|C1|C1|i[8]~49\)) # (!\C0|C1|C1|i\(9) & ((\C0|C1|C1|i[8]~49\) # (GND)))
-- \C0|C1|C1|i[9]~51\ = CARRY((!\C0|C1|C1|i[8]~49\) # (!\C0|C1|C1|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(9),
	datad => VCC,
	cin => \C0|C1|C1|i[8]~49\,
	combout => \C0|C1|C1|i[9]~50_combout\,
	cout => \C0|C1|C1|i[9]~51\);

-- Location: LCCOMB_X18_Y20_N12
\C0|C1|C1|i[21]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[21]~74_combout\ = (\C0|C1|C1|i\(21) & (!\C0|C1|C1|i[20]~73\)) # (!\C0|C1|C1|i\(21) & ((\C0|C1|C1|i[20]~73\) # (GND)))
-- \C0|C1|C1|i[21]~75\ = CARRY((!\C0|C1|C1|i[20]~73\) # (!\C0|C1|C1|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(21),
	datad => VCC,
	cin => \C0|C1|C1|i[20]~73\,
	combout => \C0|C1|C1|i[21]~74_combout\,
	cout => \C0|C1|C1|i[21]~75\);

-- Location: LCCOMB_X18_Y20_N20
\C0|C1|C1|i[25]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[25]~82_combout\ = (\C0|C1|C1|i\(25) & (!\C0|C1|C1|i[24]~81\)) # (!\C0|C1|C1|i\(25) & ((\C0|C1|C1|i[24]~81\) # (GND)))
-- \C0|C1|C1|i[25]~83\ = CARRY((!\C0|C1|C1|i[24]~81\) # (!\C0|C1|C1|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(25),
	datad => VCC,
	cin => \C0|C1|C1|i[24]~81\,
	combout => \C0|C1|C1|i[25]~82_combout\,
	cout => \C0|C1|C1|i[25]~83\);

-- Location: LCCOMB_X18_Y20_N28
\C0|C1|C1|i[29]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[29]~90_combout\ = (\C0|C1|C1|i\(29) & (!\C0|C1|C1|i[28]~89\)) # (!\C0|C1|C1|i\(29) & ((\C0|C1|C1|i[28]~89\) # (GND)))
-- \C0|C1|C1|i[29]~91\ = CARRY((!\C0|C1|C1|i[28]~89\) # (!\C0|C1|C1|i\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(29),
	datad => VCC,
	cin => \C0|C1|C1|i[28]~89\,
	combout => \C0|C1|C1|i[29]~90_combout\,
	cout => \C0|C1|C1|i[29]~91\);

-- Location: LCCOMB_X18_Y20_N30
\C0|C1|C1|i[30]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[30]~92_combout\ = \C0|C1|C1|i[29]~91\ $ (!\C0|C1|C1|i\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C0|C1|C1|i\(30),
	cin => \C0|C1|C1|i[29]~91\,
	combout => \C0|C1|C1|i[30]~92_combout\);

-- Location: LCCOMB_X20_Y21_N20
\C0|C1|C0|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C0|Add0~4_combout\ = (\C0|C1|C0|counter\(2) & (\C0|C1|C0|Add0~3\ $ (GND))) # (!\C0|C1|C0|counter\(2) & (!\C0|C1|C0|Add0~3\ & VCC))
-- \C0|C1|C0|Add0~5\ = CARRY((\C0|C1|C0|counter\(2) & !\C0|C1|C0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C0|counter\(2),
	datad => VCC,
	cin => \C0|C1|C0|Add0~3\,
	combout => \C0|C1|C0|Add0~4_combout\,
	cout => \C0|C1|C0|Add0~5\);

-- Location: LCCOMB_X20_Y21_N22
\C0|C1|C0|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C0|Add0~6_combout\ = (\C0|C1|C0|counter\(3) & (!\C0|C1|C0|Add0~5\)) # (!\C0|C1|C0|counter\(3) & ((\C0|C1|C0|Add0~5\) # (GND)))
-- \C0|C1|C0|Add0~7\ = CARRY((!\C0|C1|C0|Add0~5\) # (!\C0|C1|C0|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C0|counter\(3),
	datad => VCC,
	cin => \C0|C1|C0|Add0~5\,
	combout => \C0|C1|C0|Add0~6_combout\,
	cout => \C0|C1|C0|Add0~7\);

-- Location: LCCOMB_X20_Y21_N24
\C0|C1|C0|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C0|Add0~8_combout\ = (\C0|C1|C0|counter\(4) & (\C0|C1|C0|Add0~7\ $ (GND))) # (!\C0|C1|C0|counter\(4) & (!\C0|C1|C0|Add0~7\ & VCC))
-- \C0|C1|C0|Add0~9\ = CARRY((\C0|C1|C0|counter\(4) & !\C0|C1|C0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C0|counter\(4),
	datad => VCC,
	cin => \C0|C1|C0|Add0~7\,
	combout => \C0|C1|C0|Add0~8_combout\,
	cout => \C0|C1|C0|Add0~9\);

-- Location: LCCOMB_X20_Y21_N26
\C0|C1|C0|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C0|Add0~10_combout\ = (\C0|C1|C0|counter\(5) & (!\C0|C1|C0|Add0~9\)) # (!\C0|C1|C0|counter\(5) & ((\C0|C1|C0|Add0~9\) # (GND)))
-- \C0|C1|C0|Add0~11\ = CARRY((!\C0|C1|C0|Add0~9\) # (!\C0|C1|C0|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C0|counter\(5),
	datad => VCC,
	cin => \C0|C1|C0|Add0~9\,
	combout => \C0|C1|C0|Add0~10_combout\,
	cout => \C0|C1|C0|Add0~11\);

-- Location: LCCOMB_X20_Y21_N28
\C0|C1|C0|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C0|Add0~12_combout\ = \C0|C1|C0|Add0~11\ $ (!\C0|C1|C0|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C0|C1|C0|counter\(6),
	cin => \C0|C1|C0|Add0~11\,
	combout => \C0|C1|C0|Add0~12_combout\);

-- Location: LCFF_X22_Y22_N21
\C1|C1|regSelector[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C0|C1|C1|output\(6),
	sload => VCC,
	ena => \C1|C1|regSelector[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|regSelector\(6));

-- Location: LCFF_X22_Y22_N7
\C1|C1|regSelector[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|regSelector[1]~feeder_combout\,
	ena => \C1|C1|regSelector[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|regSelector\(1));

-- Location: LCFF_X19_Y23_N1
\C1|C5|Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C5|Count[6]~14_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C5|Count\(6));

-- Location: LCCOMB_X18_Y24_N6
\C1|C5|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Selector0~0_combout\ = (\C1|C5|State.Init~regout\) # ((\C1|C5|State.Relax~regout\) # ((!\C1|C5|State~12_combout\ & \C1|C5|State.Pulse~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|State~12_combout\,
	datab => \C1|C5|State.Pulse~regout\,
	datac => \C1|C5|State.Init~regout\,
	datad => \C1|C5|State.Relax~regout\,
	combout => \C1|C5|Selector0~0_combout\);

-- Location: LCFF_X24_Y21_N13
\C1|C6|Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C6|Count[5]~16_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C6|Count\(5));

-- Location: LCFF_X25_Y24_N29
\C1|C7|Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C7|Count[5]~16_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C7|Count\(5));

-- Location: LCCOMB_X27_Y24_N24
\C1|C7|State~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|State~12_combout\ = (\C1|C0|Tick7us~regout\ & (!\C1|C7|Count\(2) & (\C1|C7|Equal0~0_combout\ & \C1|C7|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Tick7us~regout\,
	datab => \C1|C7|Count\(2),
	datac => \C1|C7|Equal0~0_combout\,
	datad => \C1|C7|Equal0~1_combout\,
	combout => \C1|C7|State~12_combout\);

-- Location: LCCOMB_X21_Y22_N24
\C1|C1|clocked~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|clocked~1_combout\ = (\C0|C1|C1|output\(4) & (!\C0|C1|C1|output\(3) & (\C0|C1|C1|output\(5) & !\C0|C1|C1|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|output\(4),
	datab => \C0|C1|C1|output\(3),
	datac => \C0|C1|C1|output\(5),
	datad => \C0|C1|C1|output\(2),
	combout => \C1|C1|clocked~1_combout\);

-- Location: LCFF_X28_Y22_N21
\C1|C0|Count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C0|Add0~16_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C0|Count\(8));

-- Location: LCFF_X28_Y22_N7
\C1|C0|Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C0|Add0~2_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C0|Count\(1));

-- Location: LCCOMB_X20_Y24_N22
\C1|C5|Count[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[6]~12_combout\ = (\C1|C5|Count\(6) & \C1|C5|Count[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C5|Count\(6),
	datad => \C1|C5|Count[0]~2_combout\,
	combout => \C1|C5|Count[6]~12_combout\);

-- Location: LCCOMB_X19_Y24_N16
\C1|C5|Count[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[6]~13_combout\ = (!\C1|C5|Count[6]~9_combout\ & (\C1|C5|Count[7]~6_combout\ & ((\C1|C5|Add0~12_combout\) # (!\C1|C5|State.Idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Count[6]~9_combout\,
	datab => \C1|C5|State.Idle~regout\,
	datac => \C1|C5|Add0~12_combout\,
	datad => \C1|C5|Count[7]~6_combout\,
	combout => \C1|C5|Count[6]~13_combout\);

-- Location: LCCOMB_X19_Y23_N0
\C1|C5|Count[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[6]~14_combout\ = (\C1|C5|Count[6]~13_combout\) # ((\C1|C5|Count[6]~12_combout\) # ((\C1|C5|Count[7]~10_combout\ & \C1|C2|output[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Count[6]~13_combout\,
	datab => \C1|C5|Count[7]~10_combout\,
	datac => \C1|C2|output[6]~10_combout\,
	datad => \C1|C5|Count[6]~12_combout\,
	combout => \C1|C5|Count[6]~14_combout\);

-- Location: LCCOMB_X18_Y24_N18
\C1|C5|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Selector8~0_combout\ = (\C1|C5|State.Init~regout\ & (((!\C1|C0|Tick7us~regout\) # (!\C1|C5|Equal0~2_combout\)))) # (!\C1|C5|State.Init~regout\ & (\C1|C5|State.Relax~regout\ & ((!\C1|C0|Tick7us~regout\) # (!\C1|C5|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|State.Init~regout\,
	datab => \C1|C5|State.Relax~regout\,
	datac => \C1|C5|Equal0~2_combout\,
	datad => \C1|C0|Tick7us~regout\,
	combout => \C1|C5|Selector8~0_combout\);

-- Location: LCCOMB_X18_Y24_N20
\C1|C5|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Selector8~1_combout\ = (\C1|C5|State.Pulse~regout\ & (((\C1|C5|Add0~2_combout\)) # (!\C1|C0|Tick7us~regout\))) # (!\C1|C5|State.Pulse~regout\ & (\C1|C5|Selector8~0_combout\ & ((\C1|C5|Add0~2_combout\) # (!\C1|C0|Tick7us~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|State.Pulse~regout\,
	datab => \C1|C0|Tick7us~regout\,
	datac => \C1|C5|Add0~2_combout\,
	datad => \C1|C5|Selector8~0_combout\,
	combout => \C1|C5|Selector8~1_combout\);

-- Location: LCCOMB_X24_Y22_N16
\C1|C6|Count[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[7]~5_combout\ = (!\C1|C6|State.Relax~regout\ & !\C1|C6|State.Pulse~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|State.Relax~regout\,
	datad => \C1|C6|State.Pulse~regout\,
	combout => \C1|C6|Count[7]~5_combout\);

-- Location: LCCOMB_X24_Y21_N20
\C1|C6|Count[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[7]~7_combout\ = (\C1|C6|Count[7]~6_combout\ & (\C1|C6|State.Idle~regout\ & ((!\C1|C6|Equal0~2_combout\) # (!\C1|C6|State.Init~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|State.Init~regout\,
	datab => \C1|C6|Count[7]~6_combout\,
	datac => \C1|C6|State.Idle~regout\,
	datad => \C1|C6|Equal0~2_combout\,
	combout => \C1|C6|Count[7]~7_combout\);

-- Location: LCFF_X22_Y21_N21
\C1|C1|output1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|output1[6]~feeder_combout\,
	ena => \C1|C1|output1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output1\(6));

-- Location: LCCOMB_X22_Y21_N10
\C1|C3|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add0~1_combout\ = \C1|C1|output1\(6) $ (((\C1|C1|output1\(4) & \C1|C1|output1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output1\(6),
	datab => \C1|C1|output1\(4),
	datad => \C1|C1|output1\(5),
	combout => \C1|C3|Add0~1_combout\);

-- Location: LCCOMB_X22_Y21_N16
\C1|C3|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add0~2_combout\ = \C1|C1|output1\(4) $ (\C1|C1|output1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|output1\(4),
	datad => \C1|C1|output1\(5),
	combout => \C1|C3|Add0~2_combout\);

-- Location: LCCOMB_X24_Y21_N6
\C1|C6|Count[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[7]~10_combout\ = (!\C1|C6|Count[0]~2_combout\ & (\C1|C6|Count[7]~9_combout\ & ((!\C1|C6|Equal0~2_combout\) # (!\C1|C6|State.Pulse~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|State.Pulse~regout\,
	datab => \C1|C6|Count[0]~2_combout\,
	datac => \C1|C6|Count[7]~9_combout\,
	datad => \C1|C6|Equal0~2_combout\,
	combout => \C1|C6|Count[7]~10_combout\);

-- Location: LCCOMB_X24_Y21_N22
\C1|C6|Count[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[5]~15_combout\ = (\C1|C6|Count[7]~7_combout\ & ((\C1|C6|Add0~10_combout\) # ((\C1|C6|Count[0]~2_combout\ & \C1|C6|Count\(5))))) # (!\C1|C6|Count[7]~7_combout\ & (((\C1|C6|Count[0]~2_combout\ & \C1|C6|Count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|Count[7]~7_combout\,
	datab => \C1|C6|Add0~10_combout\,
	datac => \C1|C6|Count[0]~2_combout\,
	datad => \C1|C6|Count\(5),
	combout => \C1|C6|Count[5]~15_combout\);

-- Location: LCCOMB_X24_Y21_N12
\C1|C6|Count[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[5]~16_combout\ = (\C1|C6|Count[5]~15_combout\) # ((\C1|C6|Count[7]~10_combout\ & \C1|C3|output[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|Count[7]~10_combout\,
	datab => \C1|C6|Count[5]~15_combout\,
	datad => \C1|C3|output[5]~8_combout\,
	combout => \C1|C6|Count[5]~16_combout\);

-- Location: LCCOMB_X24_Y21_N10
\C1|C6|Count[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[0]~21_combout\ = (\C1|C6|Add0~0_combout\ & (((!\C1|C6|State.Init~regout\ & !\C1|C6|State.Pulse~regout\)) # (!\C1|C6|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|State.Init~regout\,
	datab => \C1|C6|Equal0~2_combout\,
	datac => \C1|C6|State.Pulse~regout\,
	datad => \C1|C6|Add0~0_combout\,
	combout => \C1|C6|Count[0]~21_combout\);

-- Location: LCCOMB_X25_Y24_N6
\C1|C7|Count[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[0]~1_combout\ = (!\C1|C0|Tick7us~regout\ & ((\C1|C7|State.Init~regout\) # ((\C1|C7|State.Pulse~regout\) # (\C1|C7|State.Relax~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|State.Init~regout\,
	datab => \C1|C0|Tick7us~regout\,
	datac => \C1|C7|State.Pulse~regout\,
	datad => \C1|C7|State.Relax~regout\,
	combout => \C1|C7|Count[0]~1_combout\);

-- Location: LCCOMB_X23_Y24_N28
\C1|C4|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add0~2_combout\ = \C1|C1|output2\(5) $ (\C1|C1|output2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|output2\(5),
	datad => \C1|C1|output2\(4),
	combout => \C1|C4|Add0~2_combout\);

-- Location: LCCOMB_X25_Y24_N10
\C1|C7|Count[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[6]~13_combout\ = (\C1|C7|Count[7]~6_combout\ & (!\C1|C7|Count[7]~9_combout\ & ((\C1|C7|Add0~12_combout\) # (!\C1|C7|State.Idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Count[7]~6_combout\,
	datab => \C1|C7|State.Idle~regout\,
	datac => \C1|C7|Count[7]~9_combout\,
	datad => \C1|C7|Add0~12_combout\,
	combout => \C1|C7|Count[6]~13_combout\);

-- Location: LCCOMB_X25_Y24_N20
\C1|C7|Count[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[5]~15_combout\ = (\C1|C7|Count[0]~2_combout\ & ((\C1|C7|Count\(5)) # ((\C1|C7|Add0~10_combout\ & \C1|C7|Count[7]~7_combout\)))) # (!\C1|C7|Count[0]~2_combout\ & (((\C1|C7|Add0~10_combout\ & \C1|C7|Count[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Count[0]~2_combout\,
	datab => \C1|C7|Count\(5),
	datac => \C1|C7|Add0~10_combout\,
	datad => \C1|C7|Count[7]~7_combout\,
	combout => \C1|C7|Count[5]~15_combout\);

-- Location: LCCOMB_X25_Y24_N28
\C1|C7|Count[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[5]~16_combout\ = (\C1|C7|Count[5]~15_combout\) # ((\C1|C7|Count[7]~10_combout\ & \C1|C4|output[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C7|Count[7]~10_combout\,
	datac => \C1|C7|Count[5]~15_combout\,
	datad => \C1|C4|output[5]~8_combout\,
	combout => \C1|C7|Count[5]~16_combout\);

-- Location: LCCOMB_X20_Y22_N6
\C1|C1|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector16~0_combout\ = (\C1|C1|EtatPresent.Etat0~regout\ & (\C0|C1|C1|dataValid~regout\ & ((\C1|C1|EtatPresent.Etat2~regout\) # (\C1|C1|EtatPresent.Etat4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EtatPresent.Etat2~regout\,
	datab => \C1|C1|EtatPresent.Etat4~regout\,
	datac => \C1|C1|EtatPresent.Etat0~regout\,
	datad => \C0|C1|C1|dataValid~regout\,
	combout => \C1|C1|Selector16~0_combout\);

-- Location: LCCOMB_X20_Y20_N30
\C0|C1|C1|reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|reg~0_combout\ = (\C0|C1|C0|tick~regout\ & \C0|C1|C1|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C0|tick~regout\,
	datad => \C0|C1|C1|i\(0),
	combout => \C0|C1|C1|reg~0_combout\);

-- Location: LCCOMB_X21_Y20_N12
\C0|C1|C1|reg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|reg~2_combout\ = (\C0|C1|C0|tick~regout\ & !\C0|C1|C1|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C0|tick~regout\,
	datad => \C0|C1|C1|i\(0),
	combout => \C0|C1|C1|reg~2_combout\);

-- Location: LCCOMB_X18_Y21_N0
\C0|C1|C1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Equal0~4_combout\ = (!\C0|C1|C1|i\(4) & (!\C0|C1|C1|i\(6) & (!\C0|C1|C1|i\(7) & !\C0|C1|C1|i\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(4),
	datab => \C0|C1|C1|i\(6),
	datac => \C0|C1|C1|i\(7),
	datad => \C0|C1|C1|i\(5),
	combout => \C0|C1|C1|Equal0~4_combout\);

-- Location: LCFF_X20_Y21_N11
\C0|C1|C0|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C0|counter~0_combout\,
	aclr => \C0|C1|C1|clr~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C0|counter\(6));

-- Location: LCFF_X20_Y21_N1
\C0|C1|C0|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C0|counter~1_combout\,
	aclr => \C0|C1|C1|clr~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C0|counter\(5));

-- Location: LCFF_X20_Y21_N31
\C0|C1|C0|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C0|counter~2_combout\,
	aclr => \C0|C1|C1|clr~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C0|counter\(3));

-- Location: LCFF_X20_Y21_N25
\C0|C1|C0|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C0|Add0~8_combout\,
	aclr => \C0|C1|C1|clr~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C0|counter\(4));

-- Location: LCCOMB_X20_Y21_N12
\C0|C1|C0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C0|Equal0~0_combout\ = (\C0|C1|C0|counter\(6) & (\C0|C1|C0|counter\(5) & (!\C0|C1|C0|counter\(4) & \C0|C1|C0|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C0|counter\(6),
	datab => \C0|C1|C0|counter\(5),
	datac => \C0|C1|C0|counter\(4),
	datad => \C0|C1|C0|counter\(3),
	combout => \C0|C1|C0|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y21_N0
\C0|C1|C1|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector38~0_combout\ = (\C0|C1|C1|i\(0) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(0),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector38~0_combout\);

-- Location: LCCOMB_X17_Y21_N6
\C0|C1|C1|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector34~0_combout\ = (\C0|C1|C1|i\(4) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(4),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector34~0_combout\);

-- Location: LCCOMB_X17_Y21_N20
\C0|C1|C1|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector33~0_combout\ = (\C0|C1|C1|i\(5) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(5),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector33~0_combout\);

-- Location: LCCOMB_X17_Y21_N8
\C0|C1|C1|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector31~0_combout\ = (\C0|C1|C1|i\(7) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(7),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector31~0_combout\);

-- Location: LCCOMB_X19_Y21_N16
\C0|C1|C1|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector29~0_combout\ = (\C0|C1|C1|EtatPresent.Etat0~regout\ & \C0|C1|C1|i\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|EtatPresent.Etat0~regout\,
	datac => \C0|C1|C1|i\(9),
	combout => \C0|C1|C1|Selector29~0_combout\);

-- Location: LCCOMB_X19_Y20_N4
\C0|C1|C1|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector17~0_combout\ = (\C0|C1|C1|i\(21) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(21),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector17~0_combout\);

-- Location: LCCOMB_X19_Y20_N8
\C0|C1|C1|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector13~0_combout\ = (\C0|C1|C1|i\(25) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(25),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector13~0_combout\);

-- Location: LCCOMB_X19_Y20_N10
\C0|C1|C1|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector8~0_combout\ = (\C0|C1|C1|i\(30) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(30),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector8~0_combout\);

-- Location: LCCOMB_X20_Y21_N10
\C0|C1|C0|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C0|counter~0_combout\ = (!\C0|C1|C0|Equal0~1_combout\ & \C0|C1|C0|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C0|Equal0~1_combout\,
	datad => \C0|C1|C0|Add0~12_combout\,
	combout => \C0|C1|C0|counter~0_combout\);

-- Location: LCCOMB_X20_Y21_N0
\C0|C1|C0|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C0|counter~1_combout\ = (!\C0|C1|C0|Equal0~1_combout\ & \C0|C1|C0|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C0|Equal0~1_combout\,
	datad => \C0|C1|C0|Add0~10_combout\,
	combout => \C0|C1|C0|counter~1_combout\);

-- Location: LCCOMB_X20_Y21_N30
\C0|C1|C0|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C0|counter~2_combout\ = (!\C0|C1|C0|Equal0~1_combout\ & \C0|C1|C0|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C0|Equal0~1_combout\,
	datad => \C0|C1|C0|Add0~6_combout\,
	combout => \C0|C1|C0|counter~2_combout\);

-- Location: LCCOMB_X22_Y22_N6
\C1|C1|regSelector[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|regSelector[1]~feeder_combout\ = \C0|C1|C1|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C0|C1|C1|output\(1),
	combout => \C1|C1|regSelector[1]~feeder_combout\);

-- Location: LCCOMB_X22_Y21_N20
\C1|C1|output1[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|output1[6]~feeder_combout\ = \C1|C1|regValue\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|regValue\(6),
	combout => \C1|C1|output1[6]~feeder_combout\);

-- Location: LCCOMB_X28_Y22_N4
\C1|C0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Add0~0_combout\ = \C1|C0|Count\(0) $ (VCC)
-- \C1|C0|Add0~1\ = CARRY(\C1|C0|Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C0|Count\(0),
	datad => VCC,
	combout => \C1|C0|Add0~0_combout\,
	cout => \C1|C0|Add0~1\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LCFF_X28_Y22_N5
\C1|C0|Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C0|Add0~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C0|Count\(0));

-- Location: LCCOMB_X28_Y22_N22
\C1|C0|Count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Count~1_combout\ = (\C1|C0|Add0~8_combout\ & (((\C1|C0|Count\(0)) # (!\C1|C0|Equal0~1_combout\)) # (!\C1|C0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Add0~8_combout\,
	datab => \C1|C0|Equal0~0_combout\,
	datac => \C1|C0|Count\(0),
	datad => \C1|C0|Equal0~1_combout\,
	combout => \C1|C0|Count~1_combout\);

-- Location: LCFF_X28_Y22_N23
\C1|C0|Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C0|Count~1_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C0|Count\(4));

-- Location: LCCOMB_X28_Y22_N24
\C1|C0|Count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Count~2_combout\ = (\C1|C0|Add0~6_combout\ & (((\C1|C0|Count\(0)) # (!\C1|C0|Equal0~1_combout\)) # (!\C1|C0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Add0~6_combout\,
	datab => \C1|C0|Equal0~0_combout\,
	datac => \C1|C0|Count\(0),
	datad => \C1|C0|Equal0~1_combout\,
	combout => \C1|C0|Count~2_combout\);

-- Location: LCFF_X28_Y22_N25
\C1|C0|Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C0|Count~2_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C0|Count\(3));

-- Location: LCCOMB_X28_Y22_N8
\C1|C0|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Add0~4_combout\ = (\C1|C0|Count\(2) & ((GND) # (!\C1|C0|Add0~3\))) # (!\C1|C0|Count\(2) & (\C1|C0|Add0~3\ $ (GND)))
-- \C1|C0|Add0~5\ = CARRY((\C1|C0|Count\(2)) # (!\C1|C0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C0|Count\(2),
	datad => VCC,
	cin => \C1|C0|Add0~3\,
	combout => \C1|C0|Add0~4_combout\,
	cout => \C1|C0|Add0~5\);

-- Location: LCCOMB_X28_Y22_N2
\C1|C0|Count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Count~3_combout\ = (\C1|C0|Add0~4_combout\ & ((\C1|C0|Count\(0)) # ((!\C1|C0|Equal0~1_combout\) # (!\C1|C0|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Count\(0),
	datab => \C1|C0|Equal0~0_combout\,
	datac => \C1|C0|Add0~4_combout\,
	datad => \C1|C0|Equal0~1_combout\,
	combout => \C1|C0|Count~3_combout\);

-- Location: LCFF_X28_Y22_N3
\C1|C0|Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C0|Count~3_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C0|Count\(2));

-- Location: LCCOMB_X28_Y22_N28
\C1|C0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Equal0~1_combout\ = (!\C1|C0|Count\(1) & (!\C1|C0|Count\(4) & (!\C1|C0|Count\(3) & !\C1|C0|Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Count\(1),
	datab => \C1|C0|Count\(4),
	datac => \C1|C0|Count\(3),
	datad => \C1|C0|Count\(2),
	combout => \C1|C0|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y22_N0
\C1|C0|Count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Count~0_combout\ = (\C1|C0|Add0~12_combout\ & (((\C1|C0|Count\(0)) # (!\C1|C0|Equal0~1_combout\)) # (!\C1|C0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Add0~12_combout\,
	datab => \C1|C0|Equal0~0_combout\,
	datac => \C1|C0|Count\(0),
	datad => \C1|C0|Equal0~1_combout\,
	combout => \C1|C0|Count~0_combout\);

-- Location: LCFF_X28_Y22_N1
\C1|C0|Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C0|Count~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C0|Count\(6));

-- Location: LCCOMB_X28_Y22_N14
\C1|C0|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Add0~10_combout\ = (\C1|C0|Count\(5) & (\C1|C0|Add0~9\ & VCC)) # (!\C1|C0|Count\(5) & (!\C1|C0|Add0~9\))
-- \C1|C0|Add0~11\ = CARRY((!\C1|C0|Count\(5) & !\C1|C0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C0|Count\(5),
	datad => VCC,
	cin => \C1|C0|Add0~9\,
	combout => \C1|C0|Add0~10_combout\,
	cout => \C1|C0|Add0~11\);

-- Location: LCFF_X28_Y22_N15
\C1|C0|Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C0|Add0~10_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C0|Count\(5));

-- Location: LCFF_X28_Y22_N19
\C1|C0|Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C0|Add0~14_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C0|Count\(7));

-- Location: LCCOMB_X28_Y22_N30
\C1|C0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Equal0~0_combout\ = (!\C1|C0|Count\(8) & (!\C1|C0|Count\(6) & (!\C1|C0|Count\(5) & !\C1|C0|Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Count\(8),
	datab => \C1|C0|Count\(6),
	datac => \C1|C0|Count\(5),
	datad => \C1|C0|Count\(7),
	combout => \C1|C0|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y22_N26
\C1|C0|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Equal0~2_combout\ = (\C1|C0|Equal0~0_combout\ & (!\C1|C0|Count\(0) & \C1|C0|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C0|Equal0~0_combout\,
	datac => \C1|C0|Count\(0),
	datad => \C1|C0|Equal0~1_combout\,
	combout => \C1|C0|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y22_N6
\C1|C0|Tick7us~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C0|Tick7us~feeder_combout\ = \C1|C0|Equal0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C0|Equal0~2_combout\,
	combout => \C1|C0|Tick7us~feeder_combout\);

-- Location: LCFF_X24_Y22_N7
\C1|C0|Tick7us\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C0|Tick7us~feeder_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C0|Tick7us~regout\);

-- Location: LCCOMB_X18_Y24_N28
\C1|C5|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Selector12~0_combout\ = (\C1|C5|Equal0~2_combout\ & ((\C1|C0|Tick7us~regout\ & (\C1|C5|State.Init~regout\)) # (!\C1|C0|Tick7us~regout\ & ((\C1|C5|State.Pulse~regout\))))) # (!\C1|C5|Equal0~2_combout\ & (((\C1|C5|State.Pulse~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|State.Init~regout\,
	datab => \C1|C5|Equal0~2_combout\,
	datac => \C1|C5|State.Pulse~regout\,
	datad => \C1|C0|Tick7us~regout\,
	combout => \C1|C5|Selector12~0_combout\);

-- Location: LCFF_X18_Y24_N29
\C1|C5|State.Pulse\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C5|Selector12~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C5|State.Pulse~regout\);

-- Location: LCCOMB_X20_Y24_N0
\C1|C5|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Add0~0_combout\ = \C1|C5|Count\(0) $ (VCC)
-- \C1|C5|Add0~1\ = CARRY(\C1|C5|Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Count\(0),
	datad => VCC,
	combout => \C1|C5|Add0~0_combout\,
	cout => \C1|C5|Add0~1\);

-- Location: LCCOMB_X19_Y24_N0
\C1|C5|Count[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[0]~21_combout\ = (\C1|C5|Add0~0_combout\ & (((!\C1|C5|State.Init~regout\ & !\C1|C5|State.Pulse~regout\)) # (!\C1|C5|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|State.Init~regout\,
	datab => \C1|C5|State.Pulse~regout\,
	datac => \C1|C5|Add0~0_combout\,
	datad => \C1|C5|Equal0~2_combout\,
	combout => \C1|C5|Count[0]~21_combout\);

-- Location: LCCOMB_X18_Y21_N4
\C0|C1|C1|i[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[1]~34_combout\ = (\C0|C1|C1|i\(1) & (!\C0|C1|C1|i[0]~33\)) # (!\C0|C1|C1|i\(1) & ((\C0|C1|C1|i[0]~33\) # (GND)))
-- \C0|C1|C1|i[1]~35\ = CARRY((!\C0|C1|C1|i[0]~33\) # (!\C0|C1|C1|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(1),
	datad => VCC,
	cin => \C0|C1|C1|i[0]~33\,
	combout => \C0|C1|C1|i[1]~34_combout\,
	cout => \C0|C1|C1|i[1]~35\);

-- Location: LCCOMB_X18_Y21_N6
\C0|C1|C1|i[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[2]~36_combout\ = (\C0|C1|C1|i\(2) & (\C0|C1|C1|i[1]~35\ $ (GND))) # (!\C0|C1|C1|i\(2) & (!\C0|C1|C1|i[1]~35\ & VCC))
-- \C0|C1|C1|i[2]~37\ = CARRY((\C0|C1|C1|i\(2) & !\C0|C1|C1|i[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(2),
	datad => VCC,
	cin => \C0|C1|C1|i[1]~35\,
	combout => \C0|C1|C1|i[2]~36_combout\,
	cout => \C0|C1|C1|i[2]~37\);

-- Location: LCCOMB_X18_Y21_N8
\C0|C1|C1|i[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[3]~38_combout\ = (\C0|C1|C1|i\(3) & (!\C0|C1|C1|i[2]~37\)) # (!\C0|C1|C1|i\(3) & ((\C0|C1|C1|i[2]~37\) # (GND)))
-- \C0|C1|C1|i[3]~39\ = CARRY((!\C0|C1|C1|i[2]~37\) # (!\C0|C1|C1|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(3),
	datad => VCC,
	cin => \C0|C1|C1|i[2]~37\,
	combout => \C0|C1|C1|i[3]~38_combout\,
	cout => \C0|C1|C1|i[3]~39\);

-- Location: LCCOMB_X20_Y21_N16
\C0|C1|C0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C0|Add0~0_combout\ = \C0|C1|C0|counter\(0) $ (VCC)
-- \C0|C1|C0|Add0~1\ = CARRY(\C0|C1|C0|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C0|counter\(0),
	datad => VCC,
	combout => \C0|C1|C0|Add0~0_combout\,
	cout => \C0|C1|C0|Add0~1\);

-- Location: LCCOMB_X20_Y21_N4
\C0|C1|C0|counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C0|counter~4_combout\ = (\C0|C1|C0|Add0~0_combout\ & !\C0|C1|C0|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C0|Add0~0_combout\,
	datad => \C0|C1|C0|Equal0~1_combout\,
	combout => \C0|C1|C0|counter~4_combout\);

-- Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Rx~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Rx,
	combout => \Rx~combout\);

-- Location: LCCOMB_X20_Y20_N8
\C0|C1|C1|Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector42~0_combout\ = (!\C0|C1|C1|EtatPresent.Etat0~regout\ & !\Rx~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|EtatPresent.Etat0~regout\,
	datad => \Rx~combout\,
	combout => \C0|C1|C1|Selector42~0_combout\);

-- Location: LCFF_X20_Y20_N9
\C0|C1|C1|EtatPresent.Etat1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|Selector42~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|EtatPresent.Etat1~regout\);

-- Location: LCCOMB_X20_Y20_N0
\C0|C1|C1|Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector43~0_combout\ = (\C0|C1|C1|EtatPresent.Etat1~regout\) # ((\C0|C1|C1|EtatPresent.Etat2~regout\ & !\C0|C1|C0|tick~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|EtatPresent.Etat1~regout\,
	datac => \C0|C1|C1|EtatPresent.Etat2~regout\,
	datad => \C0|C1|C0|tick~regout\,
	combout => \C0|C1|C1|Selector43~0_combout\);

-- Location: LCFF_X20_Y20_N1
\C0|C1|C1|EtatPresent.Etat2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|Selector43~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|EtatPresent.Etat2~regout\);

-- Location: LCCOMB_X20_Y21_N14
\C0|C1|C1|Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector51~0_combout\ = (\C0|C1|C1|EtatPresent.Etat1~regout\) # ((!\C0|C1|C1|EtatPresent.Etat2~regout\ & \C0|C1|C1|clr~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|EtatPresent.Etat2~regout\,
	datac => \C0|C1|C1|clr~regout\,
	datad => \C0|C1|C1|EtatPresent.Etat1~regout\,
	combout => \C0|C1|C1|Selector51~0_combout\);

-- Location: LCFF_X20_Y21_N15
\C0|C1|C1|clr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|Selector51~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|clr~regout\);

-- Location: LCFF_X20_Y21_N5
\C0|C1|C0|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C0|counter~4_combout\,
	aclr => \C0|C1|C1|clr~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C0|counter\(0));

-- Location: LCCOMB_X20_Y21_N18
\C0|C1|C0|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C0|Add0~2_combout\ = (\C0|C1|C0|counter\(1) & (!\C0|C1|C0|Add0~1\)) # (!\C0|C1|C0|counter\(1) & ((\C0|C1|C0|Add0~1\) # (GND)))
-- \C0|C1|C0|Add0~3\ = CARRY((!\C0|C1|C0|Add0~1\) # (!\C0|C1|C0|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C0|counter\(1),
	datad => VCC,
	cin => \C0|C1|C0|Add0~1\,
	combout => \C0|C1|C0|Add0~2_combout\,
	cout => \C0|C1|C0|Add0~3\);

-- Location: LCFF_X20_Y21_N19
\C0|C1|C0|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C0|Add0~2_combout\,
	aclr => \C0|C1|C1|clr~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C0|counter\(1));

-- Location: LCCOMB_X20_Y21_N2
\C0|C1|C0|counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C0|counter~3_combout\ = (\C0|C1|C0|Add0~4_combout\ & !\C0|C1|C0|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C0|Add0~4_combout\,
	datad => \C0|C1|C0|Equal0~1_combout\,
	combout => \C0|C1|C0|counter~3_combout\);

-- Location: LCFF_X20_Y21_N3
\C0|C1|C0|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C0|counter~3_combout\,
	aclr => \C0|C1|C1|clr~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C0|counter\(2));

-- Location: LCCOMB_X20_Y21_N6
\C0|C1|C0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C0|Equal0~1_combout\ = (\C0|C1|C0|Equal0~0_combout\ & (!\C0|C1|C0|counter\(1) & (!\C0|C1|C0|counter\(0) & \C0|C1|C0|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C0|Equal0~0_combout\,
	datab => \C0|C1|C0|counter\(1),
	datac => \C0|C1|C0|counter\(0),
	datad => \C0|C1|C0|counter\(2),
	combout => \C0|C1|C0|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y21_N8
\C0|C1|C0|tick~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C0|tick~feeder_combout\ = \C0|C1|C0|Equal0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C0|C1|C0|Equal0~1_combout\,
	combout => \C0|C1|C0|tick~feeder_combout\);

-- Location: LCFF_X20_Y21_N9
\C0|C1|C0|tick\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C0|tick~feeder_combout\,
	aclr => \C0|C1|C1|clr~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C0|tick~regout\);

-- Location: LCCOMB_X20_Y20_N26
\C0|C1|C1|Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector41~0_combout\ = (\C0|C1|C1|EtatPresent.Etat9~regout\ & ((\C0|C1|C0|tick~regout\) # ((\Rx~combout\ & !\C0|C1|C1|EtatPresent.Etat0~regout\)))) # (!\C0|C1|C1|EtatPresent.Etat9~regout\ & (((\Rx~combout\ & 
-- !\C0|C1|C1|EtatPresent.Etat0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|EtatPresent.Etat9~regout\,
	datab => \C0|C1|C0|tick~regout\,
	datac => \Rx~combout\,
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector41~0_combout\);

-- Location: LCCOMB_X20_Y20_N2
\C0|C1|C1|Selector41~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector41~1_combout\ = (!\C0|C1|C1|EtatPresent.Etat8~regout\ & !\C0|C1|C1|Selector41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|EtatPresent.Etat8~regout\,
	datad => \C0|C1|C1|Selector41~0_combout\,
	combout => \C0|C1|C1|Selector41~1_combout\);

-- Location: LCFF_X20_Y20_N3
\C0|C1|C1|EtatPresent.Etat0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|Selector41~1_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|EtatPresent.Etat0~regout\);

-- Location: LCCOMB_X19_Y21_N28
\C0|C1|C1|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector35~0_combout\ = (\C0|C1|C1|i\(3) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(3),
	datac => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector35~0_combout\);

-- Location: LCCOMB_X18_Y21_N24
\C0|C1|C1|i[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[11]~54_combout\ = (\C0|C1|C1|i\(11) & (!\C0|C1|C1|i[10]~53\)) # (!\C0|C1|C1|i\(11) & ((\C0|C1|C1|i[10]~53\) # (GND)))
-- \C0|C1|C1|i[11]~55\ = CARRY((!\C0|C1|C1|i[10]~53\) # (!\C0|C1|C1|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(11),
	datad => VCC,
	cin => \C0|C1|C1|i[10]~53\,
	combout => \C0|C1|C1|i[11]~54_combout\,
	cout => \C0|C1|C1|i[11]~55\);

-- Location: LCCOMB_X18_Y21_N26
\C0|C1|C1|i[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[12]~56_combout\ = (\C0|C1|C1|i\(12) & (\C0|C1|C1|i[11]~55\ $ (GND))) # (!\C0|C1|C1|i\(12) & (!\C0|C1|C1|i[11]~55\ & VCC))
-- \C0|C1|C1|i[12]~57\ = CARRY((\C0|C1|C1|i\(12) & !\C0|C1|C1|i[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(12),
	datad => VCC,
	cin => \C0|C1|C1|i[11]~55\,
	combout => \C0|C1|C1|i[12]~56_combout\,
	cout => \C0|C1|C1|i[12]~57\);

-- Location: LCCOMB_X19_Y21_N26
\C0|C1|C1|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector26~0_combout\ = (\C0|C1|C1|i\(12) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(12),
	datac => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector26~0_combout\);

-- Location: LCFF_X18_Y21_N27
\C0|C1|C1|i[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[12]~56_combout\,
	sdata => \C0|C1|C1|Selector26~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(12));

-- Location: LCCOMB_X18_Y21_N28
\C0|C1|C1|i[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[13]~58_combout\ = (\C0|C1|C1|i\(13) & (!\C0|C1|C1|i[12]~57\)) # (!\C0|C1|C1|i\(13) & ((\C0|C1|C1|i[12]~57\) # (GND)))
-- \C0|C1|C1|i[13]~59\ = CARRY((!\C0|C1|C1|i[12]~57\) # (!\C0|C1|C1|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(13),
	datad => VCC,
	cin => \C0|C1|C1|i[12]~57\,
	combout => \C0|C1|C1|i[13]~58_combout\,
	cout => \C0|C1|C1|i[13]~59\);

-- Location: LCCOMB_X19_Y21_N12
\C0|C1|C1|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector25~0_combout\ = (\C0|C1|C1|EtatPresent.Etat0~regout\ & \C0|C1|C1|i\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|EtatPresent.Etat0~regout\,
	datac => \C0|C1|C1|i\(13),
	combout => \C0|C1|C1|Selector25~0_combout\);

-- Location: LCFF_X18_Y21_N29
\C0|C1|C1|i[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[13]~58_combout\,
	sdata => \C0|C1|C1|Selector25~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(13));

-- Location: LCCOMB_X18_Y21_N30
\C0|C1|C1|i[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[14]~60_combout\ = (\C0|C1|C1|i\(14) & (\C0|C1|C1|i[13]~59\ $ (GND))) # (!\C0|C1|C1|i\(14) & (!\C0|C1|C1|i[13]~59\ & VCC))
-- \C0|C1|C1|i[14]~61\ = CARRY((\C0|C1|C1|i\(14) & !\C0|C1|C1|i[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(14),
	datad => VCC,
	cin => \C0|C1|C1|i[13]~59\,
	combout => \C0|C1|C1|i[14]~60_combout\,
	cout => \C0|C1|C1|i[14]~61\);

-- Location: LCCOMB_X17_Y21_N30
\C0|C1|C1|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector24~0_combout\ = (\C0|C1|C1|i\(14) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(14),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector24~0_combout\);

-- Location: LCFF_X18_Y21_N31
\C0|C1|C1|i[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[14]~60_combout\,
	sdata => \C0|C1|C1|Selector24~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(14));

-- Location: LCCOMB_X18_Y20_N0
\C0|C1|C1|i[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[15]~62_combout\ = (\C0|C1|C1|i\(15) & (!\C0|C1|C1|i[14]~61\)) # (!\C0|C1|C1|i\(15) & ((\C0|C1|C1|i[14]~61\) # (GND)))
-- \C0|C1|C1|i[15]~63\ = CARRY((!\C0|C1|C1|i[14]~61\) # (!\C0|C1|C1|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(15),
	datad => VCC,
	cin => \C0|C1|C1|i[14]~61\,
	combout => \C0|C1|C1|i[15]~62_combout\,
	cout => \C0|C1|C1|i[15]~63\);

-- Location: LCCOMB_X17_Y20_N0
\C0|C1|C1|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector23~0_combout\ = (\C0|C1|C1|i\(15) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(15),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector23~0_combout\);

-- Location: LCFF_X18_Y20_N1
\C0|C1|C1|i[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[15]~62_combout\,
	sdata => \C0|C1|C1|Selector23~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(15));

-- Location: LCCOMB_X18_Y20_N2
\C0|C1|C1|i[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[16]~64_combout\ = (\C0|C1|C1|i\(16) & (\C0|C1|C1|i[15]~63\ $ (GND))) # (!\C0|C1|C1|i\(16) & (!\C0|C1|C1|i[15]~63\ & VCC))
-- \C0|C1|C1|i[16]~65\ = CARRY((\C0|C1|C1|i\(16) & !\C0|C1|C1|i[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(16),
	datad => VCC,
	cin => \C0|C1|C1|i[15]~63\,
	combout => \C0|C1|C1|i[16]~64_combout\,
	cout => \C0|C1|C1|i[16]~65\);

-- Location: LCCOMB_X19_Y20_N0
\C0|C1|C1|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector22~0_combout\ = (\C0|C1|C1|i\(16) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(16),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector22~0_combout\);

-- Location: LCFF_X18_Y20_N3
\C0|C1|C1|i[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[16]~64_combout\,
	sdata => \C0|C1|C1|Selector22~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(16));

-- Location: LCCOMB_X18_Y20_N4
\C0|C1|C1|i[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[17]~66_combout\ = (\C0|C1|C1|i\(17) & (!\C0|C1|C1|i[16]~65\)) # (!\C0|C1|C1|i\(17) & ((\C0|C1|C1|i[16]~65\) # (GND)))
-- \C0|C1|C1|i[17]~67\ = CARRY((!\C0|C1|C1|i[16]~65\) # (!\C0|C1|C1|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(17),
	datad => VCC,
	cin => \C0|C1|C1|i[16]~65\,
	combout => \C0|C1|C1|i[17]~66_combout\,
	cout => \C0|C1|C1|i[17]~67\);

-- Location: LCCOMB_X17_Y20_N30
\C0|C1|C1|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector21~0_combout\ = (\C0|C1|C1|i\(17) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(17),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector21~0_combout\);

-- Location: LCFF_X18_Y20_N5
\C0|C1|C1|i[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[17]~66_combout\,
	sdata => \C0|C1|C1|Selector21~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(17));

-- Location: LCCOMB_X18_Y20_N6
\C0|C1|C1|i[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[18]~68_combout\ = (\C0|C1|C1|i\(18) & (\C0|C1|C1|i[17]~67\ $ (GND))) # (!\C0|C1|C1|i\(18) & (!\C0|C1|C1|i[17]~67\ & VCC))
-- \C0|C1|C1|i[18]~69\ = CARRY((\C0|C1|C1|i\(18) & !\C0|C1|C1|i[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(18),
	datad => VCC,
	cin => \C0|C1|C1|i[17]~67\,
	combout => \C0|C1|C1|i[18]~68_combout\,
	cout => \C0|C1|C1|i[18]~69\);

-- Location: LCCOMB_X18_Y20_N8
\C0|C1|C1|i[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[19]~70_combout\ = (\C0|C1|C1|i\(19) & (!\C0|C1|C1|i[18]~69\)) # (!\C0|C1|C1|i\(19) & ((\C0|C1|C1|i[18]~69\) # (GND)))
-- \C0|C1|C1|i[19]~71\ = CARRY((!\C0|C1|C1|i[18]~69\) # (!\C0|C1|C1|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(19),
	datad => VCC,
	cin => \C0|C1|C1|i[18]~69\,
	combout => \C0|C1|C1|i[19]~70_combout\,
	cout => \C0|C1|C1|i[19]~71\);

-- Location: LCCOMB_X19_Y20_N16
\C0|C1|C1|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector19~0_combout\ = (\C0|C1|C1|i\(19) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(19),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector19~0_combout\);

-- Location: LCFF_X18_Y20_N9
\C0|C1|C1|i[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[19]~70_combout\,
	sdata => \C0|C1|C1|Selector19~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(19));

-- Location: LCCOMB_X18_Y20_N10
\C0|C1|C1|i[20]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[20]~72_combout\ = (\C0|C1|C1|i\(20) & (\C0|C1|C1|i[19]~71\ $ (GND))) # (!\C0|C1|C1|i\(20) & (!\C0|C1|C1|i[19]~71\ & VCC))
-- \C0|C1|C1|i[20]~73\ = CARRY((\C0|C1|C1|i\(20) & !\C0|C1|C1|i[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(20),
	datad => VCC,
	cin => \C0|C1|C1|i[19]~71\,
	combout => \C0|C1|C1|i[20]~72_combout\,
	cout => \C0|C1|C1|i[20]~73\);

-- Location: LCCOMB_X18_Y20_N14
\C0|C1|C1|i[22]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[22]~76_combout\ = (\C0|C1|C1|i\(22) & (\C0|C1|C1|i[21]~75\ $ (GND))) # (!\C0|C1|C1|i\(22) & (!\C0|C1|C1|i[21]~75\ & VCC))
-- \C0|C1|C1|i[22]~77\ = CARRY((\C0|C1|C1|i\(22) & !\C0|C1|C1|i[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(22),
	datad => VCC,
	cin => \C0|C1|C1|i[21]~75\,
	combout => \C0|C1|C1|i[22]~76_combout\,
	cout => \C0|C1|C1|i[22]~77\);

-- Location: LCCOMB_X19_Y20_N22
\C0|C1|C1|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector16~0_combout\ = (\C0|C1|C1|i\(22) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(22),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector16~0_combout\);

-- Location: LCFF_X18_Y20_N15
\C0|C1|C1|i[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[22]~76_combout\,
	sdata => \C0|C1|C1|Selector16~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(22));

-- Location: LCCOMB_X18_Y20_N16
\C0|C1|C1|i[23]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[23]~78_combout\ = (\C0|C1|C1|i\(23) & (!\C0|C1|C1|i[22]~77\)) # (!\C0|C1|C1|i\(23) & ((\C0|C1|C1|i[22]~77\) # (GND)))
-- \C0|C1|C1|i[23]~79\ = CARRY((!\C0|C1|C1|i[22]~77\) # (!\C0|C1|C1|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(23),
	datad => VCC,
	cin => \C0|C1|C1|i[22]~77\,
	combout => \C0|C1|C1|i[23]~78_combout\,
	cout => \C0|C1|C1|i[23]~79\);

-- Location: LCCOMB_X18_Y20_N18
\C0|C1|C1|i[24]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[24]~80_combout\ = (\C0|C1|C1|i\(24) & (\C0|C1|C1|i[23]~79\ $ (GND))) # (!\C0|C1|C1|i\(24) & (!\C0|C1|C1|i[23]~79\ & VCC))
-- \C0|C1|C1|i[24]~81\ = CARRY((\C0|C1|C1|i\(24) & !\C0|C1|C1|i[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(24),
	datad => VCC,
	cin => \C0|C1|C1|i[23]~79\,
	combout => \C0|C1|C1|i[24]~80_combout\,
	cout => \C0|C1|C1|i[24]~81\);

-- Location: LCCOMB_X19_Y20_N14
\C0|C1|C1|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector14~0_combout\ = (\C0|C1|C1|i\(24) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(24),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector14~0_combout\);

-- Location: LCFF_X18_Y20_N19
\C0|C1|C1|i[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[24]~80_combout\,
	sdata => \C0|C1|C1|Selector14~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(24));

-- Location: LCCOMB_X18_Y20_N22
\C0|C1|C1|i[26]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[26]~84_combout\ = (\C0|C1|C1|i\(26) & (\C0|C1|C1|i[25]~83\ $ (GND))) # (!\C0|C1|C1|i\(26) & (!\C0|C1|C1|i[25]~83\ & VCC))
-- \C0|C1|C1|i[26]~85\ = CARRY((\C0|C1|C1|i\(26) & !\C0|C1|C1|i[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(26),
	datad => VCC,
	cin => \C0|C1|C1|i[25]~83\,
	combout => \C0|C1|C1|i[26]~84_combout\,
	cout => \C0|C1|C1|i[26]~85\);

-- Location: LCCOMB_X19_Y20_N18
\C0|C1|C1|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector12~0_combout\ = (\C0|C1|C1|i\(26) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(26),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector12~0_combout\);

-- Location: LCFF_X18_Y20_N23
\C0|C1|C1|i[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[26]~84_combout\,
	sdata => \C0|C1|C1|Selector12~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(26));

-- Location: LCCOMB_X18_Y20_N24
\C0|C1|C1|i[27]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[27]~86_combout\ = (\C0|C1|C1|i\(27) & (!\C0|C1|C1|i[26]~85\)) # (!\C0|C1|C1|i\(27) & ((\C0|C1|C1|i[26]~85\) # (GND)))
-- \C0|C1|C1|i[27]~87\ = CARRY((!\C0|C1|C1|i[26]~85\) # (!\C0|C1|C1|i\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(27),
	datad => VCC,
	cin => \C0|C1|C1|i[26]~85\,
	combout => \C0|C1|C1|i[27]~86_combout\,
	cout => \C0|C1|C1|i[27]~87\);

-- Location: LCCOMB_X18_Y20_N26
\C0|C1|C1|i[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[28]~88_combout\ = (\C0|C1|C1|i\(28) & (\C0|C1|C1|i[27]~87\ $ (GND))) # (!\C0|C1|C1|i\(28) & (!\C0|C1|C1|i[27]~87\ & VCC))
-- \C0|C1|C1|i[28]~89\ = CARRY((\C0|C1|C1|i\(28) & !\C0|C1|C1|i[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(28),
	datad => VCC,
	cin => \C0|C1|C1|i[27]~87\,
	combout => \C0|C1|C1|i[28]~88_combout\,
	cout => \C0|C1|C1|i[28]~89\);

-- Location: LCCOMB_X19_Y20_N6
\C0|C1|C1|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector10~0_combout\ = (\C0|C1|C1|i\(28) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(28),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector10~0_combout\);

-- Location: LCFF_X18_Y20_N27
\C0|C1|C1|i[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[28]~88_combout\,
	sdata => \C0|C1|C1|Selector10~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(28));

-- Location: LCCOMB_X19_Y20_N12
\C0|C1|C1|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector9~0_combout\ = (\C0|C1|C1|i\(29) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(29),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector9~0_combout\);

-- Location: LCFF_X18_Y20_N29
\C0|C1|C1|i[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[29]~90_combout\,
	sdata => \C0|C1|C1|Selector9~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(29));

-- Location: LCCOMB_X19_Y20_N24
\C0|C1|C1|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector11~0_combout\ = (\C0|C1|C1|i\(27) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(27),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector11~0_combout\);

-- Location: LCFF_X18_Y20_N25
\C0|C1|C1|i[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[27]~86_combout\,
	sdata => \C0|C1|C1|Selector11~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(27));

-- Location: LCCOMB_X19_Y20_N28
\C0|C1|C1|Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Equal0~11_combout\ = (!\C0|C1|C1|i\(25) & (!\C0|C1|C1|i\(27) & (!\C0|C1|C1|i\(24) & !\C0|C1|C1|i\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(25),
	datab => \C0|C1|C1|i\(27),
	datac => \C0|C1|C1|i\(24),
	datad => \C0|C1|C1|i\(26),
	combout => \C0|C1|C1|Equal0~11_combout\);

-- Location: LCCOMB_X19_Y20_N2
\C0|C1|C1|Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Equal0~12_combout\ = (!\C0|C1|C1|i\(30) & (!\C0|C1|C1|i\(29) & (!\C0|C1|C1|i\(28) & \C0|C1|C1|Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(30),
	datab => \C0|C1|C1|i\(29),
	datac => \C0|C1|C1|i\(28),
	datad => \C0|C1|C1|Equal0~11_combout\,
	combout => \C0|C1|C1|Equal0~12_combout\);

-- Location: LCCOMB_X19_Y20_N30
\C0|C1|C1|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector20~0_combout\ = (\C0|C1|C1|i\(18) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(18),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector20~0_combout\);

-- Location: LCFF_X18_Y20_N7
\C0|C1|C1|i[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[18]~68_combout\,
	sdata => \C0|C1|C1|Selector20~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(18));

-- Location: LCCOMB_X19_Y21_N4
\C0|C1|C1|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Equal0~8_combout\ = (!\C0|C1|C1|i\(19) & (!\C0|C1|C1|i\(18) & (!\C0|C1|C1|i\(17) & !\C0|C1|C1|i\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(19),
	datab => \C0|C1|C1|i\(18),
	datac => \C0|C1|C1|i\(17),
	datad => \C0|C1|C1|i\(16),
	combout => \C0|C1|C1|Equal0~8_combout\);

-- Location: LCCOMB_X19_Y20_N20
\C0|C1|C1|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector15~0_combout\ = (\C0|C1|C1|i\(23) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(23),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector15~0_combout\);

-- Location: LCFF_X18_Y20_N17
\C0|C1|C1|i[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[23]~78_combout\,
	sdata => \C0|C1|C1|Selector15~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(23));

-- Location: LCCOMB_X19_Y20_N26
\C0|C1|C1|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector18~0_combout\ = (\C0|C1|C1|i\(20) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(20),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector18~0_combout\);

-- Location: LCFF_X18_Y20_N11
\C0|C1|C1|i[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[20]~72_combout\,
	sdata => \C0|C1|C1|Selector18~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(20));

-- Location: LCCOMB_X19_Y21_N6
\C0|C1|C1|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Equal0~9_combout\ = (!\C0|C1|C1|i\(21) & (!\C0|C1|C1|i\(23) & (!\C0|C1|C1|i\(20) & !\C0|C1|C1|i\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(21),
	datab => \C0|C1|C1|i\(23),
	datac => \C0|C1|C1|i\(20),
	datad => \C0|C1|C1|i\(22),
	combout => \C0|C1|C1|Equal0~9_combout\);

-- Location: LCCOMB_X19_Y21_N2
\C0|C1|C1|Equal0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Equal0~13_combout\ = (\C0|C1|C1|Equal0~7_combout\ & (\C0|C1|C1|Equal0~12_combout\ & (\C0|C1|C1|Equal0~8_combout\ & \C0|C1|C1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|Equal0~7_combout\,
	datab => \C0|C1|C1|Equal0~12_combout\,
	datac => \C0|C1|C1|Equal0~8_combout\,
	datad => \C0|C1|C1|Equal0~9_combout\,
	combout => \C0|C1|C1|Equal0~13_combout\);

-- Location: LCCOMB_X20_Y20_N14
\C0|C1|C1|Selector45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector45~0_combout\ = (\C0|C1|C1|EtatPresent.Etat3~regout\ & (\C0|C1|C0|tick~regout\ & !\C0|C1|C1|Equal0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|EtatPresent.Etat3~regout\,
	datab => \C0|C1|C0|tick~regout\,
	datad => \C0|C1|C1|Equal0~13_combout\,
	combout => \C0|C1|C1|Selector45~0_combout\);

-- Location: LCCOMB_X20_Y20_N22
\C0|C1|C1|Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector46~0_combout\ = (\C0|C1|C1|EtatPresent.Etat0~regout\ & (\C0|C1|C0|tick~regout\)) # (!\C0|C1|C1|EtatPresent.Etat0~regout\ & ((!\Rx~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C0|tick~regout\,
	datac => \Rx~combout\,
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector46~0_combout\);

-- Location: LCCOMB_X20_Y20_N18
\C0|C1|C1|Selector46~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector46~1_combout\ = (\C0|C1|C1|EtatPresent.Etat3~regout\ & (\C0|C1|C0|tick~regout\ & \C0|C1|C1|Equal0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|EtatPresent.Etat3~regout\,
	datab => \C0|C1|C0|tick~regout\,
	datad => \C0|C1|C1|Equal0~13_combout\,
	combout => \C0|C1|C1|Selector46~1_combout\);

-- Location: LCFF_X20_Y20_N19
\C0|C1|C1|EtatPresent.Etat5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|Selector46~1_combout\,
	aclr => \rst~combout\,
	ena => \C0|C1|C1|Selector45~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|EtatPresent.Etat5~regout\);

-- Location: LCCOMB_X21_Y20_N4
\C0|C1|C1|EtatPresent.Etat6~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|EtatPresent.Etat6~feeder_combout\ = \C0|C1|C1|EtatPresent.Etat5~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C0|C1|C1|EtatPresent.Etat5~regout\,
	combout => \C0|C1|C1|EtatPresent.Etat6~feeder_combout\);

-- Location: LCFF_X21_Y20_N5
\C0|C1|C1|EtatPresent.Etat6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|EtatPresent.Etat6~feeder_combout\,
	aclr => \rst~combout\,
	ena => \C0|C1|C0|tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|EtatPresent.Etat6~regout\);

-- Location: LCCOMB_X20_Y20_N20
\C0|C1|C1|Selector48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector48~0_combout\ = (\C0|C1|C0|tick~regout\ & \C0|C1|C1|EtatPresent.Etat6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C0|tick~regout\,
	datad => \C0|C1|C1|EtatPresent.Etat6~regout\,
	combout => \C0|C1|C1|Selector48~0_combout\);

-- Location: LCFF_X20_Y20_N21
\C0|C1|C1|EtatPresent.Etat7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|Selector48~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|EtatPresent.Etat7~regout\);

-- Location: LCCOMB_X21_Y20_N14
\C0|C1|C1|Selector49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector49~0_combout\ = (\C0|C1|C1|EtatPresent.Etat7~regout\ & !\Rx~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|EtatPresent.Etat7~regout\,
	datad => \Rx~combout\,
	combout => \C0|C1|C1|Selector49~0_combout\);

-- Location: LCFF_X20_Y20_N7
\C0|C1|C1|EtatPresent.Etat8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C0|C1|C1|Selector49~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|EtatPresent.Etat8~regout\);

-- Location: LCCOMB_X20_Y20_N10
\C0|C1|C1|Selector45~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector45~1_combout\ = (\C0|C1|C1|EtatPresent.Etat1~regout\) # ((\C0|C1|C1|EtatPresent.Etat8~regout\) # ((\C0|C1|C1|EtatPresent.Etat3~regout\ & \C0|C1|C0|tick~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|EtatPresent.Etat3~regout\,
	datab => \C0|C1|C0|tick~regout\,
	datac => \C0|C1|C1|EtatPresent.Etat1~regout\,
	datad => \C0|C1|C1|EtatPresent.Etat8~regout\,
	combout => \C0|C1|C1|Selector45~1_combout\);

-- Location: LCCOMB_X20_Y20_N4
\C0|C1|C1|Selector45~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector45~2_combout\ = (\C0|C1|C1|Selector45~1_combout\) # ((!\C0|C1|C1|EtatPresent.Etat7~regout\ & (\C0|C1|C1|Selector46~0_combout\ & !\C0|C1|C1|EtatPresent.Etat3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|EtatPresent.Etat7~regout\,
	datab => \C0|C1|C1|Selector46~0_combout\,
	datac => \C0|C1|C1|EtatPresent.Etat3~regout\,
	datad => \C0|C1|C1|Selector45~1_combout\,
	combout => \C0|C1|C1|Selector45~2_combout\);

-- Location: LCFF_X20_Y20_N15
\C0|C1|C1|EtatPresent.Etat4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|Selector45~0_combout\,
	aclr => \rst~combout\,
	ena => \C0|C1|C1|Selector45~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|EtatPresent.Etat4~regout\);

-- Location: LCCOMB_X20_Y20_N24
\C0|C1|C1|Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector44~0_combout\ = (\C0|C1|C0|tick~regout\ & ((\C0|C1|C1|EtatPresent.Etat2~regout\) # ((\C0|C1|C1|EtatPresent.Etat4~regout\)))) # (!\C0|C1|C0|tick~regout\ & (((\C0|C1|C1|EtatPresent.Etat3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|EtatPresent.Etat2~regout\,
	datab => \C0|C1|C1|EtatPresent.Etat4~regout\,
	datac => \C0|C1|C1|EtatPresent.Etat3~regout\,
	datad => \C0|C1|C0|tick~regout\,
	combout => \C0|C1|C1|Selector44~0_combout\);

-- Location: LCFF_X20_Y20_N25
\C0|C1|C1|EtatPresent.Etat3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|Selector44~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|EtatPresent.Etat3~regout\);

-- Location: LCFF_X18_Y21_N9
\C0|C1|C1|i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[3]~38_combout\,
	sdata => \C0|C1|C1|Selector35~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(3));

-- Location: LCCOMB_X18_Y21_N14
\C0|C1|C1|i[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[6]~44_combout\ = (\C0|C1|C1|i\(6) & (\C0|C1|C1|i[5]~43\ $ (GND))) # (!\C0|C1|C1|i\(6) & (!\C0|C1|C1|i[5]~43\ & VCC))
-- \C0|C1|C1|i[6]~45\ = CARRY((\C0|C1|C1|i\(6) & !\C0|C1|C1|i[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(6),
	datad => VCC,
	cin => \C0|C1|C1|i[5]~43\,
	combout => \C0|C1|C1|i[6]~44_combout\,
	cout => \C0|C1|C1|i[6]~45\);

-- Location: LCCOMB_X17_Y21_N18
\C0|C1|C1|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector32~0_combout\ = (\C0|C1|C1|i\(6) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(6),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector32~0_combout\);

-- Location: LCFF_X18_Y21_N15
\C0|C1|C1|i[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[6]~44_combout\,
	sdata => \C0|C1|C1|Selector32~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(6));

-- Location: LCCOMB_X18_Y21_N18
\C0|C1|C1|i[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[8]~48_combout\ = (\C0|C1|C1|i\(8) & (\C0|C1|C1|i[7]~47\ $ (GND))) # (!\C0|C1|C1|i\(8) & (!\C0|C1|C1|i[7]~47\ & VCC))
-- \C0|C1|C1|i[8]~49\ = CARRY((\C0|C1|C1|i\(8) & !\C0|C1|C1|i[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(8),
	datad => VCC,
	cin => \C0|C1|C1|i[7]~47\,
	combout => \C0|C1|C1|i[8]~48_combout\,
	cout => \C0|C1|C1|i[8]~49\);

-- Location: LCCOMB_X19_Y21_N22
\C0|C1|C1|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector30~0_combout\ = (\C0|C1|C1|EtatPresent.Etat0~regout\ & \C0|C1|C1|i\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|EtatPresent.Etat0~regout\,
	datad => \C0|C1|C1|i\(8),
	combout => \C0|C1|C1|Selector30~0_combout\);

-- Location: LCFF_X18_Y21_N19
\C0|C1|C1|i[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[8]~48_combout\,
	sdata => \C0|C1|C1|Selector30~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(8));

-- Location: LCCOMB_X18_Y21_N22
\C0|C1|C1|i[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i[10]~52_combout\ = (\C0|C1|C1|i\(10) & (\C0|C1|C1|i[9]~51\ $ (GND))) # (!\C0|C1|C1|i\(10) & (!\C0|C1|C1|i[9]~51\ & VCC))
-- \C0|C1|C1|i[10]~53\ = CARRY((\C0|C1|C1|i\(10) & !\C0|C1|C1|i[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(10),
	datad => VCC,
	cin => \C0|C1|C1|i[9]~51\,
	combout => \C0|C1|C1|i[10]~52_combout\,
	cout => \C0|C1|C1|i[10]~53\);

-- Location: LCCOMB_X19_Y21_N10
\C0|C1|C1|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector28~0_combout\ = (\C0|C1|C1|EtatPresent.Etat0~regout\ & \C0|C1|C1|i\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|EtatPresent.Etat0~regout\,
	datac => \C0|C1|C1|i\(10),
	combout => \C0|C1|C1|Selector28~0_combout\);

-- Location: LCFF_X18_Y21_N23
\C0|C1|C1|i[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[10]~52_combout\,
	sdata => \C0|C1|C1|Selector28~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(10));

-- Location: LCCOMB_X19_Y21_N8
\C0|C1|C1|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector27~0_combout\ = (\C0|C1|C1|i\(11) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|C1|C1|i\(11),
	datac => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector27~0_combout\);

-- Location: LCFF_X18_Y21_N25
\C0|C1|C1|i[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[11]~54_combout\,
	sdata => \C0|C1|C1|Selector27~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(11));

-- Location: LCCOMB_X19_Y21_N18
\C0|C1|C1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Equal0~5_combout\ = (!\C0|C1|C1|i\(9) & (!\C0|C1|C1|i\(11) & (!\C0|C1|C1|i\(10) & !\C0|C1|C1|i\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(9),
	datab => \C0|C1|C1|i\(11),
	datac => \C0|C1|C1|i\(10),
	datad => \C0|C1|C1|i\(8),
	combout => \C0|C1|C1|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y21_N24
\C0|C1|C1|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Equal0~6_combout\ = (!\C0|C1|C1|i\(14) & (!\C0|C1|C1|i\(12) & (!\C0|C1|C1|i\(13) & !\C0|C1|C1|i\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(14),
	datab => \C0|C1|C1|i\(12),
	datac => \C0|C1|C1|i\(13),
	datad => \C0|C1|C1|i\(15),
	combout => \C0|C1|C1|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y21_N22
\C0|C1|C1|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector36~0_combout\ = (\C0|C1|C1|i\(2) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(2),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector36~0_combout\);

-- Location: LCFF_X18_Y21_N7
\C0|C1|C1|i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[2]~36_combout\,
	sdata => \C0|C1|C1|Selector36~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(2));

-- Location: LCCOMB_X19_Y21_N0
\C0|C1|C1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Equal0~3_combout\ = (!\C0|C1|C1|i\(0) & (!\C0|C1|C1|i\(1) & (!\C0|C1|C1|i\(2) & \C0|C1|C1|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(0),
	datab => \C0|C1|C1|i\(1),
	datac => \C0|C1|C1|i\(2),
	datad => \C0|C1|C1|i\(3),
	combout => \C0|C1|C1|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y21_N14
\C0|C1|C1|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Equal0~7_combout\ = (\C0|C1|C1|Equal0~4_combout\ & (\C0|C1|C1|Equal0~5_combout\ & (\C0|C1|C1|Equal0~6_combout\ & \C0|C1|C1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|Equal0~4_combout\,
	datab => \C0|C1|C1|Equal0~5_combout\,
	datac => \C0|C1|C1|Equal0~6_combout\,
	datad => \C0|C1|C1|Equal0~3_combout\,
	combout => \C0|C1|C1|Equal0~7_combout\);

-- Location: LCCOMB_X19_Y21_N20
\C0|C1|C1|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Equal0~10_combout\ = (\C0|C1|C1|Equal0~8_combout\ & \C0|C1|C1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|Equal0~8_combout\,
	datad => \C0|C1|C1|Equal0~9_combout\,
	combout => \C0|C1|C1|Equal0~10_combout\);

-- Location: LCCOMB_X19_Y21_N30
\C0|C1|C1|i~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|i~31_combout\ = ((\C0|C1|C1|Equal0~7_combout\ & (\C0|C1|C1|Equal0~10_combout\ & \C0|C1|C1|Equal0~12_combout\))) # (!\C0|C1|C0|tick~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C0|tick~regout\,
	datab => \C0|C1|C1|Equal0~7_combout\,
	datac => \C0|C1|C1|Equal0~10_combout\,
	datad => \C0|C1|C1|Equal0~12_combout\,
	combout => \C0|C1|C1|i~31_combout\);

-- Location: LCCOMB_X17_Y21_N4
\C0|C1|C1|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector37~0_combout\ = (\C0|C1|C1|i\(1) & \C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|i\(1),
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector37~0_combout\);

-- Location: LCFF_X18_Y21_N5
\C0|C1|C1|i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|i[1]~34_combout\,
	sdata => \C0|C1|C1|Selector37~0_combout\,
	aclr => \rst~combout\,
	sload => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|i\(1));

-- Location: LCCOMB_X20_Y20_N28
\C0|C1|C1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Equal0~2_combout\ = (!\C0|C1|C1|i\(1) & !\C0|C1|C1|i\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(1),
	datad => \C0|C1|C1|i\(2),
	combout => \C0|C1|C1|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y20_N8
\C0|C1|C1|reg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|reg~1_combout\ = (\C0|C1|C1|reg~0_combout\ & ((\C0|C1|C1|Equal0~2_combout\ & ((\Rx~combout\))) # (!\C0|C1|C1|Equal0~2_combout\ & (\C0|C1|C1|reg\(1))))) # (!\C0|C1|C1|reg~0_combout\ & (((\C0|C1|C1|reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|reg~0_combout\,
	datab => \C0|C1|C1|Equal0~2_combout\,
	datac => \C0|C1|C1|reg\(1),
	datad => \Rx~combout\,
	combout => \C0|C1|C1|reg~1_combout\);

-- Location: LCCOMB_X20_Y20_N6
\C0|C1|C1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector0~0_combout\ = (\C0|C1|C1|EtatPresent.Etat3~regout\) # (!\C0|C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|EtatPresent.Etat3~regout\,
	datad => \C0|C1|C1|EtatPresent.Etat0~regout\,
	combout => \C0|C1|C1|Selector0~0_combout\);

-- Location: LCFF_X21_Y20_N9
\C0|C1|C1|reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|reg~1_combout\,
	aclr => \rst~combout\,
	sclr => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	ena => \C0|C1|C1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|reg\(1));

-- Location: LCCOMB_X20_Y20_N12
\C0|C1|C1|Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector50~0_combout\ = (\C0|C1|C1|EtatPresent.Etat7~regout\ & (((\Rx~combout\)))) # (!\C0|C1|C1|EtatPresent.Etat7~regout\ & (!\C0|C1|C1|Selector46~0_combout\ & (\C0|C1|C1|EtatPresent.Etat9~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|EtatPresent.Etat7~regout\,
	datab => \C0|C1|C1|Selector46~0_combout\,
	datac => \C0|C1|C1|EtatPresent.Etat9~regout\,
	datad => \Rx~combout\,
	combout => \C0|C1|C1|Selector50~0_combout\);

-- Location: LCFF_X20_Y20_N13
\C0|C1|C1|EtatPresent.Etat9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|Selector50~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|EtatPresent.Etat9~regout\);

-- Location: LCCOMB_X20_Y22_N0
\C0|C1|C1|output[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|output[0]~0_combout\ = (!\rst~combout\ & \C0|C1|C1|EtatPresent.Etat9~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \C0|C1|C1|EtatPresent.Etat9~regout\,
	combout => \C0|C1|C1|output[0]~0_combout\);

-- Location: LCFF_X21_Y22_N9
\C0|C1|C1|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C0|C1|C1|reg\(1),
	sload => VCC,
	ena => \C0|C1|C1|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|output\(1));

-- Location: LCCOMB_X21_Y20_N18
\C0|C1|C1|reg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|reg~5_combout\ = (\C0|C1|C1|i\(1) & \C0|C1|C1|i\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(1),
	datad => \C0|C1|C1|i\(2),
	combout => \C0|C1|C1|reg~5_combout\);

-- Location: LCCOMB_X21_Y20_N22
\C0|C1|C1|reg~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|reg~7_combout\ = (\C0|C1|C1|reg~0_combout\ & ((\C0|C1|C1|reg~5_combout\ & ((\Rx~combout\))) # (!\C0|C1|C1|reg~5_combout\ & (\C0|C1|C1|reg\(7))))) # (!\C0|C1|C1|reg~0_combout\ & (((\C0|C1|C1|reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|reg~0_combout\,
	datab => \C0|C1|C1|reg~5_combout\,
	datac => \C0|C1|C1|reg\(7),
	datad => \Rx~combout\,
	combout => \C0|C1|C1|reg~7_combout\);

-- Location: LCFF_X21_Y20_N23
\C0|C1|C1|reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|reg~7_combout\,
	aclr => \rst~combout\,
	sclr => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	ena => \C0|C1|C1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|reg\(7));

-- Location: LCCOMB_X21_Y22_N22
\C0|C1|C1|output[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|output[7]~feeder_combout\ = \C0|C1|C1|reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C0|C1|C1|reg\(7),
	combout => \C0|C1|C1|output[7]~feeder_combout\);

-- Location: LCFF_X21_Y22_N23
\C0|C1|C1|output[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|output[7]~feeder_combout\,
	ena => \C0|C1|C1|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|output\(7));

-- Location: LCCOMB_X20_Y20_N16
\C0|C1|C1|reg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|reg~3_combout\ = (\C0|C1|C1|Equal0~2_combout\ & (((!\C0|C1|C1|Equal0~10_combout\) # (!\C0|C1|C1|Equal0~7_combout\)) # (!\C0|C1|C1|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|Equal0~12_combout\,
	datab => \C0|C1|C1|Equal0~7_combout\,
	datac => \C0|C1|C1|Equal0~10_combout\,
	datad => \C0|C1|C1|Equal0~2_combout\,
	combout => \C0|C1|C1|reg~3_combout\);

-- Location: LCCOMB_X21_Y20_N6
\C0|C1|C1|reg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|reg~4_combout\ = (\C0|C1|C1|reg~2_combout\ & ((\C0|C1|C1|reg~3_combout\ & (\Rx~combout\)) # (!\C0|C1|C1|reg~3_combout\ & ((\C0|C1|C1|reg\(0)))))) # (!\C0|C1|C1|reg~2_combout\ & (((\C0|C1|C1|reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|reg~2_combout\,
	datab => \Rx~combout\,
	datac => \C0|C1|C1|reg\(0),
	datad => \C0|C1|C1|reg~3_combout\,
	combout => \C0|C1|C1|reg~4_combout\);

-- Location: LCFF_X21_Y20_N7
\C0|C1|C1|reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|reg~4_combout\,
	aclr => \rst~combout\,
	sclr => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	ena => \C0|C1|C1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|reg\(0));

-- Location: LCFF_X21_Y22_N31
\C0|C1|C1|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C0|C1|C1|reg\(0),
	sload => VCC,
	ena => \C0|C1|C1|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|output\(0));

-- Location: LCCOMB_X20_Y22_N12
\C0|C1|C1|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|Selector39~0_combout\ = (\C0|C1|C1|EtatPresent.Etat9~regout\) # ((\C0|C1|C1|EtatPresent.Etat0~regout\ & \C0|C1|C1|dataValid~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|EtatPresent.Etat0~regout\,
	datac => \C0|C1|C1|dataValid~regout\,
	datad => \C0|C1|C1|EtatPresent.Etat9~regout\,
	combout => \C0|C1|C1|Selector39~0_combout\);

-- Location: LCFF_X20_Y22_N13
\C0|C1|C1|dataValid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|Selector39~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|dataValid~regout\);

-- Location: LCCOMB_X21_Y22_N30
\C1|C1|clocked~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|clocked~0_combout\ = (\C0|C1|C1|output\(6) & (!\C0|C1|C1|output\(7) & (\C0|C1|C1|output\(0) & \C0|C1|C1|dataValid~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|output\(6),
	datab => \C0|C1|C1|output\(7),
	datac => \C0|C1|C1|output\(0),
	datad => \C0|C1|C1|dataValid~regout\,
	combout => \C1|C1|clocked~0_combout\);

-- Location: LCCOMB_X21_Y22_N2
\C1|C1|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector12~0_combout\ = (!\C1|C1|EtatPresent.Etat0~regout\ & (((!\C1|C1|clocked~0_combout\) # (!\C0|C1|C1|output\(1))) # (!\C1|C1|clocked~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|clocked~1_combout\,
	datab => \C1|C1|EtatPresent.Etat0~regout\,
	datac => \C0|C1|C1|output\(1),
	datad => \C1|C1|clocked~0_combout\,
	combout => \C1|C1|Selector12~0_combout\);

-- Location: LCCOMB_X21_Y22_N10
\C1|C1|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector13~0_combout\ = (\C1|C1|clocked~1_combout\ & (!\C1|C1|EtatPresent.Etat0~regout\ & (\C0|C1|C1|output\(1) & \C1|C1|clocked~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|clocked~1_combout\,
	datab => \C1|C1|EtatPresent.Etat0~regout\,
	datac => \C0|C1|C1|output\(1),
	datad => \C1|C1|clocked~0_combout\,
	combout => \C1|C1|Selector13~0_combout\);

-- Location: LCCOMB_X20_Y22_N4
\C1|C1|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector13~1_combout\ = (\C1|C1|Selector13~0_combout\) # ((\C0|C1|C1|dataValid~regout\ & \C1|C1|EtatPresent.Etat1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|dataValid~regout\,
	datab => \C1|C1|Selector13~0_combout\,
	datac => \C1|C1|EtatPresent.Etat1~regout\,
	combout => \C1|C1|Selector13~1_combout\);

-- Location: LCFF_X20_Y22_N5
\C1|C1|EtatPresent.Etat1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector13~1_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|EtatPresent.Etat1~regout\);

-- Location: LCCOMB_X20_Y22_N20
\C1|C1|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector14~0_combout\ = (\C1|C1|WideOr3~0_combout\ & ((\C1|C1|EtatPresent.Etat1~regout\) # ((\C1|C1|EtatPresent.Etat2~regout\ & !\C1|C1|Selector16~2_combout\)))) # (!\C1|C1|WideOr3~0_combout\ & (((\C1|C1|EtatPresent.Etat2~regout\ & 
-- !\C1|C1|Selector16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|WideOr3~0_combout\,
	datab => \C1|C1|EtatPresent.Etat1~regout\,
	datac => \C1|C1|EtatPresent.Etat2~regout\,
	datad => \C1|C1|Selector16~2_combout\,
	combout => \C1|C1|Selector14~0_combout\);

-- Location: LCFF_X20_Y22_N21
\C1|C1|EtatPresent.Etat2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector14~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|EtatPresent.Etat2~regout\);

-- Location: LCCOMB_X20_Y22_N26
\C1|C1|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector15~1_combout\ = (\C1|C1|EtatPresent.Etat2~regout\) # ((\C1|C1|EtatPresent.Etat0~regout\ & (!\C1|C1|EtatPresent.Etat4~regout\ & \C1|C1|EtatPresent.Etat3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EtatPresent.Etat0~regout\,
	datab => \C1|C1|EtatPresent.Etat4~regout\,
	datac => \C1|C1|EtatPresent.Etat3~regout\,
	datad => \C1|C1|EtatPresent.Etat2~regout\,
	combout => \C1|C1|Selector15~1_combout\);

-- Location: LCCOMB_X20_Y22_N14
\C1|C1|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector15~0_combout\ = (\C1|C1|EtatPresent.Etat3~regout\ & (\C1|C1|Selector12~0_combout\ & ((!\C1|C1|EtatPresent.Etat4~regout\) # (!\C0|C1|C1|dataValid~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|dataValid~regout\,
	datab => \C1|C1|EtatPresent.Etat4~regout\,
	datac => \C1|C1|EtatPresent.Etat3~regout\,
	datad => \C1|C1|Selector12~0_combout\,
	combout => \C1|C1|Selector15~0_combout\);

-- Location: LCCOMB_X20_Y22_N28
\C1|C1|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector17~0_combout\ = (!\C1|C1|EtatPresent.Etat7~regout\ & (!\C1|C1|EtatPresent.Etat5~regout\ & !\C1|C1|EtatPresent.Etat6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EtatPresent.Etat7~regout\,
	datab => \C1|C1|EtatPresent.Etat5~regout\,
	datad => \C1|C1|EtatPresent.Etat6~regout\,
	combout => \C1|C1|Selector17~0_combout\);

-- Location: LCCOMB_X20_Y22_N16
\C1|C1|Selector15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector15~2_combout\ = (\C1|C1|Selector17~0_combout\ & ((\C1|C1|Selector15~0_combout\) # ((\C0|C1|C1|dataValid~regout\ & \C1|C1|Selector15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|dataValid~regout\,
	datab => \C1|C1|Selector15~1_combout\,
	datac => \C1|C1|Selector15~0_combout\,
	datad => \C1|C1|Selector17~0_combout\,
	combout => \C1|C1|Selector15~2_combout\);

-- Location: LCFF_X20_Y22_N17
\C1|C1|EtatPresent.Etat3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector15~2_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|EtatPresent.Etat3~regout\);

-- Location: LCCOMB_X20_Y22_N2
\C1|C1|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector16~1_combout\ = (!\C0|C1|C1|dataValid~regout\ & ((\C1|C1|EtatPresent.Etat1~regout\) # (\C1|C1|EtatPresent.Etat3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|dataValid~regout\,
	datab => \C1|C1|EtatPresent.Etat1~regout\,
	datac => \C1|C1|EtatPresent.Etat3~regout\,
	combout => \C1|C1|Selector16~1_combout\);

-- Location: LCCOMB_X20_Y22_N8
\C1|C1|Selector16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector16~2_combout\ = (\C1|C1|Selector16~0_combout\) # ((\C1|C1|Selector16~1_combout\) # ((\C1|C1|Selector13~0_combout\) # (!\C1|C1|Selector17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Selector16~0_combout\,
	datab => \C1|C1|Selector16~1_combout\,
	datac => \C1|C1|Selector13~0_combout\,
	datad => \C1|C1|Selector17~0_combout\,
	combout => \C1|C1|Selector16~2_combout\);

-- Location: LCCOMB_X22_Y22_N22
\C1|C1|regSelector[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|regSelector[7]~feeder_combout\ = \C0|C1|C1|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C0|C1|C1|output\(7),
	combout => \C1|C1|regSelector[7]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N20
\C1|C1|regSelector[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|regSelector[7]~0_combout\ = (!\rst~combout\ & \C1|C1|EtatPresent.Etat3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datad => \C1|C1|EtatPresent.Etat3~regout\,
	combout => \C1|C1|regSelector[7]~0_combout\);

-- Location: LCFF_X22_Y22_N23
\C1|C1|regSelector[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|regSelector[7]~feeder_combout\,
	ena => \C1|C1|regSelector[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|regSelector\(7));

-- Location: LCCOMB_X21_Y20_N28
\C0|C1|C1|reg~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|reg~8_combout\ = (!\C0|C1|C1|i\(1) & \C0|C1|C1|i\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(1),
	datad => \C0|C1|C1|i\(2),
	combout => \C0|C1|C1|reg~8_combout\);

-- Location: LCCOMB_X21_Y20_N30
\C0|C1|C1|reg~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|reg~10_combout\ = (\C0|C1|C1|reg~2_combout\ & ((\C0|C1|C1|reg~8_combout\ & ((\Rx~combout\))) # (!\C0|C1|C1|reg~8_combout\ & (\C0|C1|C1|reg\(4))))) # (!\C0|C1|C1|reg~2_combout\ & (((\C0|C1|C1|reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|reg~2_combout\,
	datab => \C0|C1|C1|reg~8_combout\,
	datac => \C0|C1|C1|reg\(4),
	datad => \Rx~combout\,
	combout => \C0|C1|C1|reg~10_combout\);

-- Location: LCFF_X21_Y20_N31
\C0|C1|C1|reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|reg~10_combout\,
	aclr => \rst~combout\,
	sclr => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	ena => \C0|C1|C1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|reg\(4));

-- Location: LCFF_X20_Y22_N11
\C0|C1|C1|output[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C0|C1|C1|reg\(4),
	sload => VCC,
	ena => \C0|C1|C1|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|output\(4));

-- Location: LCFF_X22_Y22_N9
\C1|C1|regSelector[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C0|C1|C1|output\(4),
	sload => VCC,
	ena => \C1|C1|regSelector[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|regSelector\(4));

-- Location: LCCOMB_X21_Y20_N0
\C0|C1|C1|reg~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|reg~9_combout\ = (\C0|C1|C1|reg~0_combout\ & ((\C0|C1|C1|reg~8_combout\ & ((\Rx~combout\))) # (!\C0|C1|C1|reg~8_combout\ & (\C0|C1|C1|reg\(5))))) # (!\C0|C1|C1|reg~0_combout\ & (((\C0|C1|C1|reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|reg~0_combout\,
	datab => \C0|C1|C1|reg~8_combout\,
	datac => \C0|C1|C1|reg\(5),
	datad => \Rx~combout\,
	combout => \C0|C1|C1|reg~9_combout\);

-- Location: LCFF_X21_Y20_N1
\C0|C1|C1|reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|reg~9_combout\,
	aclr => \rst~combout\,
	sclr => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	ena => \C0|C1|C1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|reg\(5));

-- Location: LCFF_X21_Y22_N25
\C0|C1|C1|output[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C0|C1|C1|reg\(5),
	sload => VCC,
	ena => \C0|C1|C1|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|output\(5));

-- Location: LCCOMB_X22_Y22_N2
\C1|C1|regSelector[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|regSelector[5]~feeder_combout\ = \C0|C1|C1|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C0|C1|C1|output\(5),
	combout => \C1|C1|regSelector[5]~feeder_combout\);

-- Location: LCFF_X22_Y22_N3
\C1|C1|regSelector[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|regSelector[5]~feeder_combout\,
	ena => \C1|C1|regSelector[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|regSelector\(5));

-- Location: LCCOMB_X22_Y22_N8
\C1|C1|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Equal1~0_combout\ = (!\C1|C1|regSelector\(6) & (!\C1|C1|regSelector\(7) & (\C1|C1|regSelector\(4) & \C1|C1|regSelector\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|regSelector\(6),
	datab => \C1|C1|regSelector\(7),
	datac => \C1|C1|regSelector\(4),
	datad => \C1|C1|regSelector\(5),
	combout => \C1|C1|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y20_N26
\C0|C1|C1|reg~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|reg~11_combout\ = (\C0|C1|C1|i\(1) & !\C0|C1|C1|i\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|C1|C1|i\(1),
	datad => \C0|C1|C1|i\(2),
	combout => \C0|C1|C1|reg~11_combout\);

-- Location: LCCOMB_X21_Y20_N20
\C0|C1|C1|reg~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|reg~12_combout\ = (\C0|C1|C1|reg~0_combout\ & ((\C0|C1|C1|reg~11_combout\ & ((\Rx~combout\))) # (!\C0|C1|C1|reg~11_combout\ & (\C0|C1|C1|reg\(3))))) # (!\C0|C1|C1|reg~0_combout\ & (((\C0|C1|C1|reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|reg~0_combout\,
	datab => \C0|C1|C1|reg~11_combout\,
	datac => \C0|C1|C1|reg\(3),
	datad => \Rx~combout\,
	combout => \C0|C1|C1|reg~12_combout\);

-- Location: LCFF_X21_Y20_N21
\C0|C1|C1|reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|reg~12_combout\,
	aclr => \rst~combout\,
	sclr => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	ena => \C0|C1|C1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|reg\(3));

-- Location: LCCOMB_X21_Y22_N14
\C0|C1|C1|output[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|output[3]~feeder_combout\ = \C0|C1|C1|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C0|C1|C1|reg\(3),
	combout => \C0|C1|C1|output[3]~feeder_combout\);

-- Location: LCFF_X21_Y22_N15
\C0|C1|C1|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|output[3]~feeder_combout\,
	ena => \C0|C1|C1|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|output\(3));

-- Location: LCCOMB_X22_Y22_N4
\C1|C1|regSelector[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|regSelector[3]~feeder_combout\ = \C0|C1|C1|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C0|C1|C1|output\(3),
	combout => \C1|C1|regSelector[3]~feeder_combout\);

-- Location: LCFF_X22_Y22_N5
\C1|C1|regSelector[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|regSelector[3]~feeder_combout\,
	ena => \C1|C1|regSelector[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|regSelector\(3));

-- Location: LCCOMB_X21_Y20_N2
\C0|C1|C1|reg~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|reg~13_combout\ = (\C0|C1|C1|reg~2_combout\ & ((\C0|C1|C1|reg~11_combout\ & ((\Rx~combout\))) # (!\C0|C1|C1|reg~11_combout\ & (\C0|C1|C1|reg\(2))))) # (!\C0|C1|C1|reg~2_combout\ & (((\C0|C1|C1|reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|reg~2_combout\,
	datab => \C0|C1|C1|reg~11_combout\,
	datac => \C0|C1|C1|reg\(2),
	datad => \Rx~combout\,
	combout => \C0|C1|C1|reg~13_combout\);

-- Location: LCFF_X21_Y20_N3
\C0|C1|C1|reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|reg~13_combout\,
	aclr => \rst~combout\,
	sclr => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	ena => \C0|C1|C1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|reg\(2));

-- Location: LCCOMB_X21_Y22_N28
\C0|C1|C1|output[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|output[2]~feeder_combout\ = \C0|C1|C1|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C0|C1|C1|reg\(2),
	combout => \C0|C1|C1|output[2]~feeder_combout\);

-- Location: LCFF_X21_Y22_N29
\C0|C1|C1|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|output[2]~feeder_combout\,
	ena => \C0|C1|C1|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|output\(2));

-- Location: LCCOMB_X22_Y22_N26
\C1|C1|regSelector[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|regSelector[2]~feeder_combout\ = \C0|C1|C1|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C0|C1|C1|output\(2),
	combout => \C1|C1|regSelector[2]~feeder_combout\);

-- Location: LCFF_X22_Y22_N27
\C1|C1|regSelector[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|regSelector[2]~feeder_combout\,
	ena => \C1|C1|regSelector[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|regSelector\(2));

-- Location: LCCOMB_X22_Y22_N12
\C1|C1|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Equal1~1_combout\ = (\C1|C1|Equal1~0_combout\ & (!\C1|C1|regSelector\(3) & !\C1|C1|regSelector\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|Equal1~0_combout\,
	datac => \C1|C1|regSelector\(3),
	datad => \C1|C1|regSelector\(2),
	combout => \C1|C1|Equal1~1_combout\);

-- Location: LCFF_X22_Y22_N11
\C1|C1|regSelector[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C0|C1|C1|output\(0),
	sload => VCC,
	ena => \C1|C1|regSelector[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|regSelector\(0));

-- Location: LCCOMB_X22_Y22_N30
\C1|C1|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector19~0_combout\ = (\C1|C1|EtatPresent.Etat5~regout\ & (((\C1|C1|regSelector\(1) & \C1|C1|regSelector\(0))) # (!\C1|C1|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|regSelector\(1),
	datab => \C1|C1|EtatPresent.Etat5~regout\,
	datac => \C1|C1|Equal1~1_combout\,
	datad => \C1|C1|regSelector\(0),
	combout => \C1|C1|Selector19~0_combout\);

-- Location: LCFF_X22_Y22_N31
\C1|C1|EtatPresent.Etat7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector19~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|EtatPresent.Etat7~regout\);

-- Location: LCCOMB_X20_Y22_N24
\C1|C1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr3~0_combout\ = (!\C0|C1|C1|dataValid~regout\ & (!\C1|C1|EtatPresent.Etat5~regout\ & (!\C1|C1|EtatPresent.Etat7~regout\ & !\C1|C1|EtatPresent.Etat6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|dataValid~regout\,
	datab => \C1|C1|EtatPresent.Etat5~regout\,
	datac => \C1|C1|EtatPresent.Etat7~regout\,
	datad => \C1|C1|EtatPresent.Etat6~regout\,
	combout => \C1|C1|WideOr3~0_combout\);

-- Location: LCCOMB_X20_Y22_N18
\C1|C1|Selector16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector16~3_combout\ = (\C1|C1|EtatPresent.Etat3~regout\ & ((\C1|C1|WideOr3~0_combout\) # ((!\C1|C1|Selector16~2_combout\ & \C1|C1|EtatPresent.Etat4~regout\)))) # (!\C1|C1|EtatPresent.Etat3~regout\ & (!\C1|C1|Selector16~2_combout\ & 
-- (\C1|C1|EtatPresent.Etat4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EtatPresent.Etat3~regout\,
	datab => \C1|C1|Selector16~2_combout\,
	datac => \C1|C1|EtatPresent.Etat4~regout\,
	datad => \C1|C1|WideOr3~0_combout\,
	combout => \C1|C1|Selector16~3_combout\);

-- Location: LCFF_X20_Y22_N19
\C1|C1|EtatPresent.Etat4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector16~3_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|EtatPresent.Etat4~regout\);

-- Location: LCCOMB_X20_Y22_N22
\C1|C1|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector17~1_combout\ = (\C0|C1|C1|dataValid~regout\ & (\C1|C1|EtatPresent.Etat4~regout\ & \C1|C1|Selector17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|dataValid~regout\,
	datab => \C1|C1|EtatPresent.Etat4~regout\,
	datad => \C1|C1|Selector17~0_combout\,
	combout => \C1|C1|Selector17~1_combout\);

-- Location: LCFF_X20_Y22_N23
\C1|C1|EtatPresent.Etat5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector17~1_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|EtatPresent.Etat5~regout\);

-- Location: LCCOMB_X22_Y22_N14
\C1|C1|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector18~0_combout\ = (\C1|C1|EtatPresent.Etat5~regout\ & (\C1|C1|Equal1~1_combout\ & ((!\C1|C1|regSelector\(0)) # (!\C1|C1|regSelector\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|regSelector\(1),
	datab => \C1|C1|EtatPresent.Etat5~regout\,
	datac => \C1|C1|Equal1~1_combout\,
	datad => \C1|C1|regSelector\(0),
	combout => \C1|C1|Selector18~0_combout\);

-- Location: LCFF_X22_Y22_N15
\C1|C1|EtatPresent.Etat6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector18~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|EtatPresent.Etat6~regout\);

-- Location: LCCOMB_X21_Y22_N8
\C1|C1|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector12~1_combout\ = (!\C1|C1|EtatPresent.Etat7~regout\ & (!\C1|C1|Selector12~0_combout\ & !\C1|C1|EtatPresent.Etat6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EtatPresent.Etat7~regout\,
	datab => \C1|C1|Selector12~0_combout\,
	datad => \C1|C1|EtatPresent.Etat6~regout\,
	combout => \C1|C1|Selector12~1_combout\);

-- Location: LCFF_X20_Y22_N29
\C1|C1|EtatPresent.Etat0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|Selector12~1_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|EtatPresent.Etat0~regout\);

-- Location: LCCOMB_X22_Y22_N28
\C1|C1|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector8~0_combout\ = (\C1|C1|dataValid0~regout\ & ((\C1|C1|EtatPresent.Etat0~regout\) # (\C1|C1|EtatPresent.Etat6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|EtatPresent.Etat0~regout\,
	datac => \C1|C1|EtatPresent.Etat6~regout\,
	datad => \C1|C1|dataValid0~regout\,
	combout => \C1|C1|Selector8~0_combout\);

-- Location: LCCOMB_X22_Y22_N0
\C1|C1|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector8~1_combout\ = (\C1|C1|Selector8~0_combout\) # ((\C1|C1|Equal2~0_combout\ & (\C1|C1|EtatPresent.Etat6~regout\ & !\C1|C1|regSelector\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Equal2~0_combout\,
	datab => \C1|C1|Selector8~0_combout\,
	datac => \C1|C1|EtatPresent.Etat6~regout\,
	datad => \C1|C1|regSelector\(0),
	combout => \C1|C1|Selector8~1_combout\);

-- Location: LCFF_X22_Y22_N1
\C1|C1|dataValid0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector8~1_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|dataValid0~regout\);

-- Location: LCCOMB_X21_Y22_N12
\C1|C1|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector7~0_combout\ = (\C1|C1|EtatPresent.Etat0~regout\ & \C0|C1|C1|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|EtatPresent.Etat0~regout\,
	datad => \C0|C1|C1|output\(0),
	combout => \C1|C1|Selector7~0_combout\);

-- Location: LCCOMB_X20_Y22_N30
\C1|C1|regValue[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|regValue[5]~0_combout\ = (\C1|C1|EtatPresent.Etat4~regout\ & (\C0|C1|C1|dataValid~regout\)) # (!\C1|C1|EtatPresent.Etat4~regout\ & (((\C1|C1|EtatPresent.Etat5~regout\) # (!\C1|C1|EtatPresent.Etat0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|dataValid~regout\,
	datab => \C1|C1|EtatPresent.Etat4~regout\,
	datac => \C1|C1|EtatPresent.Etat0~regout\,
	datad => \C1|C1|EtatPresent.Etat5~regout\,
	combout => \C1|C1|regValue[5]~0_combout\);

-- Location: LCFF_X21_Y22_N13
\C1|C1|regValue[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector7~0_combout\,
	aclr => \rst~combout\,
	ena => \C1|C1|regValue[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|regValue\(0));

-- Location: LCCOMB_X21_Y23_N6
\C1|C1|output0[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|output0[0]~feeder_combout\ = \C1|C1|regValue\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|regValue\(0),
	combout => \C1|C1|output0[0]~feeder_combout\);

-- Location: LCCOMB_X22_Y22_N10
\C1|C1|output0[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|output0[0]~0_combout\ = (\C1|C1|Equal2~0_combout\ & (\C1|C1|EtatPresent.Etat6~regout\ & (!\C1|C1|regSelector\(0) & !\rst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Equal2~0_combout\,
	datab => \C1|C1|EtatPresent.Etat6~regout\,
	datac => \C1|C1|regSelector\(0),
	datad => \rst~combout\,
	combout => \C1|C1|output0[0]~0_combout\);

-- Location: LCFF_X21_Y23_N7
\C1|C1|output0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|output0[0]~feeder_combout\,
	ena => \C1|C1|output0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output0\(0));

-- Location: LCCOMB_X18_Y24_N4
\C1|C5|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Selector8~2_combout\ = (\C1|C5|Selector8~1_combout\ & ((\C1|C0|Tick7us~regout\) # ((\C1|C5|Count\(1))))) # (!\C1|C5|Selector8~1_combout\ & (((\C1|C5|Count\(1) & !\C1|C5|Done~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Selector8~1_combout\,
	datab => \C1|C0|Tick7us~regout\,
	datac => \C1|C5|Count\(1),
	datad => \C1|C5|Done~0_combout\,
	combout => \C1|C5|Selector8~2_combout\);

-- Location: LCFF_X18_Y24_N5
\C1|C5|Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C5|Selector8~2_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C5|Count\(1));

-- Location: LCCOMB_X20_Y24_N4
\C1|C5|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Add0~4_combout\ = (\C1|C5|Count\(2) & ((GND) # (!\C1|C5|Add0~3\))) # (!\C1|C5|Count\(2) & (\C1|C5|Add0~3\ $ (GND)))
-- \C1|C5|Add0~5\ = CARRY((\C1|C5|Count\(2)) # (!\C1|C5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C5|Count\(2),
	datad => VCC,
	cin => \C1|C5|Add0~3\,
	combout => \C1|C5|Add0~4_combout\,
	cout => \C1|C5|Add0~5\);

-- Location: LCCOMB_X19_Y24_N26
\C1|C5|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Selector7~0_combout\ = (\C1|C5|Add0~4_combout\) # (!\C1|C5|State.Idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|State.Idle~regout\,
	datad => \C1|C5|Add0~4_combout\,
	combout => \C1|C5|Selector7~0_combout\);

-- Location: LCCOMB_X19_Y24_N24
\C1|C5|Count[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[2]~0_combout\ = (\C1|C5|Count[6]~9_combout\ & (\C1|C1|output0\(0))) # (!\C1|C5|Count[6]~9_combout\ & ((\C1|C5|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Count[6]~9_combout\,
	datab => \C1|C1|output0\(0),
	datad => \C1|C5|Selector7~0_combout\,
	combout => \C1|C5|Count[2]~0_combout\);

-- Location: LCFF_X19_Y24_N25
\C1|C5|Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C5|Count[2]~0_combout\,
	sdata => \C1|C5|Count\(2),
	aclr => \rst~combout\,
	sload => \C1|C5|Count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C5|Count\(2));

-- Location: LCCOMB_X19_Y24_N20
\C1|C5|Count[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[6]~9_combout\ = (\C1|C5|State.Init~regout\ & (\C1|C5|Equal0~1_combout\ & (!\C1|C5|Count\(2) & \C1|C5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|State.Init~regout\,
	datab => \C1|C5|Equal0~1_combout\,
	datac => \C1|C5|Count\(2),
	datad => \C1|C5|Equal0~0_combout\,
	combout => \C1|C5|Count[6]~9_combout\);

-- Location: LCCOMB_X19_Y24_N18
\C1|C5|Count[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[7]~10_combout\ = (\C1|C5|Count[6]~9_combout\ & (!\C1|C5|Count[0]~2_combout\ & ((!\C1|C5|State.Pulse~regout\) # (!\C1|C5|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Equal0~2_combout\,
	datab => \C1|C5|State.Pulse~regout\,
	datac => \C1|C5|Count[6]~9_combout\,
	datad => \C1|C5|Count[0]~2_combout\,
	combout => \C1|C5|Count[7]~10_combout\);

-- Location: LCCOMB_X21_Y22_N26
\C1|C1|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector3~0_combout\ = (\C1|C1|EtatPresent.Etat0~regout\ & \C0|C1|C1|output\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|EtatPresent.Etat0~regout\,
	datad => \C0|C1|C1|output\(4),
	combout => \C1|C1|Selector3~0_combout\);

-- Location: LCFF_X21_Y22_N27
\C1|C1|regValue[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector3~0_combout\,
	aclr => \rst~combout\,
	ena => \C1|C1|regValue[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|regValue\(4));

-- Location: LCFF_X21_Y23_N3
\C1|C1|output0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|regValue\(4),
	sload => VCC,
	ena => \C1|C1|output0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output0\(4));

-- Location: LCCOMB_X21_Y22_N16
\C1|C1|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector5~0_combout\ = (\C1|C1|EtatPresent.Etat0~regout\ & \C0|C1|C1|output\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|EtatPresent.Etat0~regout\,
	datad => \C0|C1|C1|output\(2),
	combout => \C1|C1|Selector5~0_combout\);

-- Location: LCFF_X21_Y22_N17
\C1|C1|regValue[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector5~0_combout\,
	aclr => \rst~combout\,
	ena => \C1|C1|regValue[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|regValue\(2));

-- Location: LCFF_X21_Y23_N15
\C1|C1|output0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|regValue\(2),
	sload => VCC,
	ena => \C1|C1|output0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output0\(2));

-- Location: LCCOMB_X21_Y22_N6
\C1|C1|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector6~0_combout\ = (\C1|C1|EtatPresent.Etat0~regout\ & \C0|C1|C1|output\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|EtatPresent.Etat0~regout\,
	datac => \C0|C1|C1|output\(1),
	combout => \C1|C1|Selector6~0_combout\);

-- Location: LCFF_X21_Y22_N7
\C1|C1|regValue[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector6~0_combout\,
	aclr => \rst~combout\,
	ena => \C1|C1|regValue[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|regValue\(1));

-- Location: LCCOMB_X21_Y23_N30
\C1|C1|output0[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|output0[1]~feeder_combout\ = \C1|C1|regValue\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|regValue\(1),
	combout => \C1|C1|output0[1]~feeder_combout\);

-- Location: LCFF_X21_Y23_N31
\C1|C1|output0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|output0[1]~feeder_combout\,
	ena => \C1|C1|output0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output0\(1));

-- Location: LCCOMB_X20_Y23_N0
\C1|C2|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add3~0_combout\ = (\C1|C1|output0\(0) & (\C1|C1|output0\(1) $ (VCC))) # (!\C1|C1|output0\(0) & (\C1|C1|output0\(1) & VCC))
-- \C1|C2|Add3~1\ = CARRY((\C1|C1|output0\(0) & \C1|C1|output0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output0\(0),
	datab => \C1|C1|output0\(1),
	datad => VCC,
	combout => \C1|C2|Add3~0_combout\,
	cout => \C1|C2|Add3~1\);

-- Location: LCCOMB_X20_Y23_N4
\C1|C2|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add3~4_combout\ = ((\C1|C1|output0\(3) $ (\C1|C1|output0\(2) $ (!\C1|C2|Add3~3\)))) # (GND)
-- \C1|C2|Add3~5\ = CARRY((\C1|C1|output0\(3) & ((\C1|C1|output0\(2)) # (!\C1|C2|Add3~3\))) # (!\C1|C1|output0\(3) & (\C1|C1|output0\(2) & !\C1|C2|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output0\(3),
	datab => \C1|C1|output0\(2),
	datad => VCC,
	cin => \C1|C2|Add3~3\,
	combout => \C1|C2|Add3~4_combout\,
	cout => \C1|C2|Add3~5\);

-- Location: LCCOMB_X20_Y23_N14
\C1|C2|Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add4~1_cout\ = CARRY(\C1|C1|output0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output0\(0),
	datad => VCC,
	cout => \C1|C2|Add4~1_cout\);

-- Location: LCCOMB_X20_Y23_N16
\C1|C2|output[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|output[1]~1_cout\ = CARRY((\C1|C1|output0\(1) & (!\C1|C2|Add3~0_combout\ & !\C1|C2|Add4~1_cout\)) # (!\C1|C1|output0\(1) & ((!\C1|C2|Add4~1_cout\) # (!\C1|C2|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output0\(1),
	datab => \C1|C2|Add3~0_combout\,
	datad => VCC,
	cin => \C1|C2|Add4~1_cout\,
	cout => \C1|C2|output[1]~1_cout\);

-- Location: LCCOMB_X20_Y23_N18
\C1|C2|output[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|output[2]~3_cout\ = CARRY((\C1|C2|Add3~2_combout\ & ((\C1|C1|output0\(2)) # (!\C1|C2|output[1]~1_cout\))) # (!\C1|C2|Add3~2_combout\ & (\C1|C1|output0\(2) & !\C1|C2|output[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Add3~2_combout\,
	datab => \C1|C1|output0\(2),
	datad => VCC,
	cin => \C1|C2|output[1]~1_cout\,
	cout => \C1|C2|output[2]~3_cout\);

-- Location: LCCOMB_X20_Y23_N20
\C1|C2|output[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|output[3]~5_cout\ = CARRY((\C1|C1|output0\(3) & (!\C1|C2|Add3~4_combout\ & !\C1|C2|output[2]~3_cout\)) # (!\C1|C1|output0\(3) & ((!\C1|C2|output[2]~3_cout\) # (!\C1|C2|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output0\(3),
	datab => \C1|C2|Add3~4_combout\,
	datad => VCC,
	cin => \C1|C2|output[2]~3_cout\,
	cout => \C1|C2|output[3]~5_cout\);

-- Location: LCCOMB_X20_Y23_N22
\C1|C2|output[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|output[4]~6_combout\ = ((\C1|C2|Add3~6_combout\ $ (\C1|C1|output0\(4) $ (\C1|C2|output[3]~5_cout\)))) # (GND)
-- \C1|C2|output[4]~7\ = CARRY((\C1|C2|Add3~6_combout\ & ((!\C1|C2|output[3]~5_cout\) # (!\C1|C1|output0\(4)))) # (!\C1|C2|Add3~6_combout\ & (!\C1|C1|output0\(4) & !\C1|C2|output[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Add3~6_combout\,
	datab => \C1|C1|output0\(4),
	datad => VCC,
	cin => \C1|C2|output[3]~5_cout\,
	combout => \C1|C2|output[4]~6_combout\,
	cout => \C1|C2|output[4]~7\);

-- Location: LCCOMB_X20_Y24_N6
\C1|C5|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Add0~6_combout\ = (\C1|C5|Count\(3) & (\C1|C5|Add0~5\ & VCC)) # (!\C1|C5|Count\(3) & (!\C1|C5|Add0~5\))
-- \C1|C5|Add0~7\ = CARRY((!\C1|C5|Count\(3) & !\C1|C5|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C5|Count\(3),
	datad => VCC,
	cin => \C1|C5|Add0~5\,
	combout => \C1|C5|Add0~6_combout\,
	cout => \C1|C5|Add0~7\);

-- Location: LCCOMB_X19_Y24_N22
\C1|C5|Count[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[3]~19_combout\ = (\C1|C5|Count[6]~9_combout\ & (((\C1|C1|output0\(1))))) # (!\C1|C5|Count[6]~9_combout\ & (\C1|C5|State.Idle~regout\ & ((\C1|C5|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|State.Idle~regout\,
	datab => \C1|C1|output0\(1),
	datac => \C1|C5|Count[6]~9_combout\,
	datad => \C1|C5|Add0~6_combout\,
	combout => \C1|C5|Count[3]~19_combout\);

-- Location: LCCOMB_X19_Y24_N28
\C1|C5|Count[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[3]~20_combout\ = (\C1|C5|Count[7]~6_combout\ & ((\C1|C5|Count[3]~19_combout\) # ((\C1|C5|Count\(3) & \C1|C5|Count[0]~2_combout\)))) # (!\C1|C5|Count[7]~6_combout\ & (((\C1|C5|Count\(3) & \C1|C5|Count[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Count[7]~6_combout\,
	datab => \C1|C5|Count[3]~19_combout\,
	datac => \C1|C5|Count\(3),
	datad => \C1|C5|Count[0]~2_combout\,
	combout => \C1|C5|Count[3]~20_combout\);

-- Location: LCFF_X19_Y24_N29
\C1|C5|Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C5|Count[3]~20_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C5|Count\(3));

-- Location: LCCOMB_X20_Y24_N8
\C1|C5|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Add0~8_combout\ = (\C1|C5|Count\(4) & ((GND) # (!\C1|C5|Add0~7\))) # (!\C1|C5|Count\(4) & (\C1|C5|Add0~7\ $ (GND)))
-- \C1|C5|Add0~9\ = CARRY((\C1|C5|Count\(4)) # (!\C1|C5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C5|Count\(4),
	datad => VCC,
	cin => \C1|C5|Add0~7\,
	combout => \C1|C5|Add0~8_combout\,
	cout => \C1|C5|Add0~9\);

-- Location: LCCOMB_X18_Y24_N2
\C1|C5|Count[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[7]~5_combout\ = (!\C1|C5|State.Relax~regout\ & !\C1|C5|State.Pulse~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C5|State.Relax~regout\,
	datad => \C1|C5|State.Pulse~regout\,
	combout => \C1|C5|Count[7]~5_combout\);

-- Location: LCCOMB_X18_Y24_N8
\C1|C5|Count[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[7]~6_combout\ = (\C1|C5|Done~0_combout\ & (!\C1|C5|Count[0]~1_combout\ & ((\C1|C5|Count[7]~5_combout\) # (!\C1|C5|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Done~0_combout\,
	datab => \C1|C5|Count[7]~5_combout\,
	datac => \C1|C5|Equal0~2_combout\,
	datad => \C1|C5|Count[0]~1_combout\,
	combout => \C1|C5|Count[7]~6_combout\);

-- Location: LCCOMB_X19_Y24_N14
\C1|C5|Count[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[7]~7_combout\ = (\C1|C5|State.Idle~regout\ & (\C1|C5|Count[7]~6_combout\ & ((!\C1|C5|State.Init~regout\) # (!\C1|C5|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Equal0~2_combout\,
	datab => \C1|C5|State.Idle~regout\,
	datac => \C1|C5|State.Init~regout\,
	datad => \C1|C5|Count[7]~6_combout\,
	combout => \C1|C5|Count[7]~7_combout\);

-- Location: LCCOMB_X20_Y24_N18
\C1|C5|Count[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[4]~17_combout\ = (\C1|C5|Count[0]~2_combout\ & ((\C1|C5|Count\(4)) # ((\C1|C5|Add0~8_combout\ & \C1|C5|Count[7]~7_combout\)))) # (!\C1|C5|Count[0]~2_combout\ & (((\C1|C5|Add0~8_combout\ & \C1|C5|Count[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Count[0]~2_combout\,
	datab => \C1|C5|Count\(4),
	datac => \C1|C5|Add0~8_combout\,
	datad => \C1|C5|Count[7]~7_combout\,
	combout => \C1|C5|Count[4]~17_combout\);

-- Location: LCCOMB_X20_Y24_N30
\C1|C5|Count[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[4]~18_combout\ = (\C1|C5|Count[4]~17_combout\) # ((\C1|C5|Count[7]~10_combout\ & \C1|C2|output[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C5|Count[7]~10_combout\,
	datac => \C1|C2|output[4]~6_combout\,
	datad => \C1|C5|Count[4]~17_combout\,
	combout => \C1|C5|Count[4]~18_combout\);

-- Location: LCFF_X20_Y24_N31
\C1|C5|Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C5|Count[4]~18_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C5|Count\(4));

-- Location: LCCOMB_X20_Y24_N10
\C1|C5|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Add0~10_combout\ = (\C1|C5|Count\(5) & (\C1|C5|Add0~9\ & VCC)) # (!\C1|C5|Count\(5) & (!\C1|C5|Add0~9\))
-- \C1|C5|Add0~11\ = CARRY((!\C1|C5|Count\(5) & !\C1|C5|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C5|Count\(5),
	datad => VCC,
	cin => \C1|C5|Add0~9\,
	combout => \C1|C5|Add0~10_combout\,
	cout => \C1|C5|Add0~11\);

-- Location: LCCOMB_X20_Y24_N20
\C1|C5|Count[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[5]~15_combout\ = (\C1|C5|Count[0]~2_combout\ & ((\C1|C5|Count\(5)) # ((\C1|C5|Add0~10_combout\ & \C1|C5|Count[7]~7_combout\)))) # (!\C1|C5|Count[0]~2_combout\ & (((\C1|C5|Add0~10_combout\ & \C1|C5|Count[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Count[0]~2_combout\,
	datab => \C1|C5|Count\(5),
	datac => \C1|C5|Add0~10_combout\,
	datad => \C1|C5|Count[7]~7_combout\,
	combout => \C1|C5|Count[5]~15_combout\);

-- Location: LCCOMB_X21_Y22_N4
\C1|C1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector2~0_combout\ = (\C1|C1|EtatPresent.Etat0~regout\ & \C0|C1|C1|output\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|EtatPresent.Etat0~regout\,
	datac => \C0|C1|C1|output\(5),
	combout => \C1|C1|Selector2~0_combout\);

-- Location: LCFF_X21_Y22_N5
\C1|C1|regValue[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector2~0_combout\,
	aclr => \rst~combout\,
	ena => \C1|C1|regValue[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|regValue\(5));

-- Location: LCCOMB_X21_Y23_N0
\C1|C1|output0[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|output0[5]~feeder_combout\ = \C1|C1|regValue\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|regValue\(5),
	combout => \C1|C1|output0[5]~feeder_combout\);

-- Location: LCFF_X21_Y23_N1
\C1|C1|output0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|output0[5]~feeder_combout\,
	ena => \C1|C1|output0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output0\(5));

-- Location: LCCOMB_X21_Y23_N4
\C1|C2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add0~2_combout\ = \C1|C1|output0\(5) $ (\C1|C1|output0\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|output0\(5),
	datad => \C1|C1|output0\(4),
	combout => \C1|C2|Add0~2_combout\);

-- Location: LCCOMB_X21_Y23_N14
\C1|C2|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add1~2_combout\ = (\C1|C1|output0\(1) & ((\C1|C2|Add0~2_combout\ & (\C1|C2|Add1~1\ & VCC)) # (!\C1|C2|Add0~2_combout\ & (!\C1|C2|Add1~1\)))) # (!\C1|C1|output0\(1) & ((\C1|C2|Add0~2_combout\ & (!\C1|C2|Add1~1\)) # (!\C1|C2|Add0~2_combout\ & 
-- ((\C1|C2|Add1~1\) # (GND)))))
-- \C1|C2|Add1~3\ = CARRY((\C1|C1|output0\(1) & (!\C1|C2|Add0~2_combout\ & !\C1|C2|Add1~1\)) # (!\C1|C1|output0\(1) & ((!\C1|C2|Add1~1\) # (!\C1|C2|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output0\(1),
	datab => \C1|C2|Add0~2_combout\,
	datad => VCC,
	cin => \C1|C2|Add1~1\,
	combout => \C1|C2|Add1~2_combout\,
	cout => \C1|C2|Add1~3\);

-- Location: LCCOMB_X22_Y22_N18
\C1|C1|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector4~0_combout\ = (\C1|C1|EtatPresent.Etat0~regout\ & \C0|C1|C1|output\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|EtatPresent.Etat0~regout\,
	datad => \C0|C1|C1|output\(3),
	combout => \C1|C1|Selector4~0_combout\);

-- Location: LCCOMB_X23_Y22_N2
\C1|C1|regValue[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|regValue[3]~feeder_combout\ = \C1|C1|Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|Selector4~0_combout\,
	combout => \C1|C1|regValue[3]~feeder_combout\);

-- Location: LCFF_X23_Y22_N3
\C1|C1|regValue[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|regValue[3]~feeder_combout\,
	aclr => \rst~combout\,
	ena => \C1|C1|regValue[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|regValue\(3));

-- Location: LCFF_X21_Y23_N5
\C1|C1|output0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|regValue\(3),
	sload => VCC,
	ena => \C1|C1|output0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output0\(3));

-- Location: LCCOMB_X21_Y23_N20
\C1|C2|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add2~1_cout\ = CARRY(\C1|C1|output0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|output0\(3),
	datad => VCC,
	cout => \C1|C2|Add2~1_cout\);

-- Location: LCCOMB_X21_Y23_N22
\C1|C2|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add2~2_combout\ = (\C1|C2|Add1~0_combout\ & ((\C1|C1|output0\(4) & (!\C1|C2|Add2~1_cout\)) # (!\C1|C1|output0\(4) & (\C1|C2|Add2~1_cout\ & VCC)))) # (!\C1|C2|Add1~0_combout\ & ((\C1|C1|output0\(4) & ((\C1|C2|Add2~1_cout\) # (GND))) # 
-- (!\C1|C1|output0\(4) & (!\C1|C2|Add2~1_cout\))))
-- \C1|C2|Add2~3\ = CARRY((\C1|C2|Add1~0_combout\ & (\C1|C1|output0\(4) & !\C1|C2|Add2~1_cout\)) # (!\C1|C2|Add1~0_combout\ & ((\C1|C1|output0\(4)) # (!\C1|C2|Add2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Add1~0_combout\,
	datab => \C1|C1|output0\(4),
	datad => VCC,
	cin => \C1|C2|Add2~1_cout\,
	combout => \C1|C2|Add2~2_combout\,
	cout => \C1|C2|Add2~3\);

-- Location: LCCOMB_X21_Y23_N24
\C1|C2|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add2~4_combout\ = ((\C1|C2|Add0~2_combout\ $ (\C1|C2|Add1~2_combout\ $ (!\C1|C2|Add2~3\)))) # (GND)
-- \C1|C2|Add2~5\ = CARRY((\C1|C2|Add0~2_combout\ & ((\C1|C2|Add1~2_combout\) # (!\C1|C2|Add2~3\))) # (!\C1|C2|Add0~2_combout\ & (\C1|C2|Add1~2_combout\ & !\C1|C2|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Add0~2_combout\,
	datab => \C1|C2|Add1~2_combout\,
	datad => VCC,
	cin => \C1|C2|Add2~3\,
	combout => \C1|C2|Add2~4_combout\,
	cout => \C1|C2|Add2~5\);

-- Location: LCCOMB_X20_Y23_N8
\C1|C2|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add3~8_combout\ = ((\C1|C2|Add0~2_combout\ $ (\C1|C2|Add2~4_combout\ $ (!\C1|C2|Add3~7\)))) # (GND)
-- \C1|C2|Add3~9\ = CARRY((\C1|C2|Add0~2_combout\ & ((\C1|C2|Add2~4_combout\) # (!\C1|C2|Add3~7\))) # (!\C1|C2|Add0~2_combout\ & (\C1|C2|Add2~4_combout\ & !\C1|C2|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Add0~2_combout\,
	datab => \C1|C2|Add2~4_combout\,
	datad => VCC,
	cin => \C1|C2|Add3~7\,
	combout => \C1|C2|Add3~8_combout\,
	cout => \C1|C2|Add3~9\);

-- Location: LCCOMB_X20_Y23_N24
\C1|C2|output[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|output[5]~8_combout\ = (\C1|C2|Add0~2_combout\ & ((\C1|C2|Add3~8_combout\ & (\C1|C2|output[4]~7\ & VCC)) # (!\C1|C2|Add3~8_combout\ & (!\C1|C2|output[4]~7\)))) # (!\C1|C2|Add0~2_combout\ & ((\C1|C2|Add3~8_combout\ & (!\C1|C2|output[4]~7\)) # 
-- (!\C1|C2|Add3~8_combout\ & ((\C1|C2|output[4]~7\) # (GND)))))
-- \C1|C2|output[5]~9\ = CARRY((\C1|C2|Add0~2_combout\ & (!\C1|C2|Add3~8_combout\ & !\C1|C2|output[4]~7\)) # (!\C1|C2|Add0~2_combout\ & ((!\C1|C2|output[4]~7\) # (!\C1|C2|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Add0~2_combout\,
	datab => \C1|C2|Add3~8_combout\,
	datad => VCC,
	cin => \C1|C2|output[4]~7\,
	combout => \C1|C2|output[5]~8_combout\,
	cout => \C1|C2|output[5]~9\);

-- Location: LCCOMB_X20_Y24_N26
\C1|C5|Count[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[5]~16_combout\ = (\C1|C5|Count[5]~15_combout\) # ((\C1|C5|Count[7]~10_combout\ & \C1|C2|output[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C5|Count[7]~10_combout\,
	datac => \C1|C5|Count[5]~15_combout\,
	datad => \C1|C2|output[5]~8_combout\,
	combout => \C1|C5|Count[5]~16_combout\);

-- Location: LCFF_X20_Y24_N27
\C1|C5|Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C5|Count[5]~16_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C5|Count\(5));

-- Location: LCCOMB_X20_Y24_N14
\C1|C5|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Add0~14_combout\ = (\C1|C5|Count\(7) & (\C1|C5|Add0~13\ & VCC)) # (!\C1|C5|Count\(7) & (!\C1|C5|Add0~13\))
-- \C1|C5|Add0~15\ = CARRY((!\C1|C5|Count\(7) & !\C1|C5|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C5|Count\(7),
	datad => VCC,
	cin => \C1|C5|Add0~13\,
	combout => \C1|C5|Add0~14_combout\,
	cout => \C1|C5|Add0~15\);

-- Location: LCCOMB_X20_Y24_N28
\C1|C5|Count[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[7]~8_combout\ = (\C1|C5|Count[0]~2_combout\ & ((\C1|C5|Count\(7)) # ((\C1|C5|Add0~14_combout\ & \C1|C5|Count[7]~7_combout\)))) # (!\C1|C5|Count[0]~2_combout\ & (((\C1|C5|Add0~14_combout\ & \C1|C5|Count[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Count[0]~2_combout\,
	datab => \C1|C5|Count\(7),
	datac => \C1|C5|Add0~14_combout\,
	datad => \C1|C5|Count[7]~7_combout\,
	combout => \C1|C5|Count[7]~8_combout\);

-- Location: LCCOMB_X21_Y22_N18
\C1|C1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector0~0_combout\ = (\C1|C1|EtatPresent.Etat0~regout\ & \C0|C1|C1|output\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|EtatPresent.Etat0~regout\,
	datad => \C0|C1|C1|output\(7),
	combout => \C1|C1|Selector0~0_combout\);

-- Location: LCFF_X21_Y22_N19
\C1|C1|regValue[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector0~0_combout\,
	aclr => \rst~combout\,
	ena => \C1|C1|regValue[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|regValue\(7));

-- Location: LCFF_X21_Y23_N11
\C1|C1|output0[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|regValue\(7),
	sload => VCC,
	ena => \C1|C1|output0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output0\(7));

-- Location: LCCOMB_X21_Y23_N10
\C1|C2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add0~0_combout\ = \C1|C1|output0\(7) $ (((\C1|C1|output0\(6)) # ((\C1|C1|output0\(4) & \C1|C1|output0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output0\(6),
	datab => \C1|C1|output0\(4),
	datac => \C1|C1|output0\(7),
	datad => \C1|C1|output0\(5),
	combout => \C1|C2|Add0~0_combout\);

-- Location: LCCOMB_X21_Y20_N24
\C0|C1|C1|reg~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|C1|C1|reg~6_combout\ = (\C0|C1|C1|reg~2_combout\ & ((\C0|C1|C1|reg~5_combout\ & ((\Rx~combout\))) # (!\C0|C1|C1|reg~5_combout\ & (\C0|C1|C1|reg\(6))))) # (!\C0|C1|C1|reg~2_combout\ & (((\C0|C1|C1|reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|C1|C1|reg~2_combout\,
	datab => \C0|C1|C1|reg~5_combout\,
	datac => \C0|C1|C1|reg\(6),
	datad => \Rx~combout\,
	combout => \C0|C1|C1|reg~6_combout\);

-- Location: LCFF_X21_Y20_N25
\C0|C1|C1|reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|C1|C1|reg~6_combout\,
	aclr => \rst~combout\,
	sclr => \C0|C1|C1|ALT_INV_EtatPresent.Etat3~regout\,
	ena => \C0|C1|C1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|reg\(6));

-- Location: LCFF_X21_Y22_N21
\C0|C1|C1|output[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C0|C1|C1|reg\(6),
	sload => VCC,
	ena => \C0|C1|C1|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|C1|C1|output\(6));

-- Location: LCCOMB_X21_Y22_N0
\C1|C1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector1~0_combout\ = (\C1|C1|EtatPresent.Etat0~regout\ & \C0|C1|C1|output\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|EtatPresent.Etat0~regout\,
	datac => \C0|C1|C1|output\(6),
	combout => \C1|C1|Selector1~0_combout\);

-- Location: LCFF_X21_Y22_N1
\C1|C1|regValue[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector1~0_combout\,
	aclr => \rst~combout\,
	ena => \C1|C1|regValue[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|regValue\(6));

-- Location: LCFF_X21_Y23_N9
\C1|C1|output0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|regValue\(6),
	sload => VCC,
	ena => \C1|C1|output0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output0\(6));

-- Location: LCCOMB_X21_Y23_N8
\C1|C2|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add0~1_combout\ = \C1|C1|output0\(6) $ (((\C1|C1|output0\(4) & \C1|C1|output0\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|output0\(4),
	datac => \C1|C1|output0\(6),
	datad => \C1|C1|output0\(5),
	combout => \C1|C2|Add0~1_combout\);

-- Location: LCCOMB_X21_Y23_N18
\C1|C2|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add1~6_combout\ = \C1|C1|output0\(3) $ (\C1|C2|Add1~5\ $ (!\C1|C2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|output0\(3),
	datad => \C1|C2|Add0~0_combout\,
	cin => \C1|C2|Add1~5\,
	combout => \C1|C2|Add1~6_combout\);

-- Location: LCCOMB_X21_Y23_N28
\C1|C2|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add2~8_combout\ = \C1|C2|Add0~0_combout\ $ (\C1|C2|Add2~7\ $ (\C1|C2|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Add0~0_combout\,
	datad => \C1|C2|Add1~6_combout\,
	cin => \C1|C2|Add2~7\,
	combout => \C1|C2|Add2~8_combout\);

-- Location: LCCOMB_X20_Y23_N12
\C1|C2|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|Add3~12_combout\ = \C1|C2|Add0~0_combout\ $ (\C1|C2|Add3~11\ $ (\C1|C2|Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|Add0~0_combout\,
	datad => \C1|C2|Add2~8_combout\,
	cin => \C1|C2|Add3~11\,
	combout => \C1|C2|Add3~12_combout\);

-- Location: LCCOMB_X20_Y23_N28
\C1|C2|output[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C2|output[7]~12_combout\ = \C1|C2|Add0~0_combout\ $ (\C1|C2|output[6]~11\ $ (!\C1|C2|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|Add0~0_combout\,
	datad => \C1|C2|Add3~12_combout\,
	cin => \C1|C2|output[6]~11\,
	combout => \C1|C2|output[7]~12_combout\);

-- Location: LCCOMB_X20_Y23_N30
\C1|C5|Count[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[7]~11_combout\ = (\C1|C5|Count[7]~8_combout\) # ((\C1|C5|Count[7]~10_combout\ & \C1|C2|output[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Count[7]~10_combout\,
	datac => \C1|C5|Count[7]~8_combout\,
	datad => \C1|C2|output[7]~12_combout\,
	combout => \C1|C5|Count[7]~11_combout\);

-- Location: LCFF_X20_Y23_N31
\C1|C5|Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C5|Count[7]~11_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C5|Count\(7));

-- Location: LCCOMB_X20_Y24_N16
\C1|C5|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Add0~16_combout\ = \C1|C5|Count\(8) $ (\C1|C5|Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C5|Count\(8),
	cin => \C1|C5|Add0~15\,
	combout => \C1|C5|Add0~16_combout\);

-- Location: LCCOMB_X19_Y24_N12
\C1|C5|Count[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[8]~3_combout\ = (\C1|C5|Add0~16_combout\ & (((!\C1|C5|State.Init~regout\ & !\C1|C5|State.Pulse~regout\)) # (!\C1|C5|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|State.Init~regout\,
	datab => \C1|C5|State.Pulse~regout\,
	datac => \C1|C5|Add0~16_combout\,
	datad => \C1|C5|Equal0~2_combout\,
	combout => \C1|C5|Count[8]~3_combout\);

-- Location: LCCOMB_X19_Y24_N6
\C1|C5|Count[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[8]~4_combout\ = (\C1|C5|Count[0]~2_combout\ & (((\C1|C5|Count\(8))))) # (!\C1|C5|Count[0]~2_combout\ & (\C1|C5|State.Idle~regout\ & ((\C1|C5|Count[8]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|State.Idle~regout\,
	datab => \C1|C5|Count[0]~2_combout\,
	datac => \C1|C5|Count\(8),
	datad => \C1|C5|Count[8]~3_combout\,
	combout => \C1|C5|Count[8]~4_combout\);

-- Location: LCFF_X19_Y24_N7
\C1|C5|Count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C5|Count[8]~4_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C5|Count\(8));

-- Location: LCCOMB_X20_Y24_N24
\C1|C5|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Equal0~0_combout\ = (!\C1|C5|Count\(6) & (!\C1|C5|Count\(8) & (!\C1|C5|Count\(7) & !\C1|C5|Count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Count\(6),
	datab => \C1|C5|Count\(8),
	datac => \C1|C5|Count\(7),
	datad => \C1|C5|Count\(5),
	combout => \C1|C5|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y24_N4
\C1|C5|State~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|State~12_combout\ = (\C1|C0|Tick7us~regout\ & (\C1|C5|Equal0~1_combout\ & (!\C1|C5|Count\(2) & \C1|C5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Tick7us~regout\,
	datab => \C1|C5|Equal0~1_combout\,
	datac => \C1|C5|Count\(2),
	datad => \C1|C5|Equal0~0_combout\,
	combout => \C1|C5|State~12_combout\);

-- Location: LCCOMB_X18_Y24_N14
\C1|C5|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Selector11~0_combout\ = (\C1|C5|State.Idle~regout\ & (((\C1|C5|State.Init~regout\ & !\C1|C5|State~12_combout\)))) # (!\C1|C5|State.Idle~regout\ & (\C1|C1|dataValid0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|State.Idle~regout\,
	datab => \C1|C1|dataValid0~regout\,
	datac => \C1|C5|State.Init~regout\,
	datad => \C1|C5|State~12_combout\,
	combout => \C1|C5|Selector11~0_combout\);

-- Location: LCFF_X18_Y24_N15
\C1|C5|State.Init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C5|Selector11~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C5|State.Init~regout\);

-- Location: LCCOMB_X18_Y24_N0
\C1|C5|Count[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[0]~1_combout\ = (!\C1|C0|Tick7us~regout\ & ((\C1|C5|State.Pulse~regout\) # ((\C1|C5|State.Relax~regout\) # (\C1|C5|State.Init~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|State.Pulse~regout\,
	datab => \C1|C5|State.Relax~regout\,
	datac => \C1|C5|State.Init~regout\,
	datad => \C1|C0|Tick7us~regout\,
	combout => \C1|C5|Count[0]~1_combout\);

-- Location: LCCOMB_X19_Y24_N2
\C1|C5|Count[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[0]~2_combout\ = ((\C1|C5|Count[0]~1_combout\) # ((\C1|C5|State.Relax~regout\ & \C1|C5|Equal0~2_combout\))) # (!\C1|C5|Done~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Done~0_combout\,
	datab => \C1|C5|State.Relax~regout\,
	datac => \C1|C5|Count[0]~1_combout\,
	datad => \C1|C5|Equal0~2_combout\,
	combout => \C1|C5|Count[0]~2_combout\);

-- Location: LCCOMB_X19_Y24_N30
\C1|C5|Count[0]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Count[0]~22_combout\ = (\C1|C5|Count[0]~2_combout\ & (((\C1|C5|Count\(0))))) # (!\C1|C5|Count[0]~2_combout\ & (((\C1|C5|Count[0]~21_combout\)) # (!\C1|C5|State.Idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|State.Idle~regout\,
	datab => \C1|C5|Count[0]~21_combout\,
	datac => \C1|C5|Count\(0),
	datad => \C1|C5|Count[0]~2_combout\,
	combout => \C1|C5|Count[0]~22_combout\);

-- Location: LCFF_X19_Y24_N31
\C1|C5|Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C5|Count[0]~22_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C5|Count\(0));

-- Location: LCCOMB_X19_Y24_N8
\C1|C5|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Equal0~1_combout\ = (!\C1|C5|Count\(3) & (!\C1|C5|Count\(0) & (!\C1|C5|Count\(1) & !\C1|C5|Count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Count\(3),
	datab => \C1|C5|Count\(0),
	datac => \C1|C5|Count\(1),
	datad => \C1|C5|Count\(4),
	combout => \C1|C5|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y24_N10
\C1|C5|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Equal0~2_combout\ = (!\C1|C5|Count\(2) & (\C1|C5|Equal0~1_combout\ & \C1|C5|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Count\(2),
	datac => \C1|C5|Equal0~1_combout\,
	datad => \C1|C5|Equal0~0_combout\,
	combout => \C1|C5|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y24_N22
\C1|C5|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Selector13~0_combout\ = (\C1|C5|Equal0~2_combout\ & ((\C1|C0|Tick7us~regout\ & (\C1|C5|State.Pulse~regout\)) # (!\C1|C0|Tick7us~regout\ & ((\C1|C5|State.Relax~regout\))))) # (!\C1|C5|Equal0~2_combout\ & (((\C1|C5|State.Relax~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|State.Pulse~regout\,
	datab => \C1|C5|Equal0~2_combout\,
	datac => \C1|C5|State.Relax~regout\,
	datad => \C1|C0|Tick7us~regout\,
	combout => \C1|C5|Selector13~0_combout\);

-- Location: LCFF_X18_Y24_N23
\C1|C5|State.Relax\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C5|Selector13~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C5|State.Relax~regout\);

-- Location: LCCOMB_X18_Y24_N12
\C1|C5|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Selector10~0_combout\ = (\C1|C5|Done~0_combout\ & (((!\C1|C0|Tick7us~regout\) # (!\C1|C5|Equal0~2_combout\)) # (!\C1|C5|State.Relax~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Done~0_combout\,
	datab => \C1|C5|State.Relax~regout\,
	datac => \C1|C5|Equal0~2_combout\,
	datad => \C1|C0|Tick7us~regout\,
	combout => \C1|C5|Selector10~0_combout\);

-- Location: LCFF_X18_Y24_N13
\C1|C5|State.Idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C5|Selector10~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C5|State.Idle~regout\);

-- Location: LCCOMB_X18_Y24_N10
\C1|C5|Done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Done~0_combout\ = (\C1|C5|State.Idle~regout\) # (\C1|C1|dataValid0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|State.Idle~regout\,
	datad => \C1|C1|dataValid0~regout\,
	combout => \C1|C5|Done~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y24_N16
\C1|C5|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C5|Selector0~1_combout\ = (\C1|C5|Selector0~0_combout\ & ((\C1|C5|Q~regout\) # ((\C1|C5|State.Init~regout\ & \C1|C0|Tick7us~regout\)))) # (!\C1|C5|Selector0~0_combout\ & (\C1|C5|State.Init~regout\ & ((\C1|C0|Tick7us~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C5|Selector0~0_combout\,
	datab => \C1|C5|State.Init~regout\,
	datac => \C1|C5|Q~regout\,
	datad => \C1|C0|Tick7us~regout\,
	combout => \C1|C5|Selector0~1_combout\);

-- Location: LCFF_X18_Y24_N17
\C1|C5|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C5|Selector0~1_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C5|Q~regout\);

-- Location: LCCOMB_X25_Y21_N2
\C1|C6|Count[0]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[0]~22_combout\ = (\C1|C6|Count[0]~2_combout\ & (((\C1|C6|Count\(0))))) # (!\C1|C6|Count[0]~2_combout\ & ((\C1|C6|Count[0]~21_combout\) # ((!\C1|C6|State.Idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|Count[0]~21_combout\,
	datab => \C1|C6|State.Idle~regout\,
	datac => \C1|C6|Count\(0),
	datad => \C1|C6|Count[0]~2_combout\,
	combout => \C1|C6|Count[0]~22_combout\);

-- Location: LCFF_X25_Y21_N3
\C1|C6|Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C6|Count[0]~22_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C6|Count\(0));

-- Location: LCCOMB_X25_Y21_N6
\C1|C6|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Add0~2_combout\ = (\C1|C6|Count\(1) & (\C1|C6|Add0~1\ & VCC)) # (!\C1|C6|Count\(1) & (!\C1|C6|Add0~1\))
-- \C1|C6|Add0~3\ = CARRY((!\C1|C6|Count\(1) & !\C1|C6|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C6|Count\(1),
	datad => VCC,
	cin => \C1|C6|Add0~1\,
	combout => \C1|C6|Add0~2_combout\,
	cout => \C1|C6|Add0~3\);

-- Location: LCCOMB_X24_Y22_N12
\C1|C6|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Selector13~0_combout\ = (\C1|C6|Equal0~2_combout\ & ((\C1|C0|Tick7us~regout\ & (\C1|C6|State.Pulse~regout\)) # (!\C1|C0|Tick7us~regout\ & ((\C1|C6|State.Relax~regout\))))) # (!\C1|C6|Equal0~2_combout\ & (((\C1|C6|State.Relax~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|State.Pulse~regout\,
	datab => \C1|C6|Equal0~2_combout\,
	datac => \C1|C6|State.Relax~regout\,
	datad => \C1|C0|Tick7us~regout\,
	combout => \C1|C6|Selector13~0_combout\);

-- Location: LCFF_X24_Y22_N13
\C1|C6|State.Relax\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C6|Selector13~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C6|State.Relax~regout\);

-- Location: LCCOMB_X24_Y22_N14
\C1|C6|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Selector8~0_combout\ = (\C1|C0|Tick7us~regout\ & (!\C1|C6|Equal0~2_combout\ & ((\C1|C6|State.Init~regout\) # (\C1|C6|State.Relax~regout\)))) # (!\C1|C0|Tick7us~regout\ & ((\C1|C6|State.Init~regout\) # ((\C1|C6|State.Relax~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Tick7us~regout\,
	datab => \C1|C6|State.Init~regout\,
	datac => \C1|C6|Equal0~2_combout\,
	datad => \C1|C6|State.Relax~regout\,
	combout => \C1|C6|Selector8~0_combout\);

-- Location: LCCOMB_X24_Y22_N10
\C1|C6|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Selector12~0_combout\ = (\C1|C6|Equal0~2_combout\ & ((\C1|C0|Tick7us~regout\ & (\C1|C6|State.Init~regout\)) # (!\C1|C0|Tick7us~regout\ & ((\C1|C6|State.Pulse~regout\))))) # (!\C1|C6|Equal0~2_combout\ & (((\C1|C6|State.Pulse~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|Equal0~2_combout\,
	datab => \C1|C6|State.Init~regout\,
	datac => \C1|C6|State.Pulse~regout\,
	datad => \C1|C0|Tick7us~regout\,
	combout => \C1|C6|Selector12~0_combout\);

-- Location: LCFF_X24_Y22_N11
\C1|C6|State.Pulse\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C6|Selector12~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C6|State.Pulse~regout\);

-- Location: LCCOMB_X24_Y22_N8
\C1|C6|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Selector8~1_combout\ = (\C1|C0|Tick7us~regout\ & (\C1|C6|Add0~2_combout\ & ((\C1|C6|Selector8~0_combout\) # (\C1|C6|State.Pulse~regout\)))) # (!\C1|C0|Tick7us~regout\ & (((\C1|C6|Selector8~0_combout\) # (\C1|C6|State.Pulse~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Tick7us~regout\,
	datab => \C1|C6|Add0~2_combout\,
	datac => \C1|C6|Selector8~0_combout\,
	datad => \C1|C6|State.Pulse~regout\,
	combout => \C1|C6|Selector8~1_combout\);

-- Location: LCCOMB_X24_Y22_N22
\C1|C6|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Selector8~2_combout\ = (\C1|C6|Selector8~1_combout\ & ((\C1|C0|Tick7us~regout\) # ((\C1|C6|Count\(1))))) # (!\C1|C6|Selector8~1_combout\ & (((\C1|C6|Count\(1) & !\C1|C6|Done~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Tick7us~regout\,
	datab => \C1|C6|Selector8~1_combout\,
	datac => \C1|C6|Count\(1),
	datad => \C1|C6|Done~0_combout\,
	combout => \C1|C6|Selector8~2_combout\);

-- Location: LCFF_X24_Y22_N23
\C1|C6|Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C6|Selector8~2_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C6|Count\(1));

-- Location: LCCOMB_X25_Y21_N8
\C1|C6|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Add0~4_combout\ = (\C1|C6|Count\(2) & ((GND) # (!\C1|C6|Add0~3\))) # (!\C1|C6|Count\(2) & (\C1|C6|Add0~3\ $ (GND)))
-- \C1|C6|Add0~5\ = CARRY((\C1|C6|Count\(2)) # (!\C1|C6|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C6|Count\(2),
	datad => VCC,
	cin => \C1|C6|Add0~3\,
	combout => \C1|C6|Add0~4_combout\,
	cout => \C1|C6|Add0~5\);

-- Location: LCCOMB_X25_Y21_N10
\C1|C6|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Add0~6_combout\ = (\C1|C6|Count\(3) & (\C1|C6|Add0~5\ & VCC)) # (!\C1|C6|Count\(3) & (!\C1|C6|Add0~5\))
-- \C1|C6|Add0~7\ = CARRY((!\C1|C6|Count\(3) & !\C1|C6|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C6|Count\(3),
	datad => VCC,
	cin => \C1|C6|Add0~5\,
	combout => \C1|C6|Add0~6_combout\,
	cout => \C1|C6|Add0~7\);

-- Location: LCCOMB_X25_Y21_N28
\C1|C6|Count[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[3]~19_combout\ = (\C1|C6|Count[7]~9_combout\ & (\C1|C1|output1\(1))) # (!\C1|C6|Count[7]~9_combout\ & (((\C1|C6|State.Idle~regout\ & \C1|C6|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output1\(1),
	datab => \C1|C6|Count[7]~9_combout\,
	datac => \C1|C6|State.Idle~regout\,
	datad => \C1|C6|Add0~6_combout\,
	combout => \C1|C6|Count[3]~19_combout\);

-- Location: LCCOMB_X24_Y21_N2
\C1|C6|Count[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[7]~6_combout\ = (!\C1|C6|Count[0]~1_combout\ & (\C1|C6|Done~0_combout\ & ((\C1|C6|Count[7]~5_combout\) # (!\C1|C6|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|Count[7]~5_combout\,
	datab => \C1|C6|Count[0]~1_combout\,
	datac => \C1|C6|Done~0_combout\,
	datad => \C1|C6|Equal0~2_combout\,
	combout => \C1|C6|Count[7]~6_combout\);

-- Location: LCCOMB_X25_Y21_N22
\C1|C6|Count[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[3]~20_combout\ = (\C1|C6|Count[0]~2_combout\ & ((\C1|C6|Count\(3)) # ((\C1|C6|Count[3]~19_combout\ & \C1|C6|Count[7]~6_combout\)))) # (!\C1|C6|Count[0]~2_combout\ & (\C1|C6|Count[3]~19_combout\ & ((\C1|C6|Count[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|Count[0]~2_combout\,
	datab => \C1|C6|Count[3]~19_combout\,
	datac => \C1|C6|Count\(3),
	datad => \C1|C6|Count[7]~6_combout\,
	combout => \C1|C6|Count[3]~20_combout\);

-- Location: LCFF_X25_Y21_N23
\C1|C6|Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C6|Count[3]~20_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C6|Count\(3));

-- Location: LCCOMB_X25_Y21_N12
\C1|C6|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Add0~8_combout\ = (\C1|C6|Count\(4) & ((GND) # (!\C1|C6|Add0~7\))) # (!\C1|C6|Count\(4) & (\C1|C6|Add0~7\ $ (GND)))
-- \C1|C6|Add0~9\ = CARRY((\C1|C6|Count\(4)) # (!\C1|C6|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C6|Count\(4),
	datad => VCC,
	cin => \C1|C6|Add0~7\,
	combout => \C1|C6|Add0~8_combout\,
	cout => \C1|C6|Add0~9\);

-- Location: LCCOMB_X24_Y21_N0
\C1|C6|Count[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[4]~17_combout\ = (\C1|C6|Count[7]~7_combout\ & ((\C1|C6|Add0~8_combout\) # ((\C1|C6|Count[0]~2_combout\ & \C1|C6|Count\(4))))) # (!\C1|C6|Count[7]~7_combout\ & (\C1|C6|Count[0]~2_combout\ & ((\C1|C6|Count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|Count[7]~7_combout\,
	datab => \C1|C6|Count[0]~2_combout\,
	datac => \C1|C6|Add0~8_combout\,
	datad => \C1|C6|Count\(4),
	combout => \C1|C6|Count[4]~17_combout\);

-- Location: LCCOMB_X22_Y21_N18
\C1|C1|output1[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|output1[4]~feeder_combout\ = \C1|C1|regValue\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|regValue\(4),
	combout => \C1|C1|output1[4]~feeder_combout\);

-- Location: LCCOMB_X22_Y22_N24
\C1|C1|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Equal2~0_combout\ = (!\C1|C1|regSelector\(1) & (\C1|C1|Equal1~0_combout\ & (!\C1|C1|regSelector\(3) & !\C1|C1|regSelector\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|regSelector\(1),
	datab => \C1|C1|Equal1~0_combout\,
	datac => \C1|C1|regSelector\(3),
	datad => \C1|C1|regSelector\(2),
	combout => \C1|C1|Equal2~0_combout\);

-- Location: LCCOMB_X22_Y22_N16
\C1|C1|output1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|output1[0]~0_combout\ = (\C1|C1|regSelector\(0) & (\C1|C1|EtatPresent.Etat6~regout\ & (\C1|C1|Equal2~0_combout\ & !\rst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|regSelector\(0),
	datab => \C1|C1|EtatPresent.Etat6~regout\,
	datac => \C1|C1|Equal2~0_combout\,
	datad => \rst~combout\,
	combout => \C1|C1|output1[0]~0_combout\);

-- Location: LCFF_X22_Y21_N19
\C1|C1|output1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|output1[4]~feeder_combout\,
	ena => \C1|C1|output1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output1\(4));

-- Location: LCFF_X22_Y21_N17
\C1|C1|output1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|regValue\(3),
	sload => VCC,
	ena => \C1|C1|output1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output1\(3));

-- Location: LCFF_X22_Y21_N1
\C1|C1|output1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|regValue\(2),
	sload => VCC,
	ena => \C1|C1|output1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output1\(2));

-- Location: LCCOMB_X22_Y21_N12
\C1|C1|output1[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|output1[0]~feeder_combout\ = \C1|C1|regValue\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|regValue\(0),
	combout => \C1|C1|output1[0]~feeder_combout\);

-- Location: LCFF_X22_Y21_N13
\C1|C1|output1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|output1[0]~feeder_combout\,
	ena => \C1|C1|output1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output1\(0));

-- Location: LCCOMB_X23_Y21_N18
\C1|C3|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add3~0_combout\ = (\C1|C1|output1\(1) & (\C1|C1|output1\(0) $ (VCC))) # (!\C1|C1|output1\(1) & (\C1|C1|output1\(0) & VCC))
-- \C1|C3|Add3~1\ = CARRY((\C1|C1|output1\(1) & \C1|C1|output1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output1\(1),
	datab => \C1|C1|output1\(0),
	datad => VCC,
	combout => \C1|C3|Add3~0_combout\,
	cout => \C1|C3|Add3~1\);

-- Location: LCCOMB_X23_Y21_N20
\C1|C3|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add3~2_combout\ = (\C1|C1|output1\(1) & ((\C1|C1|output1\(2) & (\C1|C3|Add3~1\ & VCC)) # (!\C1|C1|output1\(2) & (!\C1|C3|Add3~1\)))) # (!\C1|C1|output1\(1) & ((\C1|C1|output1\(2) & (!\C1|C3|Add3~1\)) # (!\C1|C1|output1\(2) & ((\C1|C3|Add3~1\) # 
-- (GND)))))
-- \C1|C3|Add3~3\ = CARRY((\C1|C1|output1\(1) & (!\C1|C1|output1\(2) & !\C1|C3|Add3~1\)) # (!\C1|C1|output1\(1) & ((!\C1|C3|Add3~1\) # (!\C1|C1|output1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output1\(1),
	datab => \C1|C1|output1\(2),
	datad => VCC,
	cin => \C1|C3|Add3~1\,
	combout => \C1|C3|Add3~2_combout\,
	cout => \C1|C3|Add3~3\);

-- Location: LCCOMB_X23_Y21_N0
\C1|C3|Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add4~1_cout\ = CARRY(\C1|C1|output1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|output1\(0),
	datad => VCC,
	cout => \C1|C3|Add4~1_cout\);

-- Location: LCCOMB_X23_Y21_N2
\C1|C3|output[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|output[1]~1_cout\ = CARRY((\C1|C1|output1\(1) & (!\C1|C3|Add3~0_combout\ & !\C1|C3|Add4~1_cout\)) # (!\C1|C1|output1\(1) & ((!\C1|C3|Add4~1_cout\) # (!\C1|C3|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output1\(1),
	datab => \C1|C3|Add3~0_combout\,
	datad => VCC,
	cin => \C1|C3|Add4~1_cout\,
	cout => \C1|C3|output[1]~1_cout\);

-- Location: LCCOMB_X23_Y21_N4
\C1|C3|output[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|output[2]~3_cout\ = CARRY((\C1|C1|output1\(2) & ((\C1|C3|Add3~2_combout\) # (!\C1|C3|output[1]~1_cout\))) # (!\C1|C1|output1\(2) & (\C1|C3|Add3~2_combout\ & !\C1|C3|output[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output1\(2),
	datab => \C1|C3|Add3~2_combout\,
	datad => VCC,
	cin => \C1|C3|output[1]~1_cout\,
	cout => \C1|C3|output[2]~3_cout\);

-- Location: LCCOMB_X23_Y21_N6
\C1|C3|output[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|output[3]~5_cout\ = CARRY((\C1|C3|Add3~4_combout\ & (!\C1|C1|output1\(3) & !\C1|C3|output[2]~3_cout\)) # (!\C1|C3|Add3~4_combout\ & ((!\C1|C3|output[2]~3_cout\) # (!\C1|C1|output1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C3|Add3~4_combout\,
	datab => \C1|C1|output1\(3),
	datad => VCC,
	cin => \C1|C3|output[2]~3_cout\,
	cout => \C1|C3|output[3]~5_cout\);

-- Location: LCCOMB_X23_Y21_N8
\C1|C3|output[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|output[4]~6_combout\ = ((\C1|C3|Add3~6_combout\ $ (\C1|C1|output1\(4) $ (\C1|C3|output[3]~5_cout\)))) # (GND)
-- \C1|C3|output[4]~7\ = CARRY((\C1|C3|Add3~6_combout\ & ((!\C1|C3|output[3]~5_cout\) # (!\C1|C1|output1\(4)))) # (!\C1|C3|Add3~6_combout\ & (!\C1|C1|output1\(4) & !\C1|C3|output[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C3|Add3~6_combout\,
	datab => \C1|C1|output1\(4),
	datad => VCC,
	cin => \C1|C3|output[3]~5_cout\,
	combout => \C1|C3|output[4]~6_combout\,
	cout => \C1|C3|output[4]~7\);

-- Location: LCCOMB_X24_Y21_N4
\C1|C6|Count[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[4]~18_combout\ = (\C1|C6|Count[4]~17_combout\) # ((\C1|C6|Count[7]~10_combout\ & \C1|C3|output[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|Count[7]~10_combout\,
	datab => \C1|C6|Count[4]~17_combout\,
	datad => \C1|C3|output[4]~6_combout\,
	combout => \C1|C6|Count[4]~18_combout\);

-- Location: LCFF_X24_Y21_N5
\C1|C6|Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C6|Count[4]~18_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C6|Count\(4));

-- Location: LCCOMB_X25_Y21_N24
\C1|C6|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Equal0~1_combout\ = (!\C1|C6|Count\(3) & (!\C1|C6|Count\(4) & (!\C1|C6|Count\(1) & !\C1|C6|Count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|Count\(3),
	datab => \C1|C6|Count\(4),
	datac => \C1|C6|Count\(1),
	datad => \C1|C6|Count\(0),
	combout => \C1|C6|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y21_N16
\C1|C6|Count[7]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[7]~9_combout\ = (\C1|C6|State.Init~regout\ & (\C1|C6|Equal0~0_combout\ & (!\C1|C6|Count\(2) & \C1|C6|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|State.Init~regout\,
	datab => \C1|C6|Equal0~0_combout\,
	datac => \C1|C6|Count\(2),
	datad => \C1|C6|Equal0~1_combout\,
	combout => \C1|C6|Count[7]~9_combout\);

-- Location: LCCOMB_X25_Y21_N26
\C1|C6|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Selector7~0_combout\ = (\C1|C6|Add0~4_combout\) # (!\C1|C6|State.Idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C6|State.Idle~regout\,
	datac => \C1|C6|Add0~4_combout\,
	combout => \C1|C6|Selector7~0_combout\);

-- Location: LCCOMB_X25_Y21_N0
\C1|C6|Count[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[2]~0_combout\ = (\C1|C6|Count[7]~9_combout\ & (\C1|C1|output1\(0))) # (!\C1|C6|Count[7]~9_combout\ & ((\C1|C6|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output1\(0),
	datab => \C1|C6|Count[7]~9_combout\,
	datad => \C1|C6|Selector7~0_combout\,
	combout => \C1|C6|Count[2]~0_combout\);

-- Location: LCFF_X25_Y21_N1
\C1|C6|Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C6|Count[2]~0_combout\,
	sdata => \C1|C6|Count\(2),
	aclr => \rst~combout\,
	sload => \C1|C6|Count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C6|Count\(2));

-- Location: LCCOMB_X24_Y22_N4
\C1|C6|State~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|State~12_combout\ = (\C1|C0|Tick7us~regout\ & (!\C1|C6|Count\(2) & (\C1|C6|Equal0~0_combout\ & \C1|C6|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Tick7us~regout\,
	datab => \C1|C6|Count\(2),
	datac => \C1|C6|Equal0~0_combout\,
	datad => \C1|C6|Equal0~1_combout\,
	combout => \C1|C6|State~12_combout\);

-- Location: LCCOMB_X23_Y22_N16
\C1|C1|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector9~0_combout\ = (\C1|C1|EtatPresent.Etat6~regout\ & ((\C1|C1|dataValid1~regout\) # ((\C1|C1|regSelector\(0) & \C1|C1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|regSelector\(0),
	datab => \C1|C1|Equal2~0_combout\,
	datac => \C1|C1|dataValid1~regout\,
	datad => \C1|C1|EtatPresent.Etat6~regout\,
	combout => \C1|C1|Selector9~0_combout\);

-- Location: LCCOMB_X22_Y22_N20
\C1|C1|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector9~1_combout\ = (\C1|C1|EtatPresent.Etat6~regout\) # (!\C1|C1|EtatPresent.Etat0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|EtatPresent.Etat6~regout\,
	datad => \C1|C1|EtatPresent.Etat0~regout\,
	combout => \C1|C1|Selector9~1_combout\);

-- Location: LCFF_X23_Y22_N17
\C1|C1|dataValid1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector9~0_combout\,
	aclr => \rst~combout\,
	ena => \C1|C1|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|dataValid1~regout\);

-- Location: LCCOMB_X24_Y22_N28
\C1|C6|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Selector11~0_combout\ = (\C1|C6|State.Idle~regout\ & (!\C1|C6|State~12_combout\ & (\C1|C6|State.Init~regout\))) # (!\C1|C6|State.Idle~regout\ & (((\C1|C1|dataValid1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|State.Idle~regout\,
	datab => \C1|C6|State~12_combout\,
	datac => \C1|C6|State.Init~regout\,
	datad => \C1|C1|dataValid1~regout\,
	combout => \C1|C6|Selector11~0_combout\);

-- Location: LCFF_X24_Y22_N29
\C1|C6|State.Init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C6|Selector11~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C6|State.Init~regout\);

-- Location: LCCOMB_X24_Y22_N24
\C1|C6|Count[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[0]~1_combout\ = (!\C1|C0|Tick7us~regout\ & ((\C1|C6|State.Pulse~regout\) # ((\C1|C6|State.Init~regout\) # (\C1|C6|State.Relax~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|State.Pulse~regout\,
	datab => \C1|C6|State.Init~regout\,
	datac => \C1|C6|State.Relax~regout\,
	datad => \C1|C0|Tick7us~regout\,
	combout => \C1|C6|Count[0]~1_combout\);

-- Location: LCCOMB_X24_Y21_N8
\C1|C6|Count[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[0]~2_combout\ = (\C1|C6|Count[0]~1_combout\) # (((\C1|C6|State.Relax~regout\ & \C1|C6|Equal0~2_combout\)) # (!\C1|C6|Done~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|State.Relax~regout\,
	datab => \C1|C6|Count[0]~1_combout\,
	datac => \C1|C6|Done~0_combout\,
	datad => \C1|C6|Equal0~2_combout\,
	combout => \C1|C6|Count[0]~2_combout\);

-- Location: LCFF_X22_Y21_N15
\C1|C1|output1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|regValue\(7),
	sload => VCC,
	ena => \C1|C1|output1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output1\(7));

-- Location: LCFF_X22_Y21_N9
\C1|C1|output1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|regValue\(5),
	sload => VCC,
	ena => \C1|C1|output1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output1\(5));

-- Location: LCCOMB_X22_Y21_N14
\C1|C3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add0~0_combout\ = \C1|C1|output1\(7) $ (((\C1|C1|output1\(6)) # ((\C1|C1|output1\(4) & \C1|C1|output1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output1\(6),
	datab => \C1|C1|output1\(4),
	datac => \C1|C1|output1\(7),
	datad => \C1|C1|output1\(5),
	combout => \C1|C3|Add0~0_combout\);

-- Location: LCFF_X22_Y21_N11
\C1|C1|output1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|regValue\(1),
	sload => VCC,
	ena => \C1|C1|output1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output1\(1));

-- Location: LCCOMB_X22_Y21_N2
\C1|C3|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add1~2_combout\ = (\C1|C3|Add0~2_combout\ & ((\C1|C1|output1\(1) & (\C1|C3|Add1~1\ & VCC)) # (!\C1|C1|output1\(1) & (!\C1|C3|Add1~1\)))) # (!\C1|C3|Add0~2_combout\ & ((\C1|C1|output1\(1) & (!\C1|C3|Add1~1\)) # (!\C1|C1|output1\(1) & 
-- ((\C1|C3|Add1~1\) # (GND)))))
-- \C1|C3|Add1~3\ = CARRY((\C1|C3|Add0~2_combout\ & (!\C1|C1|output1\(1) & !\C1|C3|Add1~1\)) # (!\C1|C3|Add0~2_combout\ & ((!\C1|C3|Add1~1\) # (!\C1|C1|output1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C3|Add0~2_combout\,
	datab => \C1|C1|output1\(1),
	datad => VCC,
	cin => \C1|C3|Add1~1\,
	combout => \C1|C3|Add1~2_combout\,
	cout => \C1|C3|Add1~3\);

-- Location: LCCOMB_X22_Y21_N22
\C1|C3|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add2~1_cout\ = CARRY(\C1|C1|output1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output1\(3),
	datad => VCC,
	cout => \C1|C3|Add2~1_cout\);

-- Location: LCCOMB_X22_Y21_N26
\C1|C3|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add2~4_combout\ = ((\C1|C3|Add0~2_combout\ $ (\C1|C3|Add1~2_combout\ $ (!\C1|C3|Add2~3\)))) # (GND)
-- \C1|C3|Add2~5\ = CARRY((\C1|C3|Add0~2_combout\ & ((\C1|C3|Add1~2_combout\) # (!\C1|C3|Add2~3\))) # (!\C1|C3|Add0~2_combout\ & (\C1|C3|Add1~2_combout\ & !\C1|C3|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C3|Add0~2_combout\,
	datab => \C1|C3|Add1~2_combout\,
	datad => VCC,
	cin => \C1|C3|Add2~3\,
	combout => \C1|C3|Add2~4_combout\,
	cout => \C1|C3|Add2~5\);

-- Location: LCCOMB_X23_Y21_N26
\C1|C3|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add3~8_combout\ = ((\C1|C3|Add0~2_combout\ $ (\C1|C3|Add2~4_combout\ $ (!\C1|C3|Add3~7\)))) # (GND)
-- \C1|C3|Add3~9\ = CARRY((\C1|C3|Add0~2_combout\ & ((\C1|C3|Add2~4_combout\) # (!\C1|C3|Add3~7\))) # (!\C1|C3|Add0~2_combout\ & (\C1|C3|Add2~4_combout\ & !\C1|C3|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C3|Add0~2_combout\,
	datab => \C1|C3|Add2~4_combout\,
	datad => VCC,
	cin => \C1|C3|Add3~7\,
	combout => \C1|C3|Add3~8_combout\,
	cout => \C1|C3|Add3~9\);

-- Location: LCCOMB_X23_Y21_N28
\C1|C3|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add3~10_combout\ = (\C1|C3|Add0~1_combout\ & ((\C1|C3|Add2~6_combout\ & (!\C1|C3|Add3~9\)) # (!\C1|C3|Add2~6_combout\ & ((\C1|C3|Add3~9\) # (GND))))) # (!\C1|C3|Add0~1_combout\ & ((\C1|C3|Add2~6_combout\ & (\C1|C3|Add3~9\ & VCC)) # 
-- (!\C1|C3|Add2~6_combout\ & (!\C1|C3|Add3~9\))))
-- \C1|C3|Add3~11\ = CARRY((\C1|C3|Add0~1_combout\ & ((!\C1|C3|Add3~9\) # (!\C1|C3|Add2~6_combout\))) # (!\C1|C3|Add0~1_combout\ & (!\C1|C3|Add2~6_combout\ & !\C1|C3|Add3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C3|Add0~1_combout\,
	datab => \C1|C3|Add2~6_combout\,
	datad => VCC,
	cin => \C1|C3|Add3~9\,
	combout => \C1|C3|Add3~10_combout\,
	cout => \C1|C3|Add3~11\);

-- Location: LCCOMB_X23_Y21_N30
\C1|C3|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|Add3~12_combout\ = \C1|C3|Add2~8_combout\ $ (\C1|C3|Add3~11\ $ (\C1|C3|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C3|Add2~8_combout\,
	datad => \C1|C3|Add0~0_combout\,
	cin => \C1|C3|Add3~11\,
	combout => \C1|C3|Add3~12_combout\);

-- Location: LCCOMB_X23_Y21_N12
\C1|C3|output[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|output[6]~10_combout\ = ((\C1|C3|Add0~1_combout\ $ (\C1|C3|Add3~10_combout\ $ (\C1|C3|output[5]~9\)))) # (GND)
-- \C1|C3|output[6]~11\ = CARRY((\C1|C3|Add0~1_combout\ & (\C1|C3|Add3~10_combout\ & !\C1|C3|output[5]~9\)) # (!\C1|C3|Add0~1_combout\ & ((\C1|C3|Add3~10_combout\) # (!\C1|C3|output[5]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C3|Add0~1_combout\,
	datab => \C1|C3|Add3~10_combout\,
	datad => VCC,
	cin => \C1|C3|output[5]~9\,
	combout => \C1|C3|output[6]~10_combout\,
	cout => \C1|C3|output[6]~11\);

-- Location: LCCOMB_X23_Y21_N14
\C1|C3|output[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C3|output[7]~12_combout\ = \C1|C3|Add0~0_combout\ $ (\C1|C3|output[6]~11\ $ (!\C1|C3|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C3|Add0~0_combout\,
	datad => \C1|C3|Add3~12_combout\,
	cin => \C1|C3|output[6]~11\,
	combout => \C1|C3|output[7]~12_combout\);

-- Location: LCCOMB_X25_Y21_N16
\C1|C6|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Add0~12_combout\ = (\C1|C6|Count\(6) & ((GND) # (!\C1|C6|Add0~11\))) # (!\C1|C6|Count\(6) & (\C1|C6|Add0~11\ $ (GND)))
-- \C1|C6|Add0~13\ = CARRY((\C1|C6|Count\(6)) # (!\C1|C6|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|Count\(6),
	datad => VCC,
	cin => \C1|C6|Add0~11\,
	combout => \C1|C6|Add0~12_combout\,
	cout => \C1|C6|Add0~13\);

-- Location: LCCOMB_X25_Y21_N18
\C1|C6|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Add0~14_combout\ = (\C1|C6|Count\(7) & (\C1|C6|Add0~13\ & VCC)) # (!\C1|C6|Count\(7) & (!\C1|C6|Add0~13\))
-- \C1|C6|Add0~15\ = CARRY((!\C1|C6|Count\(7) & !\C1|C6|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C6|Count\(7),
	datad => VCC,
	cin => \C1|C6|Add0~13\,
	combout => \C1|C6|Add0~14_combout\,
	cout => \C1|C6|Add0~15\);

-- Location: LCCOMB_X24_Y21_N30
\C1|C6|Count[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[7]~8_combout\ = (\C1|C6|Count[7]~7_combout\ & ((\C1|C6|Add0~14_combout\) # ((\C1|C6|Count\(7) & \C1|C6|Count[0]~2_combout\)))) # (!\C1|C6|Count[7]~7_combout\ & (\C1|C6|Count\(7) & (\C1|C6|Count[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|Count[7]~7_combout\,
	datab => \C1|C6|Count\(7),
	datac => \C1|C6|Count[0]~2_combout\,
	datad => \C1|C6|Add0~14_combout\,
	combout => \C1|C6|Count[7]~8_combout\);

-- Location: LCCOMB_X23_Y21_N16
\C1|C6|Count[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[7]~11_combout\ = (\C1|C6|Count[7]~8_combout\) # ((\C1|C6|Count[7]~10_combout\ & \C1|C3|output[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|Count[7]~10_combout\,
	datac => \C1|C3|output[7]~12_combout\,
	datad => \C1|C6|Count[7]~8_combout\,
	combout => \C1|C6|Count[7]~11_combout\);

-- Location: LCFF_X23_Y21_N17
\C1|C6|Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C6|Count[7]~11_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C6|Count\(7));

-- Location: LCCOMB_X25_Y21_N20
\C1|C6|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Add0~16_combout\ = \C1|C6|Add0~15\ $ (\C1|C6|Count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|C6|Count\(8),
	cin => \C1|C6|Add0~15\,
	combout => \C1|C6|Add0~16_combout\);

-- Location: LCCOMB_X24_Y22_N2
\C1|C6|Count[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[8]~3_combout\ = (\C1|C6|Add0~16_combout\ & (((!\C1|C6|State.Pulse~regout\ & !\C1|C6|State.Init~regout\)) # (!\C1|C6|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|State.Pulse~regout\,
	datab => \C1|C6|Add0~16_combout\,
	datac => \C1|C6|Equal0~2_combout\,
	datad => \C1|C6|State.Init~regout\,
	combout => \C1|C6|Count[8]~3_combout\);

-- Location: LCCOMB_X24_Y21_N28
\C1|C6|Count[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[8]~4_combout\ = (\C1|C6|Count[0]~2_combout\ & (((\C1|C6|Count\(8))))) # (!\C1|C6|Count[0]~2_combout\ & (\C1|C6|State.Idle~regout\ & ((\C1|C6|Count[8]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|State.Idle~regout\,
	datab => \C1|C6|Count[0]~2_combout\,
	datac => \C1|C6|Count\(8),
	datad => \C1|C6|Count[8]~3_combout\,
	combout => \C1|C6|Count[8]~4_combout\);

-- Location: LCFF_X24_Y21_N29
\C1|C6|Count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C6|Count[8]~4_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C6|Count\(8));

-- Location: LCCOMB_X25_Y21_N30
\C1|C6|Count[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[6]~13_combout\ = (\C1|C6|Count[7]~6_combout\ & (!\C1|C6|Count[7]~9_combout\ & ((\C1|C6|Add0~12_combout\) # (!\C1|C6|State.Idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|Count[7]~6_combout\,
	datab => \C1|C6|State.Idle~regout\,
	datac => \C1|C6|Add0~12_combout\,
	datad => \C1|C6|Count[7]~9_combout\,
	combout => \C1|C6|Count[6]~13_combout\);

-- Location: LCCOMB_X24_Y21_N24
\C1|C6|Count[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[6]~12_combout\ = (\C1|C6|Count[0]~2_combout\ & \C1|C6|Count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C6|Count[0]~2_combout\,
	datac => \C1|C6|Count\(6),
	combout => \C1|C6|Count[6]~12_combout\);

-- Location: LCCOMB_X24_Y21_N14
\C1|C6|Count[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Count[6]~14_combout\ = (\C1|C6|Count[6]~13_combout\) # ((\C1|C6|Count[6]~12_combout\) # ((\C1|C6|Count[7]~10_combout\ & \C1|C3|output[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|Count[7]~10_combout\,
	datab => \C1|C6|Count[6]~13_combout\,
	datac => \C1|C6|Count[6]~12_combout\,
	datad => \C1|C3|output[6]~10_combout\,
	combout => \C1|C6|Count[6]~14_combout\);

-- Location: LCFF_X24_Y21_N15
\C1|C6|Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C6|Count[6]~14_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C6|Count\(6));

-- Location: LCCOMB_X24_Y21_N26
\C1|C6|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Equal0~0_combout\ = (!\C1|C6|Count\(5) & (!\C1|C6|Count\(8) & (!\C1|C6|Count\(6) & !\C1|C6|Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|Count\(5),
	datab => \C1|C6|Count\(8),
	datac => \C1|C6|Count\(6),
	datad => \C1|C6|Count\(7),
	combout => \C1|C6|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y21_N18
\C1|C6|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Equal0~2_combout\ = (\C1|C6|Equal0~0_combout\ & (!\C1|C6|Count\(2) & \C1|C6|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C6|Equal0~0_combout\,
	datac => \C1|C6|Count\(2),
	datad => \C1|C6|Equal0~1_combout\,
	combout => \C1|C6|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y22_N20
\C1|C6|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Selector10~0_combout\ = (\C1|C6|Done~0_combout\ & (((!\C1|C0|Tick7us~regout\) # (!\C1|C6|Equal0~2_combout\)) # (!\C1|C6|State.Relax~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|State.Relax~regout\,
	datab => \C1|C6|Done~0_combout\,
	datac => \C1|C6|Equal0~2_combout\,
	datad => \C1|C0|Tick7us~regout\,
	combout => \C1|C6|Selector10~0_combout\);

-- Location: LCFF_X24_Y22_N21
\C1|C6|State.Idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C6|Selector10~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C6|State.Idle~regout\);

-- Location: LCCOMB_X24_Y22_N18
\C1|C6|Done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Done~0_combout\ = (\C1|C6|State.Idle~regout\) # (\C1|C1|dataValid1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C6|State.Idle~regout\,
	datad => \C1|C1|dataValid1~regout\,
	combout => \C1|C6|Done~0_combout\);

-- Location: LCCOMB_X24_Y22_N30
\C1|C6|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Selector0~0_combout\ = (\C1|C6|State.Relax~regout\) # ((\C1|C6|State.Init~regout\) # ((!\C1|C6|State~12_combout\ & \C1|C6|State.Pulse~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C6|State.Relax~regout\,
	datab => \C1|C6|State.Init~regout\,
	datac => \C1|C6|State~12_combout\,
	datad => \C1|C6|State.Pulse~regout\,
	combout => \C1|C6|Selector0~0_combout\);

-- Location: LCCOMB_X24_Y22_N0
\C1|C6|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C6|Selector0~1_combout\ = (\C1|C0|Tick7us~regout\ & ((\C1|C6|State.Init~regout\) # ((\C1|C6|Selector0~0_combout\ & \C1|C6|Q~regout\)))) # (!\C1|C0|Tick7us~regout\ & (\C1|C6|Selector0~0_combout\ & (\C1|C6|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Tick7us~regout\,
	datab => \C1|C6|Selector0~0_combout\,
	datac => \C1|C6|Q~regout\,
	datad => \C1|C6|State.Init~regout\,
	combout => \C1|C6|Selector0~1_combout\);

-- Location: LCFF_X24_Y22_N1
\C1|C6|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C6|Selector0~1_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C6|Q~regout\);

-- Location: LCCOMB_X23_Y24_N12
\C1|C1|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|Selector10~0_combout\ = (\C1|C1|EtatPresent.Etat6~regout\ & ((\C1|C1|dataValid2~regout\) # (!\C1|C1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Equal2~0_combout\,
	datac => \C1|C1|dataValid2~regout\,
	datad => \C1|C1|EtatPresent.Etat6~regout\,
	combout => \C1|C1|Selector10~0_combout\);

-- Location: LCFF_X23_Y24_N13
\C1|C1|dataValid2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|Selector10~0_combout\,
	aclr => \rst~combout\,
	ena => \C1|C1|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|dataValid2~regout\);

-- Location: LCCOMB_X27_Y24_N26
\C1|C7|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Selector11~0_combout\ = (\C1|C7|State.Idle~regout\ & (!\C1|C7|State~12_combout\ & (\C1|C7|State.Init~regout\))) # (!\C1|C7|State.Idle~regout\ & (((\C1|C1|dataValid2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|State~12_combout\,
	datab => \C1|C7|State.Idle~regout\,
	datac => \C1|C7|State.Init~regout\,
	datad => \C1|C1|dataValid2~regout\,
	combout => \C1|C7|Selector11~0_combout\);

-- Location: LCFF_X27_Y24_N27
\C1|C7|State.Init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C7|Selector11~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C7|State.Init~regout\);

-- Location: LCCOMB_X25_Y24_N24
\C1|C7|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Selector12~0_combout\ = (\C1|C7|Equal0~2_combout\ & ((\C1|C0|Tick7us~regout\ & ((\C1|C7|State.Init~regout\))) # (!\C1|C0|Tick7us~regout\ & (\C1|C7|State.Pulse~regout\)))) # (!\C1|C7|Equal0~2_combout\ & (((\C1|C7|State.Pulse~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Equal0~2_combout\,
	datab => \C1|C0|Tick7us~regout\,
	datac => \C1|C7|State.Pulse~regout\,
	datad => \C1|C7|State.Init~regout\,
	combout => \C1|C7|Selector12~0_combout\);

-- Location: LCFF_X25_Y24_N25
\C1|C7|State.Pulse\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C7|Selector12~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C7|State.Pulse~regout\);

-- Location: LCCOMB_X25_Y24_N0
\C1|C7|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Selector13~0_combout\ = (\C1|C0|Tick7us~regout\ & ((\C1|C7|Equal0~2_combout\ & (\C1|C7|State.Pulse~regout\)) # (!\C1|C7|Equal0~2_combout\ & ((\C1|C7|State.Relax~regout\))))) # (!\C1|C0|Tick7us~regout\ & (((\C1|C7|State.Relax~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|State.Pulse~regout\,
	datab => \C1|C0|Tick7us~regout\,
	datac => \C1|C7|State.Relax~regout\,
	datad => \C1|C7|Equal0~2_combout\,
	combout => \C1|C7|Selector13~0_combout\);

-- Location: LCFF_X25_Y24_N1
\C1|C7|State.Relax\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C7|Selector13~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C7|State.Relax~regout\);

-- Location: LCCOMB_X25_Y24_N12
\C1|C7|Count[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[0]~2_combout\ = (\C1|C7|Count[0]~1_combout\) # (((\C1|C7|State.Relax~regout\ & \C1|C7|Equal0~2_combout\)) # (!\C1|C7|Done~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Count[0]~1_combout\,
	datab => \C1|C7|State.Relax~regout\,
	datac => \C1|C7|Done~0_combout\,
	datad => \C1|C7|Equal0~2_combout\,
	combout => \C1|C7|Count[0]~2_combout\);

-- Location: LCCOMB_X25_Y24_N30
\C1|C7|Count[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[7]~10_combout\ = (\C1|C7|Count[7]~9_combout\ & (!\C1|C7|Count[0]~2_combout\ & ((!\C1|C7|State.Pulse~regout\) # (!\C1|C7|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Equal0~2_combout\,
	datab => \C1|C7|Count[7]~9_combout\,
	datac => \C1|C7|State.Pulse~regout\,
	datad => \C1|C7|Count[0]~2_combout\,
	combout => \C1|C7|Count[7]~10_combout\);

-- Location: LCCOMB_X25_Y24_N8
\C1|C7|Count[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[6]~12_combout\ = (\C1|C7|Count\(6) & \C1|C7|Count[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C7|Count\(6),
	datad => \C1|C7|Count[0]~2_combout\,
	combout => \C1|C7|Count[6]~12_combout\);

-- Location: LCCOMB_X23_Y24_N0
\C1|C1|output2[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|output2[1]~0_combout\ = (\C1|C1|EtatPresent.Etat6~regout\ & (!\rst~combout\ & !\C1|C1|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EtatPresent.Etat6~regout\,
	datab => \rst~combout\,
	datad => \C1|C1|Equal2~0_combout\,
	combout => \C1|C1|output2[1]~0_combout\);

-- Location: LCFF_X23_Y24_N29
\C1|C1|output2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|regValue\(6),
	sload => VCC,
	ena => \C1|C1|output2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output2\(6));

-- Location: LCFF_X23_Y24_N1
\C1|C1|output2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|regValue\(5),
	sload => VCC,
	ena => \C1|C1|output2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output2\(5));

-- Location: LCCOMB_X23_Y24_N16
\C1|C4|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add0~1_combout\ = \C1|C1|output2\(6) $ (((\C1|C1|output2\(4) & \C1|C1|output2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output2\(4),
	datab => \C1|C1|output2\(6),
	datad => \C1|C1|output2\(5),
	combout => \C1|C4|Add0~1_combout\);

-- Location: LCFF_X23_Y24_N17
\C1|C1|output2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|regValue\(1),
	sload => VCC,
	ena => \C1|C1|output2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output2\(1));

-- Location: LCCOMB_X23_Y24_N18
\C1|C1|output2[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|output2[4]~feeder_combout\ = \C1|C1|regValue\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|regValue\(4),
	combout => \C1|C1|output2[4]~feeder_combout\);

-- Location: LCFF_X23_Y24_N19
\C1|C1|output2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|output2[4]~feeder_combout\,
	ena => \C1|C1|output2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output2\(4));

-- Location: LCCOMB_X23_Y24_N22
\C1|C4|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add1~2_combout\ = (\C1|C4|Add0~2_combout\ & ((\C1|C1|output2\(1) & (\C1|C4|Add1~1\ & VCC)) # (!\C1|C1|output2\(1) & (!\C1|C4|Add1~1\)))) # (!\C1|C4|Add0~2_combout\ & ((\C1|C1|output2\(1) & (!\C1|C4|Add1~1\)) # (!\C1|C1|output2\(1) & 
-- ((\C1|C4|Add1~1\) # (GND)))))
-- \C1|C4|Add1~3\ = CARRY((\C1|C4|Add0~2_combout\ & (!\C1|C1|output2\(1) & !\C1|C4|Add1~1\)) # (!\C1|C4|Add0~2_combout\ & ((!\C1|C4|Add1~1\) # (!\C1|C1|output2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C4|Add0~2_combout\,
	datab => \C1|C1|output2\(1),
	datad => VCC,
	cin => \C1|C4|Add1~1\,
	combout => \C1|C4|Add1~2_combout\,
	cout => \C1|C4|Add1~3\);

-- Location: LCFF_X23_Y24_N3
\C1|C1|output2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|regValue\(3),
	sload => VCC,
	ena => \C1|C1|output2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output2\(3));

-- Location: LCCOMB_X23_Y24_N2
\C1|C4|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add2~1_cout\ = CARRY(\C1|C1|output2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|output2\(3),
	datad => VCC,
	cout => \C1|C4|Add2~1_cout\);

-- Location: LCCOMB_X23_Y24_N4
\C1|C4|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add2~2_combout\ = (\C1|C4|Add1~0_combout\ & ((\C1|C1|output2\(4) & (!\C1|C4|Add2~1_cout\)) # (!\C1|C1|output2\(4) & (\C1|C4|Add2~1_cout\ & VCC)))) # (!\C1|C4|Add1~0_combout\ & ((\C1|C1|output2\(4) & ((\C1|C4|Add2~1_cout\) # (GND))) # 
-- (!\C1|C1|output2\(4) & (!\C1|C4|Add2~1_cout\))))
-- \C1|C4|Add2~3\ = CARRY((\C1|C4|Add1~0_combout\ & (\C1|C1|output2\(4) & !\C1|C4|Add2~1_cout\)) # (!\C1|C4|Add1~0_combout\ & ((\C1|C1|output2\(4)) # (!\C1|C4|Add2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C4|Add1~0_combout\,
	datab => \C1|C1|output2\(4),
	datad => VCC,
	cin => \C1|C4|Add2~1_cout\,
	combout => \C1|C4|Add2~2_combout\,
	cout => \C1|C4|Add2~3\);

-- Location: LCCOMB_X23_Y24_N6
\C1|C4|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add2~4_combout\ = ((\C1|C4|Add0~2_combout\ $ (\C1|C4|Add1~2_combout\ $ (!\C1|C4|Add2~3\)))) # (GND)
-- \C1|C4|Add2~5\ = CARRY((\C1|C4|Add0~2_combout\ & ((\C1|C4|Add1~2_combout\) # (!\C1|C4|Add2~3\))) # (!\C1|C4|Add0~2_combout\ & (\C1|C4|Add1~2_combout\ & !\C1|C4|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C4|Add0~2_combout\,
	datab => \C1|C4|Add1~2_combout\,
	datad => VCC,
	cin => \C1|C4|Add2~3\,
	combout => \C1|C4|Add2~4_combout\,
	cout => \C1|C4|Add2~5\);

-- Location: LCFF_X23_Y24_N25
\C1|C1|output2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|regValue\(2),
	sload => VCC,
	ena => \C1|C1|output2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output2\(2));

-- Location: LCCOMB_X23_Y24_N30
\C1|C1|output2[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C1|output2[0]~feeder_combout\ = \C1|C1|regValue\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|regValue\(0),
	combout => \C1|C1|output2[0]~feeder_combout\);

-- Location: LCFF_X23_Y24_N31
\C1|C1|output2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C1|output2[0]~feeder_combout\,
	ena => \C1|C1|output2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output2\(0));

-- Location: LCCOMB_X24_Y24_N18
\C1|C4|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add3~0_combout\ = (\C1|C1|output2\(1) & (\C1|C1|output2\(0) $ (VCC))) # (!\C1|C1|output2\(1) & (\C1|C1|output2\(0) & VCC))
-- \C1|C4|Add3~1\ = CARRY((\C1|C1|output2\(1) & \C1|C1|output2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output2\(1),
	datab => \C1|C1|output2\(0),
	datad => VCC,
	combout => \C1|C4|Add3~0_combout\,
	cout => \C1|C4|Add3~1\);

-- Location: LCCOMB_X24_Y24_N22
\C1|C4|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add3~4_combout\ = ((\C1|C1|output2\(3) $ (\C1|C1|output2\(2) $ (!\C1|C4|Add3~3\)))) # (GND)
-- \C1|C4|Add3~5\ = CARRY((\C1|C1|output2\(3) & ((\C1|C1|output2\(2)) # (!\C1|C4|Add3~3\))) # (!\C1|C1|output2\(3) & (\C1|C1|output2\(2) & !\C1|C4|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output2\(3),
	datab => \C1|C1|output2\(2),
	datad => VCC,
	cin => \C1|C4|Add3~3\,
	combout => \C1|C4|Add3~4_combout\,
	cout => \C1|C4|Add3~5\);

-- Location: LCCOMB_X24_Y24_N26
\C1|C4|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add3~8_combout\ = ((\C1|C4|Add0~2_combout\ $ (\C1|C4|Add2~4_combout\ $ (!\C1|C4|Add3~7\)))) # (GND)
-- \C1|C4|Add3~9\ = CARRY((\C1|C4|Add0~2_combout\ & ((\C1|C4|Add2~4_combout\) # (!\C1|C4|Add3~7\))) # (!\C1|C4|Add0~2_combout\ & (\C1|C4|Add2~4_combout\ & !\C1|C4|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C4|Add0~2_combout\,
	datab => \C1|C4|Add2~4_combout\,
	datad => VCC,
	cin => \C1|C4|Add3~7\,
	combout => \C1|C4|Add3~8_combout\,
	cout => \C1|C4|Add3~9\);

-- Location: LCCOMB_X24_Y24_N28
\C1|C4|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add3~10_combout\ = (\C1|C4|Add2~6_combout\ & ((\C1|C4|Add0~1_combout\ & (!\C1|C4|Add3~9\)) # (!\C1|C4|Add0~1_combout\ & (\C1|C4|Add3~9\ & VCC)))) # (!\C1|C4|Add2~6_combout\ & ((\C1|C4|Add0~1_combout\ & ((\C1|C4|Add3~9\) # (GND))) # 
-- (!\C1|C4|Add0~1_combout\ & (!\C1|C4|Add3~9\))))
-- \C1|C4|Add3~11\ = CARRY((\C1|C4|Add2~6_combout\ & (\C1|C4|Add0~1_combout\ & !\C1|C4|Add3~9\)) # (!\C1|C4|Add2~6_combout\ & ((\C1|C4|Add0~1_combout\) # (!\C1|C4|Add3~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C4|Add2~6_combout\,
	datab => \C1|C4|Add0~1_combout\,
	datad => VCC,
	cin => \C1|C4|Add3~9\,
	combout => \C1|C4|Add3~10_combout\,
	cout => \C1|C4|Add3~11\);

-- Location: LCCOMB_X24_Y24_N2
\C1|C4|Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add4~1_cout\ = CARRY(\C1|C1|output2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output2\(0),
	datad => VCC,
	cout => \C1|C4|Add4~1_cout\);

-- Location: LCCOMB_X24_Y24_N4
\C1|C4|output[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|output[1]~1_cout\ = CARRY((\C1|C1|output2\(1) & (!\C1|C4|Add3~0_combout\ & !\C1|C4|Add4~1_cout\)) # (!\C1|C1|output2\(1) & ((!\C1|C4|Add4~1_cout\) # (!\C1|C4|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output2\(1),
	datab => \C1|C4|Add3~0_combout\,
	datad => VCC,
	cin => \C1|C4|Add4~1_cout\,
	cout => \C1|C4|output[1]~1_cout\);

-- Location: LCCOMB_X24_Y24_N6
\C1|C4|output[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|output[2]~3_cout\ = CARRY((\C1|C4|Add3~2_combout\ & ((\C1|C1|output2\(2)) # (!\C1|C4|output[1]~1_cout\))) # (!\C1|C4|Add3~2_combout\ & (\C1|C1|output2\(2) & !\C1|C4|output[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C4|Add3~2_combout\,
	datab => \C1|C1|output2\(2),
	datad => VCC,
	cin => \C1|C4|output[1]~1_cout\,
	cout => \C1|C4|output[2]~3_cout\);

-- Location: LCCOMB_X24_Y24_N8
\C1|C4|output[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|output[3]~5_cout\ = CARRY((\C1|C1|output2\(3) & (!\C1|C4|Add3~4_combout\ & !\C1|C4|output[2]~3_cout\)) # (!\C1|C1|output2\(3) & ((!\C1|C4|output[2]~3_cout\) # (!\C1|C4|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output2\(3),
	datab => \C1|C4|Add3~4_combout\,
	datad => VCC,
	cin => \C1|C4|output[2]~3_cout\,
	cout => \C1|C4|output[3]~5_cout\);

-- Location: LCCOMB_X24_Y24_N14
\C1|C4|output[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|output[6]~10_combout\ = ((\C1|C4|Add0~1_combout\ $ (\C1|C4|Add3~10_combout\ $ (\C1|C4|output[5]~9\)))) # (GND)
-- \C1|C4|output[6]~11\ = CARRY((\C1|C4|Add0~1_combout\ & (\C1|C4|Add3~10_combout\ & !\C1|C4|output[5]~9\)) # (!\C1|C4|Add0~1_combout\ & ((\C1|C4|Add3~10_combout\) # (!\C1|C4|output[5]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C4|Add0~1_combout\,
	datab => \C1|C4|Add3~10_combout\,
	datad => VCC,
	cin => \C1|C4|output[5]~9\,
	combout => \C1|C4|output[6]~10_combout\,
	cout => \C1|C4|output[6]~11\);

-- Location: LCCOMB_X25_Y24_N26
\C1|C7|Count[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[6]~14_combout\ = (\C1|C7|Count[6]~13_combout\) # ((\C1|C7|Count[6]~12_combout\) # ((\C1|C7|Count[7]~10_combout\ & \C1|C4|output[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Count[6]~13_combout\,
	datab => \C1|C7|Count[7]~10_combout\,
	datac => \C1|C7|Count[6]~12_combout\,
	datad => \C1|C4|output[6]~10_combout\,
	combout => \C1|C7|Count[6]~14_combout\);

-- Location: LCFF_X25_Y24_N27
\C1|C7|Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C7|Count[6]~14_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C7|Count\(6));

-- Location: LCFF_X23_Y24_N15
\C1|C1|output2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C1|C1|regValue\(7),
	sload => VCC,
	ena => \C1|C1|output2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C1|output2\(7));

-- Location: LCCOMB_X23_Y24_N14
\C1|C4|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add0~0_combout\ = \C1|C1|output2\(7) $ (((\C1|C1|output2\(6)) # ((\C1|C1|output2\(4) & \C1|C1|output2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output2\(4),
	datab => \C1|C1|output2\(6),
	datac => \C1|C1|output2\(7),
	datad => \C1|C1|output2\(5),
	combout => \C1|C4|Add0~0_combout\);

-- Location: LCCOMB_X23_Y24_N26
\C1|C4|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add1~6_combout\ = \C1|C4|Add0~0_combout\ $ (\C1|C4|Add1~5\ $ (!\C1|C1|output2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C4|Add0~0_combout\,
	datad => \C1|C1|output2\(3),
	cin => \C1|C4|Add1~5\,
	combout => \C1|C4|Add1~6_combout\);

-- Location: LCCOMB_X23_Y24_N10
\C1|C4|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add2~8_combout\ = \C1|C4|Add0~0_combout\ $ (\C1|C4|Add2~7\ $ (\C1|C4|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C4|Add0~0_combout\,
	datad => \C1|C4|Add1~6_combout\,
	cin => \C1|C4|Add2~7\,
	combout => \C1|C4|Add2~8_combout\);

-- Location: LCCOMB_X24_Y24_N30
\C1|C4|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|Add3~12_combout\ = \C1|C4|Add0~0_combout\ $ (\C1|C4|Add3~11\ $ (\C1|C4|Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C4|Add0~0_combout\,
	datad => \C1|C4|Add2~8_combout\,
	cin => \C1|C4|Add3~11\,
	combout => \C1|C4|Add3~12_combout\);

-- Location: LCCOMB_X24_Y24_N16
\C1|C4|output[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C4|output[7]~12_combout\ = \C1|C4|Add0~0_combout\ $ (\C1|C4|output[6]~11\ $ (!\C1|C4|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C4|Add0~0_combout\,
	datad => \C1|C4|Add3~12_combout\,
	cin => \C1|C4|output[6]~11\,
	combout => \C1|C4|output[7]~12_combout\);

-- Location: LCCOMB_X25_Y24_N18
\C1|C7|Count[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[7]~5_combout\ = (!\C1|C7|State.Pulse~regout\ & !\C1|C7|State.Relax~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C7|State.Pulse~regout\,
	datad => \C1|C7|State.Relax~regout\,
	combout => \C1|C7|Count[7]~5_combout\);

-- Location: LCCOMB_X25_Y24_N16
\C1|C7|Count[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[7]~6_combout\ = (!\C1|C7|Count[0]~1_combout\ & (\C1|C7|Done~0_combout\ & ((\C1|C7|Count[7]~5_combout\) # (!\C1|C7|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Count[0]~1_combout\,
	datab => \C1|C7|Count[7]~5_combout\,
	datac => \C1|C7|Done~0_combout\,
	datad => \C1|C7|Equal0~2_combout\,
	combout => \C1|C7|Count[7]~6_combout\);

-- Location: LCCOMB_X25_Y24_N22
\C1|C7|Count[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[7]~7_combout\ = (\C1|C7|State.Idle~regout\ & (\C1|C7|Count[7]~6_combout\ & ((!\C1|C7|State.Init~regout\) # (!\C1|C7|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Equal0~2_combout\,
	datab => \C1|C7|State.Idle~regout\,
	datac => \C1|C7|Count[7]~6_combout\,
	datad => \C1|C7|State.Init~regout\,
	combout => \C1|C7|Count[7]~7_combout\);

-- Location: LCCOMB_X28_Y24_N24
\C1|C7|Count[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[0]~21_combout\ = (\C1|C7|Add0~0_combout\ & (((!\C1|C7|State.Init~regout\ & !\C1|C7|State.Pulse~regout\)) # (!\C1|C7|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Add0~0_combout\,
	datab => \C1|C7|State.Init~regout\,
	datac => \C1|C7|State.Pulse~regout\,
	datad => \C1|C7|Equal0~2_combout\,
	combout => \C1|C7|Count[0]~21_combout\);

-- Location: LCCOMB_X27_Y24_N16
\C1|C7|Count[0]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[0]~22_combout\ = (\C1|C7|Count[0]~2_combout\ & (((\C1|C7|Count\(0))))) # (!\C1|C7|Count[0]~2_combout\ & (((\C1|C7|Count[0]~21_combout\)) # (!\C1|C7|State.Idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Count[0]~2_combout\,
	datab => \C1|C7|State.Idle~regout\,
	datac => \C1|C7|Count\(0),
	datad => \C1|C7|Count[0]~21_combout\,
	combout => \C1|C7|Count[0]~22_combout\);

-- Location: LCFF_X27_Y24_N17
\C1|C7|Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C7|Count[0]~22_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C7|Count\(0));

-- Location: LCCOMB_X28_Y24_N8
\C1|C7|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Add0~2_combout\ = (\C1|C7|Count\(1) & (\C1|C7|Add0~1\ & VCC)) # (!\C1|C7|Count\(1) & (!\C1|C7|Add0~1\))
-- \C1|C7|Add0~3\ = CARRY((!\C1|C7|Count\(1) & !\C1|C7|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Count\(1),
	datad => VCC,
	cin => \C1|C7|Add0~1\,
	combout => \C1|C7|Add0~2_combout\,
	cout => \C1|C7|Add0~3\);

-- Location: LCCOMB_X28_Y24_N10
\C1|C7|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Add0~4_combout\ = (\C1|C7|Count\(2) & ((GND) # (!\C1|C7|Add0~3\))) # (!\C1|C7|Count\(2) & (\C1|C7|Add0~3\ $ (GND)))
-- \C1|C7|Add0~5\ = CARRY((\C1|C7|Count\(2)) # (!\C1|C7|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Count\(2),
	datad => VCC,
	cin => \C1|C7|Add0~3\,
	combout => \C1|C7|Add0~4_combout\,
	cout => \C1|C7|Add0~5\);

-- Location: LCCOMB_X28_Y24_N12
\C1|C7|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Add0~6_combout\ = (\C1|C7|Count\(3) & (\C1|C7|Add0~5\ & VCC)) # (!\C1|C7|Count\(3) & (!\C1|C7|Add0~5\))
-- \C1|C7|Add0~7\ = CARRY((!\C1|C7|Count\(3) & !\C1|C7|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C7|Count\(3),
	datad => VCC,
	cin => \C1|C7|Add0~5\,
	combout => \C1|C7|Add0~6_combout\,
	cout => \C1|C7|Add0~7\);

-- Location: LCCOMB_X27_Y24_N22
\C1|C7|Count[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[3]~19_combout\ = (\C1|C7|Count[7]~9_combout\ & (((\C1|C1|output2\(1))))) # (!\C1|C7|Count[7]~9_combout\ & (\C1|C7|State.Idle~regout\ & (\C1|C7|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|State.Idle~regout\,
	datab => \C1|C7|Count[7]~9_combout\,
	datac => \C1|C7|Add0~6_combout\,
	datad => \C1|C1|output2\(1),
	combout => \C1|C7|Count[3]~19_combout\);

-- Location: LCCOMB_X27_Y24_N28
\C1|C7|Count[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[3]~20_combout\ = (\C1|C7|Count[7]~6_combout\ & ((\C1|C7|Count[3]~19_combout\) # ((\C1|C7|Count\(3) & \C1|C7|Count[0]~2_combout\)))) # (!\C1|C7|Count[7]~6_combout\ & (((\C1|C7|Count\(3) & \C1|C7|Count[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Count[7]~6_combout\,
	datab => \C1|C7|Count[3]~19_combout\,
	datac => \C1|C7|Count\(3),
	datad => \C1|C7|Count[0]~2_combout\,
	combout => \C1|C7|Count[3]~20_combout\);

-- Location: LCFF_X27_Y24_N29
\C1|C7|Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C7|Count[3]~20_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C7|Count\(3));

-- Location: LCCOMB_X28_Y24_N14
\C1|C7|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Add0~8_combout\ = (\C1|C7|Count\(4) & ((GND) # (!\C1|C7|Add0~7\))) # (!\C1|C7|Count\(4) & (\C1|C7|Add0~7\ $ (GND)))
-- \C1|C7|Add0~9\ = CARRY((\C1|C7|Count\(4)) # (!\C1|C7|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C7|Count\(4),
	datad => VCC,
	cin => \C1|C7|Add0~7\,
	combout => \C1|C7|Add0~8_combout\,
	cout => \C1|C7|Add0~9\);

-- Location: LCCOMB_X25_Y24_N14
\C1|C7|Count[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[4]~17_combout\ = (\C1|C7|Count[0]~2_combout\ & ((\C1|C7|Count\(4)) # ((\C1|C7|Add0~8_combout\ & \C1|C7|Count[7]~7_combout\)))) # (!\C1|C7|Count[0]~2_combout\ & (((\C1|C7|Add0~8_combout\ & \C1|C7|Count[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Count[0]~2_combout\,
	datab => \C1|C7|Count\(4),
	datac => \C1|C7|Add0~8_combout\,
	datad => \C1|C7|Count[7]~7_combout\,
	combout => \C1|C7|Count[4]~17_combout\);

-- Location: LCCOMB_X25_Y24_N2
\C1|C7|Count[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[4]~18_combout\ = (\C1|C7|Count[4]~17_combout\) # ((\C1|C4|output[4]~6_combout\ & \C1|C7|Count[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C4|output[4]~6_combout\,
	datac => \C1|C7|Count[4]~17_combout\,
	datad => \C1|C7|Count[7]~10_combout\,
	combout => \C1|C7|Count[4]~18_combout\);

-- Location: LCFF_X25_Y24_N3
\C1|C7|Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C7|Count[4]~18_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C7|Count\(4));

-- Location: LCCOMB_X28_Y24_N20
\C1|C7|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Add0~14_combout\ = (\C1|C7|Count\(7) & (\C1|C7|Add0~13\ & VCC)) # (!\C1|C7|Count\(7) & (!\C1|C7|Add0~13\))
-- \C1|C7|Add0~15\ = CARRY((!\C1|C7|Count\(7) & !\C1|C7|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C7|Count\(7),
	datad => VCC,
	cin => \C1|C7|Add0~13\,
	combout => \C1|C7|Add0~14_combout\,
	cout => \C1|C7|Add0~15\);

-- Location: LCCOMB_X25_Y24_N4
\C1|C7|Count[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[7]~8_combout\ = (\C1|C7|Count[0]~2_combout\ & ((\C1|C7|Count\(7)) # ((\C1|C7|Count[7]~7_combout\ & \C1|C7|Add0~14_combout\)))) # (!\C1|C7|Count[0]~2_combout\ & (\C1|C7|Count[7]~7_combout\ & ((\C1|C7|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Count[0]~2_combout\,
	datab => \C1|C7|Count[7]~7_combout\,
	datac => \C1|C7|Count\(7),
	datad => \C1|C7|Add0~14_combout\,
	combout => \C1|C7|Count[7]~8_combout\);

-- Location: LCCOMB_X24_Y24_N0
\C1|C7|Count[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[7]~11_combout\ = (\C1|C7|Count[7]~8_combout\) # ((\C1|C7|Count[7]~10_combout\ & \C1|C4|output[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C7|Count[7]~10_combout\,
	datac => \C1|C4|output[7]~12_combout\,
	datad => \C1|C7|Count[7]~8_combout\,
	combout => \C1|C7|Count[7]~11_combout\);

-- Location: LCFF_X24_Y24_N1
\C1|C7|Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C7|Count[7]~11_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C7|Count\(7));

-- Location: LCCOMB_X28_Y24_N22
\C1|C7|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Add0~16_combout\ = \C1|C7|Add0~15\ $ (\C1|C7|Count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|C7|Count\(8),
	cin => \C1|C7|Add0~15\,
	combout => \C1|C7|Add0~16_combout\);

-- Location: LCCOMB_X28_Y24_N28
\C1|C7|Count[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[8]~3_combout\ = (\C1|C7|Add0~16_combout\ & (((!\C1|C7|State.Init~regout\ & !\C1|C7|State.Pulse~regout\)) # (!\C1|C7|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Equal0~2_combout\,
	datab => \C1|C7|State.Init~regout\,
	datac => \C1|C7|State.Pulse~regout\,
	datad => \C1|C7|Add0~16_combout\,
	combout => \C1|C7|Count[8]~3_combout\);

-- Location: LCCOMB_X28_Y24_N0
\C1|C7|Count[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[8]~4_combout\ = (\C1|C7|Count[0]~2_combout\ & (((\C1|C7|Count\(8))))) # (!\C1|C7|Count[0]~2_combout\ & (\C1|C7|State.Idle~regout\ & (\C1|C7|Count[8]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|State.Idle~regout\,
	datab => \C1|C7|Count[8]~3_combout\,
	datac => \C1|C7|Count\(8),
	datad => \C1|C7|Count[0]~2_combout\,
	combout => \C1|C7|Count[8]~4_combout\);

-- Location: LCFF_X28_Y24_N1
\C1|C7|Count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C7|Count[8]~4_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C7|Count\(8));

-- Location: LCCOMB_X28_Y24_N26
\C1|C7|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Equal0~0_combout\ = (!\C1|C7|Count\(5) & (!\C1|C7|Count\(6) & (!\C1|C7|Count\(7) & !\C1|C7|Count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Count\(5),
	datab => \C1|C7|Count\(6),
	datac => \C1|C7|Count\(7),
	datad => \C1|C7|Count\(8),
	combout => \C1|C7|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y24_N4
\C1|C7|Count[7]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[7]~9_combout\ = (\C1|C7|Equal0~1_combout\ & (!\C1|C7|Count\(2) & (\C1|C7|Equal0~0_combout\ & \C1|C7|State.Init~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Equal0~1_combout\,
	datab => \C1|C7|Count\(2),
	datac => \C1|C7|Equal0~0_combout\,
	datad => \C1|C7|State.Init~regout\,
	combout => \C1|C7|Count[7]~9_combout\);

-- Location: LCCOMB_X28_Y24_N30
\C1|C7|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Selector7~0_combout\ = (\C1|C7|Add0~4_combout\) # (!\C1|C7|State.Idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|State.Idle~regout\,
	datad => \C1|C7|Add0~4_combout\,
	combout => \C1|C7|Selector7~0_combout\);

-- Location: LCCOMB_X27_Y24_N20
\C1|C7|Count[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Count[2]~0_combout\ = (\C1|C7|Count[7]~9_combout\ & (\C1|C1|output2\(0))) # (!\C1|C7|Count[7]~9_combout\ & ((\C1|C7|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|output2\(0),
	datab => \C1|C7|Count[7]~9_combout\,
	datad => \C1|C7|Selector7~0_combout\,
	combout => \C1|C7|Count[2]~0_combout\);

-- Location: LCFF_X27_Y24_N21
\C1|C7|Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C7|Count[2]~0_combout\,
	sdata => \C1|C7|Count\(2),
	aclr => \rst~combout\,
	sload => \C1|C7|Count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C7|Count\(2));

-- Location: LCCOMB_X27_Y24_N12
\C1|C7|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Selector8~0_combout\ = (\C1|C0|Tick7us~regout\ & (!\C1|C7|Equal0~2_combout\ & ((\C1|C7|State.Relax~regout\) # (\C1|C7|State.Init~regout\)))) # (!\C1|C0|Tick7us~regout\ & ((\C1|C7|State.Relax~regout\) # ((\C1|C7|State.Init~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Tick7us~regout\,
	datab => \C1|C7|State.Relax~regout\,
	datac => \C1|C7|Equal0~2_combout\,
	datad => \C1|C7|State.Init~regout\,
	combout => \C1|C7|Selector8~0_combout\);

-- Location: LCCOMB_X27_Y24_N10
\C1|C7|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Selector8~1_combout\ = (\C1|C0|Tick7us~regout\ & (\C1|C7|Add0~2_combout\ & ((\C1|C7|State.Pulse~regout\) # (\C1|C7|Selector8~0_combout\)))) # (!\C1|C0|Tick7us~regout\ & ((\C1|C7|State.Pulse~regout\) # ((\C1|C7|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Tick7us~regout\,
	datab => \C1|C7|State.Pulse~regout\,
	datac => \C1|C7|Add0~2_combout\,
	datad => \C1|C7|Selector8~0_combout\,
	combout => \C1|C7|Selector8~1_combout\);

-- Location: LCCOMB_X27_Y24_N30
\C1|C7|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Selector8~2_combout\ = (\C1|C7|Count\(1) & (((\C1|C7|Selector8~1_combout\) # (!\C1|C7|Done~0_combout\)))) # (!\C1|C7|Count\(1) & (\C1|C0|Tick7us~regout\ & ((\C1|C7|Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Tick7us~regout\,
	datab => \C1|C7|Done~0_combout\,
	datac => \C1|C7|Count\(1),
	datad => \C1|C7|Selector8~1_combout\,
	combout => \C1|C7|Selector8~2_combout\);

-- Location: LCFF_X27_Y24_N31
\C1|C7|Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C7|Selector8~2_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C7|Count\(1));

-- Location: LCCOMB_X27_Y24_N6
\C1|C7|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Equal0~1_combout\ = (!\C1|C7|Count\(0) & (!\C1|C7|Count\(1) & (!\C1|C7|Count\(4) & !\C1|C7|Count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|Count\(0),
	datab => \C1|C7|Count\(1),
	datac => \C1|C7|Count\(4),
	datad => \C1|C7|Count\(3),
	combout => \C1|C7|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y24_N8
\C1|C7|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Equal0~2_combout\ = (!\C1|C7|Count\(2) & (\C1|C7|Equal0~0_combout\ & \C1|C7|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C7|Count\(2),
	datac => \C1|C7|Equal0~0_combout\,
	datad => \C1|C7|Equal0~1_combout\,
	combout => \C1|C7|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y24_N14
\C1|C7|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Selector10~0_combout\ = (\C1|C7|Done~0_combout\ & (((!\C1|C0|Tick7us~regout\) # (!\C1|C7|Equal0~2_combout\)) # (!\C1|C7|State.Relax~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|State.Relax~regout\,
	datab => \C1|C7|Equal0~2_combout\,
	datac => \C1|C0|Tick7us~regout\,
	datad => \C1|C7|Done~0_combout\,
	combout => \C1|C7|Selector10~0_combout\);

-- Location: LCFF_X27_Y24_N15
\C1|C7|State.Idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C7|Selector10~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C7|State.Idle~regout\);

-- Location: LCCOMB_X27_Y24_N0
\C1|C7|Done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Done~0_combout\ = (\C1|C7|State.Idle~regout\) # (\C1|C1|dataValid2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C7|State.Idle~regout\,
	datad => \C1|C1|dataValid2~regout\,
	combout => \C1|C7|Done~0_combout\);

-- Location: LCCOMB_X27_Y24_N18
\C1|C7|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Selector0~0_combout\ = (\C1|C7|State.Relax~regout\) # ((\C1|C7|State.Init~regout\) # ((!\C1|C7|State~12_combout\ & \C1|C7|State.Pulse~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C7|State~12_combout\,
	datab => \C1|C7|State.Pulse~regout\,
	datac => \C1|C7|State.Relax~regout\,
	datad => \C1|C7|State.Init~regout\,
	combout => \C1|C7|Selector0~0_combout\);

-- Location: LCCOMB_X27_Y24_N2
\C1|C7|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|C7|Selector0~1_combout\ = (\C1|C0|Tick7us~regout\ & ((\C1|C7|State.Init~regout\) # ((\C1|C7|Q~regout\ & \C1|C7|Selector0~0_combout\)))) # (!\C1|C0|Tick7us~regout\ & (((\C1|C7|Q~regout\ & \C1|C7|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C0|Tick7us~regout\,
	datab => \C1|C7|State.Init~regout\,
	datac => \C1|C7|Q~regout\,
	datad => \C1|C7|Selector0~0_combout\,
	combout => \C1|C7|Selector0~1_combout\);

-- Location: LCFF_X27_Y24_N3
\C1|C7|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|C7|Selector0~1_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|C7|Q~regout\);

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input(0));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input(1));

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input(2));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input(3));

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input(4));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input(5));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input(6));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input(7));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Done0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|C5|ALT_INV_Done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Done0);

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|C5|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q0);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Done1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|C6|ALT_INV_Done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Done1);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|C6|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Done2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|C7|ALT_INV_Done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Done2);

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|C7|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2);

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\go~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_go);
END structure;


