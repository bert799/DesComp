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

-- DATE "09/27/2022 11:34:21"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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
	KEY : IN std_logic_vector(5 DOWNTO 0);
	PC_OUT : BUFFER std_logic_vector(8 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
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
SIGNAL ww_KEY : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[4]~input_o\ : std_logic;
SIGNAL \KEY[5]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \CPU1|ULA1|saida[5]~0_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[4]~1_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \CPU1|DEC1|saida[3]~1_combout\ : std_logic;
SIGNAL \CPU1|DEC1|saida[3]~2_combout\ : std_logic;
SIGNAL \CPU1|DEC1|Equal2~0_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[7]~4_combout\ : std_logic;
SIGNAL \CPU1|DEC1|saida[5]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \CPU1|DEC1|saida[1]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~182_combout\ : std_logic;
SIGNAL \RAM1|ram~54_q\ : std_logic;
SIGNAL \RAM1|ram~183_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~184_combout\ : std_logic;
SIGNAL \RAM1|ram~118_q\ : std_logic;
SIGNAL \RAM1|ram~185_combout\ : std_logic;
SIGNAL \RAM1|ram~86_q\ : std_logic;
SIGNAL \RAM1|ram~172_combout\ : std_logic;
SIGNAL \RAM1|ram~186_combout\ : std_logic;
SIGNAL \RAM1|ram~62_q\ : std_logic;
SIGNAL \RAM1|ram~187_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~188_combout\ : std_logic;
SIGNAL \RAM1|ram~126_q\ : std_logic;
SIGNAL \RAM1|ram~189_combout\ : std_logic;
SIGNAL \RAM1|ram~94_q\ : std_logic;
SIGNAL \RAM1|ram~173_combout\ : std_logic;
SIGNAL \RAM1|ram~190_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~174_combout\ : std_logic;
SIGNAL \RAM1|ram~191_combout\ : std_logic;
SIGNAL \RAM1|ram~46_q\ : std_logic;
SIGNAL \RAM1|ram~175_combout\ : std_logic;
SIGNAL \RAM1|ram~176_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \RAM1|ram~47_q\ : std_logic;
SIGNAL \RAM1|ram~55_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \RAM1|ram~111_q\ : std_logic;
SIGNAL \RAM1|ram~119_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~79_q\ : std_logic;
SIGNAL \RAM1|ram~87_q\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \RAM1|ram~48_q\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~112_q\ : std_logic;
SIGNAL \RAM1|ram~80_q\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \RAM1|ram~56_q\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~120_q\ : std_logic;
SIGNAL \RAM1|ram~88_q\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \RAM1|ram~113_q\ : std_logic;
SIGNAL \RAM1|ram~121_q\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \RAM1|ram~49_q\ : std_logic;
SIGNAL \RAM1|ram~57_q\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \RAM1|ram~81_q\ : std_logic;
SIGNAL \RAM1|ram~89_q\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~41_q\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[2]~8_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \RAM1|ram~50_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~114_q\ : std_logic;
SIGNAL \RAM1|ram~82_q\ : std_logic;
SIGNAL \RAM1|ram~143_combout\ : std_logic;
SIGNAL \RAM1|ram~58_q\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~122_q\ : std_logic;
SIGNAL \RAM1|ram~90_q\ : std_logic;
SIGNAL \RAM1|ram~144_combout\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~42_q\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[4]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~51_q\ : std_logic;
SIGNAL \RAM1|ram~59_q\ : std_logic;
SIGNAL \RAM1|ram~167_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~43_q\ : std_logic;
SIGNAL \RAM1|ram~168_combout\ : std_logic;
SIGNAL \RAM1|ram~115_q\ : std_logic;
SIGNAL \RAM1|ram~123_q\ : std_logic;
SIGNAL \RAM1|ram~169_combout\ : std_logic;
SIGNAL \RAM1|ram~83_q\ : std_logic;
SIGNAL \RAM1|ram~91_q\ : std_logic;
SIGNAL \RAM1|ram~170_combout\ : std_logic;
SIGNAL \RAM1|ram~171_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~30\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~52_q\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~116_q\ : std_logic;
SIGNAL \RAM1|ram~84_q\ : std_logic;
SIGNAL \RAM1|ram~162_combout\ : std_logic;
SIGNAL \RAM1|ram~60_q\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~124_q\ : std_logic;
SIGNAL \RAM1|ram~92_q\ : std_logic;
SIGNAL \RAM1|ram~163_combout\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~164_combout\ : std_logic;
SIGNAL \RAM1|ram~44_q\ : std_logic;
SIGNAL \RAM1|ram~165_combout\ : std_logic;
SIGNAL \RAM1|ram~166_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~53_q\ : std_logic;
SIGNAL \RAM1|ram~61_q\ : std_logic;
SIGNAL \RAM1|ram~177_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~45_q\ : std_logic;
SIGNAL \RAM1|ram~178_combout\ : std_logic;
SIGNAL \RAM1|ram~117_q\ : std_logic;
SIGNAL \RAM1|ram~125_q\ : std_logic;
SIGNAL \RAM1|ram~179_combout\ : std_logic;
SIGNAL \RAM1|ram~85_q\ : std_logic;
SIGNAL \RAM1|ram~93_q\ : std_logic;
SIGNAL \RAM1|ram~180_combout\ : std_logic;
SIGNAL \RAM1|ram~181_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|DEC1|saida~0_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~0_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~1_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~2_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~3_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~4_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~5_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~6_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~q\ : std_logic;
SIGNAL \CPU1|DEC1|logica_desvio~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~9_wirecell_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \CPU1|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU1|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU1|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \CPU1|FLGZERO|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~144_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~143_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \CPU1|DEC1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU1|DEC1|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_saida[5]~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[2]~8_combout\ : std_logic;
SIGNAL \CPU1|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \CPU1|DEC1|ALT_INV_saida[1]~3_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \CPU1|DEC1|ALT_INV_saida[3]~2_combout\ : std_logic;
SIGNAL \CPU1|DEC1|ALT_INV_saida[3]~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[4]~1_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|ALT_INV_DOUT~5_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|ALT_INV_DOUT~4_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~181_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~180_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~179_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~178_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~177_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~176_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~175_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~174_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~173_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU1|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU1|ULA1|Add0~29_sumout\;
\CPU1|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU1|ULA1|Add0~25_sumout\;
\CPU1|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU1|ULA1|Add0~21_sumout\;
\CPU1|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU1|ULA1|Add0~17_sumout\;
\CPU1|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU1|ULA1|Add0~13_sumout\;
\CPU1|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU1|ULA1|Add0~9_sumout\;
\CPU1|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU1|ULA1|Add0~5_sumout\;
\CPU1|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU1|ULA1|Add0~1_sumout\;
\CPU1|PC|ALT_INV_DOUT\(8) <= NOT \CPU1|PC|DOUT\(8);
\CPU1|PC|ALT_INV_DOUT\(7) <= NOT \CPU1|PC|DOUT\(7);
\CPU1|PC|ALT_INV_DOUT\(6) <= NOT \CPU1|PC|DOUT\(6);
\CPU1|PC|ALT_INV_DOUT\(5) <= NOT \CPU1|PC|DOUT\(5);
\CPU1|PC|ALT_INV_DOUT\(4) <= NOT \CPU1|PC|DOUT\(4);
\CPU1|PC|ALT_INV_DOUT\(3) <= NOT \CPU1|PC|DOUT\(3);
\CPU1|PC|ALT_INV_DOUT\(2) <= NOT \CPU1|PC|DOUT\(2);
\CPU1|PC|ALT_INV_DOUT\(1) <= NOT \CPU1|PC|DOUT\(1);
\CPU1|PC|ALT_INV_DOUT\(0) <= NOT \CPU1|PC|DOUT\(0);
\RAM1|ALT_INV_ram~62_q\ <= NOT \RAM1|ram~62_q\;
\RAM1|ALT_INV_ram~172_combout\ <= NOT \RAM1|ram~172_combout\;
\RAM1|ALT_INV_ram~86_q\ <= NOT \RAM1|ram~86_q\;
\RAM1|ALT_INV_ram~118_q\ <= NOT \RAM1|ram~118_q\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~54_q\ <= NOT \RAM1|ram~54_q\;
\RAM1|ALT_INV_ram~171_combout\ <= NOT \RAM1|ram~171_combout\;
\RAM1|ALT_INV_ram~170_combout\ <= NOT \RAM1|ram~170_combout\;
\RAM1|ALT_INV_ram~91_q\ <= NOT \RAM1|ram~91_q\;
\RAM1|ALT_INV_ram~83_q\ <= NOT \RAM1|ram~83_q\;
\RAM1|ALT_INV_ram~169_combout\ <= NOT \RAM1|ram~169_combout\;
\RAM1|ALT_INV_ram~123_q\ <= NOT \RAM1|ram~123_q\;
\RAM1|ALT_INV_ram~115_q\ <= NOT \RAM1|ram~115_q\;
\RAM1|ALT_INV_ram~168_combout\ <= NOT \RAM1|ram~168_combout\;
\RAM1|ALT_INV_ram~43_q\ <= NOT \RAM1|ram~43_q\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~167_combout\ <= NOT \RAM1|ram~167_combout\;
\RAM1|ALT_INV_ram~59_q\ <= NOT \RAM1|ram~59_q\;
\RAM1|ALT_INV_ram~51_q\ <= NOT \RAM1|ram~51_q\;
\RAM1|ALT_INV_ram~166_combout\ <= NOT \RAM1|ram~166_combout\;
\RAM1|ALT_INV_ram~165_combout\ <= NOT \RAM1|ram~165_combout\;
\RAM1|ALT_INV_ram~44_q\ <= NOT \RAM1|ram~44_q\;
\RAM1|ALT_INV_ram~164_combout\ <= NOT \RAM1|ram~164_combout\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~163_combout\ <= NOT \RAM1|ram~163_combout\;
\RAM1|ALT_INV_ram~92_q\ <= NOT \RAM1|ram~92_q\;
\RAM1|ALT_INV_ram~124_q\ <= NOT \RAM1|ram~124_q\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~60_q\ <= NOT \RAM1|ram~60_q\;
\RAM1|ALT_INV_ram~162_combout\ <= NOT \RAM1|ram~162_combout\;
\RAM1|ALT_INV_ram~84_q\ <= NOT \RAM1|ram~84_q\;
\RAM1|ALT_INV_ram~116_q\ <= NOT \RAM1|ram~116_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~52_q\ <= NOT \RAM1|ram~52_q\;
\CPU1|FLGZERO|ALT_INV_DOUT~1_combout\ <= NOT \CPU1|FLGZERO|DOUT~1_combout\;
\RAM1|ALT_INV_ram~161_combout\ <= NOT \RAM1|ram~161_combout\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~87_q\ <= NOT \RAM1|ram~87_q\;
\RAM1|ALT_INV_ram~79_q\ <= NOT \RAM1|ram~79_q\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~119_q\ <= NOT \RAM1|ram~119_q\;
\RAM1|ALT_INV_ram~111_q\ <= NOT \RAM1|ram~111_q\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~55_q\ <= NOT \RAM1|ram~55_q\;
\RAM1|ALT_INV_ram~47_q\ <= NOT \RAM1|ram~47_q\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~88_q\ <= NOT \RAM1|ram~88_q\;
\RAM1|ALT_INV_ram~120_q\ <= NOT \RAM1|ram~120_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~56_q\ <= NOT \RAM1|ram~56_q\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~80_q\ <= NOT \RAM1|ram~80_q\;
\RAM1|ALT_INV_ram~112_q\ <= NOT \RAM1|ram~112_q\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\RAM1|ALT_INV_ram~48_q\ <= NOT \RAM1|ram~48_q\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~89_q\ <= NOT \RAM1|ram~89_q\;
\RAM1|ALT_INV_ram~81_q\ <= NOT \RAM1|ram~81_q\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~121_q\ <= NOT \RAM1|ram~121_q\;
\RAM1|ALT_INV_ram~113_q\ <= NOT \RAM1|ram~113_q\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~41_q\ <= NOT \RAM1|ram~41_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~57_q\ <= NOT \RAM1|ram~57_q\;
\RAM1|ALT_INV_ram~49_q\ <= NOT \RAM1|ram~49_q\;
\CPU1|MUX1|ALT_INV_saida_MUX[3]~0_combout\ <= NOT \CPU1|MUX1|saida_MUX[3]~0_combout\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\RAM1|ALT_INV_ram~42_q\ <= NOT \RAM1|ram~42_q\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~144_combout\ <= NOT \RAM1|ram~144_combout\;
\RAM1|ALT_INV_ram~90_q\ <= NOT \RAM1|ram~90_q\;
\RAM1|ALT_INV_ram~122_q\ <= NOT \RAM1|ram~122_q\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~58_q\ <= NOT \RAM1|ram~58_q\;
\RAM1|ALT_INV_ram~143_combout\ <= NOT \RAM1|ram~143_combout\;
\RAM1|ALT_INV_ram~82_q\ <= NOT \RAM1|ram~82_q\;
\RAM1|ALT_INV_ram~114_q\ <= NOT \RAM1|ram~114_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~50_q\ <= NOT \RAM1|ram~50_q\;
\CPU1|DEC1|ALT_INV_Equal2~0_combout\ <= NOT \CPU1|DEC1|Equal2~0_combout\;
\CPU1|FLGZERO|ALT_INV_DOUT~0_combout\ <= NOT \CPU1|FLGZERO|DOUT~0_combout\;
\CPU1|DEC1|ALT_INV_saida~0_combout\ <= NOT \CPU1|DEC1|saida~0_combout\;
\CPU1|ULA1|ALT_INV_saida[5]~0_combout\ <= NOT \CPU1|ULA1|saida[5]~0_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\CPU1|FLGZERO|ALT_INV_DOUT~q\ <= NOT \CPU1|FLGZERO|DOUT~q\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[2]~8_combout\ <= NOT \CPU1|MUX1|saida_MUX[2]~8_combout\;
\CPU1|REGA|ALT_INV_DOUT\(4) <= NOT \CPU1|REGA|DOUT\(4);
\CPU1|REGA|ALT_INV_DOUT\(5) <= NOT \CPU1|REGA|DOUT\(5);
\CPU1|REGA|ALT_INV_DOUT\(0) <= NOT \CPU1|REGA|DOUT\(0);
\CPU1|REGA|ALT_INV_DOUT\(1) <= NOT \CPU1|REGA|DOUT\(1);
\CPU1|REGA|ALT_INV_DOUT\(2) <= NOT \CPU1|REGA|DOUT\(2);
\CPU1|REGA|ALT_INV_DOUT\(3) <= NOT \CPU1|REGA|DOUT\(3);
\CPU1|REGA|ALT_INV_DOUT\(6) <= NOT \CPU1|REGA|DOUT\(6);
\CPU1|REGA|ALT_INV_DOUT\(7) <= NOT \CPU1|REGA|DOUT\(7);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\CPU1|DEC1|ALT_INV_saida[1]~3_combout\ <= NOT \CPU1|DEC1|saida[1]~3_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~3_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~3_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[1]~2_combout\ <= NOT \CPU1|MUX1|saida_MUX[1]~2_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\CPU1|DEC1|ALT_INV_saida[3]~2_combout\ <= NOT \CPU1|DEC1|saida[3]~2_combout\;
\CPU1|DEC1|ALT_INV_saida[3]~1_combout\ <= NOT \CPU1|DEC1|saida[3]~1_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[4]~1_combout\ <= NOT \CPU1|MUX1|saida_MUX[4]~1_combout\;
\CPU1|FLGZERO|ALT_INV_DOUT~5_combout\ <= NOT \CPU1|FLGZERO|DOUT~5_combout\;
\CPU1|FLGZERO|ALT_INV_DOUT~4_combout\ <= NOT \CPU1|FLGZERO|DOUT~4_combout\;
\CPU1|FLGZERO|ALT_INV_DOUT~3_combout\ <= NOT \CPU1|FLGZERO|DOUT~3_combout\;
\CPU1|FLGZERO|ALT_INV_DOUT~2_combout\ <= NOT \CPU1|FLGZERO|DOUT~2_combout\;
\RAM1|ALT_INV_ram~181_combout\ <= NOT \RAM1|ram~181_combout\;
\RAM1|ALT_INV_ram~180_combout\ <= NOT \RAM1|ram~180_combout\;
\RAM1|ALT_INV_ram~93_q\ <= NOT \RAM1|ram~93_q\;
\RAM1|ALT_INV_ram~85_q\ <= NOT \RAM1|ram~85_q\;
\RAM1|ALT_INV_ram~179_combout\ <= NOT \RAM1|ram~179_combout\;
\RAM1|ALT_INV_ram~125_q\ <= NOT \RAM1|ram~125_q\;
\RAM1|ALT_INV_ram~117_q\ <= NOT \RAM1|ram~117_q\;
\RAM1|ALT_INV_ram~178_combout\ <= NOT \RAM1|ram~178_combout\;
\RAM1|ALT_INV_ram~45_q\ <= NOT \RAM1|ram~45_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~177_combout\ <= NOT \RAM1|ram~177_combout\;
\RAM1|ALT_INV_ram~61_q\ <= NOT \RAM1|ram~61_q\;
\RAM1|ALT_INV_ram~53_q\ <= NOT \RAM1|ram~53_q\;
\RAM1|ALT_INV_ram~176_combout\ <= NOT \RAM1|ram~176_combout\;
\RAM1|ALT_INV_ram~175_combout\ <= NOT \RAM1|ram~175_combout\;
\RAM1|ALT_INV_ram~46_q\ <= NOT \RAM1|ram~46_q\;
\RAM1|ALT_INV_ram~174_combout\ <= NOT \RAM1|ram~174_combout\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~173_combout\ <= NOT \RAM1|ram~173_combout\;
\RAM1|ALT_INV_ram~94_q\ <= NOT \RAM1|ram~94_q\;
\RAM1|ALT_INV_ram~126_q\ <= NOT \RAM1|ram~126_q\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;

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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

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

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(1) & ((!\CPU1|PC|DOUT\(3)))) # (\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010000010001000001000001000100000100000100010000010000",
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
-- \ROM1|memROM~5_combout\ = (!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) $ (!\CPU1|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000000100010000000000010001000000000001000100000",
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
-- \ROM1|memROM~6_combout\ = (!\CPU1|PC|DOUT\(1) & ((!\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT\(3)))) # (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT\(3))))) # (\CPU1|PC|DOUT\(1) & (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) $ (!\CPU1|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100011000110000010001100011000001000110001100000100011000",
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
-- \ROM1|memROM~7_combout\ = (!\CPU1|PC|DOUT\(1) & (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(0) $ (\CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT\(1) & ((!\CPU1|PC|DOUT\(0)) # (!\CPU1|PC|DOUT\(2) $ (\CPU1|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001010100111001100101010011100110010101001110011001010100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\CPU1|ULA1|saida[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|saida[5]~0_combout\ = ( \ROM1|memROM~7_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) ) # ( !\ROM1|memROM~7_combout\ & ( (\ROM1|memROM~0_combout\ & 
-- (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000100000000000001010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|ULA1|saida[5]~0_combout\);

\CPU1|MUX1|saida_MUX[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[4]~1_combout\ = (!\ROM1|memROM~0_combout\) # (((\ROM1|memROM~7_combout\) # (\ROM1|memROM~6_combout\)) # (\ROM1|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111110111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|MUX1|saida_MUX[4]~1_combout\);

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
	sload => \CPU1|DEC1|logica_desvio~0_combout\,
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
	sload => \CPU1|DEC1|logica_desvio~0_combout\,
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
	asdata => \~GND~combout\,
	sload => \CPU1|DEC1|logica_desvio~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(8));

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(6) & !\CPU1|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \CPU1|PC|ALT_INV_DOUT\(5),
	datac => \CPU1|PC|ALT_INV_DOUT\(6),
	datad => \CPU1|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\CPU1|PC|DOUT\(8) & (\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~11_combout\);

\CPU1|DEC1|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|saida[3]~1_combout\ = (\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~7_combout\) # (\ROM1|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010001010100010101000101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DEC1|saida[3]~1_combout\);

\CPU1|DEC1|saida[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|saida[3]~2_combout\ = (!\ROM1|memROM~11_combout\) # (\CPU1|DEC1|saida[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \CPU1|DEC1|ALT_INV_saida[3]~1_combout\,
	combout => \CPU1|DEC1|saida[3]~2_combout\);

\CPU1|DEC1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|Equal2~0_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~7_combout\ & ( (!\CPU1|PC|DOUT\(8) & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DEC1|Equal2~0_combout\);

\CPU1|MUX1|saida_MUX[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[7]~4_combout\ = (!\CPU1|DEC1|Equal2~0_combout\ & \RAM1|ram~176_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datab => \RAM1|ALT_INV_ram~176_combout\,
	combout => \CPU1|MUX1|saida_MUX[7]~4_combout\);

\CPU1|DEC1|saida[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|saida[5]~4_combout\ = ( \ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~4_combout\)) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~5_combout\ & ((\ROM1|memROM~6_combout\) # (\ROM1|memROM~4_combout\)))) ) ) # ( 
-- !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~4_combout\)) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001000100010001100100111001001100010001000100011001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DEC1|saida[5]~4_combout\);

\CPU1|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~1_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[7]~4_combout\,
	sload => \CPU1|ULA1|saida[5]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(7));

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\CPU1|PC|DOUT\(0) $ (((!\CPU1|PC|DOUT\(3)) # (\CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT\(1)) ) ) # ( !\ROM1|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011101111011011111111111111111110111011110110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\CPU1|PC|DOUT\(1) & ((!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3))) # (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000100000000000000000000100000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~10_combout\);

\CPU1|DEC1|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|saida[1]~3_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~7_combout\ & ( (!\CPU1|PC|DOUT\(8) & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~5_combout\)) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~7_combout\ & ( (!\CPU1|PC|DOUT\(8) & 
-- (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ $ (!\ROM1|memROM~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010001000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DEC1|saida[1]~3_combout\);

\RAM1|ram~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~182_combout\ = ( \CPU1|DEC1|saida[1]~3_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \CPU1|DEC1|ALT_INV_saida[1]~3_combout\,
	combout => \RAM1|ram~182_combout\);

\RAM1|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(7),
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~54_q\);

\RAM1|ram~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~183_combout\ = ( \CPU1|DEC1|saida[1]~3_combout\ & ( (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \CPU1|DEC1|ALT_INV_saida[1]~3_combout\,
	combout => \RAM1|ram~183_combout\);

\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(7),
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

\RAM1|ram~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~184_combout\ = ( \CPU1|DEC1|saida[1]~3_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \CPU1|DEC1|ALT_INV_saida[1]~3_combout\,
	combout => \RAM1|ram~184_combout\);

\RAM1|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(7),
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~118_q\);

\RAM1|ram~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~185_combout\ = ( \CPU1|DEC1|saida[1]~3_combout\ & ( (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \CPU1|DEC1|ALT_INV_saida[1]~3_combout\,
	combout => \RAM1|ram~185_combout\);

\RAM1|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(7),
	ena => \RAM1|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~86_q\);

\RAM1|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~172_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~86_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~118_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM1|ram~22_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~54_q\,
	datab => \RAM1|ALT_INV_ram~22_q\,
	datac => \RAM1|ALT_INV_ram~118_q\,
	datad => \RAM1|ALT_INV_ram~86_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~172_combout\);

\RAM1|ram~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~186_combout\ = ( \CPU1|DEC1|saida[1]~3_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \CPU1|DEC1|ALT_INV_saida[1]~3_combout\,
	combout => \RAM1|ram~186_combout\);

\RAM1|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(7),
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~62_q\);

\RAM1|ram~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~187_combout\ = ( \CPU1|DEC1|saida[1]~3_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \CPU1|DEC1|ALT_INV_saida[1]~3_combout\,
	combout => \RAM1|ram~187_combout\);

\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(7),
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

\RAM1|ram~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~188_combout\ = ( \CPU1|DEC1|saida[1]~3_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \CPU1|DEC1|ALT_INV_saida[1]~3_combout\,
	combout => \RAM1|ram~188_combout\);

\RAM1|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(7),
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~126_q\);

\RAM1|ram~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~189_combout\ = ( \CPU1|DEC1|saida[1]~3_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \CPU1|DEC1|ALT_INV_saida[1]~3_combout\,
	combout => \RAM1|ram~189_combout\);

\RAM1|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(7),
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~94_q\);

\RAM1|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~173_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~94_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~126_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM1|ram~30_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~62_q\,
	datab => \RAM1|ALT_INV_ram~30_q\,
	datac => \RAM1|ALT_INV_ram~126_q\,
	datad => \RAM1|ALT_INV_ram~94_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~173_combout\);

\RAM1|ram~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~190_combout\ = ( \CPU1|DEC1|saida[1]~3_combout\ & ( (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \CPU1|DEC1|ALT_INV_saida[1]~3_combout\,
	combout => \RAM1|ram~190_combout\);

\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(7),
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

\RAM1|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~174_combout\ = ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~38_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~174_combout\);

\RAM1|ram~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~191_combout\ = ( \CPU1|DEC1|saida[1]~3_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \CPU1|DEC1|ALT_INV_saida[1]~3_combout\,
	combout => \RAM1|ram~191_combout\);

\RAM1|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(7),
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~46_q\);

\RAM1|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~175_combout\ = ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~46_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~175_combout\);

\RAM1|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~176_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~175_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~174_combout\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( 
-- !\ROM1|memROM~8_combout\ & ( \RAM1|ram~173_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~172_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~172_combout\,
	datab => \RAM1|ALT_INV_ram~173_combout\,
	datac => \RAM1|ALT_INV_ram~174_combout\,
	datad => \RAM1|ALT_INV_ram~175_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~176_combout\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~12_combout\);

\CPU1|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~34_cout\ = CARRY(( (!\ROM1|memROM~11_combout\) # (((!\CPU1|PC|DOUT\(8) & \ROM1|memROM~12_combout\)) # (\CPU1|DEC1|saida[3]~1_combout\)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001011101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \CPU1|DEC1|ALT_INV_saida[3]~1_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	cin => GND,
	cout => \CPU1|ULA1|Add0~34_cout\);

\CPU1|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~21_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[0]~3_combout\ $ (((\ROM1|memROM~11_combout\ & (!\CPU1|DEC1|saida[3]~1_combout\ & !\ROM1|memROM~4_combout\)))) ) + ( \CPU1|REGA|DOUT\(0) ) + ( \CPU1|ULA1|Add0~34_cout\ ))
-- \CPU1|ULA1|Add0~22\ = CARRY(( !\CPU1|MUX1|saida_MUX[0]~3_combout\ $ (((\ROM1|memROM~11_combout\ & (!\CPU1|DEC1|saida[3]~1_combout\ & !\ROM1|memROM~4_combout\)))) ) + ( \CPU1|REGA|DOUT\(0) ) + ( \CPU1|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \CPU1|DEC1|ALT_INV_saida[3]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[0]~3_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(0),
	cin => \CPU1|ULA1|Add0~34_cout\,
	sumout => \CPU1|ULA1|Add0~21_sumout\,
	cout => \CPU1|ULA1|Add0~22\);

\CPU1|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~21_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[0]~3_combout\,
	sload => \CPU1|ULA1|saida[5]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(0));

\RAM1|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(0),
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~47_q\);

\RAM1|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(0),
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~55_q\);

\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~55_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~47_q\,
	datab => \RAM1|ALT_INV_ram~55_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~157_combout\);

\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(0),
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(0),
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(0),
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(0),
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~39_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~31_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( 
-- \RAM1|ram~23_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~15_q\,
	datab => \RAM1|ALT_INV_ram~23_q\,
	datac => \RAM1|ALT_INV_ram~31_q\,
	datad => \RAM1|ALT_INV_ram~39_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~158_combout\);

\RAM1|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(0),
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~111_q\);

