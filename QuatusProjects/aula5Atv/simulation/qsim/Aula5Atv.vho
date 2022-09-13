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

-- DATE "09/12/2022 23:23:20"

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

ENTITY 	Aula5Atv IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END Aula5Atv;

ARCHITECTURE structure OF Aula5Atv IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \DEC1|saida[3]~0_combout\ : std_logic;
SIGNAL \DEC1|saida[3]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~0_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \DEC1|saida[5]~2_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \RAM1|process_0~1_combout\ : std_logic;
SIGNAL \RAM1|ram~183_combout\ : std_logic;
SIGNAL \RAM1|ram~53_q\ : std_logic;
SIGNAL \RAM1|ram~184_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~185_combout\ : std_logic;
SIGNAL \RAM1|ram~117_q\ : std_logic;
SIGNAL \RAM1|ram~186_combout\ : std_logic;
SIGNAL \RAM1|ram~85_q\ : std_logic;
SIGNAL \RAM1|ram~173_combout\ : std_logic;
SIGNAL \RAM1|ram~187_combout\ : std_logic;
SIGNAL \RAM1|ram~61_q\ : std_logic;
SIGNAL \RAM1|ram~188_combout\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~189_combout\ : std_logic;
SIGNAL \RAM1|ram~125_q\ : std_logic;
SIGNAL \RAM1|ram~190_combout\ : std_logic;
SIGNAL \RAM1|ram~93_q\ : std_logic;
SIGNAL \RAM1|ram~174_combout\ : std_logic;
SIGNAL \RAM1|ram~191_combout\ : std_logic;
SIGNAL \RAM1|ram~69_q\ : std_logic;
SIGNAL \RAM1|ram~192_combout\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~193_combout\ : std_logic;
SIGNAL \RAM1|ram~133_q\ : std_logic;
SIGNAL \RAM1|ram~194_combout\ : std_logic;
SIGNAL \RAM1|ram~101_q\ : std_logic;
SIGNAL \RAM1|ram~175_combout\ : std_logic;
SIGNAL \RAM1|ram~195_combout\ : std_logic;
SIGNAL \RAM1|ram~77_q\ : std_logic;
SIGNAL \RAM1|ram~196_combout\ : std_logic;
SIGNAL \RAM1|ram~45_q\ : std_logic;
SIGNAL \RAM1|ram~197_combout\ : std_logic;
SIGNAL \RAM1|ram~141_q\ : std_logic;
SIGNAL \RAM1|ram~198_combout\ : std_logic;
SIGNAL \RAM1|ram~109_q\ : std_logic;
SIGNAL \RAM1|ram~176_combout\ : std_logic;
SIGNAL \RAM1|ram~177_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \RAM1|ram~65_q\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~129_q\ : std_logic;
SIGNAL \RAM1|ram~97_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~49_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~113_q\ : std_logic;
SIGNAL \RAM1|ram~81_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~73_q\ : std_logic;
SIGNAL \RAM1|ram~41_q\ : std_logic;
SIGNAL \RAM1|ram~137_q\ : std_logic;
SIGNAL \RAM1|ram~105_q\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \RAM1|ram~57_q\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~121_q\ : std_logic;
SIGNAL \RAM1|ram~89_q\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~11_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \RAM1|ram~50_q\ : std_logic;
SIGNAL \RAM1|ram~58_q\ : std_logic;
SIGNAL \RAM1|ram~66_q\ : std_logic;
SIGNAL \RAM1|ram~74_q\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~42_q\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \RAM1|ram~114_q\ : std_logic;
SIGNAL \RAM1|ram~122_q\ : std_logic;
SIGNAL \RAM1|ram~130_q\ : std_logic;
SIGNAL \RAM1|ram~138_q\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \RAM1|ram~82_q\ : std_logic;
SIGNAL \RAM1|ram~90_q\ : std_logic;
SIGNAL \RAM1|ram~98_q\ : std_logic;
SIGNAL \RAM1|ram~106_q\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \RAM1|ram~51_q\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~115_q\ : std_logic;
SIGNAL \RAM1|ram~83_q\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \RAM1|ram~59_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~123_q\ : std_logic;
SIGNAL \RAM1|ram~91_q\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~67_q\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~131_q\ : std_logic;
SIGNAL \RAM1|ram~99_q\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \RAM1|ram~75_q\ : std_logic;
SIGNAL \RAM1|ram~43_q\ : std_logic;
SIGNAL \RAM1|ram~139_q\ : std_logic;
SIGNAL \RAM1|ram~107_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~44_q\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \RAM1|ram~52_q\ : std_logic;
SIGNAL \RAM1|ram~60_q\ : std_logic;
SIGNAL \RAM1|ram~68_q\ : std_logic;
SIGNAL \RAM1|ram~76_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~84_q\ : std_logic;
SIGNAL \RAM1|ram~92_q\ : std_logic;
SIGNAL \RAM1|ram~100_q\ : std_logic;
SIGNAL \RAM1|ram~108_q\ : std_logic;
SIGNAL \RAM1|ram~162_combout\ : std_logic;
SIGNAL \RAM1|ram~116_q\ : std_logic;
SIGNAL \RAM1|ram~124_q\ : std_logic;
SIGNAL \RAM1|ram~132_q\ : std_logic;
SIGNAL \RAM1|ram~140_q\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~7_combout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~54_q\ : std_logic;
SIGNAL \RAM1|ram~62_q\ : std_logic;
SIGNAL \RAM1|ram~70_q\ : std_logic;
SIGNAL \RAM1|ram~78_q\ : std_logic;
SIGNAL \RAM1|ram~168_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~46_q\ : std_logic;
SIGNAL \RAM1|ram~169_combout\ : std_logic;
SIGNAL \RAM1|ram~118_q\ : std_logic;
SIGNAL \RAM1|ram~126_q\ : std_logic;
SIGNAL \RAM1|ram~134_q\ : std_logic;
SIGNAL \RAM1|ram~142_q\ : std_logic;
SIGNAL \RAM1|ram~170_combout\ : std_logic;
SIGNAL \RAM1|ram~86_q\ : std_logic;
SIGNAL \RAM1|ram~94_q\ : std_logic;
SIGNAL \RAM1|ram~102_q\ : std_logic;
SIGNAL \RAM1|ram~110_q\ : std_logic;
SIGNAL \RAM1|ram~171_combout\ : std_logic;
SIGNAL \RAM1|ram~172_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~55_q\ : std_logic;
SIGNAL \RAM1|ram~63_q\ : std_logic;
SIGNAL \RAM1|ram~71_q\ : std_logic;
SIGNAL \RAM1|ram~79_q\ : std_logic;
SIGNAL \RAM1|ram~178_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~47_q\ : std_logic;
SIGNAL \RAM1|ram~179_combout\ : std_logic;
SIGNAL \RAM1|ram~119_q\ : std_logic;
SIGNAL \RAM1|ram~127_q\ : std_logic;
SIGNAL \RAM1|ram~135_q\ : std_logic;
SIGNAL \RAM1|ram~143_q\ : std_logic;
SIGNAL \RAM1|ram~180_combout\ : std_logic;
SIGNAL \RAM1|ram~87_q\ : std_logic;
SIGNAL \RAM1|ram~95_q\ : std_logic;
SIGNAL \RAM1|ram~103_q\ : std_logic;
SIGNAL \RAM1|ram~111_q\ : std_logic;
SIGNAL \RAM1|ram~181_combout\ : std_logic;
SIGNAL \RAM1|ram~182_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~56_q\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~120_q\ : std_logic;
SIGNAL \RAM1|ram~88_q\ : std_logic;
SIGNAL \RAM1|ram~163_combout\ : std_logic;
SIGNAL \RAM1|ram~64_q\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~128_q\ : std_logic;
SIGNAL \RAM1|ram~96_q\ : std_logic;
SIGNAL \RAM1|ram~164_combout\ : std_logic;
SIGNAL \RAM1|ram~72_q\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~136_q\ : std_logic;
SIGNAL \RAM1|ram~104_q\ : std_logic;
SIGNAL \RAM1|ram~165_combout\ : std_logic;
SIGNAL \RAM1|ram~80_q\ : std_logic;
SIGNAL \RAM1|ram~48_q\ : std_logic;
SIGNAL \RAM1|ram~144_q\ : std_logic;
SIGNAL \RAM1|ram~112_q\ : std_logic;
SIGNAL \RAM1|ram~166_combout\ : std_logic;
SIGNAL \RAM1|ram~167_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \FLGZERO|DOUT~0_combout\ : std_logic;
SIGNAL \FLGZERO|DOUT~1_combout\ : std_logic;
SIGNAL \FLGZERO|DOUT~2_combout\ : std_logic;
SIGNAL \FLGZERO|DOUT~3_combout\ : std_logic;
SIGNAL \FLGZERO|DOUT~q\ : std_logic;
SIGNAL \DEC1|logica_desvio~0_combout\ : std_logic;
SIGNAL \DEC1|logica_desvio~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_wirecell_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_saida[3]~1_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_saida[3]~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~182_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~181_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~180_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~179_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~178_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~177_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~176_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~175_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~174_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~173_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \FLGZERO|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[6]~0_combout\ : std_logic;
SIGNAL \FLGZERO|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \FLGZERO|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_logica_desvio~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \FLGZERO|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~11_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~7_combout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\RAM1|ALT_INV_process_0~1_combout\ <= NOT \RAM1|process_0~1_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\DEC1|ALT_INV_saida[3]~1_combout\ <= NOT \DEC1|saida[3]~1_combout\;
\DEC1|ALT_INV_saida[3]~0_combout\ <= NOT \DEC1|saida[3]~0_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\RAM1|ALT_INV_ram~182_combout\ <= NOT \RAM1|ram~182_combout\;
\RAM1|ALT_INV_ram~181_combout\ <= NOT \RAM1|ram~181_combout\;
\RAM1|ALT_INV_ram~111_q\ <= NOT \RAM1|ram~111_q\;
\RAM1|ALT_INV_ram~103_q\ <= NOT \RAM1|ram~103_q\;
\RAM1|ALT_INV_ram~95_q\ <= NOT \RAM1|ram~95_q\;
\RAM1|ALT_INV_ram~87_q\ <= NOT \RAM1|ram~87_q\;
\RAM1|ALT_INV_ram~180_combout\ <= NOT \RAM1|ram~180_combout\;
\RAM1|ALT_INV_ram~143_q\ <= NOT \RAM1|ram~143_q\;
\RAM1|ALT_INV_ram~135_q\ <= NOT \RAM1|ram~135_q\;
\RAM1|ALT_INV_ram~127_q\ <= NOT \RAM1|ram~127_q\;
\RAM1|ALT_INV_ram~119_q\ <= NOT \RAM1|ram~119_q\;
\RAM1|ALT_INV_ram~179_combout\ <= NOT \RAM1|ram~179_combout\;
\RAM1|ALT_INV_ram~47_q\ <= NOT \RAM1|ram~47_q\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~178_combout\ <= NOT \RAM1|ram~178_combout\;
\RAM1|ALT_INV_ram~79_q\ <= NOT \RAM1|ram~79_q\;
\RAM1|ALT_INV_ram~71_q\ <= NOT \RAM1|ram~71_q\;
\RAM1|ALT_INV_ram~63_q\ <= NOT \RAM1|ram~63_q\;
\RAM1|ALT_INV_ram~55_q\ <= NOT \RAM1|ram~55_q\;
\RAM1|ALT_INV_ram~177_combout\ <= NOT \RAM1|ram~177_combout\;
\RAM1|ALT_INV_ram~176_combout\ <= NOT \RAM1|ram~176_combout\;
\RAM1|ALT_INV_ram~109_q\ <= NOT \RAM1|ram~109_q\;
\RAM1|ALT_INV_ram~141_q\ <= NOT \RAM1|ram~141_q\;
\RAM1|ALT_INV_ram~45_q\ <= NOT \RAM1|ram~45_q\;
\RAM1|ALT_INV_ram~77_q\ <= NOT \RAM1|ram~77_q\;
\RAM1|ALT_INV_ram~175_combout\ <= NOT \RAM1|ram~175_combout\;
\RAM1|ALT_INV_ram~101_q\ <= NOT \RAM1|ram~101_q\;
\RAM1|ALT_INV_ram~133_q\ <= NOT \RAM1|ram~133_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~69_q\ <= NOT \RAM1|ram~69_q\;
\RAM1|ALT_INV_ram~174_combout\ <= NOT \RAM1|ram~174_combout\;
\RAM1|ALT_INV_ram~93_q\ <= NOT \RAM1|ram~93_q\;
\RAM1|ALT_INV_ram~125_q\ <= NOT \RAM1|ram~125_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~61_q\ <= NOT \RAM1|ram~61_q\;
\RAM1|ALT_INV_ram~173_combout\ <= NOT \RAM1|ram~173_combout\;
\RAM1|ALT_INV_ram~85_q\ <= NOT \RAM1|ram~85_q\;
\RAM1|ALT_INV_ram~117_q\ <= NOT \RAM1|ram~117_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~53_q\ <= NOT \RAM1|ram~53_q\;
\RAM1|ALT_INV_ram~172_combout\ <= NOT \RAM1|ram~172_combout\;
\RAM1|ALT_INV_ram~171_combout\ <= NOT \RAM1|ram~171_combout\;
\RAM1|ALT_INV_ram~110_q\ <= NOT \RAM1|ram~110_q\;
\RAM1|ALT_INV_ram~102_q\ <= NOT \RAM1|ram~102_q\;
\RAM1|ALT_INV_ram~94_q\ <= NOT \RAM1|ram~94_q\;
\RAM1|ALT_INV_ram~86_q\ <= NOT \RAM1|ram~86_q\;
\RAM1|ALT_INV_ram~170_combout\ <= NOT \RAM1|ram~170_combout\;
\RAM1|ALT_INV_ram~142_q\ <= NOT \RAM1|ram~142_q\;
\RAM1|ALT_INV_ram~134_q\ <= NOT \RAM1|ram~134_q\;
\RAM1|ALT_INV_ram~126_q\ <= NOT \RAM1|ram~126_q\;
\RAM1|ALT_INV_ram~118_q\ <= NOT \RAM1|ram~118_q\;
\RAM1|ALT_INV_ram~169_combout\ <= NOT \RAM1|ram~169_combout\;
\RAM1|ALT_INV_ram~46_q\ <= NOT \RAM1|ram~46_q\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~168_combout\ <= NOT \RAM1|ram~168_combout\;
\RAM1|ALT_INV_ram~78_q\ <= NOT \RAM1|ram~78_q\;
\RAM1|ALT_INV_ram~70_q\ <= NOT \RAM1|ram~70_q\;
\RAM1|ALT_INV_ram~62_q\ <= NOT \RAM1|ram~62_q\;
\RAM1|ALT_INV_ram~54_q\ <= NOT \RAM1|ram~54_q\;
\RAM1|ALT_INV_ram~167_combout\ <= NOT \RAM1|ram~167_combout\;
\RAM1|ALT_INV_ram~166_combout\ <= NOT \RAM1|ram~166_combout\;
\RAM1|ALT_INV_ram~112_q\ <= NOT \RAM1|ram~112_q\;
\RAM1|ALT_INV_ram~144_q\ <= NOT \RAM1|ram~144_q\;
\RAM1|ALT_INV_ram~48_q\ <= NOT \RAM1|ram~48_q\;
\RAM1|ALT_INV_ram~80_q\ <= NOT \RAM1|ram~80_q\;
\RAM1|ALT_INV_ram~165_combout\ <= NOT \RAM1|ram~165_combout\;
\RAM1|ALT_INV_ram~104_q\ <= NOT \RAM1|ram~104_q\;
\RAM1|ALT_INV_ram~136_q\ <= NOT \RAM1|ram~136_q\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~72_q\ <= NOT \RAM1|ram~72_q\;
\RAM1|ALT_INV_ram~164_combout\ <= NOT \RAM1|ram~164_combout\;
\RAM1|ALT_INV_ram~96_q\ <= NOT \RAM1|ram~96_q\;
\RAM1|ALT_INV_ram~128_q\ <= NOT \RAM1|ram~128_q\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~64_q\ <= NOT \RAM1|ram~64_q\;
\RAM1|ALT_INV_ram~163_combout\ <= NOT \RAM1|ram~163_combout\;
\RAM1|ALT_INV_ram~88_q\ <= NOT \RAM1|ram~88_q\;
\RAM1|ALT_INV_ram~120_q\ <= NOT \RAM1|ram~120_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~56_q\ <= NOT \RAM1|ram~56_q\;
\FLGZERO|ALT_INV_DOUT~2_combout\ <= NOT \FLGZERO|DOUT~2_combout\;
\RAM1|ALT_INV_ram~162_combout\ <= NOT \RAM1|ram~162_combout\;
\RAM1|ALT_INV_ram~108_q\ <= NOT \RAM1|ram~108_q\;
\RAM1|ALT_INV_ram~100_q\ <= NOT \RAM1|ram~100_q\;
\RAM1|ALT_INV_ram~92_q\ <= NOT \RAM1|ram~92_q\;
\RAM1|ALT_INV_ram~84_q\ <= NOT \RAM1|ram~84_q\;
\RAM1|ALT_INV_ram~161_combout\ <= NOT \RAM1|ram~161_combout\;
\RAM1|ALT_INV_ram~140_q\ <= NOT \RAM1|ram~140_q\;
\RAM1|ALT_INV_ram~132_q\ <= NOT \RAM1|ram~132_q\;
\RAM1|ALT_INV_ram~124_q\ <= NOT \RAM1|ram~124_q\;
\RAM1|ALT_INV_ram~116_q\ <= NOT \RAM1|ram~116_q\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~44_q\ <= NOT \RAM1|ram~44_q\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~76_q\ <= NOT \RAM1|ram~76_q\;
\RAM1|ALT_INV_ram~68_q\ <= NOT \RAM1|ram~68_q\;
\RAM1|ALT_INV_ram~60_q\ <= NOT \RAM1|ram~60_q\;
\RAM1|ALT_INV_ram~52_q\ <= NOT \RAM1|ram~52_q\;
\MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX1|saida_MUX[2]~2_combout\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~107_q\ <= NOT \RAM1|ram~107_q\;
\RAM1|ALT_INV_ram~139_q\ <= NOT \RAM1|ram~139_q\;
\RAM1|ALT_INV_ram~43_q\ <= NOT \RAM1|ram~43_q\;
\RAM1|ALT_INV_ram~75_q\ <= NOT \RAM1|ram~75_q\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~99_q\ <= NOT \RAM1|ram~99_q\;
\RAM1|ALT_INV_ram~131_q\ <= NOT \RAM1|ram~131_q\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~67_q\ <= NOT \RAM1|ram~67_q\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~91_q\ <= NOT \RAM1|ram~91_q\;
\RAM1|ALT_INV_ram~123_q\ <= NOT \RAM1|ram~123_q\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~59_q\ <= NOT \RAM1|ram~59_q\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~83_q\ <= NOT \RAM1|ram~83_q\;
\RAM1|ALT_INV_ram~115_q\ <= NOT \RAM1|ram~115_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~51_q\ <= NOT \RAM1|ram~51_q\;
\MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX1|saida_MUX[1]~1_combout\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~106_q\ <= NOT \RAM1|ram~106_q\;
\RAM1|ALT_INV_ram~98_q\ <= NOT \RAM1|ram~98_q\;
\RAM1|ALT_INV_ram~90_q\ <= NOT \RAM1|ram~90_q\;
\RAM1|ALT_INV_ram~82_q\ <= NOT \RAM1|ram~82_q\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~138_q\ <= NOT \RAM1|ram~138_q\;
\RAM1|ALT_INV_ram~130_q\ <= NOT \RAM1|ram~130_q\;
\RAM1|ALT_INV_ram~122_q\ <= NOT \RAM1|ram~122_q\;
\RAM1|ALT_INV_ram~114_q\ <= NOT \RAM1|ram~114_q\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~42_q\ <= NOT \RAM1|ram~42_q\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~74_q\ <= NOT \RAM1|ram~74_q\;
\RAM1|ALT_INV_ram~66_q\ <= NOT \RAM1|ram~66_q\;
\RAM1|ALT_INV_ram~58_q\ <= NOT \RAM1|ram~58_q\;
\RAM1|ALT_INV_ram~50_q\ <= NOT \RAM1|ram~50_q\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~105_q\ <= NOT \RAM1|ram~105_q\;
\RAM1|ALT_INV_ram~137_q\ <= NOT \RAM1|ram~137_q\;
\RAM1|ALT_INV_ram~41_q\ <= NOT \RAM1|ram~41_q\;
\RAM1|ALT_INV_ram~73_q\ <= NOT \RAM1|ram~73_q\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~97_q\ <= NOT \RAM1|ram~97_q\;
\RAM1|ALT_INV_ram~129_q\ <= NOT \RAM1|ram~129_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~65_q\ <= NOT \RAM1|ram~65_q\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\RAM1|ALT_INV_ram~89_q\ <= NOT \RAM1|ram~89_q\;
\RAM1|ALT_INV_ram~121_q\ <= NOT \RAM1|ram~121_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~57_q\ <= NOT \RAM1|ram~57_q\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\RAM1|ALT_INV_ram~81_q\ <= NOT \RAM1|ram~81_q\;
\RAM1|ALT_INV_ram~113_q\ <= NOT \RAM1|ram~113_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~49_q\ <= NOT \RAM1|ram~49_q\;
\MUX1|ALT_INV_saida_MUX[6]~0_combout\ <= NOT \MUX1|saida_MUX[6]~0_combout\;
\FLGZERO|ALT_INV_DOUT~1_combout\ <= NOT \FLGZERO|DOUT~1_combout\;
\ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \ULA1|saida[0]~0_combout\;
\FLGZERO|ALT_INV_DOUT~0_combout\ <= NOT \FLGZERO|DOUT~0_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\DEC1|ALT_INV_logica_desvio~0_combout\ <= NOT \DEC1|logica_desvio~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\FLGZERO|ALT_INV_DOUT~q\ <= NOT \FLGZERO|DOUT~q\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\MUX1|ALT_INV_saida_MUX[0]~11_combout\ <= NOT \MUX1|saida_MUX[0]~11_combout\;
\MUX1|ALT_INV_saida_MUX[3]~7_combout\ <= NOT \MUX1|saida_MUX[3]~7_combout\;
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
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
	i => \PC|DOUT\(1),
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
	i => \PC|DOUT\(2),
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
	i => \PC|DOUT\(3),
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
	i => \PC|DOUT\(4),
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
	i => \PC|DOUT\(5),
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
	i => \PC|DOUT\(6),
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
	i => \PC|DOUT\(7),
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
	i => \PC|DOUT\(8),
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
	i => \MUXPC|saida_MUX[0]~0_combout\,
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
	i => \MUXPC|saida_MUX[1]~1_combout\,
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
	i => \MUXPC|saida_MUX[2]~2_combout\,
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
	i => \MUXPC|saida_MUX[3]~3_combout\,
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
	i => \MUXPC|saida_MUX[4]~4_combout\,
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
	i => \MUXPC|saida_MUX[5]~5_combout\,
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
	i => \MUXPC|saida_MUX[6]~6_combout\,
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
	i => \MUXPC|saida_MUX[7]~7_combout\,
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
	i => \MUXPC|saida_MUX[8]~8_combout\,
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
	i => \DEC1|logica_desvio~1_combout\,
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

