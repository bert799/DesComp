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

-- DATE "10/11/2022 11:16:55"

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
SIGNAL \KEY[4]~input_o\ : std_logic;
SIGNAL \KEY[5]~input_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU1|MUXPC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU1|MUXPC|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|MUXPC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU1|MUXPC|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|MUXPC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \CPU_data_in[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \habilita_buf3_8por~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \CPU_data_in[0]~1_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \CPU_data_in[0]~2_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \CPU_data_in[0]~3_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \CPU_data_in[0]~6_combout\ : std_logic;
SIGNAL \CPU_data_in[0]~4_combout\ : std_logic;
SIGNAL \CPU_data_in[0]~5_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~11_q\ : std_logic;
SIGNAL \habilita_REG_LEDs~0_combout\ : std_logic;
SIGNAL \habilita_REG_LEDs~1_combout\ : std_logic;
SIGNAL \habilita_buf3_8por~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~12_q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~13_q\ : std_logic;
SIGNAL \habilita_buf3_8por~2_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~14_q\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~15_q\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~16_q\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~17_q\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~18_q\ : std_logic;
SIGNAL \habilita_REGSEG0~0_combout\ : std_logic;
SIGNAL \FF_LED8|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LED8|DOUT~q\ : std_logic;
SIGNAL \FF_LED9|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LED9|DOUT~q\ : std_logic;
SIGNAL \habilita_REGSEG0~1_combout\ : std_logic;
SIGNAL \SEG0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \SEG0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \SEG0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \SEG0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \SEG0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \SEG0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \SEG0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \habilita_REGSEG1~0_combout\ : std_logic;
SIGNAL \SEG1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \SEG1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \SEG1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \SEG1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \SEG1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \SEG1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \SEG1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \habilita_REGSEG2~0_combout\ : std_logic;
SIGNAL \SEG2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \SEG2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \SEG2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \SEG2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \SEG2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \SEG2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \SEG2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \habilita_REGSEG3~0_combout\ : std_logic;
SIGNAL \SEG3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \SEG3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \SEG3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \SEG3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \SEG3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \SEG3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \SEG3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \habilita_REGSEG5~0_combout\ : std_logic;
SIGNAL \habilita_REGSEG4~0_combout\ : std_logic;
SIGNAL \SEG4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \SEG4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \SEG4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \SEG4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \SEG4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \SEG4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \SEG4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \habilita_REGSEG5~combout\ : std_logic;
SIGNAL \SEG5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \SEG5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \SEG5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \SEG5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \SEG5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \SEG5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \SEG5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REGSEG5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_LEDs|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGSEG3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU1|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGSEG1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_CPU_data_in[0]~6_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \ALT_INV_habilita_buf3_8por~2_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_CPU_data_in[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_CPU_data_in[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_habilita_buf3_8por~1_combout\ : std_logic;
SIGNAL \ALT_INV_CPU_data_in[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_CPU_data_in[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_CPU_data_in[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_habilita_buf3_8por~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ALT_INV_habilita_REGSEG5~0_combout\ : std_logic;
SIGNAL \ALT_INV_CPU_data_in[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_habilita_REGSEG0~0_combout\ : std_logic;
SIGNAL \ALT_INV_habilita_REG_LEDs~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REGSEG5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGSEG0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FF_LED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FF_LED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU1|BancREG|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~11_q\ : std_logic;
SIGNAL \CPU1|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

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
\ALT_INV_CPU_data_in[0]~6_combout\ <= NOT \CPU_data_in[0]~6_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[6]~5_combout\ <= NOT \CPU1|MUX1|saida_MUX[6]~5_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[5]~4_combout\ <= NOT \CPU1|MUX1|saida_MUX[5]~4_combout\;
\ALT_INV_habilita_buf3_8por~2_combout\ <= NOT \habilita_buf3_8por~2_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \CPU1|MUX1|saida_MUX[2]~1_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \CPU1|MUX1|saida_MUX[1]~0_combout\;
\ALT_INV_CPU_data_in[0]~5_combout\ <= NOT \CPU_data_in[0]~5_combout\;
\ALT_INV_CPU_data_in[0]~4_combout\ <= NOT \CPU_data_in[0]~4_combout\;
\ALT_INV_habilita_buf3_8por~1_combout\ <= NOT \habilita_buf3_8por~1_combout\;
\ALT_INV_CPU_data_in[0]~3_combout\ <= NOT \CPU_data_in[0]~3_combout\;
\ALT_INV_CPU_data_in[0]~2_combout\ <= NOT \CPU_data_in[0]~2_combout\;
\ALT_INV_CPU_data_in[0]~1_combout\ <= NOT \CPU_data_in[0]~1_combout\;
\ALT_INV_habilita_buf3_8por~0_combout\ <= NOT \habilita_buf3_8por~0_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\ALT_INV_habilita_REGSEG5~0_combout\ <= NOT \habilita_REGSEG5~0_combout\;
\ALT_INV_CPU_data_in[0]~0_combout\ <= NOT \CPU_data_in[0]~0_combout\;
\ALT_INV_habilita_REGSEG0~0_combout\ <= NOT \habilita_REGSEG0~0_combout\;
\ALT_INV_habilita_REG_LEDs~0_combout\ <= NOT \habilita_REG_LEDs~0_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\REGSEG5|ALT_INV_DOUT\(1) <= NOT \REGSEG5|DOUT\(1);
\REGSEG5|ALT_INV_DOUT\(2) <= NOT \REGSEG5|DOUT\(2);
\REGSEG5|ALT_INV_DOUT\(3) <= NOT \REGSEG5|DOUT\(3);
\REGSEG5|ALT_INV_DOUT\(0) <= NOT \REGSEG5|DOUT\(0);
\REGSEG4|ALT_INV_DOUT\(1) <= NOT \REGSEG4|DOUT\(1);
\REGSEG4|ALT_INV_DOUT\(2) <= NOT \REGSEG4|DOUT\(2);
\REGSEG4|ALT_INV_DOUT\(3) <= NOT \REGSEG4|DOUT\(3);
\REGSEG4|ALT_INV_DOUT\(0) <= NOT \REGSEG4|DOUT\(0);
\REGSEG3|ALT_INV_DOUT\(1) <= NOT \REGSEG3|DOUT\(1);
\REGSEG3|ALT_INV_DOUT\(2) <= NOT \REGSEG3|DOUT\(2);
\REGSEG3|ALT_INV_DOUT\(3) <= NOT \REGSEG3|DOUT\(3);
\REGSEG3|ALT_INV_DOUT\(0) <= NOT \REGSEG3|DOUT\(0);
\REGSEG2|ALT_INV_DOUT\(1) <= NOT \REGSEG2|DOUT\(1);
\REGSEG2|ALT_INV_DOUT\(2) <= NOT \REGSEG2|DOUT\(2);
\REGSEG2|ALT_INV_DOUT\(3) <= NOT \REGSEG2|DOUT\(3);
\REGSEG2|ALT_INV_DOUT\(0) <= NOT \REGSEG2|DOUT\(0);
\REGSEG1|ALT_INV_DOUT\(1) <= NOT \REGSEG1|DOUT\(1);
\REGSEG1|ALT_INV_DOUT\(2) <= NOT \REGSEG1|DOUT\(2);
\REGSEG1|ALT_INV_DOUT\(3) <= NOT \REGSEG1|DOUT\(3);
\REGSEG1|ALT_INV_DOUT\(0) <= NOT \REGSEG1|DOUT\(0);
\REGSEG0|ALT_INV_DOUT\(1) <= NOT \REGSEG0|DOUT\(1);
\REGSEG0|ALT_INV_DOUT\(2) <= NOT \REGSEG0|DOUT\(2);
\REGSEG0|ALT_INV_DOUT\(3) <= NOT \REGSEG0|DOUT\(3);
\REGSEG0|ALT_INV_DOUT\(0) <= NOT \REGSEG0|DOUT\(0);
\FF_LED9|ALT_INV_DOUT~q\ <= NOT \FF_LED9|DOUT~q\;
\FF_LED8|ALT_INV_DOUT~q\ <= NOT \FF_LED8|DOUT~q\;
\CPU1|PC|ALT_INV_DOUT\(8) <= NOT \CPU1|PC|DOUT\(8);
\CPU1|PC|ALT_INV_DOUT\(7) <= NOT \CPU1|PC|DOUT\(7);
\CPU1|PC|ALT_INV_DOUT\(6) <= NOT \CPU1|PC|DOUT\(6);
\CPU1|PC|ALT_INV_DOUT\(5) <= NOT \CPU1|PC|DOUT\(5);
\CPU1|PC|ALT_INV_DOUT\(4) <= NOT \CPU1|PC|DOUT\(4);
\CPU1|PC|ALT_INV_DOUT\(3) <= NOT \CPU1|PC|DOUT\(3);
\CPU1|PC|ALT_INV_DOUT\(2) <= NOT \CPU1|PC|DOUT\(2);
\CPU1|PC|ALT_INV_DOUT\(1) <= NOT \CPU1|PC|DOUT\(1);
\CPU1|PC|ALT_INV_DOUT\(0) <= NOT \CPU1|PC|DOUT\(0);
\CPU1|BancREG|ALT_INV_registrador~18_q\ <= NOT \CPU1|BancREG|registrador~18_q\;
\CPU1|BancREG|ALT_INV_registrador~17_q\ <= NOT \CPU1|BancREG|registrador~17_q\;
\CPU1|BancREG|ALT_INV_registrador~16_q\ <= NOT \CPU1|BancREG|registrador~16_q\;
\CPU1|BancREG|ALT_INV_registrador~15_q\ <= NOT \CPU1|BancREG|registrador~15_q\;
\CPU1|BancREG|ALT_INV_registrador~14_q\ <= NOT \CPU1|BancREG|registrador~14_q\;
\CPU1|BancREG|ALT_INV_registrador~13_q\ <= NOT \CPU1|BancREG|registrador~13_q\;
\CPU1|BancREG|ALT_INV_registrador~12_q\ <= NOT \CPU1|BancREG|registrador~12_q\;
\CPU1|BancREG|ALT_INV_registrador~11_q\ <= NOT \CPU1|BancREG|registrador~11_q\;
\CPU1|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU1|incrementaPC|Add0~21_sumout\;
\CPU1|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU1|incrementaPC|Add0~17_sumout\;
\CPU1|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU1|incrementaPC|Add0~9_sumout\;
\CPU1|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU1|incrementaPC|Add0~5_sumout\;
\CPU1|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU1|incrementaPC|Add0~1_sumout\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;

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
	o => \PC_OUT[0]~output_o\);

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
	o => \PC_OUT[1]~output_o\);

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
	o => \PC_OUT[2]~output_o\);

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
	o => \PC_OUT[3]~output_o\);

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
	o => \PC_OUT[4]~output_o\);

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
	o => \PC_OUT[5]~output_o\);

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
	o => \PC_OUT[6]~output_o\);

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
	o => \PC_OUT[7]~output_o\);

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
	o => \PC_OUT[8]~output_o\);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDs|DOUT\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDs|DOUT\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDs|DOUT\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDs|DOUT\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDs|DOUT\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDs|DOUT\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDs|DOUT\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDs|DOUT\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FF_LED8|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FF_LED9|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

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
	o => \HEX0[0]~output_o\);

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
	o => \HEX0[1]~output_o\);

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
	o => \HEX0[2]~output_o\);

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
	o => \HEX0[3]~output_o\);

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
	o => \HEX0[4]~output_o\);

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
	o => \HEX0[5]~output_o\);

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
	o => \HEX0[6]~output_o\);

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
	o => \HEX1[0]~output_o\);

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
	o => \HEX1[1]~output_o\);

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
	o => \HEX1[2]~output_o\);

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
	o => \HEX1[3]~output_o\);

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
	o => \HEX1[4]~output_o\);

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
	o => \HEX1[5]~output_o\);

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
	o => \HEX1[6]~output_o\);

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
	o => \HEX2[0]~output_o\);

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
	o => \HEX2[1]~output_o\);

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
	o => \HEX2[2]~output_o\);

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
	o => \HEX2[3]~output_o\);

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
	o => \HEX2[4]~output_o\);

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
	o => \HEX2[5]~output_o\);

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
	o => \HEX2[6]~output_o\);

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
	o => \HEX3[0]~output_o\);

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
	o => \HEX3[1]~output_o\);

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
	o => \HEX3[2]~output_o\);

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
	o => \HEX3[3]~output_o\);

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
	o => \HEX3[4]~output_o\);

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
	o => \HEX3[5]~output_o\);

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
	o => \HEX3[6]~output_o\);

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
	o => \HEX4[0]~output_o\);

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
	o => \HEX4[1]~output_o\);

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
	o => \HEX4[2]~output_o\);

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
	o => \HEX4[3]~output_o\);

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
	o => \HEX4[4]~output_o\);

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
	o => \HEX4[5]~output_o\);

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
	o => \HEX4[6]~output_o\);

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
	o => \HEX5[0]~output_o\);

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
	o => \HEX5[1]~output_o\);

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
	o => \HEX5[2]~output_o\);

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
	o => \HEX5[3]~output_o\);

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
	o => \HEX5[4]~output_o\);

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
	o => \HEX5[5]~output_o\);

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
	o => \HEX5[6]~output_o\);

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

