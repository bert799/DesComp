-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/30/2022 13:16:12"

-- 
-- Device: Altera 5CEBA7F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mipsInstR IS
    PORT (
	CLOCK_50 : IN std_logic;
	ULA_OP : IN std_logic;
	WR_RD : IN std_logic;
	funct : BUFFER std_logic_vector(5 DOWNTO 0);
	PC_OUT : BUFFER std_logic_vector(31 DOWNTO 0);
	ULA_OUT : BUFFER std_logic_vector(31 DOWNTO 0);
	RD_addr : BUFFER std_logic_vector(4 DOWNTO 0);
	RT_addr : BUFFER std_logic_vector(4 DOWNTO 0);
	RS_addr : BUFFER std_logic_vector(4 DOWNTO 0);
	RT_OUT : BUFFER std_logic_vector(31 DOWNTO 0);
	RS_OUT : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END mipsInstR;

-- Design Ports Information
-- funct[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[2]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[9]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[10]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[11]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[12]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[13]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[14]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[15]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[16]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[17]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[18]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[19]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[20]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[21]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[22]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[23]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[24]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[25]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[26]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[27]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[28]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[29]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[30]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[31]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[2]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[3]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[4]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[7]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[8]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[9]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[10]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[11]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[12]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[13]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[14]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[15]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[16]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[17]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[18]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[19]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[20]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[21]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[22]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[23]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[24]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[25]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[26]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[27]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[28]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[29]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[30]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT[31]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_addr[0]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_addr[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_addr[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_addr[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_addr[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_addr[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_addr[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_addr[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_addr[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_addr[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_addr[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_addr[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_addr[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_addr[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_addr[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[4]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[6]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[8]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[9]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[10]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[11]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[12]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[13]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[14]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[15]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[16]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[17]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[18]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[19]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[20]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[21]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[22]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[23]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[24]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[25]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[26]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[27]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[28]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[29]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[30]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[31]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[3]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[4]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[6]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[7]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[8]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[10]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[11]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[12]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[13]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[14]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[15]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[16]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[17]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[18]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[19]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[20]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[21]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[22]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[23]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[24]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[25]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[26]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[27]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[28]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[29]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[30]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[31]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OP	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_RD	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mipsInstR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_ULA_OP : std_logic;
SIGNAL ww_WR_RD : std_logic;
SIGNAL ww_funct : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULA_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RD_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RT_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RS_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RT_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RS_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \PC|DOUT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~34\ : std_logic;
SIGNAL \incrementaPC|Add0~37_sumout\ : std_logic;
SIGNAL \PC|DOUT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~38\ : std_logic;
SIGNAL \incrementaPC|Add0~41_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~42\ : std_logic;
SIGNAL \incrementaPC|Add0~45_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~46\ : std_logic;
SIGNAL \incrementaPC|Add0~49_sumout\ : std_logic;
SIGNAL \PC|DOUT[16]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~50\ : std_logic;
SIGNAL \incrementaPC|Add0~53_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~54\ : std_logic;
SIGNAL \incrementaPC|Add0~57_sumout\ : std_logic;
SIGNAL \PC|DOUT[18]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~58\ : std_logic;
SIGNAL \incrementaPC|Add0~61_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~62\ : std_logic;
SIGNAL \incrementaPC|Add0~65_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~66\ : std_logic;
SIGNAL \incrementaPC|Add0~69_sumout\ : std_logic;
SIGNAL \PC|DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~70\ : std_logic;
SIGNAL \incrementaPC|Add0~73_sumout\ : std_logic;
SIGNAL \PC|DOUT[22]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~74\ : std_logic;
SIGNAL \incrementaPC|Add0~77_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~78\ : std_logic;
SIGNAL \incrementaPC|Add0~81_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~82\ : std_logic;
SIGNAL \incrementaPC|Add0~85_sumout\ : std_logic;
SIGNAL \PC|DOUT[25]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~86\ : std_logic;
SIGNAL \incrementaPC|Add0~89_sumout\ : std_logic;
SIGNAL \PC|DOUT[26]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~90\ : std_logic;
SIGNAL \incrementaPC|Add0~93_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~94\ : std_logic;
SIGNAL \incrementaPC|Add0~97_sumout\ : std_logic;
SIGNAL \PC|DOUT[28]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~98\ : std_logic;
SIGNAL \incrementaPC|Add0~101_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~102\ : std_logic;
SIGNAL \incrementaPC|Add0~105_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~106\ : std_logic;
SIGNAL \incrementaPC|Add0~109_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~110\ : std_logic;
SIGNAL \incrementaPC|Add0~113_sumout\ : std_logic;
SIGNAL \ULA_OP~input_o\ : std_logic;
SIGNAL \WR_RD~input_o\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~294_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[0]~0_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1094_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~38_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1062_combout\ : std_logic;
SIGNAL \ULA|Add0~130_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1095_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~39_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1063_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~295_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[1]~1_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~296_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[2]~2_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~40_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1064_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1096_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~41_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1065_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~297_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[3]~3_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~298_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[4]~4_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~42_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1066_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~299_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[5]~5_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1097_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~43_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1067_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~300_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[6]~6_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~44_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1068_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~301feeder_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~301_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[7]~7_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1098_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~45_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1069_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~302_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[8]~8_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~46_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1070_combout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1099_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~47_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1071_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~303feeder_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~303_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[9]~9_combout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~304_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[10]~10_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~48_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1072_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~305_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[11]~11_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1100_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~49_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1073_combout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~50_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1074_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~306_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[12]~12_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~307_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[13]~13_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1101_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~51_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1075_combout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~308_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[14]~14_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~52_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1076_combout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~309_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[15]~15_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1102_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~53_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1077_combout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~310_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[16]~16_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~54_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1078_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~311_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[17]~17_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1103_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~55_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1079_combout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~312_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[18]~18_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~56_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1080_combout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1104_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~57_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1081_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~313_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[19]~19_combout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~314_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[20]~20_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~58_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1082_combout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1105_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~59_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1083_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~315_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[21]~21_combout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~60_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1084_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~316_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[22]~22_combout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~317_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[23]~23_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1106_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~61_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1085_combout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~318_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[24]~24_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~62_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1086_combout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1107_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~63_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1087_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~319_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[25]~25_combout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~64_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1088_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~320_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[26]~26_combout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~321_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[27]~27_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1108_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~65_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1089_combout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~66_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1090_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~322_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[28]~28_combout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~323_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[29]~29_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1109_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~67_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1091_combout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~324_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[30]~30_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~68feeder_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~68_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1092_combout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1110_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~69_q\ : std_logic;
SIGNAL \REG_BLOCK|registrador~1093_combout\ : std_logic;
SIGNAL \REG_BLOCK|registrador~325_q\ : std_logic;
SIGNAL \REG_BLOCK|saidaA[31]~31_combout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \REG_BLOCK|saidaB[2]~0_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \REG_BLOCK|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[31]~31_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[30]~30_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[29]~29_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[28]~28_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[27]~27_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[26]~26_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[25]~25_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[24]~24_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[23]~23_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[22]~22_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[21]~21_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[20]~20_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[19]~19_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[18]~18_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[17]~17_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[16]~16_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[15]~15_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[14]~14_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[13]~13_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[12]~12_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[11]~11_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[10]~10_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[9]~9_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[8]~8_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[7]~7_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[6]~6_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[5]~5_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[4]~4_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[3]~3_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[2]~2_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[1]~1_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_saidaA[0]~0_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[28]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[26]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[25]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[22]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[18]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[16]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_WR_RD~input_o\ : std_logic;
SIGNAL \ALT_INV_ULA_OP~input_o\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1089_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \REG_BLOCK|ALT_INV_registrador~49_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_ULA_OP <= ULA_OP;
ww_WR_RD <= WR_RD;
funct <= ww_funct;
PC_OUT <= ww_PC_OUT;
ULA_OUT <= ww_ULA_OUT;
RD_addr <= ww_RD_addr;
RT_addr <= ww_RT_addr;
RS_addr <= ww_RS_addr;
RT_OUT <= ww_RT_OUT;
RS_OUT <= ww_RS_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\REG_BLOCK|ALT_INV_registrador~325_q\ <= NOT \REG_BLOCK|registrador~325_q\;
\REG_BLOCK|ALT_INV_registrador~324_q\ <= NOT \REG_BLOCK|registrador~324_q\;
\REG_BLOCK|ALT_INV_registrador~323_q\ <= NOT \REG_BLOCK|registrador~323_q\;
\REG_BLOCK|ALT_INV_registrador~322_q\ <= NOT \REG_BLOCK|registrador~322_q\;
\REG_BLOCK|ALT_INV_registrador~321_q\ <= NOT \REG_BLOCK|registrador~321_q\;
\REG_BLOCK|ALT_INV_registrador~320_q\ <= NOT \REG_BLOCK|registrador~320_q\;
\REG_BLOCK|ALT_INV_registrador~319_q\ <= NOT \REG_BLOCK|registrador~319_q\;
\REG_BLOCK|ALT_INV_registrador~318_q\ <= NOT \REG_BLOCK|registrador~318_q\;
\REG_BLOCK|ALT_INV_registrador~317_q\ <= NOT \REG_BLOCK|registrador~317_q\;
\REG_BLOCK|ALT_INV_registrador~316_q\ <= NOT \REG_BLOCK|registrador~316_q\;
\REG_BLOCK|ALT_INV_registrador~315_q\ <= NOT \REG_BLOCK|registrador~315_q\;
\REG_BLOCK|ALT_INV_registrador~314_q\ <= NOT \REG_BLOCK|registrador~314_q\;
\REG_BLOCK|ALT_INV_registrador~313_q\ <= NOT \REG_BLOCK|registrador~313_q\;
\REG_BLOCK|ALT_INV_registrador~312_q\ <= NOT \REG_BLOCK|registrador~312_q\;
\REG_BLOCK|ALT_INV_registrador~311_q\ <= NOT \REG_BLOCK|registrador~311_q\;
\REG_BLOCK|ALT_INV_registrador~310_q\ <= NOT \REG_BLOCK|registrador~310_q\;
\REG_BLOCK|ALT_INV_registrador~309_q\ <= NOT \REG_BLOCK|registrador~309_q\;
\REG_BLOCK|ALT_INV_registrador~308_q\ <= NOT \REG_BLOCK|registrador~308_q\;
\REG_BLOCK|ALT_INV_registrador~307_q\ <= NOT \REG_BLOCK|registrador~307_q\;
\REG_BLOCK|ALT_INV_registrador~306_q\ <= NOT \REG_BLOCK|registrador~306_q\;
\REG_BLOCK|ALT_INV_registrador~305_q\ <= NOT \REG_BLOCK|registrador~305_q\;
\REG_BLOCK|ALT_INV_registrador~304_q\ <= NOT \REG_BLOCK|registrador~304_q\;
\REG_BLOCK|ALT_INV_registrador~303_q\ <= NOT \REG_BLOCK|registrador~303_q\;
\REG_BLOCK|ALT_INV_registrador~302_q\ <= NOT \REG_BLOCK|registrador~302_q\;
\REG_BLOCK|ALT_INV_registrador~301_q\ <= NOT \REG_BLOCK|registrador~301_q\;
\REG_BLOCK|ALT_INV_registrador~300_q\ <= NOT \REG_BLOCK|registrador~300_q\;
\REG_BLOCK|ALT_INV_registrador~299_q\ <= NOT \REG_BLOCK|registrador~299_q\;
\REG_BLOCK|ALT_INV_registrador~298_q\ <= NOT \REG_BLOCK|registrador~298_q\;
\REG_BLOCK|ALT_INV_registrador~297_q\ <= NOT \REG_BLOCK|registrador~297_q\;
\REG_BLOCK|ALT_INV_registrador~296_q\ <= NOT \REG_BLOCK|registrador~296_q\;
\REG_BLOCK|ALT_INV_registrador~295_q\ <= NOT \REG_BLOCK|registrador~295_q\;
\REG_BLOCK|ALT_INV_registrador~294_q\ <= NOT \REG_BLOCK|registrador~294_q\;
\ULA|ALT_INV_Add0~125_sumout\ <= NOT \ULA|Add0~125_sumout\;
\ULA|ALT_INV_Add0~121_sumout\ <= NOT \ULA|Add0~121_sumout\;
\ULA|ALT_INV_Add0~117_sumout\ <= NOT \ULA|Add0~117_sumout\;
\ULA|ALT_INV_Add0~109_sumout\ <= NOT \ULA|Add0~109_sumout\;
\ULA|ALT_INV_Add0~101_sumout\ <= NOT \ULA|Add0~101_sumout\;
\ULA|ALT_INV_Add0~93_sumout\ <= NOT \ULA|Add0~93_sumout\;
\ULA|ALT_INV_Add0~85_sumout\ <= NOT \ULA|Add0~85_sumout\;
\ULA|ALT_INV_Add0~77_sumout\ <= NOT \ULA|Add0~77_sumout\;
\ULA|ALT_INV_Add0~69_sumout\ <= NOT \ULA|Add0~69_sumout\;
\ULA|ALT_INV_Add0~61_sumout\ <= NOT \ULA|Add0~61_sumout\;
\ULA|ALT_INV_Add0~53_sumout\ <= NOT \ULA|Add0~53_sumout\;
\ULA|ALT_INV_Add0~45_sumout\ <= NOT \ULA|Add0~45_sumout\;
\ULA|ALT_INV_Add0~37_sumout\ <= NOT \ULA|Add0~37_sumout\;
\ULA|ALT_INV_Add0~29_sumout\ <= NOT \ULA|Add0~29_sumout\;
\ULA|ALT_INV_Add0~21_sumout\ <= NOT \ULA|Add0~21_sumout\;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;
\REG_BLOCK|ALT_INV_registrador~1072_combout\ <= NOT \REG_BLOCK|registrador~1072_combout\;
\REG_BLOCK|ALT_INV_registrador~48_q\ <= NOT \REG_BLOCK|registrador~48_q\;
\REG_BLOCK|ALT_INV_registrador~1071_combout\ <= NOT \REG_BLOCK|registrador~1071_combout\;
\REG_BLOCK|ALT_INV_registrador~47_q\ <= NOT \REG_BLOCK|registrador~47_q\;
\REG_BLOCK|ALT_INV_registrador~1070_combout\ <= NOT \REG_BLOCK|registrador~1070_combout\;
\REG_BLOCK|ALT_INV_registrador~46_q\ <= NOT \REG_BLOCK|registrador~46_q\;
\REG_BLOCK|ALT_INV_registrador~1069_combout\ <= NOT \REG_BLOCK|registrador~1069_combout\;
\REG_BLOCK|ALT_INV_registrador~45_q\ <= NOT \REG_BLOCK|registrador~45_q\;
\REG_BLOCK|ALT_INV_registrador~1068_combout\ <= NOT \REG_BLOCK|registrador~1068_combout\;
\REG_BLOCK|ALT_INV_registrador~44_q\ <= NOT \REG_BLOCK|registrador~44_q\;
\REG_BLOCK|ALT_INV_registrador~1067_combout\ <= NOT \REG_BLOCK|registrador~1067_combout\;
\REG_BLOCK|ALT_INV_registrador~43_q\ <= NOT \REG_BLOCK|registrador~43_q\;
\REG_BLOCK|ALT_INV_registrador~1066_combout\ <= NOT \REG_BLOCK|registrador~1066_combout\;
\REG_BLOCK|ALT_INV_registrador~42_q\ <= NOT \REG_BLOCK|registrador~42_q\;
\REG_BLOCK|ALT_INV_registrador~1065_combout\ <= NOT \REG_BLOCK|registrador~1065_combout\;
\REG_BLOCK|ALT_INV_registrador~1064_combout\ <= NOT \REG_BLOCK|registrador~1064_combout\;
\REG_BLOCK|ALT_INV_registrador~1063_combout\ <= NOT \REG_BLOCK|registrador~1063_combout\;
\REG_BLOCK|ALT_INV_registrador~1062_combout\ <= NOT \REG_BLOCK|registrador~1062_combout\;
\REG_BLOCK|ALT_INV_saidaA[31]~31_combout\ <= NOT \REG_BLOCK|saidaA[31]~31_combout\;
\REG_BLOCK|ALT_INV_saidaA[30]~30_combout\ <= NOT \REG_BLOCK|saidaA[30]~30_combout\;
\REG_BLOCK|ALT_INV_saidaA[29]~29_combout\ <= NOT \REG_BLOCK|saidaA[29]~29_combout\;
\REG_BLOCK|ALT_INV_saidaA[28]~28_combout\ <= NOT \REG_BLOCK|saidaA[28]~28_combout\;
\REG_BLOCK|ALT_INV_saidaA[27]~27_combout\ <= NOT \REG_BLOCK|saidaA[27]~27_combout\;
\REG_BLOCK|ALT_INV_saidaA[26]~26_combout\ <= NOT \REG_BLOCK|saidaA[26]~26_combout\;
\REG_BLOCK|ALT_INV_saidaA[25]~25_combout\ <= NOT \REG_BLOCK|saidaA[25]~25_combout\;
\REG_BLOCK|ALT_INV_saidaA[24]~24_combout\ <= NOT \REG_BLOCK|saidaA[24]~24_combout\;
\REG_BLOCK|ALT_INV_saidaA[23]~23_combout\ <= NOT \REG_BLOCK|saidaA[23]~23_combout\;
\REG_BLOCK|ALT_INV_saidaA[22]~22_combout\ <= NOT \REG_BLOCK|saidaA[22]~22_combout\;
\REG_BLOCK|ALT_INV_saidaA[21]~21_combout\ <= NOT \REG_BLOCK|saidaA[21]~21_combout\;
\REG_BLOCK|ALT_INV_saidaA[20]~20_combout\ <= NOT \REG_BLOCK|saidaA[20]~20_combout\;
\REG_BLOCK|ALT_INV_saidaA[19]~19_combout\ <= NOT \REG_BLOCK|saidaA[19]~19_combout\;
\REG_BLOCK|ALT_INV_saidaA[18]~18_combout\ <= NOT \REG_BLOCK|saidaA[18]~18_combout\;
\REG_BLOCK|ALT_INV_saidaA[17]~17_combout\ <= NOT \REG_BLOCK|saidaA[17]~17_combout\;
\REG_BLOCK|ALT_INV_saidaA[16]~16_combout\ <= NOT \REG_BLOCK|saidaA[16]~16_combout\;
\REG_BLOCK|ALT_INV_saidaA[15]~15_combout\ <= NOT \REG_BLOCK|saidaA[15]~15_combout\;
\REG_BLOCK|ALT_INV_saidaA[14]~14_combout\ <= NOT \REG_BLOCK|saidaA[14]~14_combout\;
\REG_BLOCK|ALT_INV_saidaA[13]~13_combout\ <= NOT \REG_BLOCK|saidaA[13]~13_combout\;
\REG_BLOCK|ALT_INV_saidaA[12]~12_combout\ <= NOT \REG_BLOCK|saidaA[12]~12_combout\;
\REG_BLOCK|ALT_INV_saidaA[11]~11_combout\ <= NOT \REG_BLOCK|saidaA[11]~11_combout\;
\REG_BLOCK|ALT_INV_saidaA[10]~10_combout\ <= NOT \REG_BLOCK|saidaA[10]~10_combout\;
\REG_BLOCK|ALT_INV_saidaA[9]~9_combout\ <= NOT \REG_BLOCK|saidaA[9]~9_combout\;
\REG_BLOCK|ALT_INV_saidaA[8]~8_combout\ <= NOT \REG_BLOCK|saidaA[8]~8_combout\;
\REG_BLOCK|ALT_INV_saidaA[7]~7_combout\ <= NOT \REG_BLOCK|saidaA[7]~7_combout\;
\REG_BLOCK|ALT_INV_saidaA[6]~6_combout\ <= NOT \REG_BLOCK|saidaA[6]~6_combout\;
\REG_BLOCK|ALT_INV_saidaA[5]~5_combout\ <= NOT \REG_BLOCK|saidaA[5]~5_combout\;
\REG_BLOCK|ALT_INV_saidaA[4]~4_combout\ <= NOT \REG_BLOCK|saidaA[4]~4_combout\;
\REG_BLOCK|ALT_INV_saidaA[3]~3_combout\ <= NOT \REG_BLOCK|saidaA[3]~3_combout\;
\REG_BLOCK|ALT_INV_saidaA[2]~2_combout\ <= NOT \REG_BLOCK|saidaA[2]~2_combout\;
\REG_BLOCK|ALT_INV_saidaA[1]~1_combout\ <= NOT \REG_BLOCK|saidaA[1]~1_combout\;
\REG_BLOCK|ALT_INV_saidaA[0]~0_combout\ <= NOT \REG_BLOCK|saidaA[0]~0_combout\;
\REG_BLOCK|ALT_INV_registrador~41_q\ <= NOT \REG_BLOCK|registrador~41_q\;
\REG_BLOCK|ALT_INV_registrador~40_q\ <= NOT \REG_BLOCK|registrador~40_q\;
\REG_BLOCK|ALT_INV_registrador~39_q\ <= NOT \REG_BLOCK|registrador~39_q\;
\REG_BLOCK|ALT_INV_registrador~38_q\ <= NOT \REG_BLOCK|registrador~38_q\;
\PC|ALT_INV_DOUT\(31) <= NOT \PC|DOUT\(31);
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\PC|ALT_INV_DOUT\(24) <= NOT \PC|DOUT\(24);
\PC|ALT_INV_DOUT\(23) <= NOT \PC|DOUT\(23);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\PC|ALT_INV_DOUT\(19) <= NOT \PC|DOUT\(19);
\PC|ALT_INV_DOUT\(17) <= NOT \PC|DOUT\(17);
\PC|ALT_INV_DOUT\(15) <= NOT \PC|DOUT\(15);
\PC|ALT_INV_DOUT\(14) <= NOT \PC|DOUT\(14);
\PC|ALT_INV_DOUT\(11) <= NOT \PC|DOUT\(11);
\PC|ALT_INV_DOUT\(10) <= NOT \PC|DOUT\(10);
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT[28]~DUPLICATE_q\ <= NOT \PC|DOUT[28]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[26]~DUPLICATE_q\ <= NOT \PC|DOUT[26]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[25]~DUPLICATE_q\ <= NOT \PC|DOUT[25]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[22]~DUPLICATE_q\ <= NOT \PC|DOUT[22]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[21]~DUPLICATE_q\ <= NOT \PC|DOUT[21]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[18]~DUPLICATE_q\ <= NOT \PC|DOUT[18]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[16]~DUPLICATE_q\ <= NOT \PC|DOUT[16]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[13]~DUPLICATE_q\ <= NOT \PC|DOUT[13]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[12]~DUPLICATE_q\ <= NOT \PC|DOUT[12]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC|DOUT[8]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC|DOUT[4]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\ALT_INV_WR_RD~input_o\ <= NOT \WR_RD~input_o\;
\ALT_INV_ULA_OP~input_o\ <= NOT \ULA_OP~input_o\;
\REG_BLOCK|ALT_INV_registrador~1093_combout\ <= NOT \REG_BLOCK|registrador~1093_combout\;
\REG_BLOCK|ALT_INV_registrador~69_q\ <= NOT \REG_BLOCK|registrador~69_q\;
\REG_BLOCK|ALT_INV_registrador~1092_combout\ <= NOT \REG_BLOCK|registrador~1092_combout\;
\REG_BLOCK|ALT_INV_registrador~68_q\ <= NOT \REG_BLOCK|registrador~68_q\;
\REG_BLOCK|ALT_INV_registrador~1091_combout\ <= NOT \REG_BLOCK|registrador~1091_combout\;
\REG_BLOCK|ALT_INV_registrador~67_q\ <= NOT \REG_BLOCK|registrador~67_q\;
\REG_BLOCK|ALT_INV_registrador~1090_combout\ <= NOT \REG_BLOCK|registrador~1090_combout\;
\REG_BLOCK|ALT_INV_registrador~66_q\ <= NOT \REG_BLOCK|registrador~66_q\;
\REG_BLOCK|ALT_INV_registrador~1089_combout\ <= NOT \REG_BLOCK|registrador~1089_combout\;
\REG_BLOCK|ALT_INV_registrador~65_q\ <= NOT \REG_BLOCK|registrador~65_q\;
\REG_BLOCK|ALT_INV_registrador~1088_combout\ <= NOT \REG_BLOCK|registrador~1088_combout\;
\REG_BLOCK|ALT_INV_registrador~64_q\ <= NOT \REG_BLOCK|registrador~64_q\;
\REG_BLOCK|ALT_INV_registrador~1087_combout\ <= NOT \REG_BLOCK|registrador~1087_combout\;
\REG_BLOCK|ALT_INV_registrador~63_q\ <= NOT \REG_BLOCK|registrador~63_q\;
\REG_BLOCK|ALT_INV_registrador~1086_combout\ <= NOT \REG_BLOCK|registrador~1086_combout\;
\REG_BLOCK|ALT_INV_registrador~62_q\ <= NOT \REG_BLOCK|registrador~62_q\;
\REG_BLOCK|ALT_INV_registrador~1085_combout\ <= NOT \REG_BLOCK|registrador~1085_combout\;
\REG_BLOCK|ALT_INV_registrador~61_q\ <= NOT \REG_BLOCK|registrador~61_q\;
\REG_BLOCK|ALT_INV_registrador~1084_combout\ <= NOT \REG_BLOCK|registrador~1084_combout\;
\REG_BLOCK|ALT_INV_registrador~60_q\ <= NOT \REG_BLOCK|registrador~60_q\;
\REG_BLOCK|ALT_INV_registrador~1083_combout\ <= NOT \REG_BLOCK|registrador~1083_combout\;
\REG_BLOCK|ALT_INV_registrador~59_q\ <= NOT \REG_BLOCK|registrador~59_q\;
\REG_BLOCK|ALT_INV_registrador~1082_combout\ <= NOT \REG_BLOCK|registrador~1082_combout\;
\REG_BLOCK|ALT_INV_registrador~58_q\ <= NOT \REG_BLOCK|registrador~58_q\;
\REG_BLOCK|ALT_INV_registrador~1081_combout\ <= NOT \REG_BLOCK|registrador~1081_combout\;
\REG_BLOCK|ALT_INV_registrador~57_q\ <= NOT \REG_BLOCK|registrador~57_q\;
\REG_BLOCK|ALT_INV_registrador~1080_combout\ <= NOT \REG_BLOCK|registrador~1080_combout\;
\REG_BLOCK|ALT_INV_registrador~56_q\ <= NOT \REG_BLOCK|registrador~56_q\;
\REG_BLOCK|ALT_INV_registrador~1079_combout\ <= NOT \REG_BLOCK|registrador~1079_combout\;
\REG_BLOCK|ALT_INV_registrador~55_q\ <= NOT \REG_BLOCK|registrador~55_q\;
\REG_BLOCK|ALT_INV_registrador~1078_combout\ <= NOT \REG_BLOCK|registrador~1078_combout\;
\REG_BLOCK|ALT_INV_registrador~54_q\ <= NOT \REG_BLOCK|registrador~54_q\;
\REG_BLOCK|ALT_INV_registrador~1077_combout\ <= NOT \REG_BLOCK|registrador~1077_combout\;
\REG_BLOCK|ALT_INV_registrador~53_q\ <= NOT \REG_BLOCK|registrador~53_q\;
\REG_BLOCK|ALT_INV_registrador~1076_combout\ <= NOT \REG_BLOCK|registrador~1076_combout\;
\REG_BLOCK|ALT_INV_registrador~52_q\ <= NOT \REG_BLOCK|registrador~52_q\;
\REG_BLOCK|ALT_INV_registrador~1075_combout\ <= NOT \REG_BLOCK|registrador~1075_combout\;
\REG_BLOCK|ALT_INV_registrador~51_q\ <= NOT \REG_BLOCK|registrador~51_q\;
\REG_BLOCK|ALT_INV_registrador~1074_combout\ <= NOT \REG_BLOCK|registrador~1074_combout\;
\REG_BLOCK|ALT_INV_registrador~50_q\ <= NOT \REG_BLOCK|registrador~50_q\;
\REG_BLOCK|ALT_INV_registrador~1073_combout\ <= NOT \REG_BLOCK|registrador~1073_combout\;
\REG_BLOCK|ALT_INV_registrador~49_q\ <= NOT \REG_BLOCK|registrador~49_q\;

-- Location: IOOBUF_X56_Y81_N53
\funct[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_funct(0));

-- Location: IOOBUF_X58_Y0_N59
\funct[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_funct(1));

-- Location: IOOBUF_X88_Y81_N20
\funct[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_funct(2));

-- Location: IOOBUF_X74_Y81_N59
\funct[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_funct(3));

-- Location: IOOBUF_X2_Y0_N42
\funct[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_funct(4));

-- Location: IOOBUF_X50_Y81_N42
\funct[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_funct(5));

-- Location: IOOBUF_X60_Y81_N2
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X64_Y81_N36
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X36_Y0_N53
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X40_Y0_N36
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X40_Y0_N19
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X52_Y0_N2
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X40_Y0_N2
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X40_Y0_N53
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X68_Y0_N19
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X66_Y0_N42
\PC_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => ww_PC_OUT(9));

-- Location: IOOBUF_X36_Y81_N19
\PC_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(10),
	devoe => ww_devoe,
	o => ww_PC_OUT(10));

-- Location: IOOBUF_X70_Y0_N19
\PC_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(11),
	devoe => ww_devoe,
	o => ww_PC_OUT(11));

-- Location: IOOBUF_X70_Y0_N53
\PC_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(12),
	devoe => ww_devoe,
	o => ww_PC_OUT(12));

-- Location: IOOBUF_X56_Y0_N19
\PC_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(13),
	devoe => ww_devoe,
	o => ww_PC_OUT(13));

-- Location: IOOBUF_X66_Y0_N59
\PC_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(14),
	devoe => ww_devoe,
	o => ww_PC_OUT(14));

-- Location: IOOBUF_X54_Y0_N19
\PC_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(15),
	devoe => ww_devoe,
	o => ww_PC_OUT(15));

-- Location: IOOBUF_X64_Y0_N53
\PC_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(16),
	devoe => ww_devoe,
	o => ww_PC_OUT(16));

-- Location: IOOBUF_X54_Y0_N53
\PC_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(17),
	devoe => ww_devoe,
	o => ww_PC_OUT(17));

-- Location: IOOBUF_X58_Y0_N42
\PC_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(18),
	devoe => ww_devoe,
	o => ww_PC_OUT(18));

-- Location: IOOBUF_X56_Y0_N2
\PC_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(19),
	devoe => ww_devoe,
	o => ww_PC_OUT(19));

-- Location: IOOBUF_X54_Y0_N2
\PC_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(20),
	devoe => ww_devoe,
	o => ww_PC_OUT(20));

-- Location: IOOBUF_X66_Y0_N76
\PC_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(21),
	devoe => ww_devoe,
	o => ww_PC_OUT(21));

-- Location: IOOBUF_X58_Y0_N93
\PC_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(22),
	devoe => ww_devoe,
	o => ww_PC_OUT(22));

-- Location: IOOBUF_X52_Y0_N36
\PC_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(23),
	devoe => ww_devoe,
	o => ww_PC_OUT(23));

-- Location: IOOBUF_X50_Y0_N42
\PC_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(24),
	devoe => ww_devoe,
	o => ww_PC_OUT(24));