\RAM1|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(0),
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~119_q\);

\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~119_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~111_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~111_q\,
	datab => \RAM1|ALT_INV_ram~119_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~159_combout\);

\RAM1|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(0),
	ena => \RAM1|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~79_q\);

\RAM1|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(0),
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~87_q\);

\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~87_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~79_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~79_q\,
	datab => \RAM1|ALT_INV_ram~87_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~160_combout\);

\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~160_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~159_combout\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~10_combout\ & ( \RAM1|ram~158_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~157_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~157_combout\,
	datab => \RAM1|ALT_INV_ram~158_combout\,
	datac => \RAM1|ALT_INV_ram~159_combout\,
	datad => \RAM1|ALT_INV_ram~160_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~161_combout\);

\CPU1|MUX1|saida_MUX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~3_combout\ = (!\CPU1|DEC1|Equal2~0_combout\ & ((\RAM1|ram~161_combout\))) # (\CPU1|DEC1|Equal2~0_combout\ & (\ROM1|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datac => \RAM1|ALT_INV_ram~161_combout\,
	combout => \CPU1|MUX1|saida_MUX[0]~3_combout\);

\CPU1|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~17_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[1]~2_combout\ $ (((!\CPU1|DEC1|saida[3]~2_combout\ & ((!\ROM1|memROM~12_combout\) # (\CPU1|PC|DOUT\(8)))))) ) + ( \CPU1|REGA|DOUT\(1) ) + ( \CPU1|ULA1|Add0~22\ ))
-- \CPU1|ULA1|Add0~18\ = CARRY(( !\CPU1|MUX1|saida_MUX[1]~2_combout\ $ (((!\CPU1|DEC1|saida[3]~2_combout\ & ((!\ROM1|memROM~12_combout\) # (\CPU1|PC|DOUT\(8)))))) ) + ( \CPU1|REGA|DOUT\(1) ) + ( \CPU1|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101110110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_saida[3]~2_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	cin => \CPU1|ULA1|Add0~22\,
	sumout => \CPU1|ULA1|Add0~17_sumout\,
	cout => \CPU1|ULA1|Add0~18\);

\CPU1|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~17_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[1]~2_combout\,
	sload => \CPU1|ULA1|saida[5]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(1));

\RAM1|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(1),
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~48_q\);

\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(1),
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

\RAM1|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(1),
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~112_q\);

\RAM1|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(1),
	ena => \RAM1|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~80_q\);

\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~80_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~112_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM1|ram~16_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~48_q\,
	datab => \RAM1|ALT_INV_ram~16_q\,
	datac => \RAM1|ALT_INV_ram~112_q\,
	datad => \RAM1|ALT_INV_ram~80_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~152_combout\);

\RAM1|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(1),
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~56_q\);

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(1),
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

\RAM1|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(1),
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~120_q\);

\RAM1|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(1),
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~88_q\);

\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~88_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~120_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM1|ram~24_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~56_q\,
	datab => \RAM1|ALT_INV_ram~24_q\,
	datac => \RAM1|ALT_INV_ram~120_q\,
	datad => \RAM1|ALT_INV_ram~88_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~153_combout\);