\CPU1|MUXPC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXPC|saida_MUX[2]~2_combout\ = ( \CPU1|incrementaPC|Add0~9_sumout\ & ( ((!\CPU1|PC|DOUT\(4)) # ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\))) # (\CPU1|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \CPU1|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU1|MUXPC|saida_MUX[2]~2_combout\);

\CPU1|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|MUXPC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(2));

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

\CPU1|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(3));

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

\CPU1|MUXPC|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXPC|saida_MUX[5]~4_combout\ = ( \CPU1|incrementaPC|Add0~21_sumout\ & ( ((!\CPU1|PC|DOUT\(4)) # ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\))) # (\CPU1|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \CPU1|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU1|MUXPC|saida_MUX[5]~4_combout\);

\CPU1|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|MUXPC|saida_MUX[5]~4_combout\,
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(8));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(6) & (!\CPU1|PC|DOUT\(7) & !\CPU1|PC|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT\(6),
	datac => \CPU1|PC|ALT_INV_DOUT\(7),
	datad => \CPU1|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~1_combout\);

\CPU1|MUXPC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXPC|saida_MUX[1]~1_combout\ = ( \CPU1|incrementaPC|Add0~5_sumout\ & ( ((!\CPU1|PC|DOUT\(4)) # ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\))) # (\CPU1|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \CPU1|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU1|MUXPC|saida_MUX[1]~1_combout\);

\CPU1|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|MUXPC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(1));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(1),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\CPU1|MUXPC|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXPC|saida_MUX[4]~3_combout\ = ( \CPU1|incrementaPC|Add0~17_sumout\ & ( ((!\CPU1|PC|DOUT\(4)) # ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\))) # (\CPU1|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \CPU1|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU1|MUXPC|saida_MUX[4]~3_combout\);

\CPU1|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|MUXPC|saida_MUX[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(4));

\CPU1|MUXPC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXPC|saida_MUX[0]~0_combout\ = ( \CPU1|incrementaPC|Add0~1_sumout\ & ( ((!\CPU1|PC|DOUT\(4)) # ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\))) # (\CPU1|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \CPU1|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU1|MUXPC|saida_MUX[0]~0_combout\);

\CPU1|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|MUXPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(0));

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\CPU1|PC|DOUT\(8) & ( (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(6) & !\CPU1|PC|DOUT\(7)))) ) )

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
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(1) & (\CPU1|PC|DOUT\(2))) # (\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3))))) # (\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT\(3)) # (\CPU1|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101001000011010010100100001101001010010000110100101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(1) & ((!\CPU1|PC|DOUT\(2)) # (\CPU1|PC|DOUT\(0))))) # (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(1) $ (((\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000110011100001100011001110000110001100111000011000110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\CPU_data_in[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU_data_in[0]~0_combout\ = (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & \ROM1|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \CPU_data_in[0]~0_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(1) & \CPU1|PC|DOUT\(2))) # (\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010010000000000101001000000000010100100000000001010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~6_combout\);

\habilita_buf3_8por~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_buf3_8por~0_combout\ = ( !\ROM1|memROM~6_combout\ & ( (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(4) & \ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000000000000000000000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \habilita_buf3_8por~0_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(1)) # (!\CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT\(0) & (((\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000101101010000000010110101000000001011010100000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~4_combout\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\CPU_data_in[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU_data_in[0]~1_combout\ = ( \SW[9]~input_o\ & ( \KEY[3]~input_o\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~4_combout\ $ (!\ROM1|memROM~5_combout\)))) ) ) ) # ( !\SW[9]~input_o\ & ( \KEY[3]~input_o\ & ( 
-- (\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~4_combout\ & \ROM1|memROM~5_combout\))) ) ) ) # ( \SW[9]~input_o\ & ( !\KEY[3]~input_o\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & (\ROM1|memROM~4_combout\ & 
-- !\ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000100000000000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \CPU_data_in[0]~1_combout\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\CPU_data_in[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU_data_in[0]~2_combout\ = (!\ROM1|memROM~2_combout\ & (((\SW[8]~input_o\)))) # (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~4_combout\ & (\KEY[1]~input_o\)) # (\ROM1|memROM~4_combout\ & ((\SW[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	combout => \CPU_data_in[0]~2_combout\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\CPU_data_in[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU_data_in[0]~3_combout\ = ( !\ROM1|memROM~5_combout\ & ( \KEY[2]~input_o\ & ( (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & ((\ROM1|memROM~3_combout\) # (\KEY[0]~input_o\)))) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\KEY[2]~input_o\ & ( 
-- (\ROM1|memROM~2_combout\ & (\KEY[0]~input_o\ & (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \CPU_data_in[0]~3_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\CPU_data_in[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU_data_in[0]~6_combout\ = ( \CPU1|PC|DOUT\(2) & ( \CPU1|PC|DOUT\(3) & ( (\FPGA_RESET_N~input_o\ & (!\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT\(1))) ) ) ) # ( !\CPU1|PC|DOUT\(2) & ( \CPU1|PC|DOUT\(3) & ( (\FPGA_RESET_N~input_o\ & (\CPU1|PC|DOUT\(0) & 
-- !\CPU1|PC|DOUT\(1))) ) ) ) # ( !\CPU1|PC|DOUT\(2) & ( !\CPU1|PC|DOUT\(3) & ( (\SW[0]~input_o\ & (!\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000000000011000000000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_FPGA_RESET_N~input_o\,
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	datae => \CPU1|PC|ALT_INV_DOUT\(2),
	dataf => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \CPU_data_in[0]~6_combout\);

\CPU_data_in[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU_data_in[0]~4_combout\ = ( !\CPU1|PC|DOUT\(4) & ( \CPU_data_in[0]~6_combout\ & ( (\ROM1|memROM~1_combout\ & (!\CPU1|PC|DOUT\(0) & ((\SW[0]~input_o\) # (\ROM1|memROM~2_combout\)))) ) ) ) # ( !\CPU1|PC|DOUT\(4) & ( !\CPU_data_in[0]~6_combout\ & ( 
-- (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~1_combout\ & (\SW[0]~input_o\ & !\CPU1|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000010011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \CPU1|PC|ALT_INV_DOUT\(0),
	datae => \CPU1|PC|ALT_INV_DOUT\(4),
	dataf => \ALT_INV_CPU_data_in[0]~6_combout\,
	combout => \CPU_data_in[0]~4_combout\);

\CPU_data_in[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU_data_in[0]~5_combout\ = ( \CPU_data_in[0]~3_combout\ & ( \CPU_data_in[0]~4_combout\ ) ) # ( !\CPU_data_in[0]~3_combout\ & ( \CPU_data_in[0]~4_combout\ ) ) # ( \CPU_data_in[0]~3_combout\ & ( !\CPU_data_in[0]~4_combout\ & ( 
-- \habilita_buf3_8por~0_combout\ ) ) ) # ( !\CPU_data_in[0]~3_combout\ & ( !\CPU_data_in[0]~4_combout\ & ( (\habilita_buf3_8por~0_combout\ & (((\CPU_data_in[0]~0_combout\ & \CPU_data_in[0]~2_combout\)) # (\CPU_data_in[0]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CPU_data_in[0]~0_combout\,
	datab => \ALT_INV_habilita_buf3_8por~0_combout\,
	datac => \ALT_INV_CPU_data_in[0]~1_combout\,
	datad => \ALT_INV_CPU_data_in[0]~2_combout\,
	datae => \ALT_INV_CPU_data_in[0]~3_combout\,
	dataf => \ALT_INV_CPU_data_in[0]~4_combout\,
	combout => \CPU_data_in[0]~5_combout\);

\CPU1|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU1|ULA1|Add0~34_cout\);

\CPU1|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~1_sumout\ = SUM(( \CPU1|BancREG|registrador~11_q\ ) + ( !\CPU_data_in[0]~5_combout\ ) + ( \CPU1|ULA1|Add0~34_cout\ ))
-- \CPU1|ULA1|Add0~2\ = CARRY(( \CPU1|BancREG|registrador~11_q\ ) + ( !\CPU_data_in[0]~5_combout\ ) + ( \CPU1|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|BancREG|ALT_INV_registrador~11_q\,
	dataf => \ALT_INV_CPU_data_in[0]~5_combout\,
	cin => \CPU1|ULA1|Add0~34_cout\,
	sumout => \CPU1|ULA1|Add0~1_sumout\,
	cout => \CPU1|ULA1|Add0~2\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( !\CPU1|PC|DOUT\(7) & ( !\CPU1|PC|DOUT\(8) & ( (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT\(5),
	datad => \CPU1|PC|ALT_INV_DOUT\(6),
	datae => \CPU1|PC|ALT_INV_DOUT\(7),
	dataf => \CPU1|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~7_combout\);

\CPU1|BancREG|registrador~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~1_sumout\,
	asdata => \CPU_data_in[0]~5_combout\,
	sload => \ROM1|memROM~2_combout\,
	ena => \ROM1|memROM~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~11_q\);

\habilita_REG_LEDs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_REG_LEDs~0_combout\ = ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(4) & \ROM1|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \habilita_REG_LEDs~0_combout\);

\habilita_REG_LEDs~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_REG_LEDs~1_combout\ = (\habilita_REG_LEDs~0_combout\ & ((!\ROM1|memROM~2_combout\) # ((!\ROM1|memROM~3_combout\ & \ROM1|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101110000000001010111000000000101011100000000010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ALT_INV_habilita_REG_LEDs~0_combout\,
	combout => \habilita_REG_LEDs~1_combout\);

\REG_LEDs|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \habilita_REG_LEDs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDs|DOUT\(0));

\habilita_buf3_8por~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_buf3_8por~1_combout\ = (\ROM1|memROM~2_combout\ & (((!\ROM1|memROM~4_combout\) # (\ROM1|memROM~5_combout\)) # (\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010101010100010101010101010001010101010101000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \habilita_buf3_8por~1_combout\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\CPU1|MUX1|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[1]~0_combout\ = (\habilita_buf3_8por~0_combout\ & (!\habilita_buf3_8por~1_combout\ & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habilita_buf3_8por~0_combout\,
	datab => \ALT_INV_habilita_buf3_8por~1_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[1]~0_combout\);

\CPU1|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~5_sumout\ = SUM(( \CPU1|BancREG|registrador~12_q\ ) + ( !\CPU1|MUX1|saida_MUX[1]~0_combout\ ) + ( \CPU1|ULA1|Add0~2\ ))
-- \CPU1|ULA1|Add0~6\ = CARRY(( \CPU1|BancREG|registrador~12_q\ ) + ( !\CPU1|MUX1|saida_MUX[1]~0_combout\ ) + ( \CPU1|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|BancREG|ALT_INV_registrador~12_q\,
	dataf => \CPU1|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	cin => \CPU1|ULA1|Add0~2\,
	sumout => \CPU1|ULA1|Add0~5_sumout\,
	cout => \CPU1|ULA1|Add0~6\);

\CPU1|BancREG|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~5_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[1]~0_combout\,
	sload => \ROM1|memROM~2_combout\,
	ena => \ROM1|memROM~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~12_q\);

\REG_LEDs|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \habilita_REG_LEDs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDs|DOUT\(1));

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\CPU1|MUX1|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[2]~1_combout\ = (\habilita_buf3_8por~0_combout\ & (!\habilita_buf3_8por~1_combout\ & \SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habilita_buf3_8por~0_combout\,
	datab => \ALT_INV_habilita_buf3_8por~1_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[2]~1_combout\);

\CPU1|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~9_sumout\ = SUM(( \CPU1|BancREG|registrador~13_q\ ) + ( !\CPU1|MUX1|saida_MUX[2]~1_combout\ ) + ( \CPU1|ULA1|Add0~6\ ))
-- \CPU1|ULA1|Add0~10\ = CARRY(( \CPU1|BancREG|registrador~13_q\ ) + ( !\CPU1|MUX1|saida_MUX[2]~1_combout\ ) + ( \CPU1|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|BancREG|ALT_INV_registrador~13_q\,
	dataf => \CPU1|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	cin => \CPU1|ULA1|Add0~6\,
	sumout => \CPU1|ULA1|Add0~9_sumout\,
	cout => \CPU1|ULA1|Add0~10\);

\CPU1|BancREG|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~9_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[2]~1_combout\,
	sload => \ROM1|memROM~2_combout\,
	ena => \ROM1|memROM~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~13_q\);

\REG_LEDs|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \habilita_REG_LEDs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDs|DOUT\(2));

\habilita_buf3_8por~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_buf3_8por~2_combout\ = (\habilita_buf3_8por~0_combout\ & !\habilita_buf3_8por~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habilita_buf3_8por~0_combout\,
	datab => \ALT_INV_habilita_buf3_8por~1_combout\,
	combout => \habilita_buf3_8por~2_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\CPU1|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~13_sumout\ = SUM(( \CPU1|BancREG|registrador~14_q\ ) + ( (!\habilita_buf3_8por~2_combout\) # (!\SW[3]~input_o\) ) + ( \CPU1|ULA1|Add0~10\ ))
-- \CPU1|ULA1|Add0~14\ = CARRY(( \CPU1|BancREG|registrador~14_q\ ) + ( (!\habilita_buf3_8por~2_combout\) # (!\SW[3]~input_o\) ) + ( \CPU1|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_habilita_buf3_8por~2_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~14_q\,
	dataf => \ALT_INV_SW[3]~input_o\,
	cin => \CPU1|ULA1|Add0~10\,
	sumout => \CPU1|ULA1|Add0~13_sumout\,
	cout => \CPU1|ULA1|Add0~14\);

\CPU1|MUX1|saida_MUX[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[3]~2_combout\ = (\habilita_buf3_8por~2_combout\ & \SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habilita_buf3_8por~2_combout\,
	datab => \ALT_INV_SW[3]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[3]~2_combout\);

\CPU1|BancREG|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~13_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[3]~2_combout\,
	sload => \ROM1|memROM~2_combout\,
	ena => \ROM1|memROM~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~14_q\);

\REG_LEDs|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \habilita_REG_LEDs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDs|DOUT\(3));

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\CPU1|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~17_sumout\ = SUM(( \CPU1|BancREG|registrador~15_q\ ) + ( (!\habilita_buf3_8por~2_combout\) # (!\SW[4]~input_o\) ) + ( \CPU1|ULA1|Add0~14\ ))
-- \CPU1|ULA1|Add0~18\ = CARRY(( \CPU1|BancREG|registrador~15_q\ ) + ( (!\habilita_buf3_8por~2_combout\) # (!\SW[4]~input_o\) ) + ( \CPU1|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_habilita_buf3_8por~2_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~15_q\,
	dataf => \ALT_INV_SW[4]~input_o\,
	cin => \CPU1|ULA1|Add0~14\,
	sumout => \CPU1|ULA1|Add0~17_sumout\,
	cout => \CPU1|ULA1|Add0~18\);

\CPU1|MUX1|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[4]~3_combout\ = (\habilita_buf3_8por~2_combout\ & \SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habilita_buf3_8por~2_combout\,
	datab => \ALT_INV_SW[4]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[4]~3_combout\);

\CPU1|BancREG|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~17_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[4]~3_combout\,
	sload => \ROM1|memROM~2_combout\,
	ena => \ROM1|memROM~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~15_q\);

\REG_LEDs|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~15_q\,
	ena => \habilita_REG_LEDs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDs|DOUT\(4));

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\CPU1|MUX1|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[5]~4_combout\ = (\habilita_buf3_8por~0_combout\ & (!\habilita_buf3_8por~1_combout\ & \SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habilita_buf3_8por~0_combout\,
	datab => \ALT_INV_habilita_buf3_8por~1_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[5]~4_combout\);

\CPU1|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~21_sumout\ = SUM(( \CPU1|BancREG|registrador~16_q\ ) + ( !\CPU1|MUX1|saida_MUX[5]~4_combout\ ) + ( \CPU1|ULA1|Add0~18\ ))
-- \CPU1|ULA1|Add0~22\ = CARRY(( \CPU1|BancREG|registrador~16_q\ ) + ( !\CPU1|MUX1|saida_MUX[5]~4_combout\ ) + ( \CPU1|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|BancREG|ALT_INV_registrador~16_q\,
	dataf => \CPU1|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	cin => \CPU1|ULA1|Add0~18\,
	sumout => \CPU1|ULA1|Add0~21_sumout\,
	cout => \CPU1|ULA1|Add0~22\);

\CPU1|BancREG|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~21_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[5]~4_combout\,
	sload => \ROM1|memROM~2_combout\,
	ena => \ROM1|memROM~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~16_q\);

\REG_LEDs|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~16_q\,
	ena => \habilita_REG_LEDs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDs|DOUT\(5));

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\CPU1|MUX1|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[6]~5_combout\ = (\habilita_buf3_8por~0_combout\ & (!\habilita_buf3_8por~1_combout\ & \SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habilita_buf3_8por~0_combout\,
	datab => \ALT_INV_habilita_buf3_8por~1_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[6]~5_combout\);

\CPU1|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~25_sumout\ = SUM(( \CPU1|BancREG|registrador~17_q\ ) + ( !\CPU1|MUX1|saida_MUX[6]~5_combout\ ) + ( \CPU1|ULA1|Add0~22\ ))
-- \CPU1|ULA1|Add0~26\ = CARRY(( \CPU1|BancREG|registrador~17_q\ ) + ( !\CPU1|MUX1|saida_MUX[6]~5_combout\ ) + ( \CPU1|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|BancREG|ALT_INV_registrador~17_q\,
	dataf => \CPU1|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	cin => \CPU1|ULA1|Add0~22\,
	sumout => \CPU1|ULA1|Add0~25_sumout\,
	cout => \CPU1|ULA1|Add0~26\);

\CPU1|BancREG|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~25_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[6]~5_combout\,
	sload => \ROM1|memROM~2_combout\,
	ena => \ROM1|memROM~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~17_q\);

\REG_LEDs|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~17_q\,
	ena => \habilita_REG_LEDs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDs|DOUT\(6));

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\CPU1|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~29_sumout\ = SUM(( \CPU1|BancREG|registrador~18_q\ ) + ( (!\habilita_buf3_8por~2_combout\) # (!\SW[7]~input_o\) ) + ( \CPU1|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_habilita_buf3_8por~2_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~18_q\,
	dataf => \ALT_INV_SW[7]~input_o\,
	cin => \CPU1|ULA1|Add0~26\,
	sumout => \CPU1|ULA1|Add0~29_sumout\);

\CPU1|MUX1|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[7]~6_combout\ = (\habilita_buf3_8por~2_combout\ & \SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habilita_buf3_8por~2_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[7]~6_combout\);

\CPU1|BancREG|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~29_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[7]~6_combout\,
	sload => \ROM1|memROM~2_combout\,
	ena => \ROM1|memROM~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~18_q\);

\REG_LEDs|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~18_q\,
	ena => \habilita_REG_LEDs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDs|DOUT\(7));

\habilita_REGSEG0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_REGSEG0~0_combout\ = ( !\ROM1|memROM~6_combout\ & ( (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(4) & \ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000000000000000000010001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \habilita_REGSEG0~0_combout\);

\FF_LED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LED8|DOUT~0_combout\ = ( \habilita_REGSEG0~0_combout\ & ( \CPU_data_in[0]~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (((\CPU1|BancREG|registrador~11_q\)))) # (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~4_combout\ & (\FF_LED8|DOUT~q\)) # 
-- (\ROM1|memROM~4_combout\ & ((\CPU1|BancREG|registrador~11_q\))))) ) ) ) # ( !\habilita_REGSEG0~0_combout\ & ( \CPU_data_in[0]~0_combout\ & ( \FF_LED8|DOUT~q\ ) ) ) # ( \habilita_REGSEG0~0_combout\ & ( !\CPU_data_in[0]~0_combout\ & ( \FF_LED8|DOUT~q\ ) ) ) 
-- # ( !\habilita_REGSEG0~0_combout\ & ( !\CPU_data_in[0]~0_combout\ & ( \FF_LED8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010001110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FF_LED8|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU1|BancREG|ALT_INV_registrador~11_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_habilita_REGSEG0~0_combout\,
	dataf => \ALT_INV_CPU_data_in[0]~0_combout\,
	combout => \FF_LED8|DOUT~0_combout\);

\FF_LED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \FF_LED8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LED8|DOUT~q\);

\FF_LED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LED9|DOUT~0_combout\ = ( \ROM1|memROM~4_combout\ & ( \habilita_REG_LEDs~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (\FF_LED9|DOUT~q\)) # (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~3_combout\ & (\FF_LED9|DOUT~q\)) # (\ROM1|memROM~3_combout\ & 
-- ((\CPU1|BancREG|registrador~11_q\))))) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \habilita_REG_LEDs~0_combout\ & ( \FF_LED9|DOUT~q\ ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\habilita_REG_LEDs~0_combout\ & ( \FF_LED9|DOUT~q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & 
-- ( !\habilita_REG_LEDs~0_combout\ & ( \FF_LED9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FF_LED9|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU1|BancREG|ALT_INV_registrador~11_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ALT_INV_habilita_REG_LEDs~0_combout\,
	combout => \FF_LED9|DOUT~0_combout\);

\FF_LED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \FF_LED9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LED9|DOUT~q\);

\habilita_REGSEG0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_REGSEG0~1_combout\ = ( \habilita_REGSEG0~0_combout\ & ( (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ALT_INV_habilita_REGSEG0~0_combout\,
	combout => \habilita_REGSEG0~1_combout\);

\REGSEG0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \habilita_REGSEG0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG0|DOUT\(0));

\REGSEG0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \habilita_REGSEG0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG0|DOUT\(3));

\REGSEG0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \habilita_REGSEG0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG0|DOUT\(2));

\REGSEG0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \habilita_REGSEG0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG0|DOUT\(1));

\SEG0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG0|rascSaida7seg[0]~0_combout\ = (!\REGSEG0|DOUT\(3) & (!\REGSEG0|DOUT\(1) & (!\REGSEG0|DOUT\(0) $ (!\REGSEG0|DOUT\(2))))) # (\REGSEG0|DOUT\(3) & (\REGSEG0|DOUT\(0) & (!\REGSEG0|DOUT\(2) $ (!\REGSEG0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG0|ALT_INV_DOUT\(0),
	datab => \REGSEG0|ALT_INV_DOUT\(3),
	datac => \REGSEG0|ALT_INV_DOUT\(2),
	datad => \REGSEG0|ALT_INV_DOUT\(1),
	combout => \SEG0|rascSaida7seg[0]~0_combout\);

\SEG0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG0|rascSaida7seg[1]~1_combout\ = (!\REGSEG0|DOUT\(3) & (\REGSEG0|DOUT\(2) & (!\REGSEG0|DOUT\(0) $ (!\REGSEG0|DOUT\(1))))) # (\REGSEG0|DOUT\(3) & ((!\REGSEG0|DOUT\(0) & (\REGSEG0|DOUT\(2))) # (\REGSEG0|DOUT\(0) & ((\REGSEG0|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG0|ALT_INV_DOUT\(0),
	datab => \REGSEG0|ALT_INV_DOUT\(3),
	datac => \REGSEG0|ALT_INV_DOUT\(2),
	datad => \REGSEG0|ALT_INV_DOUT\(1),
	combout => \SEG0|rascSaida7seg[1]~1_combout\);

\SEG0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG0|rascSaida7seg[2]~2_combout\ = (!\REGSEG0|DOUT\(3) & (!\REGSEG0|DOUT\(0) & (!\REGSEG0|DOUT\(2) & \REGSEG0|DOUT\(1)))) # (\REGSEG0|DOUT\(3) & (\REGSEG0|DOUT\(2) & ((!\REGSEG0|DOUT\(0)) # (\REGSEG0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG0|ALT_INV_DOUT\(0),
	datab => \REGSEG0|ALT_INV_DOUT\(3),
	datac => \REGSEG0|ALT_INV_DOUT\(2),
	datad => \REGSEG0|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG0|ALT_INV_DOUT\(3),
	datab => \REGSEG0|ALT_INV_DOUT\(2),
	datac => \REGSEG0|ALT_INV_DOUT\(1),
	datad => \REGSEG0|ALT_INV_DOUT\(0),
	combout => \SEG0|rascSaida7seg[4]~4_combout\);

\SEG0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG0|rascSaida7seg[5]~5_combout\ = (!\REGSEG0|DOUT\(0) & (!\REGSEG0|DOUT\(2) & (\REGSEG0|DOUT\(1) & !\REGSEG0|DOUT\(3)))) # (\REGSEG0|DOUT\(0) & (!\REGSEG0|DOUT\(3) $ (((\REGSEG0|DOUT\(2) & !\REGSEG0|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG0|ALT_INV_DOUT\(0),
	datab => \REGSEG0|ALT_INV_DOUT\(2),
	datac => \REGSEG0|ALT_INV_DOUT\(1),
	datad => \REGSEG0|ALT_INV_DOUT\(3),
	combout => \SEG0|rascSaida7seg[5]~5_combout\);

\SEG0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG0|rascSaida7seg[6]~6_combout\ = (!\REGSEG0|DOUT\(0) & (!\REGSEG0|DOUT\(1) & (!\REGSEG0|DOUT\(3) $ (\REGSEG0|DOUT\(2))))) # (\REGSEG0|DOUT\(0) & (!\REGSEG0|DOUT\(3) & (!\REGSEG0|DOUT\(2) $ (\REGSEG0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG0|ALT_INV_DOUT\(0),
	datab => \REGSEG0|ALT_INV_DOUT\(3),
	datac => \REGSEG0|ALT_INV_DOUT\(2),
	datad => \REGSEG0|ALT_INV_DOUT\(1),
	combout => \SEG0|rascSaida7seg[6]~6_combout\);

\habilita_REGSEG1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_REGSEG1~0_combout\ = (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & (\habilita_REGSEG0~0_combout\ & \CPU_data_in[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ALT_INV_habilita_REGSEG0~0_combout\,
	datad => \ALT_INV_CPU_data_in[0]~0_combout\,
	combout => \habilita_REGSEG1~0_combout\);

\REGSEG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \habilita_REGSEG1~0_combout\,
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
	ena => \habilita_REGSEG1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG1|DOUT\(3));

\REGSEG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \habilita_REGSEG1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG1|DOUT\(2));

\REGSEG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \habilita_REGSEG1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG1|DOUT\(1));

\SEG1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|rascSaida7seg[0]~0_combout\ = (!\REGSEG1|DOUT\(3) & (!\REGSEG1|DOUT\(1) & (!\REGSEG1|DOUT\(0) $ (!\REGSEG1|DOUT\(2))))) # (\REGSEG1|DOUT\(3) & (\REGSEG1|DOUT\(0) & (!\REGSEG1|DOUT\(2) $ (!\REGSEG1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG1|ALT_INV_DOUT\(0),
	datab => \REGSEG1|ALT_INV_DOUT\(3),
	datac => \REGSEG1|ALT_INV_DOUT\(2),
	datad => \REGSEG1|ALT_INV_DOUT\(1),
	combout => \SEG1|rascSaida7seg[0]~0_combout\);