\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

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

\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \DEC1|logica_desvio~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \DEC1|logica_desvio~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (!\PC|DOUT\(0) & (\PC|DOUT\(1) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & (\PC|DOUT\(2) & !\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100000000001100010000000000110001000000000011000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~12_combout\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ROM1|memROM~13_combout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~13_combout\,
	sload => \DEC1|logica_desvio~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\PC|DOUT\(8) & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\PC|DOUT\(1) & ((!\PC|DOUT\(2) & ((!\PC|DOUT\(3)))) # (\PC|DOUT\(2) & (!\PC|DOUT\(0) & \PC|DOUT\(3))))) # (\PC|DOUT\(1) & (\PC|DOUT\(0) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100011000110000010001100011000001000110001100000100011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (!\PC|DOUT\(1) & (\PC|DOUT\(3) & (!\PC|DOUT\(0) $ (\PC|DOUT\(2))))) # (\PC|DOUT\(1) & ((!\PC|DOUT\(0)) # (!\PC|DOUT\(2) $ (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001010100111001100101010011100110010101001110011001010100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (!\PC|DOUT\(0) & (\PC|DOUT\(1) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000000100010000000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~8_combout\);

\DEC1|saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|saida[3]~0_combout\ = (\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~7_combout\) # (\ROM1|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000101010001010100010101000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \DEC1|saida[3]~0_combout\);

\DEC1|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|saida[3]~1_combout\ = (!\ROM1|memROM~6_combout\) # (\DEC1|saida[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \DEC1|ALT_INV_saida[3]~0_combout\,
	combout => \DEC1|saida[3]~1_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (\PC|DOUT\(0) & ((!\PC|DOUT\(1) & ((!\PC|DOUT\(3)))) # (\PC|DOUT\(1) & (!\PC|DOUT\(2) & \PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010000010001000001000001000100000100000100010000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\PC|DOUT\(8) & (\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~4_combout\);

\MUX1|saida_MUX[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~0_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ ) ) # ( !\ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ ) ) # ( \ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ ) ) # ( !\ROM1|memROM~7_combout\ & ( 
-- !\ROM1|memROM~8_combout\ & ( ((!\ROM1|memROM~2_combout\) # ((\ROM1|memROM~5_combout\) # (\ROM1|memROM~3_combout\))) # (\PC|DOUT\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \MUX1|saida_MUX[6]~0_combout\);

\MUX1|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~3_combout\ = (\MUX1|saida_MUX[6]~0_combout\ & \RAM1|ram~177_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[6]~0_combout\,
	datab => \RAM1|ALT_INV_ram~177_combout\,
	combout => \MUX1|saida_MUX[4]~3_combout\);

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~4_combout\ & !\ROM1|memROM~6_combout\)) ) ) # ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~6_combout\ & (((\ROM1|memROM~0_combout\ & 
-- !\ROM1|memROM~7_combout\)) # (\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000110000001000000010000001110000001100000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \ULA1|saida[0]~0_combout\);

\DEC1|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|saida[5]~2_combout\ = ( \ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~2_combout\ & ((\ROM1|memROM~5_combout\) # (\ROM1|memROM~3_combout\)))) ) ) ) # ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & 
-- ( (!\PC|DOUT\(8) & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \DEC1|saida[5]~2_combout\);

\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \MUX1|saida_MUX[4]~3_combout\,
	sload => \ULA1|saida[0]~0_combout\,
	ena => \DEC1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|process_0~0_combout\);

\RAM1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~1_combout\ = ( !\ROM1|memROM~7_combout\ & ( \ROM1|memROM~12_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|process_0~1_combout\);

\RAM1|ram~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~183_combout\ = ( \RAM1|process_0~0_combout\ & ( \RAM1|process_0~1_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~183_combout\);

\RAM1|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~53_q\);

\RAM1|ram~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~184_combout\ = ( \RAM1|process_0~0_combout\ & ( \RAM1|process_0~1_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~184_combout\);

\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

\RAM1|ram~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~185_combout\ = ( \RAM1|process_0~0_combout\ & ( \RAM1|process_0~1_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~185_combout\);

\RAM1|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~117_q\);

\RAM1|ram~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~186_combout\ = ( \RAM1|process_0~0_combout\ & ( \RAM1|process_0~1_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~186_combout\);

\RAM1|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~85_q\);

\RAM1|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~173_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~85_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~117_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~21_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~53_q\,
	datab => \RAM1|ALT_INV_ram~21_q\,
	datac => \RAM1|ALT_INV_ram~117_q\,
	datad => \RAM1|ALT_INV_ram~85_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~173_combout\);

\RAM1|ram~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~187_combout\ = ( \RAM1|process_0~0_combout\ & ( \RAM1|process_0~1_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~187_combout\);

\RAM1|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~61_q\);

\RAM1|ram~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~188_combout\ = ( \RAM1|process_0~0_combout\ & ( \RAM1|process_0~1_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~188_combout\);

\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

\RAM1|ram~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~189_combout\ = ( \RAM1|process_0~0_combout\ & ( \RAM1|process_0~1_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~189_combout\);

\RAM1|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~125_q\);

\RAM1|ram~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~190_combout\ = ( \RAM1|process_0~0_combout\ & ( \RAM1|process_0~1_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~190_combout\);

\RAM1|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~93_q\);

\RAM1|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~174_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~93_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~125_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~29_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~61_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~61_q\,
	datab => \RAM1|ALT_INV_ram~29_q\,
	datac => \RAM1|ALT_INV_ram~125_q\,
	datad => \RAM1|ALT_INV_ram~93_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~174_combout\);

\RAM1|ram~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~191_combout\ = ( \RAM1|process_0~0_combout\ & ( \RAM1|process_0~1_combout\ & ( (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~191_combout\);

\RAM1|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~69_q\);

\RAM1|ram~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~192_combout\ = ( \RAM1|process_0~0_combout\ & ( \RAM1|process_0~1_combout\ & ( (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~192_combout\);

\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

\RAM1|ram~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~193_combout\ = ( \RAM1|process_0~0_combout\ & ( \RAM1|process_0~1_combout\ & ( (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~193_combout\);

\RAM1|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~133_q\);

\RAM1|ram~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~194_combout\ = ( \RAM1|process_0~0_combout\ & ( \RAM1|process_0~1_combout\ & ( (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~194_combout\);

\RAM1|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~101_q\);

\RAM1|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~175_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~101_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~133_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~37_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~69_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~69_q\,
	datab => \RAM1|ALT_INV_ram~37_q\,
	datac => \RAM1|ALT_INV_ram~133_q\,
	datad => \RAM1|ALT_INV_ram~101_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~175_combout\);

\RAM1|ram~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~195_combout\ = ( \RAM1|process_0~0_combout\ & ( \RAM1|process_0~1_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~195_combout\);

\RAM1|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~77_q\);

\RAM1|ram~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~196_combout\ = ( \RAM1|process_0~0_combout\ & ( \RAM1|process_0~1_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~196_combout\);

\RAM1|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~45_q\);

\RAM1|ram~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~197_combout\ = ( \RAM1|process_0~0_combout\ & ( \RAM1|process_0~1_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~197_combout\);

\RAM1|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~141_q\);

\RAM1|ram~198\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~198_combout\ = ( \RAM1|process_0~0_combout\ & ( \RAM1|process_0~1_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~198_combout\);

\RAM1|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~109_q\);

\RAM1|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~176_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~109_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~141_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~45_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~77_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~77_q\,
	datab => \RAM1|ALT_INV_ram~45_q\,
	datac => \RAM1|ALT_INV_ram~141_q\,
	datad => \RAM1|ALT_INV_ram~109_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~176_combout\);

\RAM1|ram~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~177_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~176_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~175_combout\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM1|ram~174_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~173_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~173_combout\,
	datab => \RAM1|ALT_INV_ram~174_combout\,
	datac => \RAM1|ALT_INV_ram~175_combout\,
	datad => \RAM1|ALT_INV_ram~176_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~177_combout\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~14_combout\);

\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( ((!\ROM1|memROM~6_combout\) # ((!\PC|DOUT\(8) & \ROM1|memROM~14_combout\))) # (\DEC1|saida[3]~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001101110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_saida[3]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( !\MUX1|saida_MUX[0]~11_combout\ $ (((!\DEC1|saida[3]~0_combout\ & (\ROM1|memROM~6_combout\ & !\ROM1|memROM~4_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~18\ = CARRY(( !\MUX1|saida_MUX[0]~11_combout\ $ (((!\DEC1|saida[3]~0_combout\ & (\ROM1|memROM~6_combout\ & !\ROM1|memROM~4_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_saida[3]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[0]~11_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \MUX1|saida_MUX[0]~11_combout\,
	sload => \ULA1|saida[0]~0_combout\,
	ena => \DEC1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

\RAM1|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~65_q\);

\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

\RAM1|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~129_q\);

\RAM1|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~97_q\);

\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~97_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~129_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~33_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~65_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~65_q\,
	datab => \RAM1|ALT_INV_ram~33_q\,
	datac => \RAM1|ALT_INV_ram~129_q\,
	datad => \RAM1|ALT_INV_ram~97_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~147_combout\);

\RAM1|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~49_q\);

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~113_q\);

\RAM1|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~81_q\);

\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~81_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~113_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~17_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~49_q\,
	datab => \RAM1|ALT_INV_ram~17_q\,
	datac => \RAM1|ALT_INV_ram~113_q\,
	datad => \RAM1|ALT_INV_ram~81_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~145_combout\);

\RAM1|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~73_q\);

\RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~41_q\);

\RAM1|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~137_q\);

\RAM1|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~105_q\);