-- Location: IOOBUF_X56_Y0_N53
\PC_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(25),
	devoe => ww_devoe,
	o => ww_PC_OUT(25));

-- Location: IOOBUF_X52_Y0_N19
\PC_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(26),
	devoe => ww_devoe,
	o => ww_PC_OUT(26));

-- Location: IOOBUF_X54_Y0_N36
\PC_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(27),
	devoe => ww_devoe,
	o => ww_PC_OUT(27));

-- Location: IOOBUF_X40_Y81_N19
\PC_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(28),
	devoe => ww_devoe,
	o => ww_PC_OUT(28));

-- Location: IOOBUF_X56_Y0_N36
\PC_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(29),
	devoe => ww_devoe,
	o => ww_PC_OUT(29));

-- Location: IOOBUF_X72_Y0_N36
\PC_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(30),
	devoe => ww_devoe,
	o => ww_PC_OUT(30));

-- Location: IOOBUF_X36_Y81_N2
\PC_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(31),
	devoe => ww_devoe,
	o => ww_PC_OUT(31));

-- Location: IOOBUF_X30_Y0_N53
\ULA_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(0));

-- Location: IOOBUF_X64_Y0_N19
\ULA_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(1));

-- Location: IOOBUF_X89_Y6_N39
\ULA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(2));