\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(1),
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~32_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~154_combout\);

\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(1),
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~40_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~155_combout\);

\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~155_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~154_combout\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( 
-- !\ROM1|memROM~8_combout\ & ( \RAM1|ram~153_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~152_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~152_combout\,
	datab => \RAM1|ALT_INV_ram~153_combout\,
	datac => \RAM1|ALT_INV_ram~154_combout\,
	datad => \RAM1|ALT_INV_ram~155_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~156_combout\);

\CPU1|MUX1|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[1]~2_combout\ = (!\CPU1|DEC1|Equal2~0_combout\ & ((\RAM1|ram~156_combout\))) # (\CPU1|DEC1|Equal2~0_combout\ & (\ROM1|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	combout => \CPU1|MUX1|saida_MUX[1]~2_combout\);

\CPU1|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~13_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[2]~8_combout\ $ (((!\CPU1|DEC1|saida[3]~2_combout\ & ((!\ROM1|memROM~12_combout\) # (\CPU1|PC|DOUT\(8)))))) ) + ( \CPU1|REGA|DOUT\(2) ) + ( \CPU1|ULA1|Add0~18\ ))
-- \CPU1|ULA1|Add0~14\ = CARRY(( !\CPU1|MUX1|saida_MUX[2]~8_combout\ $ (((!\CPU1|DEC1|saida[3]~2_combout\ & ((!\ROM1|memROM~12_combout\) # (\CPU1|PC|DOUT\(8)))))) ) + ( \CPU1|REGA|DOUT\(2) ) + ( \CPU1|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101110110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_saida[3]~2_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[2]~8_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	cin => \CPU1|ULA1|Add0~18\,
	sumout => \CPU1|ULA1|Add0~13_sumout\,
	cout => \CPU1|ULA1|Add0~14\);

\CPU1|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~13_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[2]~8_combout\,
	sload => \CPU1|ULA1|saida[5]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(2));

\RAM1|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(2),
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~113_q\);

\RAM1|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(2),
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~121_q\);

\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~121_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~113_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~113_q\,
	datab => \RAM1|ALT_INV_ram~121_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~150_combout\);

\RAM1|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(2),
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~49_q\);

\RAM1|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(2),
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~57_q\);

\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~57_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~49_q\,
	datab => \RAM1|ALT_INV_ram~57_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~148_combout\);

\RAM1|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(2),
	ena => \RAM1|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~81_q\);

\RAM1|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(2),
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~89_q\);

\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~89_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~81_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~81_q\,
	datab => \RAM1|ALT_INV_ram~89_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~151_combout\);

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(2),
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(2),
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(2),
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

\RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(2),
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~41_q\);

\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~41_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~33_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( 
-- \RAM1|ram~25_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~17_q\,
	datab => \RAM1|ALT_INV_ram~25_q\,
	datac => \RAM1|ALT_INV_ram~33_q\,
	datad => \RAM1|ALT_INV_ram~41_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~149_combout\);

\CPU1|MUX1|saida_MUX[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[2]~8_combout\ = ( !\ROM1|memROM~10_combout\ & ( ((!\CPU1|DEC1|Equal2~0_combout\ & ((!\ROM1|memROM~9_combout\ & (\RAM1|ram~148_combout\)) # (\ROM1|memROM~9_combout\ & ((\RAM1|ram~149_combout\))))) # (\CPU1|DEC1|Equal2~0_combout\ & 
-- (((!\ROM1|memROM~9_combout\))))) ) ) # ( \ROM1|memROM~10_combout\ & ( ((!\CPU1|DEC1|Equal2~0_combout\ & ((!\ROM1|memROM~9_combout\ & (\RAM1|ram~150_combout\)) # (\ROM1|memROM~9_combout\ & ((\RAM1|ram~151_combout\))))) # (\CPU1|DEC1|Equal2~0_combout\ & 
-- (((!\ROM1|memROM~9_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001111111111010101011111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~150_combout\,
	datab => \RAM1|ALT_INV_ram~148_combout\,
	datac => \RAM1|ALT_INV_ram~151_combout\,
	datad => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	datag => \RAM1|ALT_INV_ram~149_combout\,
	combout => \CPU1|MUX1|saida_MUX[2]~8_combout\);

\CPU1|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~9_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[3]~0_combout\ $ (((!\ROM1|memROM~4_combout\ & !\CPU1|DEC1|saida[3]~2_combout\))) ) + ( \CPU1|REGA|DOUT\(3) ) + ( \CPU1|ULA1|Add0~14\ ))
-- \CPU1|ULA1|Add0~10\ = CARRY(( !\CPU1|MUX1|saida_MUX[3]~0_combout\ $ (((!\ROM1|memROM~4_combout\ & !\CPU1|DEC1|saida[3]~2_combout\))) ) + ( \CPU1|REGA|DOUT\(3) ) + ( \CPU1|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \CPU1|DEC1|ALT_INV_saida[3]~2_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(3),
	cin => \CPU1|ULA1|Add0~14\,
	sumout => \CPU1|ULA1|Add0~9_sumout\,
	cout => \CPU1|ULA1|Add0~10\);

\CPU1|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~9_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[3]~0_combout\,
	sload => \CPU1|ULA1|saida[5]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(3));

\RAM1|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(3),
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~50_q\);

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(3),
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(3),
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~114_q\);