\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~105_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~137_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~41_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~73_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~73_q\,
	datab => \RAM1|ALT_INV_ram~41_q\,
	datac => \RAM1|ALT_INV_ram~137_q\,
	datad => \RAM1|ALT_INV_ram~105_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~148_combout\);

\RAM1|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~57_q\);

\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

\RAM1|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~121_q\);

\RAM1|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~89_q\);

\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~89_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~121_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~25_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~57_q\,
	datab => \RAM1|ALT_INV_ram~25_q\,
	datac => \RAM1|ALT_INV_ram~121_q\,
	datad => \RAM1|ALT_INV_ram~89_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~146_combout\);

\MUX1|saida_MUX[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~11_combout\ = ( !\ROM1|memROM~9_combout\ & ( ((!\MUX1|saida_MUX[6]~0_combout\ & (((\ROM1|memROM~1_combout\)))) # (\MUX1|saida_MUX[6]~0_combout\ & ((!\ROM1|memROM~1_combout\ & (\RAM1|ram~145_combout\)) # (\ROM1|memROM~1_combout\ & 
-- ((\RAM1|ram~146_combout\)))))) ) ) # ( \ROM1|memROM~9_combout\ & ( ((!\MUX1|saida_MUX[6]~0_combout\ & (((\ROM1|memROM~1_combout\)))) # (\MUX1|saida_MUX[6]~0_combout\ & ((!\ROM1|memROM~1_combout\ & (\RAM1|ram~147_combout\)) # (\ROM1|memROM~1_combout\ & 
-- ((\RAM1|ram~148_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000110011000000000101010111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~147_combout\,
	datab => \RAM1|ALT_INV_ram~145_combout\,
	datac => \RAM1|ALT_INV_ram~148_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[6]~0_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	datag => \RAM1|ALT_INV_ram~146_combout\,
	combout => \MUX1|saida_MUX[0]~11_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( !\MUX1|saida_MUX[1]~1_combout\ $ (((!\DEC1|saida[3]~1_combout\ & ((!\ROM1|memROM~14_combout\) # (\PC|DOUT\(8)))))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( !\MUX1|saida_MUX[1]~1_combout\ $ (((!\DEC1|saida[3]~1_combout\ & ((!\ROM1|memROM~14_combout\) # (\PC|DOUT\(8)))))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101110110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_saida[3]~1_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \MUX1|saida_MUX[1]~1_combout\,
	sload => \ULA1|saida[0]~0_combout\,
	ena => \DEC1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

\RAM1|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~50_q\);

\RAM1|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~58_q\);

\RAM1|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~66_q\);

\RAM1|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~74_q\);

\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~74_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~66_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM1|ram~58_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~50_q\,
	datab => \RAM1|ALT_INV_ram~58_q\,
	datac => \RAM1|ALT_INV_ram~66_q\,
	datad => \RAM1|ALT_INV_ram~74_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~149_combout\);

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

\RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~42_q\);

\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~42_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~34_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM1|ram~26_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~18_q\,
	datab => \RAM1|ALT_INV_ram~26_q\,
	datac => \RAM1|ALT_INV_ram~34_q\,
	datad => \RAM1|ALT_INV_ram~42_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~150_combout\);