-- Location: IOOBUF_X62_Y0_N2
\ULA_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(3));

-- Location: IOOBUF_X50_Y0_N59
\ULA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(4));

-- Location: IOOBUF_X38_Y0_N19
\ULA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(5));

-- Location: IOOBUF_X30_Y0_N19
\ULA_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(6));

-- Location: IOOBUF_X38_Y0_N36
\ULA_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(7));

-- Location: IOOBUF_X36_Y0_N36
\ULA_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~33_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(8));

-- Location: IOOBUF_X89_Y4_N96
\ULA_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~37_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(9));

-- Location: IOOBUF_X30_Y0_N36
\ULA_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~41_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(10));

-- Location: IOOBUF_X38_Y0_N53
\ULA_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~45_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(11));

-- Location: IOOBUF_X72_Y0_N2
\ULA_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~49_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(12));

-- Location: IOOBUF_X38_Y0_N2
\ULA_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~53_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(13));

-- Location: IOOBUF_X32_Y0_N19
\ULA_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~57_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(14));

-- Location: IOOBUF_X26_Y0_N59
\ULA_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~61_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(15));

-- Location: IOOBUF_X30_Y0_N2
\ULA_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(16));

-- Location: IOOBUF_X8_Y0_N2
\ULA_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~69_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(17));

-- Location: IOOBUF_X64_Y0_N36
\ULA_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~73_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(18));

-- Location: IOOBUF_X60_Y0_N19
\ULA_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~77_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(19));

-- Location: IOOBUF_X50_Y0_N76
\ULA_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~81_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(20));

-- Location: IOOBUF_X34_Y0_N42
\ULA_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~85_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(21));

-- Location: IOOBUF_X32_Y0_N53
\ULA_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~89_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(22));

-- Location: IOOBUF_X28_Y81_N53
\ULA_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~93_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(23));

-- Location: IOOBUF_X32_Y0_N2
\ULA_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~97_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(24));

-- Location: IOOBUF_X6_Y0_N19
\ULA_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~101_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(25));

-- Location: IOOBUF_X36_Y0_N19
\ULA_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~105_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(26));

-- Location: IOOBUF_X32_Y0_N36
\ULA_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~109_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(27));

-- Location: IOOBUF_X60_Y0_N53
\ULA_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~113_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(28));

-- Location: IOOBUF_X66_Y0_N93
\ULA_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~117_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(29));

-- Location: IOOBUF_X8_Y0_N53
\ULA_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~121_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(30));

-- Location: IOOBUF_X6_Y0_N36
\ULA_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~125_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT(31));