\SEG1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|rascSaida7seg[1]~1_combout\ = (!\REGSEG1|DOUT\(3) & (\REGSEG1|DOUT\(2) & (!\REGSEG1|DOUT\(0) $ (!\REGSEG1|DOUT\(1))))) # (\REGSEG1|DOUT\(3) & ((!\REGSEG1|DOUT\(0) & (\REGSEG1|DOUT\(2))) # (\REGSEG1|DOUT\(0) & ((\REGSEG1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG1|ALT_INV_DOUT\(0),
	datab => \REGSEG1|ALT_INV_DOUT\(3),
	datac => \REGSEG1|ALT_INV_DOUT\(2),
	datad => \REGSEG1|ALT_INV_DOUT\(1),
	combout => \SEG1|rascSaida7seg[1]~1_combout\);

\SEG1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|rascSaida7seg[2]~2_combout\ = (!\REGSEG1|DOUT\(3) & (!\REGSEG1|DOUT\(0) & (!\REGSEG1|DOUT\(2) & \REGSEG1|DOUT\(1)))) # (\REGSEG1|DOUT\(3) & (\REGSEG1|DOUT\(2) & ((!\REGSEG1|DOUT\(0)) # (\REGSEG1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG1|ALT_INV_DOUT\(0),
	datab => \REGSEG1|ALT_INV_DOUT\(3),
	datac => \REGSEG1|ALT_INV_DOUT\(2),
	datad => \REGSEG1|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG1|ALT_INV_DOUT\(3),
	datab => \REGSEG1|ALT_INV_DOUT\(2),
	datac => \REGSEG1|ALT_INV_DOUT\(1),
	datad => \REGSEG1|ALT_INV_DOUT\(0),
	combout => \SEG1|rascSaida7seg[4]~4_combout\);