\RAM1|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~114_q\);

\RAM1|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~122_q\);

\RAM1|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~130_q\);

\RAM1|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~138_q\);

\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~138_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~130_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM1|ram~122_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~114_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~114_q\,
	datab => \RAM1|ALT_INV_ram~122_q\,
	datac => \RAM1|ALT_INV_ram~130_q\,
	datad => \RAM1|ALT_INV_ram~138_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~151_combout\);

\RAM1|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~82_q\);

\RAM1|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~90_q\);

\RAM1|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~98_q\);

\RAM1|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~106_q\);

\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~106_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~98_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM1|ram~90_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~82_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~82_q\,
	datab => \RAM1|ALT_INV_ram~90_q\,
	datac => \RAM1|ALT_INV_ram~98_q\,
	datad => \RAM1|ALT_INV_ram~106_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~152_combout\);

\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~152_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~151_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~150_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~149_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~149_combout\,
	datab => \RAM1|ALT_INV_ram~150_combout\,
	datac => \RAM1|ALT_INV_ram~151_combout\,
	datad => \RAM1|ALT_INV_ram~152_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~153_combout\);

\MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~1_combout\ = (!\MUX1|saida_MUX[6]~0_combout\ & (\ROM1|memROM~9_combout\)) # (\MUX1|saida_MUX[6]~0_combout\ & ((\RAM1|ram~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[6]~0_combout\,
	datac => \RAM1|ALT_INV_ram~153_combout\,
	combout => \MUX1|saida_MUX[1]~1_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( !\MUX1|saida_MUX[2]~2_combout\ $ (((!\DEC1|saida[3]~1_combout\ & ((!\ROM1|memROM~14_combout\) # (\PC|DOUT\(8)))))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( !\MUX1|saida_MUX[2]~2_combout\ $ (((!\DEC1|saida[3]~1_combout\ & ((!\ROM1|memROM~14_combout\) # (\PC|DOUT\(8)))))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101110110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_saida[3]~1_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \MUX1|saida_MUX[2]~2_combout\,
	sload => \ULA1|saida[0]~0_combout\,
	ena => \DEC1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

\RAM1|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~51_q\);

\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

\RAM1|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~115_q\);

\RAM1|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~83_q\);

\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~83_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~115_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~19_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~51_q\,
	datab => \RAM1|ALT_INV_ram~19_q\,
	datac => \RAM1|ALT_INV_ram~115_q\,
	datad => \RAM1|ALT_INV_ram~83_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~154_combout\);

\RAM1|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~59_q\);