-- Location: IOOBUF_X76_Y81_N36
\RD_addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RD_addr(0));

-- Location: IOOBUF_X89_Y9_N5
\RD_addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RD_addr(1));

-- Location: IOOBUF_X60_Y81_N53
\RD_addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RD_addr(2));

-- Location: IOOBUF_X40_Y81_N2
\RD_addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_RD_addr(3));

-- Location: IOOBUF_X56_Y81_N36
\RD_addr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RD_addr(4));

-- Location: IOOBUF_X58_Y0_N76
\RT_addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_addr(0));

-- Location: IOOBUF_X40_Y81_N36
\RT_addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_RT_addr(1));

-- Location: IOOBUF_X58_Y81_N42
\RT_addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_addr(2));

-- Location: IOOBUF_X50_Y81_N76
\RT_addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_RT_addr(3));

-- Location: IOOBUF_X50_Y81_N59
\RT_addr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_addr(4));

-- Location: IOOBUF_X34_Y81_N93
\RS_addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_RS_addr(0));

-- Location: IOOBUF_X54_Y81_N2
\RS_addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_addr(1));

-- Location: IOOBUF_X52_Y81_N36
\RS_addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_addr(2));

-- Location: IOOBUF_X38_Y81_N19
\RS_addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_RS_addr(3));

-- Location: IOOBUF_X32_Y81_N36
\RS_addr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_addr(4));

-- Location: IOOBUF_X36_Y81_N53
\RT_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(0));

-- Location: IOOBUF_X36_Y81_N36
\RT_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(1));

-- Location: IOOBUF_X52_Y0_N53
\RT_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaB[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(2));

-- Location: IOOBUF_X50_Y81_N93
\RT_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(3));

-- Location: IOOBUF_X68_Y0_N36
\RT_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(4));

-- Location: IOOBUF_X60_Y81_N19
\RT_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(5));

-- Location: IOOBUF_X58_Y81_N93
\RT_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(6));

-- Location: IOOBUF_X54_Y81_N36
\RT_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(7));

-- Location: IOOBUF_X62_Y81_N36
\RT_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(8));

-- Location: IOOBUF_X72_Y0_N53
\RT_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(9));

-- Location: IOOBUF_X30_Y81_N2
\RT_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(10));

-- Location: IOOBUF_X89_Y36_N56
\RT_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(11));

-- Location: IOOBUF_X86_Y81_N19
\RT_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(12));

-- Location: IOOBUF_X64_Y81_N19
\RT_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(13));

-- Location: IOOBUF_X52_Y81_N2
\RT_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(14));

-- Location: IOOBUF_X72_Y81_N2
\RT_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(15));

-- Location: IOOBUF_X58_Y81_N76
\RT_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(16));

-- Location: IOOBUF_X52_Y81_N53
\RT_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(17));

-- Location: IOOBUF_X78_Y81_N19
\RT_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(18));

-- Location: IOOBUF_X89_Y37_N39
\RT_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(19));

-- Location: IOOBUF_X88_Y81_N3
\RT_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(20));

-- Location: IOOBUF_X34_Y81_N59
\RT_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(21));

-- Location: IOOBUF_X89_Y9_N56
\RT_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(22));

-- Location: IOOBUF_X86_Y81_N2
\RT_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(23));

-- Location: IOOBUF_X78_Y81_N53
\RT_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(24));

-- Location: IOOBUF_X86_Y81_N53
\RT_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(25));

-- Location: IOOBUF_X62_Y81_N2
\RT_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(26));

-- Location: IOOBUF_X80_Y81_N53
\RT_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(27));

-- Location: IOOBUF_X89_Y35_N45
\RT_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(28));

-- Location: IOOBUF_X56_Y81_N2
\RT_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(29));

-- Location: IOOBUF_X84_Y81_N19
\RT_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(30));

-- Location: IOOBUF_X26_Y81_N93
\RT_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(31));

-- Location: IOOBUF_X8_Y0_N19
\RS_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(0));

-- Location: IOOBUF_X89_Y4_N79
\RS_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(1));

-- Location: IOOBUF_X50_Y0_N93
\RS_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(2));

-- Location: IOOBUF_X64_Y0_N2
\RS_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(3));

-- Location: IOOBUF_X89_Y4_N45
\RS_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(4));

-- Location: IOOBUF_X4_Y0_N19
\RS_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(5));

-- Location: IOOBUF_X6_Y0_N53
\RS_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(6));

-- Location: IOOBUF_X62_Y0_N36
\RS_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(7));

-- Location: IOOBUF_X36_Y0_N2
\RS_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(8));

-- Location: IOOBUF_X68_Y0_N53
\RS_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(9));

-- Location: IOOBUF_X34_Y0_N93
\RS_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(10));

-- Location: IOOBUF_X4_Y0_N2
\RS_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(11));

-- Location: IOOBUF_X8_Y0_N36
\RS_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(12));

-- Location: IOOBUF_X28_Y0_N53
\RS_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(13));

-- Location: IOOBUF_X6_Y0_N2
\RS_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(14));

-- Location: IOOBUF_X89_Y4_N62
\RS_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(15));

-- Location: IOOBUF_X26_Y0_N42
\RS_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(16));

-- Location: IOOBUF_X26_Y0_N76
\RS_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(17));

-- Location: IOOBUF_X34_Y81_N42
\RS_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(18));

-- Location: IOOBUF_X34_Y0_N59
\RS_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(19));

-- Location: IOOBUF_X62_Y0_N19
\RS_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(20));

-- Location: IOOBUF_X34_Y0_N76
\RS_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(21));

-- Location: IOOBUF_X60_Y0_N36
\RS_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(22));

-- Location: IOOBUF_X62_Y0_N53
\RS_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(23));

-- Location: IOOBUF_X34_Y81_N76
\RS_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(24));

-- Location: IOOBUF_X2_Y0_N76
\RS_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(25));

-- Location: IOOBUF_X28_Y0_N19
\RS_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(26));

-- Location: IOOBUF_X28_Y0_N36
\RS_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(27));

-- Location: IOOBUF_X26_Y0_N93
\RS_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(28));

-- Location: IOOBUF_X28_Y0_N2
\RS_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(29));

-- Location: IOOBUF_X28_Y81_N2
\RS_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(30));

-- Location: IOOBUF_X4_Y0_N53
\RS_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_BLOCK|saidaA[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_RS_OUT(31));

-- Location: IOIBUF_X89_Y35_N61
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X33_Y4_N51
\PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~0_combout\ = !\PC|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(2),
	combout => \PC|DOUT[2]~0_combout\);

-- Location: FF_X35_Y4_N44
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \PC|DOUT[2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X36_Y4_N30
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( \PC|DOUT\(2) ) + ( !VCC ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( \PC|DOUT\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => GND,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: FF_X36_Y4_N31
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N33
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: FF_X36_Y4_N35
\PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: FF_X36_Y4_N38
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LABCELL_X36_Y4_N39
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X36_Y4_N41
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N42
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: FF_X36_Y4_N44
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: FF_X36_Y4_N32
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: FF_X36_Y4_N40
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X36_Y4_N0
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT\(6) & ( \PC|DOUT\(2) & ( (!\PC|DOUT\(5) & (!\PC|DOUT\(7) & (!\PC|DOUT[4]~DUPLICATE_q\ & !\PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~0_combout\);

-- Location: FF_X36_Y4_N43
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N24
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\PC|DOUT[6]~DUPLICATE_q\ & ( (!\PC|DOUT\(5) & (!\PC|DOUT\(3) & (!\PC|DOUT[4]~DUPLICATE_q\ & !\PC|DOUT[7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \ROM|memROM~1_combout\);

-- Location: FF_X36_Y4_N47
\PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X36_Y4_N46
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: LABCELL_X36_Y4_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(9),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X36_Y4_N50
\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

-- Location: LABCELL_X36_Y4_N51
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(10),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

-- Location: FF_X36_Y4_N52
\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

-- Location: LABCELL_X36_Y4_N54
\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))
-- \incrementaPC|Add0~34\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(11),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\,
	cout => \incrementaPC|Add0~34\);

-- Location: FF_X36_Y4_N56
\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

-- Location: FF_X36_Y4_N59
\PC|DOUT[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[12]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N57
\incrementaPC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~37_sumout\ = SUM(( \PC|DOUT[12]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~34\ ))
-- \incrementaPC|Add0~38\ = CARRY(( \PC|DOUT[12]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[12]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~34\,
	sumout => \incrementaPC|Add0~37_sumout\,
	cout => \incrementaPC|Add0~38\);

-- Location: FF_X36_Y4_N58
\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

-- Location: FF_X36_Y3_N2
\PC|DOUT[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[13]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N0
\incrementaPC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~41_sumout\ = SUM(( \PC|DOUT[13]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~38\ ))
-- \incrementaPC|Add0~42\ = CARRY(( \PC|DOUT[13]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[13]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~38\,
	sumout => \incrementaPC|Add0~41_sumout\,
	cout => \incrementaPC|Add0~42\);

-- Location: FF_X36_Y3_N1
\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

-- Location: LABCELL_X36_Y3_N3
\incrementaPC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~45_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \incrementaPC|Add0~42\ ))
-- \incrementaPC|Add0~46\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \incrementaPC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(14),
	cin => \incrementaPC|Add0~42\,
	sumout => \incrementaPC|Add0~45_sumout\,
	cout => \incrementaPC|Add0~46\);

-- Location: FF_X36_Y3_N5
\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

-- Location: LABCELL_X36_Y3_N6
\incrementaPC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~49_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \incrementaPC|Add0~46\ ))
-- \incrementaPC|Add0~50\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \incrementaPC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(15),
	cin => \incrementaPC|Add0~46\,
	sumout => \incrementaPC|Add0~49_sumout\,
	cout => \incrementaPC|Add0~50\);

-- Location: FF_X36_Y3_N7
\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

-- Location: FF_X36_Y3_N11
\PC|DOUT[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[16]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N9
\incrementaPC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~53_sumout\ = SUM(( \PC|DOUT[16]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~50\ ))
-- \incrementaPC|Add0~54\ = CARRY(( \PC|DOUT[16]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[16]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~50\,
	sumout => \incrementaPC|Add0~53_sumout\,
	cout => \incrementaPC|Add0~54\);

-- Location: FF_X36_Y3_N10
\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

-- Location: LABCELL_X36_Y3_N12
\incrementaPC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~57_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \incrementaPC|Add0~54\ ))
-- \incrementaPC|Add0~58\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \incrementaPC|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(17),
	cin => \incrementaPC|Add0~54\,
	sumout => \incrementaPC|Add0~57_sumout\,
	cout => \incrementaPC|Add0~58\);

-- Location: FF_X36_Y3_N14
\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

-- Location: FF_X36_Y3_N17
\PC|DOUT[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[18]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N15
\incrementaPC|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~61_sumout\ = SUM(( \PC|DOUT[18]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~58\ ))
-- \incrementaPC|Add0~62\ = CARRY(( \PC|DOUT[18]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[18]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~58\,
	sumout => \incrementaPC|Add0~61_sumout\,
	cout => \incrementaPC|Add0~62\);

-- Location: FF_X36_Y3_N16
\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

-- Location: LABCELL_X36_Y3_N18
\incrementaPC|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~65_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \incrementaPC|Add0~62\ ))
-- \incrementaPC|Add0~66\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \incrementaPC|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(19),
	cin => \incrementaPC|Add0~62\,
	sumout => \incrementaPC|Add0~65_sumout\,
	cout => \incrementaPC|Add0~66\);

-- Location: FF_X36_Y3_N20
\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

-- Location: LABCELL_X36_Y3_N21
\incrementaPC|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~69_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \incrementaPC|Add0~66\ ))
-- \incrementaPC|Add0~70\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \incrementaPC|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \incrementaPC|Add0~66\,
	sumout => \incrementaPC|Add0~69_sumout\,
	cout => \incrementaPC|Add0~70\);

-- Location: FF_X36_Y3_N23
\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

-- Location: FF_X36_Y3_N26
\PC|DOUT[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[21]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N24
\incrementaPC|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~73_sumout\ = SUM(( \PC|DOUT[21]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~70\ ))
-- \incrementaPC|Add0~74\ = CARRY(( \PC|DOUT[21]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[21]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~70\,
	sumout => \incrementaPC|Add0~73_sumout\,
	cout => \incrementaPC|Add0~74\);

-- Location: FF_X36_Y3_N25
\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

-- Location: FF_X36_Y3_N29
\PC|DOUT[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[22]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N27
\incrementaPC|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~77_sumout\ = SUM(( \PC|DOUT[22]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~74\ ))
-- \incrementaPC|Add0~78\ = CARRY(( \PC|DOUT[22]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[22]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~74\,
	sumout => \incrementaPC|Add0~77_sumout\,
	cout => \incrementaPC|Add0~78\);

-- Location: FF_X36_Y3_N28
\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

-- Location: LABCELL_X36_Y3_N30
\incrementaPC|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~81_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \incrementaPC|Add0~78\ ))
-- \incrementaPC|Add0~82\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \incrementaPC|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(23),
	cin => \incrementaPC|Add0~78\,
	sumout => \incrementaPC|Add0~81_sumout\,
	cout => \incrementaPC|Add0~82\);

-- Location: FF_X36_Y3_N31
\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

-- Location: LABCELL_X36_Y3_N33
\incrementaPC|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~85_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \incrementaPC|Add0~82\ ))
-- \incrementaPC|Add0~86\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \incrementaPC|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(24),
	cin => \incrementaPC|Add0~82\,
	sumout => \incrementaPC|Add0~85_sumout\,
	cout => \incrementaPC|Add0~86\);

