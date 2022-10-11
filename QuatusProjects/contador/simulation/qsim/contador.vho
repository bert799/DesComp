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

-- DATE "10/11/2022 10:19:48"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	contador IS
    PORT (
	CLOCK_50 : IN std_logic;
	FPGA_RESET_N : IN std_logic;
	KEY : IN std_logic_vector(5 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END contador;

ARCHITECTURE structure OF contador IS
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
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_KEY : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[4]~input_o\ : std_logic;
SIGNAL \KEY[5]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \CPU1|DEC1|Equal6~0_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_wirecell_combout\ : std_logic;
SIGNAL \DEC3x8_2|Equal7~0_combout\ : std_logic;
SIGNAL \DEC3x8_2|Equal7~1_combout\ : std_logic;
SIGNAL \DEC3x8_2|Equal7~2_combout\ : std_logic;
SIGNAL \DEC3x8_2|Equal7~3_combout\ : std_logic;
SIGNAL \DEC3x8_2|Equal7~4_combout\ : std_logic;
SIGNAL \DEC3x8_2|Equal7~5_combout\ : std_logic;
SIGNAL \DEC3x8_2|Equal7~6_combout\ : std_logic;
SIGNAL \CPU1|DEC1|saida[6]~0_combout\ : std_logic;
SIGNAL \CPU1|DEC1|Equal6~1_combout\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~545_combout\ : std_logic;
SIGNAL \RAM1|ram~55_q\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \RAM1|ram~546_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \RAM1|ram~47_q\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \RAM1|ram~71_q\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~550_combout\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~551_combout\ : std_logic;
SIGNAL \RAM1|ram~63_q\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~18_cout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU1|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU1|DEC1|saida[5]~1_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~11_q\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~58_q\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~50_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~42_q\ : std_logic;
SIGNAL \RAM1|ram~74_q\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~66_q\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~41_q\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|ram~57_q\ : std_logic;
SIGNAL \RAM1|ram~49_q\ : std_logic;
SIGNAL \RAM1|ram~73_q\ : std_logic;
SIGNAL \RAM1|ram~65_q\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~56_q\ : std_logic;
SIGNAL \RAM1|ram~48_q\ : std_logic;
SIGNAL \RAM1|ram~72_q\ : std_logic;
SIGNAL \RAM1|ram~64_q\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~12_q\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~13_q\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~14_q\ : std_logic;
SIGNAL \SEG0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \SEG0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \SEG0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \SEG0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \SEG0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \SEG0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \SEG0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \SEG1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \SEG1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \SEG1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \SEG1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \SEG1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \SEG1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \SEG1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \SEG2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \SEG2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \SEG2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \SEG2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \SEG2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \SEG2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \SEG2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \SEG3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \SEG3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \SEG3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \SEG3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \SEG3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \SEG3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \SEG3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \SEG4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \SEG4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \SEG4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \SEG4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \SEG4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \SEG4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \SEG4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \SEG5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \SEG5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \SEG5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \SEG5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \SEG5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \SEG5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \SEG5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REGSEG5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU1|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGSEG0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DEC3x8_2|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~11_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \CPU1|DEC1|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \CPU1|DEC1|ALT_INV_saida[6]~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \REGSEG5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_FPGA_RESET_N <= FPGA_RESET_N;
ww_KEY <= KEY;
ww_SW <= SW;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\REGSEG3|ALT_INV_DOUT\(0) <= NOT \REGSEG3|DOUT\(0);
\REGSEG2|ALT_INV_DOUT\(2) <= NOT \REGSEG2|DOUT\(2);
\REGSEG2|ALT_INV_DOUT\(1) <= NOT \REGSEG2|DOUT\(1);
\REGSEG2|ALT_INV_DOUT\(3) <= NOT \REGSEG2|DOUT\(3);
\REGSEG2|ALT_INV_DOUT\(0) <= NOT \REGSEG2|DOUT\(0);
\REGSEG1|ALT_INV_DOUT\(2) <= NOT \REGSEG1|DOUT\(2);
\REGSEG1|ALT_INV_DOUT\(1) <= NOT \REGSEG1|DOUT\(1);
\REGSEG1|ALT_INV_DOUT\(3) <= NOT \REGSEG1|DOUT\(3);
\REGSEG1|ALT_INV_DOUT\(0) <= NOT \REGSEG1|DOUT\(0);
\REGSEG0|ALT_INV_DOUT\(2) <= NOT \REGSEG0|DOUT\(2);
\REGSEG0|ALT_INV_DOUT\(1) <= NOT \REGSEG0|DOUT\(1);
\REGSEG0|ALT_INV_DOUT\(3) <= NOT \REGSEG0|DOUT\(3);
\REGSEG0|ALT_INV_DOUT\(0) <= NOT \REGSEG0|DOUT\(0);
\DEC3x8_2|ALT_INV_Equal7~0_combout\ <= NOT \DEC3x8_2|Equal7~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\CPU1|BancREG|ALT_INV_registrador~13_q\ <= NOT \CPU1|BancREG|registrador~13_q\;
\CPU1|BancREG|ALT_INV_registrador~12_q\ <= NOT \CPU1|BancREG|registrador~12_q\;
\CPU1|BancREG|ALT_INV_registrador~14_q\ <= NOT \CPU1|BancREG|registrador~14_q\;
\CPU1|BancREG|ALT_INV_registrador~11_q\ <= NOT \CPU1|BancREG|registrador~11_q\;
\CPU1|PC|ALT_INV_DOUT\(8) <= NOT \CPU1|PC|DOUT\(8);
\CPU1|PC|ALT_INV_DOUT\(7) <= NOT \CPU1|PC|DOUT\(7);
\CPU1|PC|ALT_INV_DOUT\(6) <= NOT \CPU1|PC|DOUT\(6);
\CPU1|PC|ALT_INV_DOUT\(5) <= NOT \CPU1|PC|DOUT\(5);
\CPU1|PC|ALT_INV_DOUT\(4) <= NOT \CPU1|PC|DOUT\(4);
\CPU1|PC|ALT_INV_DOUT\(3) <= NOT \CPU1|PC|DOUT\(3);
\CPU1|PC|ALT_INV_DOUT\(2) <= NOT \CPU1|PC|DOUT\(2);
\CPU1|PC|ALT_INV_DOUT\(1) <= NOT \CPU1|PC|DOUT\(1);
\CPU1|PC|ALT_INV_DOUT\(0) <= NOT \CPU1|PC|DOUT\(0);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\RAM1|ALT_INV_ram~543_combout\ <= NOT \RAM1|ram~543_combout\;
\CPU1|DEC1|ALT_INV_Equal6~1_combout\ <= NOT \CPU1|DEC1|Equal6~1_combout\;
\RAM1|ALT_INV_ram~542_combout\ <= NOT \RAM1|ram~542_combout\;
\RAM1|ALT_INV_ram~541_combout\ <= NOT \RAM1|ram~541_combout\;
\RAM1|ALT_INV_ram~65_q\ <= NOT \RAM1|ram~65_q\;
\RAM1|ALT_INV_ram~73_q\ <= NOT \RAM1|ram~73_q\;
\RAM1|ALT_INV_ram~49_q\ <= NOT \RAM1|ram~49_q\;
\RAM1|ALT_INV_ram~57_q\ <= NOT \RAM1|ram~57_q\;
\RAM1|ALT_INV_ram~540_combout\ <= NOT \RAM1|ram~540_combout\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~41_q\ <= NOT \RAM1|ram~41_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~64_q\ <= NOT \RAM1|ram~64_q\;
\RAM1|ALT_INV_ram~72_q\ <= NOT \RAM1|ram~72_q\;
\RAM1|ALT_INV_ram~48_q\ <= NOT \RAM1|ram~48_q\;
\RAM1|ALT_INV_ram~56_q\ <= NOT \RAM1|ram~56_q\;
\RAM1|ALT_INV_ram~537_combout\ <= NOT \RAM1|ram~537_combout\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~66_q\ <= NOT \RAM1|ram~66_q\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~74_q\ <= NOT \RAM1|ram~74_q\;
\RAM1|ALT_INV_ram~42_q\ <= NOT \RAM1|ram~42_q\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~50_q\ <= NOT \RAM1|ram~50_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~58_q\ <= NOT \RAM1|ram~58_q\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~63_q\ <= NOT \RAM1|ram~63_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~71_q\ <= NOT \RAM1|ram~71_q\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~528_combout\ <= NOT \RAM1|ram~528_combout\;
\RAM1|ALT_INV_ram~47_q\ <= NOT \RAM1|ram~47_q\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\RAM1|ALT_INV_ram~55_q\ <= NOT \RAM1|ram~55_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\CPU1|DEC1|ALT_INV_saida[6]~0_combout\ <= NOT \CPU1|DEC1|saida[6]~0_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\REGSEG5|ALT_INV_DOUT\(2) <= NOT \REGSEG5|DOUT\(2);
\REGSEG5|ALT_INV_DOUT\(1) <= NOT \REGSEG5|DOUT\(1);
\REGSEG5|ALT_INV_DOUT\(3) <= NOT \REGSEG5|DOUT\(3);
\REGSEG5|ALT_INV_DOUT\(0) <= NOT \REGSEG5|DOUT\(0);
\REGSEG4|ALT_INV_DOUT\(2) <= NOT \REGSEG4|DOUT\(2);
\REGSEG4|ALT_INV_DOUT\(1) <= NOT \REGSEG4|DOUT\(1);
\REGSEG4|ALT_INV_DOUT\(3) <= NOT \REGSEG4|DOUT\(3);
\REGSEG4|ALT_INV_DOUT\(0) <= NOT \REGSEG4|DOUT\(0);
\REGSEG3|ALT_INV_DOUT\(2) <= NOT \REGSEG3|DOUT\(2);
\REGSEG3|ALT_INV_DOUT\(1) <= NOT \REGSEG3|DOUT\(1);
\REGSEG3|ALT_INV_DOUT\(3) <= NOT \REGSEG3|DOUT\(3);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC3x8_2|Equal7~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC3x8_2|Equal7~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC3x8_2|Equal7~3_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC3x8_2|Equal7~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC3x8_2|Equal7~5_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC3x8_2|Equal7~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\gravar:detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \gravar:detectorSub0|saidaQ~0_combout\);

\gravar:detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \gravar:detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gravar:detectorSub0|saidaQ~q\);