\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

\RAM1|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~123_q\);

\RAM1|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~91_q\);

\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~91_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~123_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~27_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~59_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~59_q\,
	datab => \RAM1|ALT_INV_ram~27_q\,
	datac => \RAM1|ALT_INV_ram~123_q\,
	datad => \RAM1|ALT_INV_ram~91_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~155_combout\);

\RAM1|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~67_q\);

\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

\RAM1|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~131_q\);

\RAM1|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~99_q\);

\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~99_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~131_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~35_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~67_q\,
	datab => \RAM1|ALT_INV_ram~35_q\,
	datac => \RAM1|ALT_INV_ram~131_q\,
	datad => \RAM1|ALT_INV_ram~99_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~156_combout\);

\RAM1|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~75_q\);

\RAM1|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~43_q\);

\RAM1|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~139_q\);

\RAM1|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~107_q\);

\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~107_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~139_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~43_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~75_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~75_q\,
	datab => \RAM1|ALT_INV_ram~43_q\,
	datac => \RAM1|ALT_INV_ram~139_q\,
	datad => \RAM1|ALT_INV_ram~107_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~157_combout\);

\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~157_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~156_combout\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM1|ram~155_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~154_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~154_combout\,
	datab => \RAM1|ALT_INV_ram~155_combout\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	datad => \RAM1|ALT_INV_ram~157_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~158_combout\);

\MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~2_combout\ = (!\MUX1|saida_MUX[6]~0_combout\ & (!\ROM1|memROM~10_combout\)) # (\MUX1|saida_MUX[6]~0_combout\ & ((\RAM1|ram~158_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101110001011100010111000101110001011100010111000101110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[6]~0_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	combout => \MUX1|saida_MUX[2]~2_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( !\MUX1|saida_MUX[3]~7_combout\ $ (((!\DEC1|saida[3]~1_combout\ & !\ROM1|memROM~4_combout\))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( !\MUX1|saida_MUX[3]~7_combout\ $ (((!\DEC1|saida[3]~1_combout\ & !\ROM1|memROM~4_combout\))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111011110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_saida[3]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[3]~7_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \MUX1|saida_MUX[3]~7_combout\,
	sload => \ULA1|saida[0]~0_combout\,
	ena => \DEC1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

\RAM1|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~44_q\);

\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~44_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~36_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM1|ram~28_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~20_q\,
	datab => \RAM1|ALT_INV_ram~28_q\,
	datac => \RAM1|ALT_INV_ram~36_q\,
	datad => \RAM1|ALT_INV_ram~44_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~160_combout\);

\RAM1|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~52_q\);

\RAM1|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~60_q\);

\RAM1|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~68_q\);

\RAM1|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~76_q\);

\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~76_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~68_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM1|ram~60_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~52_q\,
	datab => \RAM1|ALT_INV_ram~60_q\,
	datac => \RAM1|ALT_INV_ram~68_q\,
	datad => \RAM1|ALT_INV_ram~76_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~159_combout\);

\RAM1|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~84_q\);

\RAM1|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~92_q\);

\RAM1|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~100_q\);

\RAM1|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~108_q\);

\RAM1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~162_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~108_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~100_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM1|ram~92_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~84_q\,
	datab => \RAM1|ALT_INV_ram~92_q\,
	datac => \RAM1|ALT_INV_ram~100_q\,
	datad => \RAM1|ALT_INV_ram~108_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~162_combout\);

\RAM1|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~116_q\);

\RAM1|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~124_q\);

\RAM1|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~132_q\);

\RAM1|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~140_q\);

\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~140_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~132_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM1|ram~124_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~116_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~116_q\,
	datab => \RAM1|ALT_INV_ram~124_q\,
	datac => \RAM1|ALT_INV_ram~132_q\,
	datad => \RAM1|ALT_INV_ram~140_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~161_combout\);

\MUX1|saida_MUX[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~7_combout\ = ( !\ROM1|memROM~10_combout\ & ( ((!\MUX1|saida_MUX[6]~0_combout\ & (((\ROM1|memROM~11_combout\)))) # (\MUX1|saida_MUX[6]~0_combout\ & ((!\ROM1|memROM~11_combout\ & (\RAM1|ram~159_combout\)) # (\ROM1|memROM~11_combout\ & 
-- ((\RAM1|ram~161_combout\)))))) ) ) # ( \ROM1|memROM~10_combout\ & ( ((!\MUX1|saida_MUX[6]~0_combout\ & (((\ROM1|memROM~11_combout\)))) # (\MUX1|saida_MUX[6]~0_combout\ & ((!\ROM1|memROM~11_combout\ & (\RAM1|ram~160_combout\)) # (\ROM1|memROM~11_combout\ & 
-- ((\RAM1|ram~162_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000110011000000000101010111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~160_combout\,
	datab => \RAM1|ALT_INV_ram~159_combout\,
	datac => \RAM1|ALT_INV_ram~162_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[6]~0_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	datag => \RAM1|ALT_INV_ram~161_combout\,
	combout => \MUX1|saida_MUX[3]~7_combout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( (!\ROM1|memROM~4_combout\ & (!\DEC1|saida[3]~1_combout\ $ (((!\RAM1|ram~177_combout\) # (\RAM1|process_0~0_combout\))))) # (\ROM1|memROM~4_combout\ & (((!\RAM1|ram~177_combout\)))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~30\ ))
-- \ULA1|Add0~2\ = CARRY(( (!\ROM1|memROM~4_combout\ & (!\DEC1|saida[3]~1_combout\ $ (((!\RAM1|ram~177_combout\) # (\RAM1|process_0~0_combout\))))) # (\ROM1|memROM~4_combout\ & (((!\RAM1|ram~177_combout\)))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111100001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_saida[3]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \RAM1|ALT_INV_ram~177_combout\,
	datad => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\MUX1|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~4_combout\ = (\MUX1|saida_MUX[6]~0_combout\ & \RAM1|ram~172_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[6]~0_combout\,
	datab => \RAM1|ALT_INV_ram~172_combout\,
	combout => \MUX1|saida_MUX[5]~4_combout\);

\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \MUX1|saida_MUX[5]~4_combout\,
	sload => \ULA1|saida[0]~0_combout\,
	ena => \DEC1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

\RAM1|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~54_q\);

\RAM1|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~62_q\);

\RAM1|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~70_q\);

\RAM1|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~78_q\);

\RAM1|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~168_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~78_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~70_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM1|ram~62_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~54_q\,
	datab => \RAM1|ALT_INV_ram~62_q\,
	datac => \RAM1|ALT_INV_ram~70_q\,
	datad => \RAM1|ALT_INV_ram~78_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~168_combout\);

\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

\RAM1|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~46_q\);

\RAM1|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~169_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~46_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~38_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM1|ram~30_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~22_q\,
	datab => \RAM1|ALT_INV_ram~30_q\,
	datac => \RAM1|ALT_INV_ram~38_q\,
	datad => \RAM1|ALT_INV_ram~46_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~169_combout\);

\RAM1|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~118_q\);

\RAM1|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~126_q\);

\RAM1|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~134_q\);

\RAM1|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~142_q\);

\RAM1|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~170_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~142_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~134_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM1|ram~126_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~118_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~118_q\,
	datab => \RAM1|ALT_INV_ram~126_q\,
	datac => \RAM1|ALT_INV_ram~134_q\,
	datad => \RAM1|ALT_INV_ram~142_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~170_combout\);

\RAM1|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~86_q\);

\RAM1|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~94_q\);

\RAM1|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~102_q\);

\RAM1|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~110_q\);

\RAM1|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~171_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~110_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~102_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM1|ram~94_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~86_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~86_q\,
	datab => \RAM1|ALT_INV_ram~94_q\,
	datac => \RAM1|ALT_INV_ram~102_q\,
	datad => \RAM1|ALT_INV_ram~110_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~171_combout\);

\RAM1|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~172_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~171_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~170_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~169_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~168_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~168_combout\,
	datab => \RAM1|ALT_INV_ram~169_combout\,
	datac => \RAM1|ALT_INV_ram~170_combout\,
	datad => \RAM1|ALT_INV_ram~171_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~172_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( (!\ROM1|memROM~4_combout\ & (!\DEC1|saida[3]~1_combout\ $ (((!\RAM1|ram~172_combout\) # (\RAM1|process_0~0_combout\))))) # (\ROM1|memROM~4_combout\ & (((!\RAM1|ram~172_combout\)))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( (!\ROM1|memROM~4_combout\ & (!\DEC1|saida[3]~1_combout\ $ (((!\RAM1|ram~172_combout\) # (\RAM1|process_0~0_combout\))))) # (\ROM1|memROM~4_combout\ & (((!\RAM1|ram~172_combout\)))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011111110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~0_combout\,
	datab => \DEC1|ALT_INV_saida[3]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~172_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\MUX1|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~5_combout\ = (\MUX1|saida_MUX[6]~0_combout\ & \RAM1|ram~182_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[6]~0_combout\,
	datab => \RAM1|ALT_INV_ram~182_combout\,
	combout => \MUX1|saida_MUX[6]~5_combout\);

\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \MUX1|saida_MUX[6]~5_combout\,
	sload => \ULA1|saida[0]~0_combout\,
	ena => \DEC1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

\RAM1|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~55_q\);

\RAM1|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~63_q\);

\RAM1|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~71_q\);

\RAM1|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~79_q\);

\RAM1|ram~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~178_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~79_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~71_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM1|ram~63_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~55_q\,
	datab => \RAM1|ALT_INV_ram~63_q\,
	datac => \RAM1|ALT_INV_ram~71_q\,
	datad => \RAM1|ALT_INV_ram~79_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~178_combout\);

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~184_combout\,
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
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~188_combout\,
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
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