\RAM1|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(3),
	ena => \RAM1|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~82_q\);

\RAM1|ram~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~143_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~82_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~114_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM1|ram~18_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~50_q\,
	datab => \RAM1|ALT_INV_ram~18_q\,
	datac => \RAM1|ALT_INV_ram~114_q\,
	datad => \RAM1|ALT_INV_ram~82_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~143_combout\);

\RAM1|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(3),
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~58_q\);

\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(3),
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

\RAM1|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(3),
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~122_q\);

\RAM1|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(3),
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~90_q\);

\RAM1|ram~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~144_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~90_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~122_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM1|ram~26_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~58_q\,
	datab => \RAM1|ALT_INV_ram~26_q\,
	datac => \RAM1|ALT_INV_ram~122_q\,
	datad => \RAM1|ALT_INV_ram~90_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~144_combout\);

\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(3),
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~34_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~145_combout\);

\RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(3),
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~42_q\);

\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~42_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~146_combout\);

\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~146_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~145_combout\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( 
-- !\ROM1|memROM~8_combout\ & ( \RAM1|ram~144_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~143_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~143_combout\,
	datab => \RAM1|ALT_INV_ram~144_combout\,
	datac => \RAM1|ALT_INV_ram~145_combout\,
	datad => \RAM1|ALT_INV_ram~146_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~147_combout\);

\CPU1|MUX1|saida_MUX[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[3]~0_combout\ = (!\CPU1|DEC1|Equal2~0_combout\ & ((\RAM1|ram~147_combout\))) # (\CPU1|DEC1|Equal2~0_combout\ & (\ROM1|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datac => \RAM1|ALT_INV_ram~147_combout\,
	combout => \CPU1|MUX1|saida_MUX[3]~0_combout\);

\CPU1|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~29_sumout\ = SUM(( (!\ROM1|memROM~4_combout\ & (!\CPU1|DEC1|saida[3]~2_combout\ $ (((!\CPU1|MUX1|saida_MUX[4]~1_combout\) # (!\RAM1|ram~171_combout\))))) # (\ROM1|memROM~4_combout\ & (((!\RAM1|ram~171_combout\)))) ) + ( \CPU1|REGA|DOUT\(4) 
-- ) + ( \CPU1|ULA1|Add0~10\ ))
-- \CPU1|ULA1|Add0~30\ = CARRY(( (!\ROM1|memROM~4_combout\ & (!\CPU1|DEC1|saida[3]~2_combout\ $ (((!\CPU1|MUX1|saida_MUX[4]~1_combout\) # (!\RAM1|ram~171_combout\))))) # (\ROM1|memROM~4_combout\ & (((!\RAM1|ram~171_combout\)))) ) + ( \CPU1|REGA|DOUT\(4) ) + 
-- ( \CPU1|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011111101001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|MUX1|ALT_INV_saida_MUX[4]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \CPU1|DEC1|ALT_INV_saida[3]~2_combout\,
	datad => \RAM1|ALT_INV_ram~171_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	cin => \CPU1|ULA1|Add0~10\,
	sumout => \CPU1|ULA1|Add0~29_sumout\,
	cout => \CPU1|ULA1|Add0~30\);

\CPU1|MUX1|saida_MUX[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[4]~7_combout\ = (!\CPU1|DEC1|Equal2~0_combout\ & \RAM1|ram~171_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datab => \RAM1|ALT_INV_ram~171_combout\,
	combout => \CPU1|MUX1|saida_MUX[4]~7_combout\);

\CPU1|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~29_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[4]~7_combout\,
	sload => \CPU1|ULA1|saida[5]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(4));

\RAM1|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(4),
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~51_q\);

\RAM1|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(4),
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~59_q\);

\RAM1|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~167_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~59_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~51_q\,
	datab => \RAM1|ALT_INV_ram~59_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~167_combout\);

\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(4),
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(4),
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(4),
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

\RAM1|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(4),
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~43_q\);

\RAM1|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~168_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~43_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~35_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( 
-- \RAM1|ram~27_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datab => \RAM1|ALT_INV_ram~27_q\,
	datac => \RAM1|ALT_INV_ram~35_q\,
	datad => \RAM1|ALT_INV_ram~43_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~168_combout\);

\RAM1|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(4),
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~115_q\);

\RAM1|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(4),
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~123_q\);

\RAM1|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~169_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~123_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~115_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~115_q\,
	datab => \RAM1|ALT_INV_ram~123_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~169_combout\);

\RAM1|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(4),
	ena => \RAM1|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~83_q\);

\RAM1|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(4),
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~91_q\);

\RAM1|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~170_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~91_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~83_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~83_q\,
	datab => \RAM1|ALT_INV_ram~91_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~170_combout\);

\RAM1|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~171_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~170_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~169_combout\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~10_combout\ & ( \RAM1|ram~168_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~167_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~167_combout\,
	datab => \RAM1|ALT_INV_ram~168_combout\,
	datac => \RAM1|ALT_INV_ram~169_combout\,
	datad => \RAM1|ALT_INV_ram~170_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~171_combout\);

\CPU1|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~25_sumout\ = SUM(( (!\ROM1|memROM~4_combout\ & (!\CPU1|DEC1|saida[3]~2_combout\ $ (((!\CPU1|MUX1|saida_MUX[4]~1_combout\) # (!\RAM1|ram~166_combout\))))) # (\ROM1|memROM~4_combout\ & (((!\RAM1|ram~166_combout\)))) ) + ( \CPU1|REGA|DOUT\(5) 
-- ) + ( \CPU1|ULA1|Add0~30\ ))
-- \CPU1|ULA1|Add0~26\ = CARRY(( (!\ROM1|memROM~4_combout\ & (!\CPU1|DEC1|saida[3]~2_combout\ $ (((!\CPU1|MUX1|saida_MUX[4]~1_combout\) # (!\RAM1|ram~166_combout\))))) # (\ROM1|memROM~4_combout\ & (((!\RAM1|ram~166_combout\)))) ) + ( \CPU1|REGA|DOUT\(5) ) + 
-- ( \CPU1|ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011111101100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|MUX1|ALT_INV_saida_MUX[4]~1_combout\,
	datab => \CPU1|DEC1|ALT_INV_saida[3]~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~166_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(5),
	cin => \CPU1|ULA1|Add0~30\,
	sumout => \CPU1|ULA1|Add0~25_sumout\,
	cout => \CPU1|ULA1|Add0~26\);

\CPU1|MUX1|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[5]~6_combout\ = (!\CPU1|DEC1|Equal2~0_combout\ & \RAM1|ram~166_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datab => \RAM1|ALT_INV_ram~166_combout\,
	combout => \CPU1|MUX1|saida_MUX[5]~6_combout\);

\CPU1|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~25_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[5]~6_combout\,
	sload => \CPU1|ULA1|saida[5]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(5));

\RAM1|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(5),
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~52_q\);

\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(5),
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

\RAM1|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(5),
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~116_q\);

\RAM1|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(5),
	ena => \RAM1|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~84_q\);

\RAM1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~162_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~84_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~116_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM1|ram~20_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~52_q\,
	datab => \RAM1|ALT_INV_ram~20_q\,
	datac => \RAM1|ALT_INV_ram~116_q\,
	datad => \RAM1|ALT_INV_ram~84_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~162_combout\);

\RAM1|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(5),
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~60_q\);

\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(5),
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

\RAM1|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(5),
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~124_q\);

\RAM1|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(5),
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~92_q\);

\RAM1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~163_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~92_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~124_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM1|ram~28_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~60_q\,
	datab => \RAM1|ALT_INV_ram~28_q\,
	datac => \RAM1|ALT_INV_ram~124_q\,
	datad => \RAM1|ALT_INV_ram~92_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~163_combout\);

\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(5),
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

\RAM1|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~164_combout\ = ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~36_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~164_combout\);

\RAM1|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(5),
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~44_q\);