\SEG1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|rascSaida7seg[5]~5_combout\ = (!\REGSEG1|DOUT\(0) & (!\REGSEG1|DOUT\(2) & (\REGSEG1|DOUT\(1) & !\REGSEG1|DOUT\(3)))) # (\REGSEG1|DOUT\(0) & (!\REGSEG1|DOUT\(3) $ (((\REGSEG1|DOUT\(2) & !\REGSEG1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG1|ALT_INV_DOUT\(0),
	datab => \REGSEG1|ALT_INV_DOUT\(2),
	datac => \REGSEG1|ALT_INV_DOUT\(1),
	datad => \REGSEG1|ALT_INV_DOUT\(3),
	combout => \SEG1|rascSaida7seg[5]~5_combout\);

\SEG1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|rascSaida7seg[6]~6_combout\ = (!\REGSEG1|DOUT\(0) & (!\REGSEG1|DOUT\(1) & (!\REGSEG1|DOUT\(3) $ (\REGSEG1|DOUT\(2))))) # (\REGSEG1|DOUT\(0) & (!\REGSEG1|DOUT\(3) & (!\REGSEG1|DOUT\(2) $ (\REGSEG1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG1|ALT_INV_DOUT\(0),
	datab => \REGSEG1|ALT_INV_DOUT\(3),
	datac => \REGSEG1|ALT_INV_DOUT\(2),
	datad => \REGSEG1|ALT_INV_DOUT\(1),
	combout => \SEG1|rascSaida7seg[6]~6_combout\);