\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL((!\KEY[0]~input_o\ & !\gravar:detectorSub0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

\CPU1|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~1_sumout\ = SUM(( \CPU1|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU1|incrementaPC|Add0~2\ = CARRY(( \CPU1|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU1|incrementaPC|Add0~1_sumout\,
	cout => \CPU1|incrementaPC|Add0~2\);

\CPU1|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~5_sumout\ = SUM(( \CPU1|PC|DOUT\(1) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~2\ ))
-- \CPU1|incrementaPC|Add0~6\ = CARRY(( \CPU1|PC|DOUT\(1) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	cin => \CPU1|incrementaPC|Add0~2\,
	sumout => \CPU1|incrementaPC|Add0~5_sumout\,
	cout => \CPU1|incrementaPC|Add0~6\);

\CPU1|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~9_sumout\ = SUM(( \CPU1|PC|DOUT\(2) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~6\ ))
-- \CPU1|incrementaPC|Add0~10\ = CARRY(( \CPU1|PC|DOUT\(2) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(2),
	cin => \CPU1|incrementaPC|Add0~6\,
	sumout => \CPU1|incrementaPC|Add0~9_sumout\,
	cout => \CPU1|incrementaPC|Add0~10\);

\CPU1|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~13_sumout\ = SUM(( \CPU1|PC|DOUT\(3) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~10\ ))
-- \CPU1|incrementaPC|Add0~14\ = CARRY(( \CPU1|PC|DOUT\(3) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	cin => \CPU1|incrementaPC|Add0~10\,
	sumout => \CPU1|incrementaPC|Add0~13_sumout\,
	cout => \CPU1|incrementaPC|Add0~14\);

\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\CPU1|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~17_sumout\ = SUM(( \CPU1|PC|DOUT\(4) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~14\ ))
-- \CPU1|incrementaPC|Add0~18\ = CARRY(( \CPU1|PC|DOUT\(4) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(4),
	cin => \CPU1|incrementaPC|Add0~14\,
	sumout => \CPU1|incrementaPC|Add0~17_sumout\,
	cout => \CPU1|incrementaPC|Add0~18\);

\CPU1|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~21_sumout\ = SUM(( \CPU1|PC|DOUT\(5) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~18\ ))
-- \CPU1|incrementaPC|Add0~22\ = CARRY(( \CPU1|PC|DOUT\(5) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(5),
	cin => \CPU1|incrementaPC|Add0~18\,
	sumout => \CPU1|incrementaPC|Add0~21_sumout\,
	cout => \CPU1|incrementaPC|Add0~22\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(1) & ((\CPU1|PC|DOUT\(3)) # (\CPU1|PC|DOUT\(2)))) # (\CPU1|PC|DOUT\(1) & ((!\CPU1|PC|DOUT\(2)) # (!\CPU1|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010100000101010101010000010101010101000001010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~8_combout\);

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \ROM1|memROM~9_combout\);

\CPU1|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~21_sumout\,
	asdata => \ROM1|memROM~9_combout\,
	sload => \CPU1|DEC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(5));

\CPU1|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~25_sumout\ = SUM(( \CPU1|PC|DOUT\(6) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~22\ ))
-- \CPU1|incrementaPC|Add0~26\ = CARRY(( \CPU1|PC|DOUT\(6) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(6),
	cin => \CPU1|incrementaPC|Add0~22\,
	sumout => \CPU1|incrementaPC|Add0~25_sumout\,
	cout => \CPU1|incrementaPC|Add0~26\);

\CPU1|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU1|DEC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(6));

\CPU1|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~29_sumout\ = SUM(( \CPU1|PC|DOUT\(7) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~26\ ))
-- \CPU1|incrementaPC|Add0~30\ = CARRY(( \CPU1|PC|DOUT\(7) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(7),
	cin => \CPU1|incrementaPC|Add0~26\,
	sumout => \CPU1|incrementaPC|Add0~29_sumout\,
	cout => \CPU1|incrementaPC|Add0~30\);

\CPU1|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU1|DEC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(7));

\CPU1|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~33_sumout\ = SUM(( \CPU1|PC|DOUT\(8) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(8),
	cin => \CPU1|incrementaPC|Add0~30\,
	sumout => \CPU1|incrementaPC|Add0~33_sumout\);

\CPU1|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~9_combout\,
	sload => \CPU1|DEC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(8));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\CPU1|PC|DOUT\(8) & ( (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(6) & !\CPU1|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \CPU1|PC|ALT_INV_DOUT\(5),
	datac => \CPU1|PC|ALT_INV_DOUT\(6),
	datad => \CPU1|PC|ALT_INV_DOUT\(7),
	datae => \CPU1|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\CPU1|PC|DOUT\(0) & (((\CPU1|PC|DOUT\(3)) # (\CPU1|PC|DOUT\(2))) # (\CPU1|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010001010101010101000101010101010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(1)) # ((!\CPU1|PC|DOUT\(2)) # (!\CPU1|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101010101010001010101010101000101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(0) & ((\CPU1|PC|DOUT\(3)) # (\CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(0) $ (((\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101001001010101010100100101010101010010010101010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\CPU1|DEC1|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|Equal6~0_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DEC1|Equal6~0_combout\);

\CPU1|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU1|DEC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(3));

\CPU1|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU1|DEC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(4));

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(1) $ (!\CPU1|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000000101000000000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( !\CPU1|PC|DOUT\(8) & ( \ROM1|memROM~3_combout\ & ( (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(6) & !\CPU1|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \CPU1|PC|ALT_INV_DOUT\(5),
	datac => \CPU1|PC|ALT_INV_DOUT\(6),
	datad => \CPU1|PC|ALT_INV_DOUT\(7),
	datae => \CPU1|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~4_combout\);

\CPU1|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \CPU1|DEC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(2));

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\CPU1|PC|DOUT\(1) & (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3)))) # (\CPU1|PC|DOUT\(1) & (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(0) $ (!\CPU1|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100001000000000000000000000000101000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~2_combout\);

\CPU1|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \CPU1|DEC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(1));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\CPU1|PC|DOUT\(0) $ (((!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(3))))) # (\CPU1|PC|DOUT\(1)) ) ) # ( !\ROM1|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011110111011101111111111111111110111101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~1_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_wirecell_combout\ = !\ROM1|memROM~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~1_wirecell_combout\);

\CPU1|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~1_wirecell_combout\,
	sload => \CPU1|DEC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(0));

\DEC3x8_2|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3x8_2|Equal7~0_combout\ = ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~6_combout\ & !\ROM1|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \DEC3x8_2|Equal7~0_combout\);

\DEC3x8_2|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3x8_2|Equal7~1_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & \DEC3x8_2|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \DEC3x8_2|ALT_INV_Equal7~0_combout\,
	combout => \DEC3x8_2|Equal7~1_combout\);

\DEC3x8_2|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3x8_2|Equal7~2_combout\ = (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & \DEC3x8_2|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \DEC3x8_2|ALT_INV_Equal7~0_combout\,
	combout => \DEC3x8_2|Equal7~2_combout\);

\DEC3x8_2|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3x8_2|Equal7~3_combout\ = (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & \DEC3x8_2|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \DEC3x8_2|ALT_INV_Equal7~0_combout\,
	combout => \DEC3x8_2|Equal7~3_combout\);

\DEC3x8_2|Equal7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3x8_2|Equal7~4_combout\ = (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & \DEC3x8_2|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \DEC3x8_2|ALT_INV_Equal7~0_combout\,
	combout => \DEC3x8_2|Equal7~4_combout\);

\DEC3x8_2|Equal7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3x8_2|Equal7~5_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & \DEC3x8_2|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \DEC3x8_2|ALT_INV_Equal7~0_combout\,
	combout => \DEC3x8_2|Equal7~5_combout\);

\DEC3x8_2|Equal7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3x8_2|Equal7~6_combout\ = (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & \DEC3x8_2|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \DEC3x8_2|ALT_INV_Equal7~0_combout\,
	combout => \DEC3x8_2|Equal7~6_combout\);

\CPU1|DEC1|saida[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|saida[6]~0_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DEC1|saida[6]~0_combout\);

\CPU1|DEC1|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|Equal6~1_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\ & \ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DEC1|Equal6~1_combout\);

\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~6_combout\ & !\ROM1|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~543_combout\);

\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & \RAM1|ram~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~543_combout\,
	combout => \RAM1|ram~544_combout\);

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \RAM1|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & \RAM1|ram~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~543_combout\,
	combout => \RAM1|ram~545_combout\);

\RAM1|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \RAM1|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~55_q\);

\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \ROM1|memROM~8_combout\ & ( (\RAM1|ram~23_q\ & !\ROM1|memROM~0_combout\) ) ) # ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~0_combout\ & (\RAM1|ram~23_q\)) # (\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~3_combout\ & 
-- (\RAM1|ram~23_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~55_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010100000101000001010101010100110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~23_q\,
	datab => \RAM1|ALT_INV_ram~55_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~527_combout\);