\RAM1|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~165_combout\ = ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~44_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~165_combout\);

\RAM1|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~166_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~165_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~164_combout\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( 
-- !\ROM1|memROM~8_combout\ & ( \RAM1|ram~163_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~162_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~162_combout\,
	datab => \RAM1|ALT_INV_ram~163_combout\,
	datac => \RAM1|ALT_INV_ram~164_combout\,
	datad => \RAM1|ALT_INV_ram~165_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~166_combout\);

\CPU1|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~5_sumout\ = SUM(( (!\ROM1|memROM~4_combout\ & (!\CPU1|DEC1|saida[3]~2_combout\ $ (((!\CPU1|MUX1|saida_MUX[4]~1_combout\) # (!\RAM1|ram~181_combout\))))) # (\ROM1|memROM~4_combout\ & (((!\RAM1|ram~181_combout\)))) ) + ( \CPU1|REGA|DOUT\(6) 
-- ) + ( \CPU1|ULA1|Add0~26\ ))
-- \CPU1|ULA1|Add0~6\ = CARRY(( (!\ROM1|memROM~4_combout\ & (!\CPU1|DEC1|saida[3]~2_combout\ $ (((!\CPU1|MUX1|saida_MUX[4]~1_combout\) # (!\RAM1|ram~181_combout\))))) # (\ROM1|memROM~4_combout\ & (((!\RAM1|ram~181_combout\)))) ) + ( \CPU1|REGA|DOUT\(6) ) + ( 
-- \CPU1|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011111101100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|MUX1|ALT_INV_saida_MUX[4]~1_combout\,
	datab => \CPU1|DEC1|ALT_INV_saida[3]~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~181_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(6),
	cin => \CPU1|ULA1|Add0~26\,
	sumout => \CPU1|ULA1|Add0~5_sumout\,
	cout => \CPU1|ULA1|Add0~6\);

\CPU1|MUX1|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[6]~5_combout\ = (!\CPU1|DEC1|Equal2~0_combout\ & \RAM1|ram~181_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datab => \RAM1|ALT_INV_ram~181_combout\,
	combout => \CPU1|MUX1|saida_MUX[6]~5_combout\);

\CPU1|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~5_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[6]~5_combout\,
	sload => \CPU1|ULA1|saida[5]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(6));

\RAM1|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(6),
	ena => \RAM1|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~53_q\);

\RAM1|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(6),
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~61_q\);

\RAM1|ram~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~177_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~61_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~53_q\,
	datab => \RAM1|ALT_INV_ram~61_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~177_combout\);

\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(6),
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(6),
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(6),
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

\RAM1|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(6),
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~45_q\);

\RAM1|ram~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~178_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~45_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~37_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( 
-- \RAM1|ram~29_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datab => \RAM1|ALT_INV_ram~29_q\,
	datac => \RAM1|ALT_INV_ram~37_q\,
	datad => \RAM1|ALT_INV_ram~45_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~178_combout\);

\RAM1|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(6),
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~117_q\);

\RAM1|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(6),
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~125_q\);

\RAM1|ram~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~179_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~125_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~117_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~117_q\,
	datab => \RAM1|ALT_INV_ram~125_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~179_combout\);

\RAM1|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(6),
	ena => \RAM1|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~85_q\);

\RAM1|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|REGA|DOUT\(6),
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~93_q\);