-- Location: FF_X36_Y3_N35
\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

-- Location: FF_X36_Y3_N38
\PC|DOUT[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[25]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N36
\incrementaPC|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~89_sumout\ = SUM(( \PC|DOUT[25]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~86\ ))
-- \incrementaPC|Add0~90\ = CARRY(( \PC|DOUT[25]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[25]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~86\,
	sumout => \incrementaPC|Add0~89_sumout\,
	cout => \incrementaPC|Add0~90\);

-- Location: FF_X36_Y3_N37
\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

-- Location: FF_X36_Y3_N41
\PC|DOUT[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[26]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N39
\incrementaPC|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~93_sumout\ = SUM(( \PC|DOUT[26]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~90\ ))
-- \incrementaPC|Add0~94\ = CARRY(( \PC|DOUT[26]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[26]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~90\,
	sumout => \incrementaPC|Add0~93_sumout\,
	cout => \incrementaPC|Add0~94\);

-- Location: FF_X36_Y3_N40
\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

-- Location: LABCELL_X36_Y3_N42
\incrementaPC|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~97_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \incrementaPC|Add0~94\ ))
-- \incrementaPC|Add0~98\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \incrementaPC|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(27),
	cin => \incrementaPC|Add0~94\,
	sumout => \incrementaPC|Add0~97_sumout\,
	cout => \incrementaPC|Add0~98\);

-- Location: FF_X36_Y3_N44
\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

-- Location: FF_X36_Y3_N47
\PC|DOUT[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[28]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N45
\incrementaPC|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~101_sumout\ = SUM(( \PC|DOUT[28]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~98\ ))
-- \incrementaPC|Add0~102\ = CARRY(( \PC|DOUT[28]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[28]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~98\,
	sumout => \incrementaPC|Add0~101_sumout\,
	cout => \incrementaPC|Add0~102\);

-- Location: FF_X36_Y3_N46
\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

-- Location: LABCELL_X36_Y3_N48
\incrementaPC|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~105_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \incrementaPC|Add0~102\ ))
-- \incrementaPC|Add0~106\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \incrementaPC|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(29),
	cin => \incrementaPC|Add0~102\,
	sumout => \incrementaPC|Add0~105_sumout\,
	cout => \incrementaPC|Add0~106\);

-- Location: FF_X36_Y3_N50
\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

-- Location: LABCELL_X36_Y3_N51
\incrementaPC|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~109_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \incrementaPC|Add0~106\ ))
-- \incrementaPC|Add0~110\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \incrementaPC|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(30),
	cin => \incrementaPC|Add0~106\,
	sumout => \incrementaPC|Add0~109_sumout\,
	cout => \incrementaPC|Add0~110\);

-- Location: FF_X36_Y3_N52
\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

-- Location: LABCELL_X36_Y3_N54
\incrementaPC|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~113_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \incrementaPC|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(31),
	cin => \incrementaPC|Add0~110\,
	sumout => \incrementaPC|Add0~113_sumout\);

-- Location: FF_X36_Y3_N56
\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

-- Location: IOIBUF_X68_Y0_N1
\ULA_OP~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULA_OP,
	o => \ULA_OP~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\WR_RD~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR_RD,
	o => \WR_RD~input_o\);

-- Location: LABCELL_X37_Y4_N54
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = ( \ROM|memROM~1_combout\ & ( \WR_RD~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WR_RD~input_o\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \rtl~0_combout\);

-- Location: FF_X33_Y4_N53
\REG_BLOCK|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~1_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~294_q\);

-- Location: LABCELL_X33_Y4_N48
\REG_BLOCK|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[0]~0_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~294_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_BLOCK|ALT_INV_registrador~294_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[0]~0_combout\);

-- Location: FF_X36_Y4_N34
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LABCELL_X37_Y4_N18
\REG_BLOCK|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1094_combout\ = ( \PC|DOUT\(4) & ( \PC|DOUT\(6) & ( \WR_RD~input_o\ ) ) ) # ( !\PC|DOUT\(4) & ( \PC|DOUT\(6) & ( \WR_RD~input_o\ ) ) ) # ( \PC|DOUT\(4) & ( !\PC|DOUT\(6) & ( \WR_RD~input_o\ ) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(6) 
-- & ( (\WR_RD~input_o\ & (((\PC|DOUT[7]~DUPLICATE_q\) # (\PC|DOUT\(5))) # (\PC|DOUT[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \ALT_INV_WR_RD~input_o\,
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \REG_BLOCK|registrador~1094_combout\);

-- Location: FF_X35_Y4_N56
\REG_BLOCK|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~1_sumout\,
	sload => VCC,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~38_q\);

-- Location: LABCELL_X35_Y4_N36
\REG_BLOCK|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1062_combout\ = ( \ROM|memROM~1_combout\ & ( !\PC|DOUT\(2) ) ) # ( !\ROM|memROM~1_combout\ & ( \REG_BLOCK|registrador~38_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \REG_BLOCK|ALT_INV_registrador~38_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \REG_BLOCK|registrador~1062_combout\);

-- Location: MLABCELL_X34_Y4_N0
\ULA|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~130_cout\ = CARRY(( !\ULA_OP~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ULA_OP~input_o\,
	cin => GND,
	cout => \ULA|Add0~130_cout\);

-- Location: MLABCELL_X34_Y4_N3
\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( \REG_BLOCK|saidaA[0]~0_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1062_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~130_cout\ ))
-- \ULA|Add0~2\ = CARRY(( \REG_BLOCK|saidaA[0]~0_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1062_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[0]~0_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1062_combout\,
	cin => \ULA|Add0~130_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

-- Location: LABCELL_X35_Y4_N30
\REG_BLOCK|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1095_combout\ = !\ULA|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA|ALT_INV_Add0~5_sumout\,
	combout => \REG_BLOCK|registrador~1095_combout\);

-- Location: FF_X35_Y4_N31
\REG_BLOCK|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~1095_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~39_q\);

-- Location: LABCELL_X35_Y4_N12
\REG_BLOCK|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1063_combout\ = ( \ROM|memROM~1_combout\ & ( !\PC|DOUT\(2) ) ) # ( !\ROM|memROM~1_combout\ & ( !\REG_BLOCK|registrador~39_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \REG_BLOCK|ALT_INV_registrador~39_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \REG_BLOCK|registrador~1063_combout\);

-- Location: FF_X35_Y4_N38
\REG_BLOCK|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~5_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~295_q\);

-- Location: LABCELL_X35_Y4_N33
\REG_BLOCK|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[1]~1_combout\ = ( \ROM|memROM~1_combout\ & ( (!\PC|DOUT\(2)) # (\REG_BLOCK|registrador~295_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_BLOCK|ALT_INV_registrador~295_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \REG_BLOCK|saidaA[1]~1_combout\);

-- Location: MLABCELL_X34_Y4_N6
\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1063_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \REG_BLOCK|saidaA[1]~1_combout\ ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1063_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \REG_BLOCK|saidaA[1]~1_combout\ ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_registrador~1063_combout\,
	dataf => \REG_BLOCK|ALT_INV_saidaA[1]~1_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

-- Location: FF_X36_Y4_N11
\REG_BLOCK|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~9_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~296_q\);

-- Location: LABCELL_X35_Y4_N0
\REG_BLOCK|saidaA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[2]~2_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~296_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_BLOCK|ALT_INV_registrador~296_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[2]~2_combout\);

-- Location: FF_X35_Y4_N17
\REG_BLOCK|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~9_sumout\,
	sload => VCC,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~40_q\);

-- Location: LABCELL_X35_Y4_N9
\REG_BLOCK|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1064_combout\ = ( \ROM|memROM~1_combout\ & ( \PC|DOUT\(2) ) ) # ( !\ROM|memROM~1_combout\ & ( \REG_BLOCK|registrador~40_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \REG_BLOCK|ALT_INV_registrador~40_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \REG_BLOCK|registrador~1064_combout\);

-- Location: MLABCELL_X34_Y4_N9
\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( \REG_BLOCK|saidaA[2]~2_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1064_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( \REG_BLOCK|saidaA[2]~2_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1064_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[2]~2_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

-- Location: LABCELL_X35_Y4_N48
\REG_BLOCK|registrador~1096\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1096_combout\ = !\ULA|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA|ALT_INV_Add0~13_sumout\,
	combout => \REG_BLOCK|registrador~1096_combout\);

-- Location: FF_X35_Y4_N50
\REG_BLOCK|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~1096_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~41_q\);

-- Location: LABCELL_X35_Y4_N57
\REG_BLOCK|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1065_combout\ = ( \PC|DOUT\(5) & ( \PC|DOUT[4]~DUPLICATE_q\ & ( !\REG_BLOCK|registrador~41_q\ ) ) ) # ( !\PC|DOUT\(5) & ( \PC|DOUT[4]~DUPLICATE_q\ & ( !\REG_BLOCK|registrador~41_q\ ) ) ) # ( \PC|DOUT\(5) & ( 
-- !\PC|DOUT[4]~DUPLICATE_q\ & ( !\REG_BLOCK|registrador~41_q\ ) ) ) # ( !\PC|DOUT\(5) & ( !\PC|DOUT[4]~DUPLICATE_q\ & ( (!\REG_BLOCK|registrador~41_q\) # ((!\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT\(7) & !\PC|DOUT[6]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_BLOCK|ALT_INV_registrador~41_q\,
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(5),
	dataf => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \REG_BLOCK|registrador~1065_combout\);

-- Location: FF_X35_Y4_N11
\REG_BLOCK|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~13_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~297_q\);