\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & \RAM1|ram~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~543_combout\,
	combout => \RAM1|ram~546_combout\);

\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \RAM1|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & \RAM1|ram~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~543_combout\,
	combout => \RAM1|ram~547_combout\);

\RAM1|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~47_q\);

\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( \ROM1|memROM~8_combout\ & ( (\RAM1|ram~15_q\ & !\ROM1|memROM~0_combout\) ) ) # ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~0_combout\ & (\RAM1|ram~15_q\)) # (\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~3_combout\ & 
-- (\RAM1|ram~15_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~47_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010100000101000001010101010100110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~15_q\,
	datab => \RAM1|ALT_INV_ram~47_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~528_combout\);

\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & \RAM1|ram~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~543_combout\,
	combout => \RAM1|ram~548_combout\);

\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & \RAM1|ram~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~543_combout\,
	combout => \RAM1|ram~549_combout\);

\RAM1|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \RAM1|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~71_q\);

\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \ROM1|memROM~8_combout\ & ( (\RAM1|ram~39_q\ & !\ROM1|memROM~0_combout\) ) ) # ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~0_combout\ & (\RAM1|ram~39_q\)) # (\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~3_combout\ & 
-- (\RAM1|ram~39_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~71_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010100000101000001010101010100110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~39_q\,
	datab => \RAM1|ALT_INV_ram~71_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~529_combout\);

\RAM1|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~550_combout\ = (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & \RAM1|ram~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~543_combout\,
	combout => \RAM1|ram~550_combout\);

\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \RAM1|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & \RAM1|ram~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~543_combout\,
	combout => \RAM1|ram~551_combout\);

\RAM1|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \RAM1|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~63_q\);

\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( \ROM1|memROM~8_combout\ & ( (\RAM1|ram~31_q\ & !\ROM1|memROM~0_combout\) ) ) # ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~0_combout\ & (\RAM1|ram~31_q\)) # (\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~3_combout\ & 
-- (\RAM1|ram~31_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~63_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010100000101000001010101010100110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~31_q\,
	datab => \RAM1|ALT_INV_ram~63_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~530_combout\);

\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~530_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~529_combout\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( 
-- !\ROM1|memROM~2_combout\ & ( \RAM1|ram~528_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~527_combout\,
	datab => \RAM1|ALT_INV_ram~528_combout\,
	datac => \RAM1|ALT_INV_ram~529_combout\,
	datad => \RAM1|ALT_INV_ram~530_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~531_combout\);

\CPU1|ULA1|Add0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~18_cout\ = CARRY(( !\CPU1|DEC1|Equal6~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|DEC1|ALT_INV_Equal6~1_combout\,
	cin => GND,
	cout => \CPU1|ULA1|Add0~18_cout\);

\CPU1|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~1_sumout\ = SUM(( \CPU1|BancREG|registrador~11_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~531_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (!\ROM1|memROM~1_combout\)))) ) + ( 
-- \CPU1|ULA1|Add0~18_cout\ ))
-- \CPU1|ULA1|Add0~2\ = CARRY(( \CPU1|BancREG|registrador~11_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~531_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (!\ROM1|memROM~1_combout\)))) ) + ( 
-- \CPU1|ULA1|Add0~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010111110000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU1|DEC1|ALT_INV_Equal6~1_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~11_q\,
	dataf => \RAM1|ALT_INV_ram~531_combout\,
	cin => \CPU1|ULA1|Add0~18_cout\,
	sumout => \CPU1|ULA1|Add0~1_sumout\,
	cout => \CPU1|ULA1|Add0~2\);

\CPU1|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~0_combout\ = (!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~531_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (!\ROM1|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000101110001011100010111000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datac => \RAM1|ALT_INV_ram~531_combout\,
	combout => \CPU1|MUX1|saida_MUX[0]~0_combout\);

\CPU1|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|saida[0]~0_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~7_combout\) # (\ROM1|memROM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000100010001000000010001000100000001000100010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|ULA1|saida[0]~0_combout\);

\CPU1|DEC1|saida[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|saida[5]~1_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~7_combout\ $ (((\ROM1|memROM~6_combout\) # (\ROM1|memROM~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010101010000000001010101000000000101010100000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DEC1|saida[5]~1_combout\);

\CPU1|BancREG|registrador~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~1_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~11_q\);

\REGSEG0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \DEC3x8_2|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG0|DOUT\(0));

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (!\ROM1|memROM~0_combout\) # (\ROM1|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~10_combout\);

\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \RAM1|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

\RAM1|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \RAM1|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~58_q\);

\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~58_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~26_q\,
	datab => \RAM1|ALT_INV_ram~58_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~532_combout\);

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \RAM1|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~50_q\);