\habilita_REGSEG2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_REGSEG2~0_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~4_combout\ & \habilita_REG_LEDs~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ALT_INV_habilita_REG_LEDs~0_combout\,
	combout => \habilita_REGSEG2~0_combout\);

\REGSEG2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \habilita_REGSEG2~0_combout\,
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
	ena => \habilita_REGSEG2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG2|DOUT\(3));

\REGSEG2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \habilita_REGSEG2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG2|DOUT\(2));

\REGSEG2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \habilita_REGSEG2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG2|DOUT\(1));

\SEG2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|rascSaida7seg[0]~0_combout\ = (!\REGSEG2|DOUT\(3) & (!\REGSEG2|DOUT\(1) & (!\REGSEG2|DOUT\(0) $ (!\REGSEG2|DOUT\(2))))) # (\REGSEG2|DOUT\(3) & (\REGSEG2|DOUT\(0) & (!\REGSEG2|DOUT\(2) $ (!\REGSEG2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG2|ALT_INV_DOUT\(0),
	datab => \REGSEG2|ALT_INV_DOUT\(3),
	datac => \REGSEG2|ALT_INV_DOUT\(2),
	datad => \REGSEG2|ALT_INV_DOUT\(1),
	combout => \SEG2|rascSaida7seg[0]~0_combout\);