-- Location: LABCELL_X35_Y4_N51
\REG_BLOCK|saidaA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[3]~3_combout\ = ( \ROM|memROM~1_combout\ & ( (!\PC|DOUT\(2)) # (\REG_BLOCK|registrador~297_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \REG_BLOCK|ALT_INV_registrador~297_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \REG_BLOCK|saidaA[3]~3_combout\);

-- Location: MLABCELL_X34_Y4_N12
\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1065_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \REG_BLOCK|saidaA[3]~3_combout\ ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1065_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \REG_BLOCK|saidaA[3]~3_combout\ ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \REG_BLOCK|ALT_INV_registrador~1065_combout\,
	dataf => \REG_BLOCK|ALT_INV_saidaA[3]~3_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

-- Location: FF_X35_Y4_N8
\REG_BLOCK|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~17_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~298_q\);

-- Location: LABCELL_X35_Y4_N15
\REG_BLOCK|saidaA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[4]~4_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~298_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_BLOCK|ALT_INV_registrador~298_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[4]~4_combout\);

-- Location: FF_X35_Y4_N14
\REG_BLOCK|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~17_sumout\,
	sload => VCC,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~42_q\);

-- Location: LABCELL_X35_Y4_N18
\REG_BLOCK|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1066_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( \REG_BLOCK|registrador~42_q\ ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( \REG_BLOCK|registrador~42_q\ & ( (((\PC|DOUT\(7)) # (\PC|DOUT[4]~DUPLICATE_q\)) # (\PC|DOUT\(5))) # 
-- (\PC|DOUT[6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \REG_BLOCK|ALT_INV_registrador~42_q\,
	combout => \REG_BLOCK|registrador~1066_combout\);

-- Location: MLABCELL_X34_Y4_N15
\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( \REG_BLOCK|saidaA[4]~4_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1066_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( \REG_BLOCK|saidaA[4]~4_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1066_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[4]~4_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1066_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

-- Location: FF_X33_Y4_N5
\REG_BLOCK|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~21_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~299_q\);

-- Location: LABCELL_X33_Y4_N42
\REG_BLOCK|saidaA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[5]~5_combout\ = ( \REG_BLOCK|registrador~299_q\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \REG_BLOCK|ALT_INV_registrador~299_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[5]~5_combout\);

-- Location: LABCELL_X37_Y4_N24
\REG_BLOCK|registrador~1097\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1097_combout\ = ( !\ULA|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~21_sumout\,
	combout => \REG_BLOCK|registrador~1097_combout\);

-- Location: FF_X37_Y4_N26
\REG_BLOCK|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~1097_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~43_q\);

-- Location: LABCELL_X36_Y4_N18
\REG_BLOCK|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1067_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( !\REG_BLOCK|registrador~43_q\ ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( !\REG_BLOCK|registrador~43_q\ & ( (((\PC|DOUT[7]~DUPLICATE_q\) # (\PC|DOUT[4]~DUPLICATE_q\)) # (\PC|DOUT\(6))) # 
-- (\PC|DOUT\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \REG_BLOCK|ALT_INV_registrador~43_q\,
	combout => \REG_BLOCK|registrador~1067_combout\);

-- Location: MLABCELL_X34_Y4_N18
\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( \REG_BLOCK|saidaA[5]~5_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1067_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( \REG_BLOCK|saidaA[5]~5_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1067_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[5]~5_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1067_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

-- Location: FF_X33_Y4_N17
\REG_BLOCK|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~25_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~300_q\);

-- Location: LABCELL_X33_Y4_N18
\REG_BLOCK|saidaA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[6]~6_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~300_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_BLOCK|ALT_INV_registrador~300_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[6]~6_combout\);

-- Location: FF_X35_Y4_N29
\REG_BLOCK|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~25_sumout\,
	sload => VCC,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~44_q\);

-- Location: LABCELL_X35_Y4_N27
\REG_BLOCK|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1068_combout\ = ( \REG_BLOCK|registrador~44_q\ & ( \PC|DOUT[3]~DUPLICATE_q\ ) ) # ( \REG_BLOCK|registrador~44_q\ & ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (((\PC|DOUT[4]~DUPLICATE_q\) # (\PC|DOUT\(7))) # (\PC|DOUT\(5))) # 
-- (\PC|DOUT[6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \REG_BLOCK|ALT_INV_registrador~44_q\,
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \REG_BLOCK|registrador~1068_combout\);

-- Location: MLABCELL_X34_Y4_N21
\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( \REG_BLOCK|saidaA[6]~6_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1068_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( \REG_BLOCK|saidaA[6]~6_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1068_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[6]~6_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1068_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

-- Location: LABCELL_X35_Y2_N54
\REG_BLOCK|registrador~301feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~301feeder_combout\ = ( \ULA|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~29_sumout\,
	combout => \REG_BLOCK|registrador~301feeder_combout\);

-- Location: FF_X35_Y2_N56
\REG_BLOCK|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~301feeder_combout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~301_q\);

-- Location: LABCELL_X35_Y2_N3
\REG_BLOCK|saidaA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[7]~7_combout\ = ( \REG_BLOCK|registrador~301_q\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \REG_BLOCK|ALT_INV_registrador~301_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[7]~7_combout\);

-- Location: LABCELL_X37_Y4_N30
\REG_BLOCK|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1098_combout\ = ( !\ULA|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~29_sumout\,
	combout => \REG_BLOCK|registrador~1098_combout\);

-- Location: FF_X37_Y4_N32
\REG_BLOCK|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~1098_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~45_q\);

-- Location: LABCELL_X36_Y4_N15
\REG_BLOCK|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1069_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( !\REG_BLOCK|registrador~45_q\ ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( !\REG_BLOCK|registrador~45_q\ & ( (((\PC|DOUT\(5)) # (\PC|DOUT[6]~DUPLICATE_q\)) # (\PC|DOUT\(7))) # 
-- (\PC|DOUT[4]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \REG_BLOCK|ALT_INV_registrador~45_q\,
	combout => \REG_BLOCK|registrador~1069_combout\);

-- Location: MLABCELL_X34_Y4_N24
\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( \REG_BLOCK|saidaA[7]~7_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1069_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( \REG_BLOCK|saidaA[7]~7_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1069_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[7]~7_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1069_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

-- Location: FF_X36_Y4_N5
\REG_BLOCK|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~33_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~302_q\);

-- Location: LABCELL_X36_Y4_N27
\REG_BLOCK|saidaA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[8]~8_combout\ = ( \REG_BLOCK|registrador~302_q\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~302_q\,
	combout => \REG_BLOCK|saidaA[8]~8_combout\);

-- Location: FF_X35_Y4_N35
\REG_BLOCK|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~33_sumout\,
	sload => VCC,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~46_q\);

-- Location: LABCELL_X35_Y4_N21
\REG_BLOCK|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1070_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( \REG_BLOCK|registrador~46_q\ ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( \REG_BLOCK|registrador~46_q\ & ( (((\PC|DOUT[4]~DUPLICATE_q\) # (\PC|DOUT\(7))) # (\PC|DOUT\(5))) # 
-- (\PC|DOUT[6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \REG_BLOCK|ALT_INV_registrador~46_q\,
	combout => \REG_BLOCK|registrador~1070_combout\);

-- Location: MLABCELL_X34_Y4_N27
\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( \REG_BLOCK|saidaA[8]~8_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1070_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( \REG_BLOCK|saidaA[8]~8_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1070_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[8]~8_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1070_combout\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

-- Location: LABCELL_X37_Y4_N39
\REG_BLOCK|registrador~1099\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1099_combout\ = ( !\ULA|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~37_sumout\,
	combout => \REG_BLOCK|registrador~1099_combout\);

-- Location: FF_X37_Y4_N41
\REG_BLOCK|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~1099_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~47_q\);

-- Location: LABCELL_X36_Y4_N12
\REG_BLOCK|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1071_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( !\REG_BLOCK|registrador~47_q\ ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( !\REG_BLOCK|registrador~47_q\ & ( (((\PC|DOUT[6]~DUPLICATE_q\) # (\PC|DOUT\(5))) # (\PC|DOUT\(7))) # 
-- (\PC|DOUT[4]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \REG_BLOCK|ALT_INV_registrador~47_q\,
	combout => \REG_BLOCK|registrador~1071_combout\);

-- Location: LABCELL_X37_Y4_N12
\REG_BLOCK|registrador~303feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~303feeder_combout\ = ( \ULA|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~37_sumout\,
	combout => \REG_BLOCK|registrador~303feeder_combout\);

-- Location: FF_X37_Y4_N14
\REG_BLOCK|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~303feeder_combout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~303_q\);

-- Location: LABCELL_X37_Y4_N57
\REG_BLOCK|saidaA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[9]~9_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~303_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_BLOCK|ALT_INV_registrador~303_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[9]~9_combout\);

-- Location: MLABCELL_X34_Y4_N30
\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1071_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \REG_BLOCK|saidaA[9]~9_combout\ ) + ( \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1071_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \REG_BLOCK|saidaA[9]~9_combout\ ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \REG_BLOCK|ALT_INV_registrador~1071_combout\,
	dataf => \REG_BLOCK|ALT_INV_saidaA[9]~9_combout\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

-- Location: FF_X33_Y4_N47
\REG_BLOCK|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~41_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~304_q\);

-- Location: LABCELL_X33_Y4_N27
\REG_BLOCK|saidaA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[10]~10_combout\ = ( \REG_BLOCK|registrador~304_q\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \REG_BLOCK|ALT_INV_registrador~304_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[10]~10_combout\);

-- Location: FF_X35_Y4_N59
\REG_BLOCK|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~41_sumout\,
	sload => VCC,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~48_q\);

-- Location: LABCELL_X35_Y4_N24
\REG_BLOCK|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1072_combout\ = ( \REG_BLOCK|registrador~48_q\ & ( \PC|DOUT[3]~DUPLICATE_q\ ) ) # ( \REG_BLOCK|registrador~48_q\ & ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (((\PC|DOUT\(7)) # (\PC|DOUT[4]~DUPLICATE_q\)) # (\PC|DOUT\(5))) # 
-- (\PC|DOUT[6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \REG_BLOCK|ALT_INV_registrador~48_q\,
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \REG_BLOCK|registrador~1072_combout\);

-- Location: MLABCELL_X34_Y4_N33
\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( \REG_BLOCK|saidaA[10]~10_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1072_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( \REG_BLOCK|saidaA[10]~10_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1072_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[10]~10_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1072_combout\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

-- Location: FF_X33_Y4_N56
\REG_BLOCK|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~45_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~305_q\);

-- Location: LABCELL_X33_Y4_N39
\REG_BLOCK|saidaA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[11]~11_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~305_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_BLOCK|ALT_INV_registrador~305_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[11]~11_combout\);

-- Location: LABCELL_X37_Y4_N45
\REG_BLOCK|registrador~1100\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1100_combout\ = ( !\ULA|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~45_sumout\,
	combout => \REG_BLOCK|registrador~1100_combout\);

-- Location: FF_X37_Y4_N47
\REG_BLOCK|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~1100_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~49_q\);

-- Location: LABCELL_X36_Y4_N21
\REG_BLOCK|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1073_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( !\REG_BLOCK|registrador~49_q\ ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( !\REG_BLOCK|registrador~49_q\ & ( (((\PC|DOUT[4]~DUPLICATE_q\) # (\PC|DOUT[7]~DUPLICATE_q\)) # (\PC|DOUT\(6))) # 
-- (\PC|DOUT\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \REG_BLOCK|ALT_INV_registrador~49_q\,
	combout => \REG_BLOCK|registrador~1073_combout\);

-- Location: MLABCELL_X34_Y4_N36
\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( \REG_BLOCK|saidaA[11]~11_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1073_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( \REG_BLOCK|saidaA[11]~11_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1073_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[11]~11_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1073_combout\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

-- Location: FF_X33_Y4_N31
\REG_BLOCK|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~49_sumout\,
	sload => VCC,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~50_q\);

-- Location: LABCELL_X37_Y4_N0
\REG_BLOCK|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1074_combout\ = ( \PC|DOUT\(4) & ( \PC|DOUT\(5) & ( \REG_BLOCK|registrador~50_q\ ) ) ) # ( !\PC|DOUT\(4) & ( \PC|DOUT\(5) & ( \REG_BLOCK|registrador~50_q\ ) ) ) # ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( \REG_BLOCK|registrador~50_q\ ) ) 
-- ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (\REG_BLOCK|registrador~50_q\ & (((\PC|DOUT[7]~DUPLICATE_q\) # (\PC|DOUT[3]~DUPLICATE_q\)) # (\PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \REG_BLOCK|ALT_INV_registrador~50_q\,
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \REG_BLOCK|registrador~1074_combout\);

-- Location: FF_X33_Y4_N29
\REG_BLOCK|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~49_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~306_q\);

-- Location: LABCELL_X33_Y4_N0
\REG_BLOCK|saidaA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[12]~12_combout\ = ( \REG_BLOCK|registrador~306_q\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \REG_BLOCK|ALT_INV_registrador~306_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[12]~12_combout\);

-- Location: MLABCELL_X34_Y4_N39
\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1074_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \REG_BLOCK|saidaA[12]~12_combout\ ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1074_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \REG_BLOCK|saidaA[12]~12_combout\ ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \REG_BLOCK|ALT_INV_registrador~1074_combout\,
	dataf => \REG_BLOCK|ALT_INV_saidaA[12]~12_combout\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

-- Location: FF_X33_Y4_N26
\REG_BLOCK|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~53_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~307_q\);

-- Location: LABCELL_X33_Y4_N33
\REG_BLOCK|saidaA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[13]~13_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~307_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_BLOCK|ALT_INV_registrador~307_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[13]~13_combout\);

-- Location: LABCELL_X37_Y4_N9
\REG_BLOCK|registrador~1101\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1101_combout\ = ( !\ULA|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~53_sumout\,
	combout => \REG_BLOCK|registrador~1101_combout\);

-- Location: FF_X37_Y4_N11
\REG_BLOCK|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~1101_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~51_q\);

-- Location: LABCELL_X37_Y4_N48
\REG_BLOCK|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1075_combout\ = ( \PC|DOUT\(4) & ( \PC|DOUT\(5) & ( !\REG_BLOCK|registrador~51_q\ ) ) ) # ( !\PC|DOUT\(4) & ( \PC|DOUT\(5) & ( !\REG_BLOCK|registrador~51_q\ ) ) ) # ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( !\REG_BLOCK|registrador~51_q\ 
-- ) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\REG_BLOCK|registrador~51_q\ & (((\PC|DOUT[7]~DUPLICATE_q\) # (\PC|DOUT[3]~DUPLICATE_q\)) # (\PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \REG_BLOCK|ALT_INV_registrador~51_q\,
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \REG_BLOCK|registrador~1075_combout\);

-- Location: MLABCELL_X34_Y4_N42
\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( \REG_BLOCK|saidaA[13]~13_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1075_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( \REG_BLOCK|saidaA[13]~13_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1075_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[13]~13_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1075_combout\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

-- Location: FF_X33_Y4_N44
\REG_BLOCK|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~57_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~308_q\);

-- Location: LABCELL_X33_Y4_N12
\REG_BLOCK|saidaA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[14]~14_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~308_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_BLOCK|ALT_INV_registrador~308_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[14]~14_combout\);

-- Location: FF_X35_Y4_N4
\REG_BLOCK|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~57_sumout\,
	sload => VCC,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~52_q\);

-- Location: LABCELL_X36_Y4_N6
\REG_BLOCK|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1076_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( \REG_BLOCK|registrador~52_q\ ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( \REG_BLOCK|registrador~52_q\ & ( (((\PC|DOUT\(6)) # (\PC|DOUT\(5))) # (\PC|DOUT\(7))) # (\PC|DOUT[4]~DUPLICATE_q\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(6),
	datae => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \REG_BLOCK|ALT_INV_registrador~52_q\,
	combout => \REG_BLOCK|registrador~1076_combout\);

-- Location: MLABCELL_X34_Y4_N45
\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( \REG_BLOCK|saidaA[14]~14_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1076_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( \REG_BLOCK|saidaA[14]~14_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1076_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[14]~14_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1076_combout\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

-- Location: FF_X33_Y4_N59
\REG_BLOCK|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~61_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~309_q\);

-- Location: LABCELL_X33_Y4_N57
\REG_BLOCK|saidaA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[15]~15_combout\ = ( \REG_BLOCK|registrador~309_q\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \REG_BLOCK|ALT_INV_registrador~309_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[15]~15_combout\);

-- Location: LABCELL_X33_Y4_N6
\REG_BLOCK|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1102_combout\ = ( !\ULA|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~61_sumout\,
	combout => \REG_BLOCK|registrador~1102_combout\);

-- Location: FF_X33_Y4_N7
\REG_BLOCK|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~1102_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~53_q\);

-- Location: LABCELL_X35_Y4_N45
\REG_BLOCK|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1077_combout\ = ( !\ROM|memROM~1_combout\ & ( !\REG_BLOCK|registrador~53_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_BLOCK|ALT_INV_registrador~53_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \REG_BLOCK|registrador~1077_combout\);

-- Location: MLABCELL_X34_Y4_N48
\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( \REG_BLOCK|saidaA[15]~15_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1077_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( \REG_BLOCK|saidaA[15]~15_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1077_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[15]~15_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1077_combout\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

-- Location: FF_X33_Y4_N50
\REG_BLOCK|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~65_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~310_q\);

-- Location: LABCELL_X33_Y4_N9
\REG_BLOCK|saidaA[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[16]~16_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~310_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_BLOCK|ALT_INV_registrador~310_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[16]~16_combout\);

-- Location: FF_X35_Y4_N53
\REG_BLOCK|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~65_sumout\,
	sload => VCC,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~54_q\);

-- Location: LABCELL_X35_Y4_N6
\REG_BLOCK|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1078_combout\ = ( \REG_BLOCK|registrador~54_q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~54_q\,
	combout => \REG_BLOCK|registrador~1078_combout\);

-- Location: MLABCELL_X34_Y4_N51
\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( \REG_BLOCK|saidaA[16]~16_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1078_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( \REG_BLOCK|saidaA[16]~16_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1078_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[16]~16_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1078_combout\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

-- Location: FF_X33_Y4_N14
\REG_BLOCK|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~69_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~311_q\);

-- Location: LABCELL_X33_Y4_N21
\REG_BLOCK|saidaA[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[17]~17_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~311_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_BLOCK|ALT_INV_registrador~311_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[17]~17_combout\);

-- Location: LABCELL_X33_Y4_N36
\REG_BLOCK|registrador~1103\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1103_combout\ = ( !\ULA|Add0~69_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~69_sumout\,
	combout => \REG_BLOCK|registrador~1103_combout\);

-- Location: FF_X33_Y4_N37
\REG_BLOCK|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~1103_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~55_q\);

-- Location: LABCELL_X35_Y4_N39
\REG_BLOCK|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1079_combout\ = ( !\REG_BLOCK|registrador~55_q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~55_q\,
	combout => \REG_BLOCK|registrador~1079_combout\);

-- Location: MLABCELL_X34_Y4_N54
\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( \REG_BLOCK|saidaA[17]~17_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1079_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( \REG_BLOCK|saidaA[17]~17_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1079_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[17]~17_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1079_combout\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

-- Location: FF_X35_Y4_N41
\REG_BLOCK|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~73_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~312_q\);

-- Location: LABCELL_X35_Y4_N42
\REG_BLOCK|saidaA[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[18]~18_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~312_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_BLOCK|ALT_INV_registrador~312_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[18]~18_combout\);

-- Location: FF_X35_Y4_N2
\REG_BLOCK|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~73_sumout\,
	sload => VCC,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~56_q\);

-- Location: LABCELL_X35_Y4_N3
\REG_BLOCK|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1080_combout\ = ( !\ROM|memROM~1_combout\ & ( \REG_BLOCK|registrador~56_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_BLOCK|ALT_INV_registrador~56_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \REG_BLOCK|registrador~1080_combout\);

-- Location: MLABCELL_X34_Y4_N57
\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( \REG_BLOCK|saidaA[18]~18_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1080_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( \REG_BLOCK|saidaA[18]~18_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1080_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[18]~18_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1080_combout\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

-- Location: LABCELL_X35_Y3_N24
\REG_BLOCK|registrador~1104\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1104_combout\ = ( !\ULA|Add0~77_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~77_sumout\,
	combout => \REG_BLOCK|registrador~1104_combout\);

-- Location: FF_X35_Y3_N25
\REG_BLOCK|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~1104_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~57_q\);

-- Location: LABCELL_X35_Y3_N45
\REG_BLOCK|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1081_combout\ = ( !\ROM|memROM~1_combout\ & ( !\REG_BLOCK|registrador~57_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~57_q\,
	combout => \REG_BLOCK|registrador~1081_combout\);

-- Location: FF_X34_Y3_N2
\REG_BLOCK|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA|Add0~77_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~313_q\);

-- Location: LABCELL_X35_Y3_N12
\REG_BLOCK|saidaA[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[19]~19_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~313_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_BLOCK|ALT_INV_registrador~313_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[19]~19_combout\);

-- Location: MLABCELL_X34_Y3_N0
\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1081_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \REG_BLOCK|saidaA[19]~19_combout\ ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1081_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \REG_BLOCK|saidaA[19]~19_combout\ ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_registrador~1081_combout\,
	dataf => \REG_BLOCK|ALT_INV_saidaA[19]~19_combout\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

-- Location: FF_X35_Y3_N53
\REG_BLOCK|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~81_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~314_q\);

-- Location: LABCELL_X35_Y3_N51
\REG_BLOCK|saidaA[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[20]~20_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~314_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_BLOCK|ALT_INV_registrador~314_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[20]~20_combout\);

-- Location: FF_X35_Y3_N23
\REG_BLOCK|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~81_sumout\,
	sload => VCC,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~58_q\);

-- Location: LABCELL_X35_Y3_N18
\REG_BLOCK|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1082_combout\ = (\REG_BLOCK|registrador~58_q\ & !\ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_BLOCK|ALT_INV_registrador~58_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	combout => \REG_BLOCK|registrador~1082_combout\);

-- Location: MLABCELL_X34_Y3_N3
\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( \REG_BLOCK|saidaA[20]~20_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1082_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( \REG_BLOCK|saidaA[20]~20_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1082_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[20]~20_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1082_combout\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

-- Location: LABCELL_X35_Y3_N15
\REG_BLOCK|registrador~1105\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1105_combout\ = ( !\ULA|Add0~85_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~85_sumout\,
	combout => \REG_BLOCK|registrador~1105_combout\);

-- Location: FF_X35_Y3_N16
\REG_BLOCK|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~1105_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~59_q\);

-- Location: LABCELL_X35_Y3_N27
\REG_BLOCK|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1083_combout\ = ( !\REG_BLOCK|registrador~59_q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~59_q\,
	combout => \REG_BLOCK|registrador~1083_combout\);

-- Location: FF_X34_Y3_N7
\REG_BLOCK|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA|Add0~85_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~315_q\);

-- Location: LABCELL_X35_Y3_N57
\REG_BLOCK|saidaA[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[21]~21_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~315_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_BLOCK|ALT_INV_registrador~315_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[21]~21_combout\);

-- Location: MLABCELL_X34_Y3_N6
\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1083_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \REG_BLOCK|saidaA[21]~21_combout\ ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1083_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \REG_BLOCK|saidaA[21]~21_combout\ ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_registrador~1083_combout\,
	dataf => \REG_BLOCK|ALT_INV_saidaA[21]~21_combout\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

-- Location: FF_X35_Y3_N44
\REG_BLOCK|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~89_sumout\,
	sload => VCC,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~60_q\);

-- Location: LABCELL_X35_Y3_N36
\REG_BLOCK|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1084_combout\ = ( \REG_BLOCK|registrador~60_q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~60_q\,
	combout => \REG_BLOCK|registrador~1084_combout\);

-- Location: FF_X34_Y3_N55
\REG_BLOCK|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~89_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~316_q\);

-- Location: LABCELL_X35_Y3_N39
\REG_BLOCK|saidaA[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[22]~22_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~316_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_BLOCK|ALT_INV_registrador~316_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[22]~22_combout\);

-- Location: MLABCELL_X34_Y3_N9
\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1084_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \REG_BLOCK|saidaA[22]~22_combout\ ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1084_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \REG_BLOCK|saidaA[22]~22_combout\ ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_registrador~1084_combout\,
	dataf => \REG_BLOCK|ALT_INV_saidaA[22]~22_combout\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

-- Location: FF_X34_Y3_N13
\REG_BLOCK|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA|Add0~93_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~317_q\);

-- Location: LABCELL_X35_Y3_N54
\REG_BLOCK|saidaA[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[23]~23_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~317_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_BLOCK|ALT_INV_registrador~317_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[23]~23_combout\);

-- Location: MLABCELL_X34_Y3_N48
\REG_BLOCK|registrador~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1106_combout\ = ( !\ULA|Add0~93_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~93_sumout\,
	combout => \REG_BLOCK|registrador~1106_combout\);

-- Location: FF_X34_Y3_N49
\REG_BLOCK|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~1106_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~61_q\);

-- Location: LABCELL_X35_Y3_N0
\REG_BLOCK|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1085_combout\ = ( !\REG_BLOCK|registrador~61_q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~61_q\,
	combout => \REG_BLOCK|registrador~1085_combout\);

-- Location: MLABCELL_X34_Y3_N12
\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( \REG_BLOCK|saidaA[23]~23_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1085_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( \REG_BLOCK|saidaA[23]~23_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1085_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[23]~23_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1085_combout\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

-- Location: FF_X34_Y3_N59
\REG_BLOCK|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~97_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~318_q\);

-- Location: MLABCELL_X34_Y3_N57
\REG_BLOCK|saidaA[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[24]~24_combout\ = (\ROM|memROM~0_combout\ & \REG_BLOCK|registrador~318_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_registrador~318_q\,
	combout => \REG_BLOCK|saidaA[24]~24_combout\);

-- Location: FF_X35_Y3_N20
\REG_BLOCK|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~97_sumout\,
	sload => VCC,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~62_q\);

-- Location: LABCELL_X35_Y3_N33
\REG_BLOCK|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1086_combout\ = ( \REG_BLOCK|registrador~62_q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~62_q\,
	combout => \REG_BLOCK|registrador~1086_combout\);

-- Location: MLABCELL_X34_Y3_N15
\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( \REG_BLOCK|saidaA[24]~24_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1086_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( \REG_BLOCK|saidaA[24]~24_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1086_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[24]~24_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1086_combout\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

-- Location: MLABCELL_X34_Y3_N45
\REG_BLOCK|registrador~1107\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1107_combout\ = ( !\ULA|Add0~101_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~101_sumout\,
	combout => \REG_BLOCK|registrador~1107_combout\);

-- Location: FF_X34_Y3_N46
\REG_BLOCK|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~1107_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~63_q\);

-- Location: LABCELL_X35_Y3_N9
\REG_BLOCK|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1087_combout\ = ( !\REG_BLOCK|registrador~63_q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~63_q\,
	combout => \REG_BLOCK|registrador~1087_combout\);

-- Location: FF_X34_Y3_N19
\REG_BLOCK|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA|Add0~101_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~319_q\);

-- Location: LABCELL_X35_Y3_N30
\REG_BLOCK|saidaA[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[25]~25_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~319_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_BLOCK|ALT_INV_registrador~319_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[25]~25_combout\);

-- Location: MLABCELL_X34_Y3_N18
\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1087_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \REG_BLOCK|saidaA[25]~25_combout\ ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1087_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \REG_BLOCK|saidaA[25]~25_combout\ ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_registrador~1087_combout\,
	dataf => \REG_BLOCK|ALT_INV_saidaA[25]~25_combout\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

-- Location: FF_X35_Y3_N31
\REG_BLOCK|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~105_sumout\,
	sload => VCC,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~64_q\);

-- Location: LABCELL_X35_Y3_N48
\REG_BLOCK|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1088_combout\ = ( \REG_BLOCK|registrador~64_q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~64_q\,
	combout => \REG_BLOCK|registrador~1088_combout\);

-- Location: FF_X34_Y3_N23
\REG_BLOCK|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA|Add0~105_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~320_q\);

-- Location: LABCELL_X33_Y3_N3
\REG_BLOCK|saidaA[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[26]~26_combout\ = ( \REG_BLOCK|registrador~320_q\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \REG_BLOCK|ALT_INV_registrador~320_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[26]~26_combout\);

-- Location: MLABCELL_X34_Y3_N21
\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1088_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \REG_BLOCK|saidaA[26]~26_combout\ ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1088_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \REG_BLOCK|saidaA[26]~26_combout\ ) + ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_registrador~1088_combout\,
	dataf => \REG_BLOCK|ALT_INV_saidaA[26]~26_combout\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

-- Location: FF_X34_Y3_N25
\REG_BLOCK|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA|Add0~109_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~321_q\);

-- Location: LABCELL_X33_Y3_N6
\REG_BLOCK|saidaA[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[27]~27_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~321_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_BLOCK|ALT_INV_registrador~321_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[27]~27_combout\);

-- Location: LABCELL_X33_Y3_N57
\REG_BLOCK|registrador~1108\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1108_combout\ = ( !\ULA|Add0~109_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~109_sumout\,
	combout => \REG_BLOCK|registrador~1108_combout\);

-- Location: FF_X33_Y3_N58
\REG_BLOCK|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~1108_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~65_q\);

-- Location: LABCELL_X33_Y3_N54
\REG_BLOCK|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1089_combout\ = ( !\REG_BLOCK|registrador~65_q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~65_q\,
	combout => \REG_BLOCK|registrador~1089_combout\);

-- Location: MLABCELL_X34_Y3_N24
\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( \REG_BLOCK|saidaA[27]~27_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1089_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( \REG_BLOCK|saidaA[27]~27_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1089_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[27]~27_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1089_combout\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

-- Location: FF_X35_Y3_N8
\REG_BLOCK|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~113_sumout\,
	sload => VCC,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~66_q\);

-- Location: LABCELL_X35_Y3_N6
\REG_BLOCK|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1090_combout\ = (!\ROM|memROM~1_combout\ & \REG_BLOCK|registrador~66_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datad => \REG_BLOCK|ALT_INV_registrador~66_q\,
	combout => \REG_BLOCK|registrador~1090_combout\);

-- Location: FF_X34_Y3_N29
\REG_BLOCK|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA|Add0~113_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~322_q\);

-- Location: LABCELL_X33_Y3_N15
\REG_BLOCK|saidaA[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[28]~28_combout\ = ( \REG_BLOCK|registrador~322_q\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \REG_BLOCK|ALT_INV_registrador~322_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[28]~28_combout\);

-- Location: MLABCELL_X34_Y3_N27
\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1090_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \REG_BLOCK|saidaA[28]~28_combout\ ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1090_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \REG_BLOCK|saidaA[28]~28_combout\ ) + ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_registrador~1090_combout\,
	dataf => \REG_BLOCK|ALT_INV_saidaA[28]~28_combout\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

-- Location: FF_X34_Y3_N32
\REG_BLOCK|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA|Add0~117_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~323_q\);

-- Location: LABCELL_X33_Y3_N42
\REG_BLOCK|saidaA[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[29]~29_combout\ = ( \ROM|memROM~0_combout\ & ( \REG_BLOCK|registrador~323_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_BLOCK|ALT_INV_registrador~323_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[29]~29_combout\);

-- Location: MLABCELL_X34_Y3_N51
\REG_BLOCK|registrador~1109\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1109_combout\ = ( !\ULA|Add0~117_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~117_sumout\,
	combout => \REG_BLOCK|registrador~1109_combout\);

-- Location: FF_X34_Y3_N52
\REG_BLOCK|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~1109_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~67_q\);

-- Location: LABCELL_X35_Y3_N3
\REG_BLOCK|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1091_combout\ = ( !\REG_BLOCK|registrador~67_q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~67_q\,
	combout => \REG_BLOCK|registrador~1091_combout\);

-- Location: MLABCELL_X34_Y3_N30
\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( \REG_BLOCK|saidaA[29]~29_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1091_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( \REG_BLOCK|saidaA[29]~29_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1091_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[29]~29_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1091_combout\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

-- Location: FF_X34_Y3_N40
\REG_BLOCK|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~121_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~324_q\);

-- Location: MLABCELL_X34_Y3_N54
\REG_BLOCK|saidaA[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[30]~30_combout\ = (\REG_BLOCK|registrador~324_q\ & \ROM|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_BLOCK|ALT_INV_registrador~324_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[30]~30_combout\);

-- Location: LABCELL_X33_Y3_N48
\REG_BLOCK|registrador~68feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~68feeder_combout\ = ( \ULA|Add0~121_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~121_sumout\,
	combout => \REG_BLOCK|registrador~68feeder_combout\);

-- Location: FF_X33_Y3_N50
\REG_BLOCK|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~68feeder_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~68_q\);

-- Location: LABCELL_X33_Y3_N33
\REG_BLOCK|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1092_combout\ = ( !\ROM|memROM~1_combout\ & ( \REG_BLOCK|registrador~68_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~68_q\,
	combout => \REG_BLOCK|registrador~1092_combout\);

-- Location: MLABCELL_X34_Y3_N33
\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( \REG_BLOCK|saidaA[30]~30_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1092_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( \REG_BLOCK|saidaA[30]~30_combout\ ) + ( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1092_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_saidaA[30]~30_combout\,
	dataf => \REG_BLOCK|ALT_INV_registrador~1092_combout\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

-- Location: MLABCELL_X34_Y3_N42
\REG_BLOCK|registrador~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1110_combout\ = !\ULA|Add0~125_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA|ALT_INV_Add0~125_sumout\,
	combout => \REG_BLOCK|registrador~1110_combout\);

-- Location: FF_X34_Y3_N44
\REG_BLOCK|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_BLOCK|registrador~1110_combout\,
	ena => \REG_BLOCK|registrador~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~69_q\);

-- Location: LABCELL_X33_Y3_N27
\REG_BLOCK|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|registrador~1093_combout\ = ( !\ROM|memROM~1_combout\ & ( !\REG_BLOCK|registrador~69_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_BLOCK|ALT_INV_registrador~69_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	combout => \REG_BLOCK|registrador~1093_combout\);

-- Location: FF_X34_Y3_N37
\REG_BLOCK|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA|Add0~125_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_BLOCK|registrador~325_q\);

-- Location: LABCELL_X33_Y3_N36
\REG_BLOCK|saidaA[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaA[31]~31_combout\ = ( \REG_BLOCK|registrador~325_q\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \REG_BLOCK|ALT_INV_registrador~325_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REG_BLOCK|saidaA[31]~31_combout\);

-- Location: MLABCELL_X34_Y3_N36
\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((\REG_BLOCK|registrador~1093_combout\ & ((\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\))))) ) + ( \REG_BLOCK|saidaA[31]~31_combout\ ) + ( \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_BLOCK|ALT_INV_registrador~1093_combout\,
	dataf => \REG_BLOCK|ALT_INV_saidaA[31]~31_combout\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

-- Location: MLABCELL_X34_Y7_N15
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\PC|DOUT\(2) & ( \ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~2_combout\);

-- Location: LABCELL_X35_Y3_N21
\REG_BLOCK|saidaB[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_BLOCK|saidaB[2]~0_combout\ = (\ROM|memROM~1_combout\ & \PC|DOUT\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \PC|ALT_INV_DOUT\(2),
	combout => \REG_BLOCK|saidaB[2]~0_combout\);

-- Location: MLABCELL_X25_Y25_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