\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~50_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~18_q\,
	datab => \RAM1|ALT_INV_ram~50_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~533_combout\);

\RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~42_q\);

\RAM1|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \RAM1|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~74_q\);

\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~74_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~42_q\,
	datab => \RAM1|ALT_INV_ram~74_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~534_combout\);

\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \RAM1|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

\RAM1|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \RAM1|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~66_q\);

\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~66_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~34_q\,
	datab => \RAM1|ALT_INV_ram~66_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~535_combout\);

\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~535_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~534_combout\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( 
-- !\ROM1|memROM~2_combout\ & ( \RAM1|ram~533_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~532_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~532_combout\,
	datab => \RAM1|ALT_INV_ram~533_combout\,
	datac => \RAM1|ALT_INV_ram~534_combout\,
	datad => \RAM1|ALT_INV_ram~535_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~536_combout\);

\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \RAM1|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \RAM1|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~41_q\);

\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \RAM1|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~33_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~41_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~2_combout\ & ( 
-- \RAM1|ram~17_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~25_q\,
	datab => \RAM1|ALT_INV_ram~17_q\,
	datac => \RAM1|ALT_INV_ram~41_q\,
	datad => \RAM1|ALT_INV_ram~33_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~540_combout\);

\RAM1|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \RAM1|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~57_q\);

\RAM1|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~49_q\);

\RAM1|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \RAM1|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~73_q\);

\RAM1|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \RAM1|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~65_q\);

\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~65_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~73_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~2_combout\ & ( 
-- \RAM1|ram~49_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~57_q\,
	datab => \RAM1|ALT_INV_ram~49_q\,
	datac => \RAM1|ALT_INV_ram~73_q\,
	datad => \RAM1|ALT_INV_ram~65_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~541_combout\);

\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~541_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~540_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~540_combout\,
	datab => \RAM1|ALT_INV_ram~541_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~542_combout\);

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \RAM1|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \RAM1|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \RAM1|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~32_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~40_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~2_combout\ & ( 
-- \RAM1|ram~16_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~24_q\,
	datab => \RAM1|ALT_INV_ram~16_q\,
	datac => \RAM1|ALT_INV_ram~40_q\,
	datad => \RAM1|ALT_INV_ram~32_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~537_combout\);

\RAM1|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \RAM1|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~56_q\);

\RAM1|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~48_q\);

\RAM1|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \RAM1|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~72_q\);

\RAM1|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \RAM1|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~64_q\);

\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~64_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~72_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~2_combout\ & ( 
-- \RAM1|ram~48_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~56_q\,
	datab => \RAM1|ALT_INV_ram~48_q\,
	datac => \RAM1|ALT_INV_ram~72_q\,
	datad => \RAM1|ALT_INV_ram~64_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~538_combout\);

\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~538_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~537_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~537_combout\,
	datab => \RAM1|ALT_INV_ram~538_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~539_combout\);

\CPU1|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~9_sumout\ = SUM(( \CPU1|BancREG|registrador~12_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~539_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~2_combout\)))) ) + ( 
-- \CPU1|ULA1|Add0~2\ ))
-- \CPU1|ULA1|Add0~10\ = CARRY(( \CPU1|BancREG|registrador~12_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~539_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~2_combout\)))) ) + ( \CPU1|ULA1|Add0~2\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datab => \CPU1|DEC1|ALT_INV_Equal6~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~12_q\,
	dataf => \RAM1|ALT_INV_ram~539_combout\,
	cin => \CPU1|ULA1|Add0~2\,
	sumout => \CPU1|ULA1|Add0~9_sumout\,
	cout => \CPU1|ULA1|Add0~10\);

\CPU1|MUX1|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[1]~2_combout\ = (!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~539_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datac => \RAM1|ALT_INV_ram~539_combout\,
	combout => \CPU1|MUX1|saida_MUX[1]~2_combout\);

\CPU1|BancREG|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~9_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[1]~2_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~12_q\);

\CPU1|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~13_sumout\ = SUM(( \CPU1|BancREG|registrador~13_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~542_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( 
-- \CPU1|ULA1|Add0~10\ ))
-- \CPU1|ULA1|Add0~14\ = CARRY(( \CPU1|BancREG|registrador~13_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~542_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( \CPU1|ULA1|Add0~10\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datab => \CPU1|DEC1|ALT_INV_Equal6~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~13_q\,
	dataf => \RAM1|ALT_INV_ram~542_combout\,
	cin => \CPU1|ULA1|Add0~10\,
	sumout => \CPU1|ULA1|Add0~13_sumout\,
	cout => \CPU1|ULA1|Add0~14\);

\CPU1|MUX1|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[2]~3_combout\ = (!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~542_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datac => \RAM1|ALT_INV_ram~542_combout\,
	combout => \CPU1|MUX1|saida_MUX[2]~3_combout\);

\CPU1|BancREG|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~13_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[2]~3_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~13_q\);

\CPU1|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~5_sumout\ = SUM(( \CPU1|BancREG|registrador~14_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((\RAM1|ram~536_combout\ & ((!\CPU1|DEC1|saida[6]~0_combout\) # (\ROM1|memROM~10_combout\))))) ) + ( \CPU1|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_Equal6~1_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~14_q\,
	dataf => \RAM1|ALT_INV_ram~536_combout\,
	cin => \CPU1|ULA1|Add0~14\,
	sumout => \CPU1|ULA1|Add0~5_sumout\);

\CPU1|MUX1|saida_MUX[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[3]~1_combout\ = (!\CPU1|DEC1|saida[6]~0_combout\ & \RAM1|ram~536_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datab => \RAM1|ALT_INV_ram~536_combout\,
	combout => \CPU1|MUX1|saida_MUX[3]~1_combout\);

\CPU1|BancREG|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~5_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[3]~1_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~14_q\);

\REGSEG0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \DEC3x8_2|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG0|DOUT\(3));

\REGSEG0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \DEC3x8_2|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG0|DOUT\(1));

\REGSEG0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \DEC3x8_2|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG0|DOUT\(2));

\SEG0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG0|rascSaida7seg[0]~0_combout\ = (!\REGSEG0|DOUT\(3) & (!\REGSEG0|DOUT\(1) & (!\REGSEG0|DOUT\(0) $ (!\REGSEG0|DOUT\(2))))) # (\REGSEG0|DOUT\(3) & (\REGSEG0|DOUT\(0) & (!\REGSEG0|DOUT\(1) $ (!\REGSEG0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG0|ALT_INV_DOUT\(0),
	datab => \REGSEG0|ALT_INV_DOUT\(3),
	datac => \REGSEG0|ALT_INV_DOUT\(1),
	datad => \REGSEG0|ALT_INV_DOUT\(2),
	combout => \SEG0|rascSaida7seg[0]~0_combout\);

\SEG0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG0|rascSaida7seg[1]~1_combout\ = (!\REGSEG0|DOUT\(3) & (\REGSEG0|DOUT\(2) & (!\REGSEG0|DOUT\(0) $ (!\REGSEG0|DOUT\(1))))) # (\REGSEG0|DOUT\(3) & ((!\REGSEG0|DOUT\(0) & ((\REGSEG0|DOUT\(2)))) # (\REGSEG0|DOUT\(0) & (\REGSEG0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG0|ALT_INV_DOUT\(0),
	datab => \REGSEG0|ALT_INV_DOUT\(3),
	datac => \REGSEG0|ALT_INV_DOUT\(1),
	datad => \REGSEG0|ALT_INV_DOUT\(2),
	combout => \SEG0|rascSaida7seg[1]~1_combout\);

\SEG0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG0|rascSaida7seg[2]~2_combout\ = (!\REGSEG0|DOUT\(3) & (!\REGSEG0|DOUT\(0) & (\REGSEG0|DOUT\(1) & !\REGSEG0|DOUT\(2)))) # (\REGSEG0|DOUT\(3) & (\REGSEG0|DOUT\(2) & ((!\REGSEG0|DOUT\(0)) # (\REGSEG0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG0|ALT_INV_DOUT\(0),
	datab => \REGSEG0|ALT_INV_DOUT\(3),
	datac => \REGSEG0|ALT_INV_DOUT\(1),
	datad => \REGSEG0|ALT_INV_DOUT\(2),
	combout => \SEG0|rascSaida7seg[2]~2_combout\);