\RAM1|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~47_q\);

\RAM1|ram~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~179_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~47_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~39_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM1|ram~31_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~23_q\,
	datab => \RAM1|ALT_INV_ram~31_q\,
	datac => \RAM1|ALT_INV_ram~39_q\,
	datad => \RAM1|ALT_INV_ram~47_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~179_combout\);

\RAM1|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~119_q\);

\RAM1|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~127_q\);

\RAM1|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~135_q\);

\RAM1|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~143_q\);

\RAM1|ram~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~180_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~143_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~135_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM1|ram~127_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~119_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~119_q\,
	datab => \RAM1|ALT_INV_ram~127_q\,
	datac => \RAM1|ALT_INV_ram~135_q\,
	datad => \RAM1|ALT_INV_ram~143_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~180_combout\);

\RAM1|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~87_q\);

\RAM1|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~95_q\);

\RAM1|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~103_q\);

\RAM1|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~111_q\);

\RAM1|ram~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~181_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~111_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~103_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM1|ram~95_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~87_q\,
	datab => \RAM1|ALT_INV_ram~95_q\,
	datac => \RAM1|ALT_INV_ram~103_q\,
	datad => \RAM1|ALT_INV_ram~111_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~181_combout\);

\RAM1|ram~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~182_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~181_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~180_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~179_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~178_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~178_combout\,
	datab => \RAM1|ALT_INV_ram~179_combout\,
	datac => \RAM1|ALT_INV_ram~180_combout\,
	datad => \RAM1|ALT_INV_ram~181_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~182_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( (!\ROM1|memROM~4_combout\ & (!\DEC1|saida[3]~1_combout\ $ (((!\RAM1|ram~182_combout\) # (\RAM1|process_0~0_combout\))))) # (\ROM1|memROM~4_combout\ & (((!\RAM1|ram~182_combout\)))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( (!\ROM1|memROM~4_combout\ & (!\DEC1|saida[3]~1_combout\ $ (((!\RAM1|ram~182_combout\) # (\RAM1|process_0~0_combout\))))) # (\ROM1|memROM~4_combout\ & (((!\RAM1|ram~182_combout\)))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011111110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~0_combout\,
	datab => \DEC1|ALT_INV_saida[3]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~182_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\MUX1|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~6_combout\ = (\MUX1|saida_MUX[6]~0_combout\ & \RAM1|ram~167_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[6]~0_combout\,
	datab => \RAM1|ALT_INV_ram~167_combout\,
	combout => \MUX1|saida_MUX[7]~6_combout\);

\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \MUX1|saida_MUX[7]~6_combout\,
	sload => \ULA1|saida[0]~0_combout\,
	ena => \DEC1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

\RAM1|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~183_combout\,
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
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~184_combout\,
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
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~185_combout\,
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
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~88_q\);

\RAM1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~163_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~88_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~120_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~24_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~56_q\ ) ) )

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
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~163_combout\);

\RAM1|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~64_q\);

\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

\RAM1|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~128_q\);

\RAM1|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~96_q\);

\RAM1|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~164_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~96_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~128_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~32_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~64_q\,
	datab => \RAM1|ALT_INV_ram~32_q\,
	datac => \RAM1|ALT_INV_ram~128_q\,
	datad => \RAM1|ALT_INV_ram~96_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~164_combout\);

\RAM1|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~72_q\);

\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

\RAM1|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~136_q\);

\RAM1|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~104_q\);

\RAM1|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~165_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~104_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~136_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~40_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~72_q\,
	datab => \RAM1|ALT_INV_ram~40_q\,
	datac => \RAM1|ALT_INV_ram~136_q\,
	datad => \RAM1|ALT_INV_ram~104_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~165_combout\);

\RAM1|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~80_q\);

\RAM1|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~48_q\);

\RAM1|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~144_q\);

\RAM1|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~112_q\);

\RAM1|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~166_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~112_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~144_q\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~48_q\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~80_q\,
	datab => \RAM1|ALT_INV_ram~48_q\,
	datac => \RAM1|ALT_INV_ram~144_q\,
	datad => \RAM1|ALT_INV_ram~112_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~166_combout\);