\SEG2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|rascSaida7seg[1]~1_combout\ = (!\REGSEG2|DOUT\(3) & (\REGSEG2|DOUT\(2) & (!\REGSEG2|DOUT\(0) $ (!\REGSEG2|DOUT\(1))))) # (\REGSEG2|DOUT\(3) & ((!\REGSEG2|DOUT\(0) & (\REGSEG2|DOUT\(2))) # (\REGSEG2|DOUT\(0) & ((\REGSEG2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG2|ALT_INV_DOUT\(0),
	datab => \REGSEG2|ALT_INV_DOUT\(3),
	datac => \REGSEG2|ALT_INV_DOUT\(2),
	datad => \REGSEG2|ALT_INV_DOUT\(1),
	combout => \SEG2|rascSaida7seg[1]~1_combout\);

\SEG2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|rascSaida7seg[2]~2_combout\ = (!\REGSEG2|DOUT\(3) & (!\REGSEG2|DOUT\(0) & (!\REGSEG2|DOUT\(2) & \REGSEG2|DOUT\(1)))) # (\REGSEG2|DOUT\(3) & (\REGSEG2|DOUT\(2) & ((!\REGSEG2|DOUT\(0)) # (\REGSEG2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG2|ALT_INV_DOUT\(0),
	datab => \REGSEG2|ALT_INV_DOUT\(3),
	datac => \REGSEG2|ALT_INV_DOUT\(2),
	datad => \REGSEG2|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG2|ALT_INV_DOUT\(3),
	datab => \REGSEG2|ALT_INV_DOUT\(2),
	datac => \REGSEG2|ALT_INV_DOUT\(1),
	datad => \REGSEG2|ALT_INV_DOUT\(0),
	combout => \SEG2|rascSaida7seg[4]~4_combout\);