\SEG0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG0|rascSaida7seg[3]~3_combout\ = (!\REGSEG0|DOUT\(1) & (!\REGSEG0|DOUT\(3) & (!\REGSEG0|DOUT\(0) $ (!\REGSEG0|DOUT\(2))))) # (\REGSEG0|DOUT\(1) & ((!\REGSEG0|DOUT\(0) & (!\REGSEG0|DOUT\(2) & \REGSEG0|DOUT\(3))) # (\REGSEG0|DOUT\(0) & 
-- (\REGSEG0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG0|ALT_INV_DOUT\(0),
	datab => \REGSEG0|ALT_INV_DOUT\(1),
	datac => \REGSEG0|ALT_INV_DOUT\(2),
	datad => \REGSEG0|ALT_INV_DOUT\(3),
	combout => \SEG0|rascSaida7seg[3]~3_combout\);

\SEG0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG0|rascSaida7seg[4]~4_combout\ = (!\REGSEG0|DOUT\(1) & ((!\REGSEG0|DOUT\(2) & ((\REGSEG0|DOUT\(0)))) # (\REGSEG0|DOUT\(2) & (!\REGSEG0|DOUT\(3))))) # (\REGSEG0|DOUT\(1) & (!\REGSEG0|DOUT\(3) & ((\REGSEG0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG0|ALT_INV_DOUT\(3),
	datab => \REGSEG0|ALT_INV_DOUT\(1),
	datac => \REGSEG0|ALT_INV_DOUT\(2),
	datad => \REGSEG0|ALT_INV_DOUT\(0),
	combout => \SEG0|rascSaida7seg[4]~4_combout\);

\SEG0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG0|rascSaida7seg[5]~5_combout\ = (!\REGSEG0|DOUT\(0) & (\REGSEG0|DOUT\(1) & (!\REGSEG0|DOUT\(2) & !\REGSEG0|DOUT\(3)))) # (\REGSEG0|DOUT\(0) & (!\REGSEG0|DOUT\(3) $ (((!\REGSEG0|DOUT\(1) & \REGSEG0|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG0|ALT_INV_DOUT\(0),
	datab => \REGSEG0|ALT_INV_DOUT\(1),
	datac => \REGSEG0|ALT_INV_DOUT\(2),
	datad => \REGSEG0|ALT_INV_DOUT\(3),
	combout => \SEG0|rascSaida7seg[5]~5_combout\);

\SEG0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG0|rascSaida7seg[6]~6_combout\ = (!\REGSEG0|DOUT\(0) & (!\REGSEG0|DOUT\(1) & (!\REGSEG0|DOUT\(3) $ (\REGSEG0|DOUT\(2))))) # (\REGSEG0|DOUT\(0) & (!\REGSEG0|DOUT\(3) & (!\REGSEG0|DOUT\(1) $ (\REGSEG0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG0|ALT_INV_DOUT\(0),
	datab => \REGSEG0|ALT_INV_DOUT\(3),
	datac => \REGSEG0|ALT_INV_DOUT\(1),
	datad => \REGSEG0|ALT_INV_DOUT\(2),
	combout => \SEG0|rascSaida7seg[6]~6_combout\);

\REGSEG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \DEC3x8_2|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG1|DOUT\(0));

\REGSEG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \DEC3x8_2|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG1|DOUT\(3));

\REGSEG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \DEC3x8_2|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG1|DOUT\(1));

\REGSEG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \DEC3x8_2|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG1|DOUT\(2));

\SEG1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|rascSaida7seg[0]~0_combout\ = (!\REGSEG1|DOUT\(3) & (!\REGSEG1|DOUT\(1) & (!\REGSEG1|DOUT\(0) $ (!\REGSEG1|DOUT\(2))))) # (\REGSEG1|DOUT\(3) & (\REGSEG1|DOUT\(0) & (!\REGSEG1|DOUT\(1) $ (!\REGSEG1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG1|ALT_INV_DOUT\(0),
	datab => \REGSEG1|ALT_INV_DOUT\(3),
	datac => \REGSEG1|ALT_INV_DOUT\(1),
	datad => \REGSEG1|ALT_INV_DOUT\(2),
	combout => \SEG1|rascSaida7seg[0]~0_combout\);

\SEG1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|rascSaida7seg[1]~1_combout\ = (!\REGSEG1|DOUT\(3) & (\REGSEG1|DOUT\(2) & (!\REGSEG1|DOUT\(0) $ (!\REGSEG1|DOUT\(1))))) # (\REGSEG1|DOUT\(3) & ((!\REGSEG1|DOUT\(0) & ((\REGSEG1|DOUT\(2)))) # (\REGSEG1|DOUT\(0) & (\REGSEG1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG1|ALT_INV_DOUT\(0),
	datab => \REGSEG1|ALT_INV_DOUT\(3),
	datac => \REGSEG1|ALT_INV_DOUT\(1),
	datad => \REGSEG1|ALT_INV_DOUT\(2),
	combout => \SEG1|rascSaida7seg[1]~1_combout\);

\SEG1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|rascSaida7seg[2]~2_combout\ = (!\REGSEG1|DOUT\(3) & (!\REGSEG1|DOUT\(0) & (\REGSEG1|DOUT\(1) & !\REGSEG1|DOUT\(2)))) # (\REGSEG1|DOUT\(3) & (\REGSEG1|DOUT\(2) & ((!\REGSEG1|DOUT\(0)) # (\REGSEG1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG1|ALT_INV_DOUT\(0),
	datab => \REGSEG1|ALT_INV_DOUT\(3),
	datac => \REGSEG1|ALT_INV_DOUT\(1),
	datad => \REGSEG1|ALT_INV_DOUT\(2),
	combout => \SEG1|rascSaida7seg[2]~2_combout\);

\SEG1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|rascSaida7seg[3]~3_combout\ = (!\REGSEG1|DOUT\(1) & (!\REGSEG1|DOUT\(3) & (!\REGSEG1|DOUT\(0) $ (!\REGSEG1|DOUT\(2))))) # (\REGSEG1|DOUT\(1) & ((!\REGSEG1|DOUT\(0) & (!\REGSEG1|DOUT\(2) & \REGSEG1|DOUT\(3))) # (\REGSEG1|DOUT\(0) & 
-- (\REGSEG1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG1|ALT_INV_DOUT\(0),
	datab => \REGSEG1|ALT_INV_DOUT\(1),
	datac => \REGSEG1|ALT_INV_DOUT\(2),
	datad => \REGSEG1|ALT_INV_DOUT\(3),
	combout => \SEG1|rascSaida7seg[3]~3_combout\);

\SEG1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|rascSaida7seg[4]~4_combout\ = (!\REGSEG1|DOUT\(1) & ((!\REGSEG1|DOUT\(2) & ((\REGSEG1|DOUT\(0)))) # (\REGSEG1|DOUT\(2) & (!\REGSEG1|DOUT\(3))))) # (\REGSEG1|DOUT\(1) & (!\REGSEG1|DOUT\(3) & ((\REGSEG1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG1|ALT_INV_DOUT\(3),
	datab => \REGSEG1|ALT_INV_DOUT\(1),
	datac => \REGSEG1|ALT_INV_DOUT\(2),
	datad => \REGSEG1|ALT_INV_DOUT\(0),
	combout => \SEG1|rascSaida7seg[4]~4_combout\);

\SEG1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|rascSaida7seg[5]~5_combout\ = (!\REGSEG1|DOUT\(0) & (\REGSEG1|DOUT\(1) & (!\REGSEG1|DOUT\(2) & !\REGSEG1|DOUT\(3)))) # (\REGSEG1|DOUT\(0) & (!\REGSEG1|DOUT\(3) $ (((!\REGSEG1|DOUT\(1) & \REGSEG1|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG1|ALT_INV_DOUT\(0),
	datab => \REGSEG1|ALT_INV_DOUT\(1),
	datac => \REGSEG1|ALT_INV_DOUT\(2),
	datad => \REGSEG1|ALT_INV_DOUT\(3),
	combout => \SEG1|rascSaida7seg[5]~5_combout\);