\RAM1|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~167_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~166_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~165_combout\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM1|ram~164_combout\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~163_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~163_combout\,
	datab => \RAM1|ALT_INV_ram~164_combout\,
	datac => \RAM1|ALT_INV_ram~165_combout\,
	datad => \RAM1|ALT_INV_ram~166_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~167_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( (!\ROM1|memROM~4_combout\ & (!\DEC1|saida[3]~1_combout\ $ (((!\RAM1|ram~167_combout\) # (\RAM1|process_0~0_combout\))))) # (\ROM1|memROM~4_combout\ & (((!\RAM1|ram~167_combout\)))) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011111110000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \DEC1|ALT_INV_saida[3]~1_combout\,
	datad => \RAM1|ALT_INV_ram~167_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\);

\FLGZERO|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLGZERO|DOUT~0_combout\ = ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & \ROM1|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \FLGZERO|DOUT~0_combout\);

\FLGZERO|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLGZERO|DOUT~1_combout\ = ( \FLGZERO|DOUT~0_combout\ & ( !\ULA1|saida[0]~0_combout\ & ( (!\ULA1|Add0~17_sumout\ & (!\ULA1|Add0~21_sumout\ & (!\ULA1|Add0~25_sumout\ & !\ULA1|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~17_sumout\,
	datab => \ULA1|ALT_INV_Add0~21_sumout\,
	datac => \ULA1|ALT_INV_Add0~25_sumout\,
	datad => \ULA1|ALT_INV_Add0~29_sumout\,
	datae => \FLGZERO|ALT_INV_DOUT~0_combout\,
	dataf => \ULA1|ALT_INV_saida[0]~0_combout\,
	combout => \FLGZERO|DOUT~1_combout\);

\FLGZERO|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLGZERO|DOUT~2_combout\ = (\FLGZERO|DOUT~q\ & !\FLGZERO|DOUT~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLGZERO|ALT_INV_DOUT~q\,
	datab => \FLGZERO|ALT_INV_DOUT~0_combout\,
	combout => \FLGZERO|DOUT~2_combout\);

\FLGZERO|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLGZERO|DOUT~3_combout\ = ( \FLGZERO|DOUT~1_combout\ & ( \FLGZERO|DOUT~2_combout\ ) ) # ( !\FLGZERO|DOUT~1_combout\ & ( \FLGZERO|DOUT~2_combout\ ) ) # ( \FLGZERO|DOUT~1_combout\ & ( !\FLGZERO|DOUT~2_combout\ & ( (!\ULA1|Add0~1_sumout\ & 
-- (!\ULA1|Add0~5_sumout\ & (!\ULA1|Add0~9_sumout\ & !\ULA1|Add0~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~1_sumout\,
	datab => \ULA1|ALT_INV_Add0~5_sumout\,
	datac => \ULA1|ALT_INV_Add0~9_sumout\,
	datad => \ULA1|ALT_INV_Add0~13_sumout\,
	datae => \FLGZERO|ALT_INV_DOUT~1_combout\,
	dataf => \FLGZERO|ALT_INV_DOUT~2_combout\,
	combout => \FLGZERO|DOUT~3_combout\);

\FLGZERO|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \FLGZERO|DOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLGZERO|DOUT~q\);

\DEC1|logica_desvio~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|logica_desvio~0_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \DEC1|logica_desvio~0_combout\);

\DEC1|logica_desvio~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|logica_desvio~1_combout\ = (\ROM1|memROM~6_combout\ & (\DEC1|logica_desvio~0_combout\ & ((!\ROM1|memROM~4_combout\) # (\FLGZERO|DOUT~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101000000000000110100000000000011010000000000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLGZERO|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \DEC1|ALT_INV_logica_desvio~0_combout\,
	combout => \DEC1|logica_desvio~1_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \DEC1|logica_desvio~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (!\PC|DOUT\(1) & ((!\PC|DOUT\(0) & (\PC|DOUT\(2) & \PC|DOUT\(3))) # (\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000001000010000000000100001000000000010000100000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~16_combout\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( !\PC|DOUT\(8) & ( \ROM1|memROM~16_combout\ & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \ROM1|memROM~11_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~11_combout\,
	sload => \DEC1|logica_desvio~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \DEC1|logica_desvio~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = (!\PC|DOUT\(1) & (!\PC|DOUT\(0) $ (((!\PC|DOUT\(2) & \PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001001000100010000100100010001000010010001000100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~15_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \PC|DOUT\(8) & ( \ROM1|memROM~15_combout\ ) ) # ( !\PC|DOUT\(8) & ( \ROM1|memROM~15_combout\ & ( (((\PC|DOUT\(7)) # (\PC|DOUT\(6))) # (\PC|DOUT\(5))) # (\PC|DOUT\(4)) ) ) ) # ( \PC|DOUT\(8) & ( !\ROM1|memROM~15_combout\ ) ) # 
-- ( !\PC|DOUT\(8) & ( !\ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \ROM1|memROM~10_combout\);

\ROM1|memROM~10_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_wirecell_combout\ = !\ROM1|memROM~10_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~10_wirecell_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~10_wirecell_combout\,
	sload => \DEC1|logica_desvio~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC|DOUT\(0) & (\PC|DOUT\(1) & (!\PC|DOUT\(2) & \PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~9_combout\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~9_combout\,
	sload => \DEC1|logica_desvio~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\PC|DOUT\(1) & (!\PC|DOUT\(3) & (!\PC|DOUT\(0) $ (!\PC|DOUT\(2))))) # (\PC|DOUT\(1) & (\PC|DOUT\(0) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010010001000000000000000000000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~1_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~1_combout\,
	sload => \DEC1|logica_desvio~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\MUXPC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[0]~0_combout\ = ( \DEC1|logica_desvio~0_combout\ & ( \incrementaPC|Add0~1_sumout\ & ( ((!\ROM1|memROM~6_combout\) # ((!\FLGZERO|DOUT~q\ & \ROM1|memROM~4_combout\))) # (\ROM1|memROM~1_combout\) ) ) ) # ( !\DEC1|logica_desvio~0_combout\ & ( 
-- \incrementaPC|Add0~1_sumout\ ) ) # ( \DEC1|logica_desvio~0_combout\ & ( !\incrementaPC|Add0~1_sumout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~4_combout\) # (\FLGZERO|DOUT~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101000111111111111111111111111101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \FLGZERO|ALT_INV_DOUT~q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \DEC1|ALT_INV_logica_desvio~0_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \MUXPC|saida_MUX[0]~0_combout\);

\MUXPC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[1]~1_combout\ = ( \ROM1|memROM~9_combout\ & ( \incrementaPC|Add0~5_sumout\ ) ) # ( !\ROM1|memROM~9_combout\ & ( \incrementaPC|Add0~5_sumout\ & ( (!\ROM1|memROM~6_combout\) # ((!\DEC1|logica_desvio~0_combout\) # ((!\FLGZERO|DOUT~q\ & 
-- \ROM1|memROM~4_combout\))) ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\incrementaPC|Add0~5_sumout\ & ( (\ROM1|memROM~6_combout\ & (\DEC1|logica_desvio~0_combout\ & ((!\ROM1|memROM~4_combout\) # (\FLGZERO|DOUT~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110111111111111100101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLGZERO|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \DEC1|ALT_INV_logica_desvio~0_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \MUXPC|saida_MUX[1]~1_combout\);

\MUXPC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[2]~2_combout\ = ( \ROM1|memROM~10_combout\ & ( \incrementaPC|Add0~9_sumout\ & ( (!\ROM1|memROM~6_combout\) # ((!\DEC1|logica_desvio~0_combout\) # ((!\FLGZERO|DOUT~q\ & \ROM1|memROM~4_combout\))) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( 
-- \incrementaPC|Add0~9_sumout\ ) ) # ( !\ROM1|memROM~10_combout\ & ( !\incrementaPC|Add0~9_sumout\ & ( (\ROM1|memROM~6_combout\ & (\DEC1|logica_desvio~0_combout\ & ((!\ROM1|memROM~4_combout\) # (\FLGZERO|DOUT~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101000000000000000011111111111111111111111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLGZERO|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \DEC1|ALT_INV_logica_desvio~0_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \MUXPC|saida_MUX[2]~2_combout\);

\MUXPC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[3]~3_combout\ = ( \ROM1|memROM~11_combout\ & ( \incrementaPC|Add0~13_sumout\ ) ) # ( !\ROM1|memROM~11_combout\ & ( \incrementaPC|Add0~13_sumout\ & ( (!\ROM1|memROM~6_combout\) # ((!\DEC1|logica_desvio~0_combout\) # ((!\FLGZERO|DOUT~q\ & 
-- \ROM1|memROM~4_combout\))) ) ) ) # ( \ROM1|memROM~11_combout\ & ( !\incrementaPC|Add0~13_sumout\ & ( (\ROM1|memROM~6_combout\ & (\DEC1|logica_desvio~0_combout\ & ((!\ROM1|memROM~4_combout\) # (\FLGZERO|DOUT~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110111111111111100101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLGZERO|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \DEC1|ALT_INV_logica_desvio~0_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \MUXPC|saida_MUX[3]~3_combout\);

\MUXPC|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[4]~4_combout\ = ( \incrementaPC|Add0~17_sumout\ & ( (!\ROM1|memROM~6_combout\) # ((!\DEC1|logica_desvio~0_combout\) # ((!\FLGZERO|DOUT~q\ & \ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111001000000000000000001111111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLGZERO|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \DEC1|ALT_INV_logica_desvio~0_combout\,
	datae => \incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \MUXPC|saida_MUX[4]~4_combout\);

\MUXPC|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[5]~5_combout\ = ( \incrementaPC|Add0~21_sumout\ & ( (!\ROM1|memROM~6_combout\) # ((!\DEC1|logica_desvio~0_combout\) # ((!\FLGZERO|DOUT~q\ & \ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111001000000000000000001111111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLGZERO|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \DEC1|ALT_INV_logica_desvio~0_combout\,
	datae => \incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \MUXPC|saida_MUX[5]~5_combout\);

\MUXPC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[6]~6_combout\ = ( \incrementaPC|Add0~25_sumout\ & ( (!\ROM1|memROM~6_combout\) # ((!\DEC1|logica_desvio~0_combout\) # ((!\FLGZERO|DOUT~q\ & \ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111001000000000000000001111111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLGZERO|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \DEC1|ALT_INV_logica_desvio~0_combout\,
	datae => \incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \MUXPC|saida_MUX[6]~6_combout\);

\MUXPC|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[7]~7_combout\ = ( \incrementaPC|Add0~29_sumout\ & ( (!\ROM1|memROM~6_combout\) # ((!\DEC1|logica_desvio~0_combout\) # ((!\FLGZERO|DOUT~q\ & \ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111001000000000000000001111111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLGZERO|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \DEC1|ALT_INV_logica_desvio~0_combout\,
	datae => \incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \MUXPC|saida_MUX[7]~7_combout\);

\MUXPC|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[8]~8_combout\ = ( \ROM1|memROM~13_combout\ & ( \incrementaPC|Add0~33_sumout\ ) ) # ( !\ROM1|memROM~13_combout\ & ( \incrementaPC|Add0~33_sumout\ & ( (!\ROM1|memROM~6_combout\) # ((!\DEC1|logica_desvio~0_combout\) # ((!\FLGZERO|DOUT~q\ & 
-- \ROM1|memROM~4_combout\))) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\incrementaPC|Add0~33_sumout\ & ( (\ROM1|memROM~6_combout\ & (\DEC1|logica_desvio~0_combout\ & ((!\ROM1|memROM~4_combout\) # (\FLGZERO|DOUT~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110111111111111100101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLGZERO|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \DEC1|ALT_INV_logica_desvio~0_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \MUXPC|saida_MUX[8]~8_combout\);

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
END structure;