\SEG2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|rascSaida7seg[5]~5_combout\ = (!\REGSEG2|DOUT\(0) & (!\REGSEG2|DOUT\(2) & (\REGSEG2|DOUT\(1) & !\REGSEG2|DOUT\(3)))) # (\REGSEG2|DOUT\(0) & (!\REGSEG2|DOUT\(3) $ (((\REGSEG2|DOUT\(2) & !\REGSEG2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG2|ALT_INV_DOUT\(0),
	datab => \REGSEG2|ALT_INV_DOUT\(2),
	datac => \REGSEG2|ALT_INV_DOUT\(1),
	datad => \REGSEG2|ALT_INV_DOUT\(3),
	combout => \SEG2|rascSaida7seg[5]~5_combout\);

\SEG2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|rascSaida7seg[6]~6_combout\ = (!\REGSEG2|DOUT\(0) & (!\REGSEG2|DOUT\(1) & (!\REGSEG2|DOUT\(3) $ (\REGSEG2|DOUT\(2))))) # (\REGSEG2|DOUT\(0) & (!\REGSEG2|DOUT\(3) & (!\REGSEG2|DOUT\(2) $ (\REGSEG2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG2|ALT_INV_DOUT\(0),
	datab => \REGSEG2|ALT_INV_DOUT\(3),
	datac => \REGSEG2|ALT_INV_DOUT\(2),
	datad => \REGSEG2|ALT_INV_DOUT\(1),
	combout => \SEG2|rascSaida7seg[6]~6_combout\);

\habilita_REGSEG3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_REGSEG3~0_combout\ = ( \habilita_REGSEG0~0_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~4_combout\ & \ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ALT_INV_habilita_REGSEG0~0_combout\,
	combout => \habilita_REGSEG3~0_combout\);

\REGSEG3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \habilita_REGSEG3~0_combout\,
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
	ena => \habilita_REGSEG3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG3|DOUT\(3));

\REGSEG3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \habilita_REGSEG3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG3|DOUT\(2));

\REGSEG3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \habilita_REGSEG3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG3|DOUT\(1));

\SEG3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|rascSaida7seg[0]~0_combout\ = (!\REGSEG3|DOUT\(3) & (!\REGSEG3|DOUT\(1) & (!\REGSEG3|DOUT\(0) $ (!\REGSEG3|DOUT\(2))))) # (\REGSEG3|DOUT\(3) & (\REGSEG3|DOUT\(0) & (!\REGSEG3|DOUT\(2) $ (!\REGSEG3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG3|ALT_INV_DOUT\(0),
	datab => \REGSEG3|ALT_INV_DOUT\(3),
	datac => \REGSEG3|ALT_INV_DOUT\(2),
	datad => \REGSEG3|ALT_INV_DOUT\(1),
	combout => \SEG3|rascSaida7seg[0]~0_combout\);

\SEG3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|rascSaida7seg[1]~1_combout\ = (!\REGSEG3|DOUT\(3) & (\REGSEG3|DOUT\(2) & (!\REGSEG3|DOUT\(0) $ (!\REGSEG3|DOUT\(1))))) # (\REGSEG3|DOUT\(3) & ((!\REGSEG3|DOUT\(0) & (\REGSEG3|DOUT\(2))) # (\REGSEG3|DOUT\(0) & ((\REGSEG3|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG3|ALT_INV_DOUT\(0),
	datab => \REGSEG3|ALT_INV_DOUT\(3),
	datac => \REGSEG3|ALT_INV_DOUT\(2),
	datad => \REGSEG3|ALT_INV_DOUT\(1),
	combout => \SEG3|rascSaida7seg[1]~1_combout\);

\SEG3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|rascSaida7seg[2]~2_combout\ = (!\REGSEG3|DOUT\(3) & (!\REGSEG3|DOUT\(0) & (!\REGSEG3|DOUT\(2) & \REGSEG3|DOUT\(1)))) # (\REGSEG3|DOUT\(3) & (\REGSEG3|DOUT\(2) & ((!\REGSEG3|DOUT\(0)) # (\REGSEG3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG3|ALT_INV_DOUT\(0),
	datab => \REGSEG3|ALT_INV_DOUT\(3),
	datac => \REGSEG3|ALT_INV_DOUT\(2),
	datad => \REGSEG3|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG3|ALT_INV_DOUT\(3),
	datab => \REGSEG3|ALT_INV_DOUT\(2),
	datac => \REGSEG3|ALT_INV_DOUT\(1),
	datad => \REGSEG3|ALT_INV_DOUT\(0),
	combout => \SEG3|rascSaida7seg[4]~4_combout\);

\SEG3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|rascSaida7seg[5]~5_combout\ = (!\REGSEG3|DOUT\(0) & (!\REGSEG3|DOUT\(2) & (\REGSEG3|DOUT\(1) & !\REGSEG3|DOUT\(3)))) # (\REGSEG3|DOUT\(0) & (!\REGSEG3|DOUT\(3) $ (((\REGSEG3|DOUT\(2) & !\REGSEG3|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG3|ALT_INV_DOUT\(0),
	datab => \REGSEG3|ALT_INV_DOUT\(2),
	datac => \REGSEG3|ALT_INV_DOUT\(1),
	datad => \REGSEG3|ALT_INV_DOUT\(3),
	combout => \SEG3|rascSaida7seg[5]~5_combout\);

\SEG3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|rascSaida7seg[6]~6_combout\ = (!\REGSEG3|DOUT\(0) & (!\REGSEG3|DOUT\(1) & (!\REGSEG3|DOUT\(3) $ (\REGSEG3|DOUT\(2))))) # (\REGSEG3|DOUT\(0) & (!\REGSEG3|DOUT\(3) & (!\REGSEG3|DOUT\(2) $ (\REGSEG3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG3|ALT_INV_DOUT\(0),
	datab => \REGSEG3|ALT_INV_DOUT\(3),
	datac => \REGSEG3|ALT_INV_DOUT\(2),
	datad => \REGSEG3|ALT_INV_DOUT\(1),
	combout => \SEG3|rascSaida7seg[6]~6_combout\);

\habilita_REGSEG5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_REGSEG5~0_combout\ = ( !\ROM1|memROM~3_combout\ & ( (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(4) & \ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000000000000000000010001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \habilita_REGSEG5~0_combout\);

\habilita_REGSEG4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_REGSEG4~0_combout\ = ( \habilita_REGSEG5~0_combout\ & ( (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ALT_INV_habilita_REGSEG5~0_combout\,
	combout => \habilita_REGSEG4~0_combout\);

\REGSEG4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \habilita_REGSEG4~0_combout\,
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
	ena => \habilita_REGSEG4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG4|DOUT\(3));

\REGSEG4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \habilita_REGSEG4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG4|DOUT\(2));

\REGSEG4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \habilita_REGSEG4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG4|DOUT\(1));

\SEG4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|rascSaida7seg[0]~0_combout\ = (!\REGSEG4|DOUT\(3) & (!\REGSEG4|DOUT\(1) & (!\REGSEG4|DOUT\(0) $ (!\REGSEG4|DOUT\(2))))) # (\REGSEG4|DOUT\(3) & (\REGSEG4|DOUT\(0) & (!\REGSEG4|DOUT\(2) $ (!\REGSEG4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG4|ALT_INV_DOUT\(0),
	datab => \REGSEG4|ALT_INV_DOUT\(3),
	datac => \REGSEG4|ALT_INV_DOUT\(2),
	datad => \REGSEG4|ALT_INV_DOUT\(1),
	combout => \SEG4|rascSaida7seg[0]~0_combout\);