\SEG1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|rascSaida7seg[6]~6_combout\ = (!\REGSEG1|DOUT\(0) & (!\REGSEG1|DOUT\(1) & (!\REGSEG1|DOUT\(3) $ (\REGSEG1|DOUT\(2))))) # (\REGSEG1|DOUT\(0) & (!\REGSEG1|DOUT\(3) & (!\REGSEG1|DOUT\(1) $ (\REGSEG1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG1|ALT_INV_DOUT\(0),
	datab => \REGSEG1|ALT_INV_DOUT\(3),
	datac => \REGSEG1|ALT_INV_DOUT\(1),
	datad => \REGSEG1|ALT_INV_DOUT\(2),
	combout => \SEG1|rascSaida7seg[6]~6_combout\);

\REGSEG2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \DEC3x8_2|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG2|DOUT\(0));

\REGSEG2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \DEC3x8_2|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG2|DOUT\(3));

\REGSEG2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \DEC3x8_2|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG2|DOUT\(1));

\REGSEG2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \DEC3x8_2|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG2|DOUT\(2));

\SEG2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|rascSaida7seg[0]~0_combout\ = (!\REGSEG2|DOUT\(3) & (!\REGSEG2|DOUT\(1) & (!\REGSEG2|DOUT\(0) $ (!\REGSEG2|DOUT\(2))))) # (\REGSEG2|DOUT\(3) & (\REGSEG2|DOUT\(0) & (!\REGSEG2|DOUT\(1) $ (!\REGSEG2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG2|ALT_INV_DOUT\(0),
	datab => \REGSEG2|ALT_INV_DOUT\(3),
	datac => \REGSEG2|ALT_INV_DOUT\(1),
	datad => \REGSEG2|ALT_INV_DOUT\(2),
	combout => \SEG2|rascSaida7seg[0]~0_combout\);

\SEG2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|rascSaida7seg[1]~1_combout\ = (!\REGSEG2|DOUT\(3) & (\REGSEG2|DOUT\(2) & (!\REGSEG2|DOUT\(0) $ (!\REGSEG2|DOUT\(1))))) # (\REGSEG2|DOUT\(3) & ((!\REGSEG2|DOUT\(0) & ((\REGSEG2|DOUT\(2)))) # (\REGSEG2|DOUT\(0) & (\REGSEG2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG2|ALT_INV_DOUT\(0),
	datab => \REGSEG2|ALT_INV_DOUT\(3),
	datac => \REGSEG2|ALT_INV_DOUT\(1),
	datad => \REGSEG2|ALT_INV_DOUT\(2),
	combout => \SEG2|rascSaida7seg[1]~1_combout\);

\SEG2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|rascSaida7seg[2]~2_combout\ = (!\REGSEG2|DOUT\(3) & (!\REGSEG2|DOUT\(0) & (\REGSEG2|DOUT\(1) & !\REGSEG2|DOUT\(2)))) # (\REGSEG2|DOUT\(3) & (\REGSEG2|DOUT\(2) & ((!\REGSEG2|DOUT\(0)) # (\REGSEG2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG2|ALT_INV_DOUT\(0),
	datab => \REGSEG2|ALT_INV_DOUT\(3),
	datac => \REGSEG2|ALT_INV_DOUT\(1),
	datad => \REGSEG2|ALT_INV_DOUT\(2),
	combout => \SEG2|rascSaida7seg[2]~2_combout\);

\SEG2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|rascSaida7seg[3]~3_combout\ = (!\REGSEG2|DOUT\(1) & (!\REGSEG2|DOUT\(3) & (!\REGSEG2|DOUT\(0) $ (!\REGSEG2|DOUT\(2))))) # (\REGSEG2|DOUT\(1) & ((!\REGSEG2|DOUT\(0) & (!\REGSEG2|DOUT\(2) & \REGSEG2|DOUT\(3))) # (\REGSEG2|DOUT\(0) & 
-- (\REGSEG2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG2|ALT_INV_DOUT\(0),
	datab => \REGSEG2|ALT_INV_DOUT\(1),
	datac => \REGSEG2|ALT_INV_DOUT\(2),
	datad => \REGSEG2|ALT_INV_DOUT\(3),
	combout => \SEG2|rascSaida7seg[3]~3_combout\);

\SEG2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|rascSaida7seg[4]~4_combout\ = (!\REGSEG2|DOUT\(1) & ((!\REGSEG2|DOUT\(2) & ((\REGSEG2|DOUT\(0)))) # (\REGSEG2|DOUT\(2) & (!\REGSEG2|DOUT\(3))))) # (\REGSEG2|DOUT\(1) & (!\REGSEG2|DOUT\(3) & ((\REGSEG2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG2|ALT_INV_DOUT\(3),
	datab => \REGSEG2|ALT_INV_DOUT\(1),
	datac => \REGSEG2|ALT_INV_DOUT\(2),
	datad => \REGSEG2|ALT_INV_DOUT\(0),
	combout => \SEG2|rascSaida7seg[4]~4_combout\);

\SEG2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|rascSaida7seg[5]~5_combout\ = (!\REGSEG2|DOUT\(0) & (\REGSEG2|DOUT\(1) & (!\REGSEG2|DOUT\(2) & !\REGSEG2|DOUT\(3)))) # (\REGSEG2|DOUT\(0) & (!\REGSEG2|DOUT\(3) $ (((!\REGSEG2|DOUT\(1) & \REGSEG2|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG2|ALT_INV_DOUT\(0),
	datab => \REGSEG2|ALT_INV_DOUT\(1),
	datac => \REGSEG2|ALT_INV_DOUT\(2),
	datad => \REGSEG2|ALT_INV_DOUT\(3),
	combout => \SEG2|rascSaida7seg[5]~5_combout\);

\SEG2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|rascSaida7seg[6]~6_combout\ = (!\REGSEG2|DOUT\(0) & (!\REGSEG2|DOUT\(1) & (!\REGSEG2|DOUT\(3) $ (\REGSEG2|DOUT\(2))))) # (\REGSEG2|DOUT\(0) & (!\REGSEG2|DOUT\(3) & (!\REGSEG2|DOUT\(1) $ (\REGSEG2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG2|ALT_INV_DOUT\(0),
	datab => \REGSEG2|ALT_INV_DOUT\(3),
	datac => \REGSEG2|ALT_INV_DOUT\(1),
	datad => \REGSEG2|ALT_INV_DOUT\(2),
	combout => \SEG2|rascSaida7seg[6]~6_combout\);

\REGSEG3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \DEC3x8_2|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG3|DOUT\(0));

\REGSEG3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \DEC3x8_2|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG3|DOUT\(3));

\REGSEG3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \DEC3x8_2|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG3|DOUT\(1));

\REGSEG3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \DEC3x8_2|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG3|DOUT\(2));

\SEG3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|rascSaida7seg[0]~0_combout\ = (!\REGSEG3|DOUT\(3) & (!\REGSEG3|DOUT\(1) & (!\REGSEG3|DOUT\(0) $ (!\REGSEG3|DOUT\(2))))) # (\REGSEG3|DOUT\(3) & (\REGSEG3|DOUT\(0) & (!\REGSEG3|DOUT\(1) $ (!\REGSEG3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG3|ALT_INV_DOUT\(0),
	datab => \REGSEG3|ALT_INV_DOUT\(3),
	datac => \REGSEG3|ALT_INV_DOUT\(1),
	datad => \REGSEG3|ALT_INV_DOUT\(2),
	combout => \SEG3|rascSaida7seg[0]~0_combout\);