\RAM1|ram~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~180_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~93_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~85_q\,
	datab => \RAM1|ALT_INV_ram~93_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~180_combout\);

\RAM1|ram~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~181_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~180_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~179_combout\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~10_combout\ & ( \RAM1|ram~178_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~177_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~177_combout\,
	datab => \RAM1|ALT_INV_ram~178_combout\,
	datac => \RAM1|ALT_INV_ram~179_combout\,
	datad => \RAM1|ALT_INV_ram~180_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~181_combout\);

\CPU1|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~1_sumout\ = SUM(( (!\ROM1|memROM~4_combout\ & (!\CPU1|DEC1|saida[3]~2_combout\ $ (((!\CPU1|MUX1|saida_MUX[4]~1_combout\) # (!\RAM1|ram~176_combout\))))) # (\ROM1|memROM~4_combout\ & (((!\RAM1|ram~176_combout\)))) ) + ( \CPU1|REGA|DOUT\(7) 
-- ) + ( \CPU1|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011111101001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|MUX1|ALT_INV_saida_MUX[4]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \CPU1|DEC1|ALT_INV_saida[3]~2_combout\,
	datad => \RAM1|ALT_INV_ram~176_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(7),
	cin => \CPU1|ULA1|Add0~6\,
	sumout => \CPU1|ULA1|Add0~1_sumout\);

\CPU1|DEC1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|saida~0_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~7_combout\ & ( (!\CPU1|PC|DOUT\(8) & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & \ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DEC1|saida~0_combout\);

\CPU1|FLGZERO|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLGZERO|DOUT~0_combout\ = (\CPU1|FLGZERO|DOUT~q\ & !\CPU1|DEC1|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|FLGZERO|ALT_INV_DOUT~q\,
	datab => \CPU1|DEC1|ALT_INV_saida~0_combout\,
	combout => \CPU1|FLGZERO|DOUT~0_combout\);

\CPU1|FLGZERO|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLGZERO|DOUT~1_combout\ = ( \RAM1|ram~156_combout\ & ( \RAM1|ram~161_combout\ & ( (\CPU1|ULA1|saida[5]~0_combout\ & (((!\CPU1|DEC1|Equal2~0_combout\) # (\ROM1|memROM~8_combout\)) # (\ROM1|memROM~1_combout\))) ) ) ) # ( !\RAM1|ram~156_combout\ & ( 
-- \RAM1|ram~161_combout\ & ( (\CPU1|ULA1|saida[5]~0_combout\ & (((!\CPU1|DEC1|Equal2~0_combout\) # (\ROM1|memROM~8_combout\)) # (\ROM1|memROM~1_combout\))) ) ) ) # ( \RAM1|ram~156_combout\ & ( !\RAM1|ram~161_combout\ & ( (\CPU1|ULA1|saida[5]~0_combout\ & 
-- (((!\CPU1|DEC1|Equal2~0_combout\) # (\ROM1|memROM~8_combout\)) # (\ROM1|memROM~1_combout\))) ) ) ) # ( !\RAM1|ram~156_combout\ & ( !\RAM1|ram~161_combout\ & ( (\CPU1|ULA1|saida[5]~0_combout\ & (\CPU1|DEC1|Equal2~0_combout\ & ((\ROM1|memROM~8_combout\) # 
-- (\ROM1|memROM~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000011110000011100001111000001110000111100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU1|ULA1|ALT_INV_saida[5]~0_combout\,
	datad => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datae => \RAM1|ALT_INV_ram~156_combout\,
	dataf => \RAM1|ALT_INV_ram~161_combout\,
	combout => \CPU1|FLGZERO|DOUT~1_combout\);

\CPU1|FLGZERO|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLGZERO|DOUT~2_combout\ = ( \RAM1|ram~176_combout\ & ( \RAM1|ram~181_combout\ & ( (!\CPU1|DEC1|Equal2~0_combout\ & \CPU1|ULA1|saida[5]~0_combout\) ) ) ) # ( !\RAM1|ram~176_combout\ & ( \RAM1|ram~181_combout\ & ( (!\CPU1|DEC1|Equal2~0_combout\ & 
-- \CPU1|ULA1|saida[5]~0_combout\) ) ) ) # ( \RAM1|ram~176_combout\ & ( !\RAM1|ram~181_combout\ & ( (!\CPU1|DEC1|Equal2~0_combout\ & \CPU1|ULA1|saida[5]~0_combout\) ) ) ) # ( !\RAM1|ram~176_combout\ & ( !\RAM1|ram~181_combout\ & ( 
-- (!\CPU1|DEC1|Equal2~0_combout\ & (\CPU1|ULA1|saida[5]~0_combout\ & ((\RAM1|ram~171_combout\) # (\RAM1|ram~166_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datab => \RAM1|ALT_INV_ram~166_combout\,
	datac => \CPU1|ULA1|ALT_INV_saida[5]~0_combout\,
	datad => \RAM1|ALT_INV_ram~171_combout\,
	datae => \RAM1|ALT_INV_ram~176_combout\,
	dataf => \RAM1|ALT_INV_ram~181_combout\,
	combout => \CPU1|FLGZERO|DOUT~2_combout\);

\CPU1|FLGZERO|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLGZERO|DOUT~3_combout\ = ( !\CPU1|FLGZERO|DOUT~1_combout\ & ( !\CPU1|FLGZERO|DOUT~2_combout\ & ( (\CPU1|DEC1|saida~0_combout\ & ((!\CPU1|ULA1|saida[5]~0_combout\) # ((!\CPU1|MUX1|saida_MUX[3]~0_combout\ & !\CPU1|MUX1|saida_MUX[2]~8_combout\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|ULA1|ALT_INV_saida[5]~0_combout\,
	datab => \CPU1|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datac => \CPU1|MUX1|ALT_INV_saida_MUX[2]~8_combout\,
	datad => \CPU1|DEC1|ALT_INV_saida~0_combout\,
	datae => \CPU1|FLGZERO|ALT_INV_DOUT~1_combout\,
	dataf => \CPU1|FLGZERO|ALT_INV_DOUT~2_combout\,
	combout => \CPU1|FLGZERO|DOUT~3_combout\);

\CPU1|FLGZERO|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLGZERO|DOUT~4_combout\ = ( \CPU1|ULA1|Add0~21_sumout\ & ( \CPU1|FLGZERO|DOUT~3_combout\ & ( \CPU1|ULA1|saida[5]~0_combout\ ) ) ) # ( !\CPU1|ULA1|Add0~21_sumout\ & ( \CPU1|FLGZERO|DOUT~3_combout\ & ( ((!\CPU1|ULA1|Add0~9_sumout\ & 
-- (!\CPU1|ULA1|Add0~13_sumout\ & !\CPU1|ULA1|Add0~17_sumout\))) # (\CPU1|ULA1|saida[5]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|ULA1|ALT_INV_saida[5]~0_combout\,
	datab => \CPU1|ULA1|ALT_INV_Add0~9_sumout\,
	datac => \CPU1|ULA1|ALT_INV_Add0~13_sumout\,
	datad => \CPU1|ULA1|ALT_INV_Add0~17_sumout\,
	datae => \CPU1|ULA1|ALT_INV_Add0~21_sumout\,
	dataf => \CPU1|FLGZERO|ALT_INV_DOUT~3_combout\,
	combout => \CPU1|FLGZERO|DOUT~4_combout\);

\CPU1|FLGZERO|DOUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLGZERO|DOUT~5_combout\ = (!\CPU1|ULA1|saida[5]~0_combout\ & ((\CPU1|ULA1|Add0~29_sumout\) # (\CPU1|ULA1|Add0~25_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|ULA1|ALT_INV_saida[5]~0_combout\,
	datab => \CPU1|ULA1|ALT_INV_Add0~25_sumout\,
	datac => \CPU1|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \CPU1|FLGZERO|DOUT~5_combout\);

\CPU1|FLGZERO|DOUT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLGZERO|DOUT~6_combout\ = ( \CPU1|FLGZERO|DOUT~4_combout\ & ( \CPU1|FLGZERO|DOUT~5_combout\ & ( \CPU1|FLGZERO|DOUT~0_combout\ ) ) ) # ( !\CPU1|FLGZERO|DOUT~4_combout\ & ( \CPU1|FLGZERO|DOUT~5_combout\ & ( \CPU1|FLGZERO|DOUT~0_combout\ ) ) ) # ( 
-- \CPU1|FLGZERO|DOUT~4_combout\ & ( !\CPU1|FLGZERO|DOUT~5_combout\ & ( (((!\CPU1|ULA1|Add0~1_sumout\ & !\CPU1|ULA1|Add0~5_sumout\)) # (\CPU1|FLGZERO|DOUT~0_combout\)) # (\CPU1|ULA1|saida[5]~0_combout\) ) ) ) # ( !\CPU1|FLGZERO|DOUT~4_combout\ & ( 
-- !\CPU1|FLGZERO|DOUT~5_combout\ & ( \CPU1|FLGZERO|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111110101011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|ULA1|ALT_INV_saida[5]~0_combout\,
	datab => \CPU1|ULA1|ALT_INV_Add0~1_sumout\,
	datac => \CPU1|ULA1|ALT_INV_Add0~5_sumout\,
	datad => \CPU1|FLGZERO|ALT_INV_DOUT~0_combout\,
	datae => \CPU1|FLGZERO|ALT_INV_DOUT~4_combout\,
	dataf => \CPU1|FLGZERO|ALT_INV_DOUT~5_combout\,
	combout => \CPU1|FLGZERO|DOUT~6_combout\);

\CPU1|FLGZERO|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|FLGZERO|DOUT~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|FLGZERO|DOUT~q\);

\CPU1|DEC1|logica_desvio~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|logica_desvio~0_combout\ = ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~7_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~4_combout\) # (\CPU1|FLGZERO|DOUT~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \CPU1|FLGZERO|ALT_INV_DOUT~q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DEC1|logica_desvio~0_combout\);

\CPU1|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU1|DEC1|logica_desvio~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(5));

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

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~0_combout\ & ( (\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~8_combout\);

\CPU1|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \CPU1|DEC1|logica_desvio~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(1));

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

\ROM1|memROM~9_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_wirecell_combout\ = !\ROM1|memROM~9_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~9_wirecell_combout\);

\CPU1|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~9_wirecell_combout\,
	sload => \CPU1|DEC1|logica_desvio~0_combout\,
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
	asdata => \ROM1|memROM~10_combout\,
	sload => \CPU1|DEC1|logica_desvio~0_combout\,
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
	sload => \CPU1|DEC1|logica_desvio~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(4));

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(0) $ (!\CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT\(1) & (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) $ (!\CPU1|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~13_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU1|PC|DOUT\(8) & ( \ROM1|memROM~13_combout\ & ( (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(6) & !\CPU1|PC|DOUT\(7)))) ) ) )

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
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~1_combout\);

\CPU1|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~1_combout\,
	sload => \CPU1|DEC1|logica_desvio~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(0));

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
END structure;