\SEG4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|rascSaida7seg[1]~1_combout\ = (!\REGSEG4|DOUT\(3) & (\REGSEG4|DOUT\(2) & (!\REGSEG4|DOUT\(0) $ (!\REGSEG4|DOUT\(1))))) # (\REGSEG4|DOUT\(3) & ((!\REGSEG4|DOUT\(0) & (\REGSEG4|DOUT\(2))) # (\REGSEG4|DOUT\(0) & ((\REGSEG4|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG4|ALT_INV_DOUT\(0),
	datab => \REGSEG4|ALT_INV_DOUT\(3),
	datac => \REGSEG4|ALT_INV_DOUT\(2),
	datad => \REGSEG4|ALT_INV_DOUT\(1),
	combout => \SEG4|rascSaida7seg[1]~1_combout\);

\SEG4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|rascSaida7seg[2]~2_combout\ = (!\REGSEG4|DOUT\(3) & (!\REGSEG4|DOUT\(0) & (!\REGSEG4|DOUT\(2) & \REGSEG4|DOUT\(1)))) # (\REGSEG4|DOUT\(3) & (\REGSEG4|DOUT\(2) & ((!\REGSEG4|DOUT\(0)) # (\REGSEG4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG4|ALT_INV_DOUT\(0),
	datab => \REGSEG4|ALT_INV_DOUT\(3),
	datac => \REGSEG4|ALT_INV_DOUT\(2),
	datad => \REGSEG4|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG4|ALT_INV_DOUT\(3),
	datab => \REGSEG4|ALT_INV_DOUT\(2),
	datac => \REGSEG4|ALT_INV_DOUT\(1),
	datad => \REGSEG4|ALT_INV_DOUT\(0),
	combout => \SEG4|rascSaida7seg[4]~4_combout\);

\SEG4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|rascSaida7seg[5]~5_combout\ = (!\REGSEG4|DOUT\(0) & (!\REGSEG4|DOUT\(2) & (\REGSEG4|DOUT\(1) & !\REGSEG4|DOUT\(3)))) # (\REGSEG4|DOUT\(0) & (!\REGSEG4|DOUT\(3) $ (((\REGSEG4|DOUT\(2) & !\REGSEG4|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG4|ALT_INV_DOUT\(0),
	datab => \REGSEG4|ALT_INV_DOUT\(2),
	datac => \REGSEG4|ALT_INV_DOUT\(1),
	datad => \REGSEG4|ALT_INV_DOUT\(3),
	combout => \SEG4|rascSaida7seg[5]~5_combout\);

\SEG4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|rascSaida7seg[6]~6_combout\ = (!\REGSEG4|DOUT\(0) & (!\REGSEG4|DOUT\(1) & (!\REGSEG4|DOUT\(3) $ (\REGSEG4|DOUT\(2))))) # (\REGSEG4|DOUT\(0) & (!\REGSEG4|DOUT\(3) & (!\REGSEG4|DOUT\(2) $ (\REGSEG4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG4|ALT_INV_DOUT\(0),
	datab => \REGSEG4|ALT_INV_DOUT\(3),
	datac => \REGSEG4|ALT_INV_DOUT\(2),
	datad => \REGSEG4|ALT_INV_DOUT\(1),
	combout => \SEG4|rascSaida7seg[6]~6_combout\);

habilita_REGSEG5 : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_REGSEG5~combout\ = ( \habilita_REGSEG5~0_combout\ & ( (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ALT_INV_habilita_REGSEG5~0_combout\,
	combout => \habilita_REGSEG5~combout\);

\REGSEG5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \habilita_REGSEG5~combout\,
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
	ena => \habilita_REGSEG5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG5|DOUT\(3));

\REGSEG5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \habilita_REGSEG5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG5|DOUT\(2));

\REGSEG5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \habilita_REGSEG5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGSEG5|DOUT\(1));

\SEG5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|rascSaida7seg[0]~0_combout\ = (!\REGSEG5|DOUT\(3) & (!\REGSEG5|DOUT\(1) & (!\REGSEG5|DOUT\(0) $ (!\REGSEG5|DOUT\(2))))) # (\REGSEG5|DOUT\(3) & (\REGSEG5|DOUT\(0) & (!\REGSEG5|DOUT\(2) $ (!\REGSEG5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG5|ALT_INV_DOUT\(0),
	datab => \REGSEG5|ALT_INV_DOUT\(3),
	datac => \REGSEG5|ALT_INV_DOUT\(2),
	datad => \REGSEG5|ALT_INV_DOUT\(1),
	combout => \SEG5|rascSaida7seg[0]~0_combout\);

\SEG5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|rascSaida7seg[1]~1_combout\ = (!\REGSEG5|DOUT\(3) & (\REGSEG5|DOUT\(2) & (!\REGSEG5|DOUT\(0) $ (!\REGSEG5|DOUT\(1))))) # (\REGSEG5|DOUT\(3) & ((!\REGSEG5|DOUT\(0) & (\REGSEG5|DOUT\(2))) # (\REGSEG5|DOUT\(0) & ((\REGSEG5|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG5|ALT_INV_DOUT\(0),
	datab => \REGSEG5|ALT_INV_DOUT\(3),
	datac => \REGSEG5|ALT_INV_DOUT\(2),
	datad => \REGSEG5|ALT_INV_DOUT\(1),
	combout => \SEG5|rascSaida7seg[1]~1_combout\);

\SEG5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|rascSaida7seg[2]~2_combout\ = (!\REGSEG5|DOUT\(3) & (!\REGSEG5|DOUT\(0) & (!\REGSEG5|DOUT\(2) & \REGSEG5|DOUT\(1)))) # (\REGSEG5|DOUT\(3) & (\REGSEG5|DOUT\(2) & ((!\REGSEG5|DOUT\(0)) # (\REGSEG5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG5|ALT_INV_DOUT\(0),
	datab => \REGSEG5|ALT_INV_DOUT\(3),
	datac => \REGSEG5|ALT_INV_DOUT\(2),
	datad => \REGSEG5|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG5|ALT_INV_DOUT\(3),
	datab => \REGSEG5|ALT_INV_DOUT\(2),
	datac => \REGSEG5|ALT_INV_DOUT\(1),
	datad => \REGSEG5|ALT_INV_DOUT\(0),
	combout => \SEG5|rascSaida7seg[4]~4_combout\);

\SEG5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|rascSaida7seg[5]~5_combout\ = (!\REGSEG5|DOUT\(0) & (!\REGSEG5|DOUT\(2) & (\REGSEG5|DOUT\(1) & !\REGSEG5|DOUT\(3)))) # (\REGSEG5|DOUT\(0) & (!\REGSEG5|DOUT\(3) $ (((\REGSEG5|DOUT\(2) & !\REGSEG5|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG5|ALT_INV_DOUT\(0),
	datab => \REGSEG5|ALT_INV_DOUT\(2),
	datac => \REGSEG5|ALT_INV_DOUT\(1),
	datad => \REGSEG5|ALT_INV_DOUT\(3),
	combout => \SEG5|rascSaida7seg[5]~5_combout\);

\SEG5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|rascSaida7seg[6]~6_combout\ = (!\REGSEG5|DOUT\(0) & (!\REGSEG5|DOUT\(1) & (!\REGSEG5|DOUT\(3) $ (\REGSEG5|DOUT\(2))))) # (\REGSEG5|DOUT\(0) & (!\REGSEG5|DOUT\(3) & (!\REGSEG5|DOUT\(2) $ (\REGSEG5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGSEG5|ALT_INV_DOUT\(0),
	datab => \REGSEG5|ALT_INV_DOUT\(3),
	datac => \REGSEG5|ALT_INV_DOUT\(2),
	datad => \REGSEG5|ALT_INV_DOUT\(1),
	combout => \SEG5|rascSaida7seg[6]~6_combout\);

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

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