\SEG3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|rascSaida7seg[1]~1_combout\ = (!\REGSEG3|DOUT\(3) & (\REGSEG3|DOUT\(2) & (!\REGSEG3|DOUT\(0) $ (!\REGSEG3|DOUT\(1))))) # (\REGSEG3|DOUT\(3) & ((!\REGSEG3|DOUT\(0) & ((\REGSEG3|DOUT\(2)))) # (\REGSEG3|DOUT\(0) & (\REGSEG3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG3|ALT_INV_DOUT\(0),
	datab => \REGSEG3|ALT_INV_DOUT\(3),
	datac => \REGSEG3|ALT_INV_DOUT\(1),
	datad => \REGSEG3|ALT_INV_DOUT\(2),
	combout => \SEG3|rascSaida7seg[1]~1_combout\);

\SEG3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|rascSaida7seg[2]~2_combout\ = (!\REGSEG3|DOUT\(3) & (!\REGSEG3|DOUT\(0) & (\REGSEG3|DOUT\(1) & !\REGSEG3|DOUT\(2)))) # (\REGSEG3|DOUT\(3) & (\REGSEG3|DOUT\(2) & ((!\REGSEG3|DOUT\(0)) # (\REGSEG3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG3|ALT_INV_DOUT\(0),
	datab => \REGSEG3|ALT_INV_DOUT\(3),
	datac => \REGSEG3|ALT_INV_DOUT\(1),
	datad => \REGSEG3|ALT_INV_DOUT\(2),
	combout => \SEG3|rascSaida7seg[2]~2_combout\);

\SEG3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|rascSaida7seg[3]~3_combout\ = (!\REGSEG3|DOUT\(1) & (!\REGSEG3|DOUT\(3) & (!\REGSEG3|DOUT\(0) $ (!\REGSEG3|DOUT\(2))))) # (\REGSEG3|DOUT\(1) & ((!\REGSEG3|DOUT\(0) & (!\REGSEG3|DOUT\(2) & \REGSEG3|DOUT\(3))) # (\REGSEG3|DOUT\(0) & 
-- (\REGSEG3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG3|ALT_INV_DOUT\(0),
	datab => \REGSEG3|ALT_INV_DOUT\(1),
	datac => \REGSEG3|ALT_INV_DOUT\(2),
	datad => \REGSEG3|ALT_INV_DOUT\(3),
	combout => \SEG3|rascSaida7seg[3]~3_combout\);

\SEG3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|rascSaida7seg[4]~4_combout\ = (!\REGSEG3|DOUT\(1) & ((!\REGSEG3|DOUT\(2) & ((\REGSEG3|DOUT\(0)))) # (\REGSEG3|DOUT\(2) & (!\REGSEG3|DOUT\(3))))) # (\REGSEG3|DOUT\(1) & (!\REGSEG3|DOUT\(3) & ((\REGSEG3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG3|ALT_INV_DOUT\(3),
	datab => \REGSEG3|ALT_INV_DOUT\(1),
	datac => \REGSEG3|ALT_INV_DOUT\(2),
	datad => \REGSEG3|ALT_INV_DOUT\(0),
	combout => \SEG3|rascSaida7seg[4]~4_combout\);

\SEG3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|rascSaida7seg[5]~5_combout\ = (!\REGSEG3|DOUT\(0) & (\REGSEG3|DOUT\(1) & (!\REGSEG3|DOUT\(2) & !\REGSEG3|DOUT\(3)))) # (\REGSEG3|DOUT\(0) & (!\REGSEG3|DOUT\(3) $ (((!\REGSEG3|DOUT\(1) & \REGSEG3|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG3|ALT_INV_DOUT\(0),
	datab => \REGSEG3|ALT_INV_DOUT\(1),
	datac => \REGSEG3|ALT_INV_DOUT\(2),
	datad => \REGSEG3|ALT_INV_DOUT\(3),
	combout => \SEG3|rascSaida7seg[5]~5_combout\);

\SEG3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|rascSaida7seg[6]~6_combout\ = (!\REGSEG3|DOUT\(0) & (!\REGSEG3|DOUT\(1) & (!\REGSEG3|DOUT\(3) $ (\REGSEG3|DOUT\(2))))) # (\REGSEG3|DOUT\(0) & (!\REGSEG3|DOUT\(3) & (!\REGSEG3|DOUT\(1) $ (\REGSEG3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG3|ALT_INV_DOUT\(0),
	datab => \REGSEG3|ALT_INV_DOUT\(3),
	datac => \REGSEG3|ALT_INV_DOUT\(1),
	datad => \REGSEG3|ALT_INV_DOUT\(2),
	combout => \SEG3|rascSaida7seg[6]~6_combout\);

\REGSEG4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \DEC3x8_2|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG4|DOUT\(0));

\REGSEG4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \DEC3x8_2|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG4|DOUT\(3));

\REGSEG4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \DEC3x8_2|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG4|DOUT\(1));

\REGSEG4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \DEC3x8_2|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG4|DOUT\(2));

\SEG4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|rascSaida7seg[0]~0_combout\ = (!\REGSEG4|DOUT\(3) & (!\REGSEG4|DOUT\(1) & (!\REGSEG4|DOUT\(0) $ (!\REGSEG4|DOUT\(2))))) # (\REGSEG4|DOUT\(3) & (\REGSEG4|DOUT\(0) & (!\REGSEG4|DOUT\(1) $ (!\REGSEG4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG4|ALT_INV_DOUT\(0),
	datab => \REGSEG4|ALT_INV_DOUT\(3),
	datac => \REGSEG4|ALT_INV_DOUT\(1),
	datad => \REGSEG4|ALT_INV_DOUT\(2),
	combout => \SEG4|rascSaida7seg[0]~0_combout\);

\SEG4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|rascSaida7seg[1]~1_combout\ = (!\REGSEG4|DOUT\(3) & (\REGSEG4|DOUT\(2) & (!\REGSEG4|DOUT\(0) $ (!\REGSEG4|DOUT\(1))))) # (\REGSEG4|DOUT\(3) & ((!\REGSEG4|DOUT\(0) & ((\REGSEG4|DOUT\(2)))) # (\REGSEG4|DOUT\(0) & (\REGSEG4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG4|ALT_INV_DOUT\(0),
	datab => \REGSEG4|ALT_INV_DOUT\(3),
	datac => \REGSEG4|ALT_INV_DOUT\(1),
	datad => \REGSEG4|ALT_INV_DOUT\(2),
	combout => \SEG4|rascSaida7seg[1]~1_combout\);

\SEG4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|rascSaida7seg[2]~2_combout\ = (!\REGSEG4|DOUT\(3) & (!\REGSEG4|DOUT\(0) & (\REGSEG4|DOUT\(1) & !\REGSEG4|DOUT\(2)))) # (\REGSEG4|DOUT\(3) & (\REGSEG4|DOUT\(2) & ((!\REGSEG4|DOUT\(0)) # (\REGSEG4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG4|ALT_INV_DOUT\(0),
	datab => \REGSEG4|ALT_INV_DOUT\(3),
	datac => \REGSEG4|ALT_INV_DOUT\(1),
	datad => \REGSEG4|ALT_INV_DOUT\(2),
	combout => \SEG4|rascSaida7seg[2]~2_combout\);

\SEG4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|rascSaida7seg[3]~3_combout\ = (!\REGSEG4|DOUT\(1) & (!\REGSEG4|DOUT\(3) & (!\REGSEG4|DOUT\(0) $ (!\REGSEG4|DOUT\(2))))) # (\REGSEG4|DOUT\(1) & ((!\REGSEG4|DOUT\(0) & (!\REGSEG4|DOUT\(2) & \REGSEG4|DOUT\(3))) # (\REGSEG4|DOUT\(0) & 
-- (\REGSEG4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG4|ALT_INV_DOUT\(0),
	datab => \REGSEG4|ALT_INV_DOUT\(1),
	datac => \REGSEG4|ALT_INV_DOUT\(2),
	datad => \REGSEG4|ALT_INV_DOUT\(3),
	combout => \SEG4|rascSaida7seg[3]~3_combout\);

\SEG4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|rascSaida7seg[4]~4_combout\ = (!\REGSEG4|DOUT\(1) & ((!\REGSEG4|DOUT\(2) & ((\REGSEG4|DOUT\(0)))) # (\REGSEG4|DOUT\(2) & (!\REGSEG4|DOUT\(3))))) # (\REGSEG4|DOUT\(1) & (!\REGSEG4|DOUT\(3) & ((\REGSEG4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG4|ALT_INV_DOUT\(3),
	datab => \REGSEG4|ALT_INV_DOUT\(1),
	datac => \REGSEG4|ALT_INV_DOUT\(2),
	datad => \REGSEG4|ALT_INV_DOUT\(0),
	combout => \SEG4|rascSaida7seg[4]~4_combout\);

\SEG4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|rascSaida7seg[5]~5_combout\ = (!\REGSEG4|DOUT\(0) & (\REGSEG4|DOUT\(1) & (!\REGSEG4|DOUT\(2) & !\REGSEG4|DOUT\(3)))) # (\REGSEG4|DOUT\(0) & (!\REGSEG4|DOUT\(3) $ (((!\REGSEG4|DOUT\(1) & \REGSEG4|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG4|ALT_INV_DOUT\(0),
	datab => \REGSEG4|ALT_INV_DOUT\(1),
	datac => \REGSEG4|ALT_INV_DOUT\(2),
	datad => \REGSEG4|ALT_INV_DOUT\(3),
	combout => \SEG4|rascSaida7seg[5]~5_combout\);

\SEG4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|rascSaida7seg[6]~6_combout\ = (!\REGSEG4|DOUT\(0) & (!\REGSEG4|DOUT\(1) & (!\REGSEG4|DOUT\(3) $ (\REGSEG4|DOUT\(2))))) # (\REGSEG4|DOUT\(0) & (!\REGSEG4|DOUT\(3) & (!\REGSEG4|DOUT\(1) $ (\REGSEG4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG4|ALT_INV_DOUT\(0),
	datab => \REGSEG4|ALT_INV_DOUT\(3),
	datac => \REGSEG4|ALT_INV_DOUT\(1),
	datad => \REGSEG4|ALT_INV_DOUT\(2),
	combout => \SEG4|rascSaida7seg[6]~6_combout\);

\REGSEG5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \DEC3x8_2|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG5|DOUT\(0));

\REGSEG5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \DEC3x8_2|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG5|DOUT\(3));

\REGSEG5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \DEC3x8_2|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG5|DOUT\(1));

\REGSEG5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \DEC3x8_2|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG5|DOUT\(2));

\SEG5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|rascSaida7seg[0]~0_combout\ = (!\REGSEG5|DOUT\(3) & (!\REGSEG5|DOUT\(1) & (!\REGSEG5|DOUT\(0) $ (!\REGSEG5|DOUT\(2))))) # (\REGSEG5|DOUT\(3) & (\REGSEG5|DOUT\(0) & (!\REGSEG5|DOUT\(1) $ (!\REGSEG5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG5|ALT_INV_DOUT\(0),
	datab => \REGSEG5|ALT_INV_DOUT\(3),
	datac => \REGSEG5|ALT_INV_DOUT\(1),
	datad => \REGSEG5|ALT_INV_DOUT\(2),
	combout => \SEG5|rascSaida7seg[0]~0_combout\);

\SEG5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|rascSaida7seg[1]~1_combout\ = (!\REGSEG5|DOUT\(3) & (\REGSEG5|DOUT\(2) & (!\REGSEG5|DOUT\(0) $ (!\REGSEG5|DOUT\(1))))) # (\REGSEG5|DOUT\(3) & ((!\REGSEG5|DOUT\(0) & ((\REGSEG5|DOUT\(2)))) # (\REGSEG5|DOUT\(0) & (\REGSEG5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG5|ALT_INV_DOUT\(0),
	datab => \REGSEG5|ALT_INV_DOUT\(3),
	datac => \REGSEG5|ALT_INV_DOUT\(1),
	datad => \REGSEG5|ALT_INV_DOUT\(2),
	combout => \SEG5|rascSaida7seg[1]~1_combout\);

\SEG5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|rascSaida7seg[2]~2_combout\ = (!\REGSEG5|DOUT\(3) & (!\REGSEG5|DOUT\(0) & (\REGSEG5|DOUT\(1) & !\REGSEG5|DOUT\(2)))) # (\REGSEG5|DOUT\(3) & (\REGSEG5|DOUT\(2) & ((!\REGSEG5|DOUT\(0)) # (\REGSEG5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG5|ALT_INV_DOUT\(0),
	datab => \REGSEG5|ALT_INV_DOUT\(3),
	datac => \REGSEG5|ALT_INV_DOUT\(1),
	datad => \REGSEG5|ALT_INV_DOUT\(2),
	combout => \SEG5|rascSaida7seg[2]~2_combout\);

\SEG5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|rascSaida7seg[3]~3_combout\ = (!\REGSEG5|DOUT\(1) & (!\REGSEG5|DOUT\(3) & (!\REGSEG5|DOUT\(0) $ (!\REGSEG5|DOUT\(2))))) # (\REGSEG5|DOUT\(1) & ((!\REGSEG5|DOUT\(0) & (!\REGSEG5|DOUT\(2) & \REGSEG5|DOUT\(3))) # (\REGSEG5|DOUT\(0) & 
-- (\REGSEG5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG5|ALT_INV_DOUT\(0),
	datab => \REGSEG5|ALT_INV_DOUT\(1),
	datac => \REGSEG5|ALT_INV_DOUT\(2),
	datad => \REGSEG5|ALT_INV_DOUT\(3),
	combout => \SEG5|rascSaida7seg[3]~3_combout\);

\SEG5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|rascSaida7seg[4]~4_combout\ = (!\REGSEG5|DOUT\(1) & ((!\REGSEG5|DOUT\(2) & ((\REGSEG5|DOUT\(0)))) # (\REGSEG5|DOUT\(2) & (!\REGSEG5|DOUT\(3))))) # (\REGSEG5|DOUT\(1) & (!\REGSEG5|DOUT\(3) & ((\REGSEG5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG5|ALT_INV_DOUT\(3),
	datab => \REGSEG5|ALT_INV_DOUT\(1),
	datac => \REGSEG5|ALT_INV_DOUT\(2),
	datad => \REGSEG5|ALT_INV_DOUT\(0),
	combout => \SEG5|rascSaida7seg[4]~4_combout\);

\SEG5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|rascSaida7seg[5]~5_combout\ = (!\REGSEG5|DOUT\(0) & (\REGSEG5|DOUT\(1) & (!\REGSEG5|DOUT\(2) & !\REGSEG5|DOUT\(3)))) # (\REGSEG5|DOUT\(0) & (!\REGSEG5|DOUT\(3) $ (((!\REGSEG5|DOUT\(1) & \REGSEG5|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG5|ALT_INV_DOUT\(0),
	datab => \REGSEG5|ALT_INV_DOUT\(1),
	datac => \REGSEG5|ALT_INV_DOUT\(2),
	datad => \REGSEG5|ALT_INV_DOUT\(3),
	combout => \SEG5|rascSaida7seg[5]~5_combout\);

\SEG5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|rascSaida7seg[6]~6_combout\ = (!\REGSEG5|DOUT\(0) & (!\REGSEG5|DOUT\(1) & (!\REGSEG5|DOUT\(3) $ (\REGSEG5|DOUT\(2))))) # (\REGSEG5|DOUT\(0) & (!\REGSEG5|DOUT\(3) & (!\REGSEG5|DOUT\(1) $ (\REGSEG5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG5|ALT_INV_DOUT\(0),
	datab => \REGSEG5|ALT_INV_DOUT\(3),
	datac => \REGSEG5|ALT_INV_DOUT\(1),
	datad => \REGSEG5|ALT_INV_DOUT\(2),
	combout => \SEG5|rascSaida7seg[6]~6_combout\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\KEY[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(4),
	o => \KEY[4]~input_o\);

\KEY[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(5),
	o => \KEY[5]~input_o\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);
END structure;


