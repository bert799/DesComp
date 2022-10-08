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

-- DATE "10/08/2022 17:18:32"

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
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
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
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \CPU1|DEC1|Equal2~0_combout\ : std_logic;
SIGNAL \CPU1|DEC1|Equal2~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \CPU1|DEC1|saida[0]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|ram~59_q\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~51_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~470_combout\ : std_logic;
SIGNAL \RAM1|ram~338_combout\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~83_q\ : std_logic;
SIGNAL \RAM1|ram~474_combout\ : std_logic;
SIGNAL \RAM1|ram~342_combout\ : std_logic;
SIGNAL \RAM1|ram~478_combout\ : std_logic;
SIGNAL \RAM1|ram~346_combout\ : std_logic;
SIGNAL \RAM1|ram~482_combout\ : std_logic;
SIGNAL \RAM1|ram~350_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \RAM1|ram~354_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \CPU1|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU1|DEC1|saida[3]~0_combout\ : std_logic;
SIGNAL \CPU1|DEC1|Equal6~0_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~35_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~36_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~23_q\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~37_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~15_q\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~31_combout\ : std_logic;
SIGNAL \RAM1|ram~462_combout\ : std_logic;
SIGNAL \RAM1|ram~330_combout\ : std_logic;
SIGNAL \RAM1|ram~58_q\ : std_logic;
SIGNAL \RAM1|ram~50_q\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~454_combout\ : std_logic;
SIGNAL \RAM1|ram~322_combout\ : std_logic;
SIGNAL \RAM1|ram~466_combout\ : std_logic;
SIGNAL \RAM1|ram~334_combout\ : std_logic;
SIGNAL \RAM1|ram~82_q\ : std_logic;
SIGNAL \RAM1|ram~458_combout\ : std_logic;
SIGNAL \RAM1|ram~326_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[3]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~57_q\ : std_logic;
SIGNAL \RAM1|ram~49_q\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~438_combout\ : std_logic;
SIGNAL \RAM1|ram~305_combout\ : std_logic;
SIGNAL \RAM1|ram~81_q\ : std_logic;
SIGNAL \RAM1|ram~442_combout\ : std_logic;
SIGNAL \RAM1|ram~309_combout\ : std_logic;
SIGNAL \RAM1|ram~446_combout\ : std_logic;
SIGNAL \RAM1|ram~313_combout\ : std_logic;
SIGNAL \RAM1|ram~450_combout\ : std_logic;
SIGNAL \RAM1|ram~317_combout\ : std_logic;
SIGNAL \RAM1|ram~321_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~56_q\ : std_logic;
SIGNAL \RAM1|ram~48_q\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~422_combout\ : std_logic;
SIGNAL \RAM1|ram~288_combout\ : std_logic;
SIGNAL \RAM1|ram~80_q\ : std_logic;
SIGNAL \RAM1|ram~426_combout\ : std_logic;
SIGNAL \RAM1|ram~292_combout\ : std_logic;
SIGNAL \RAM1|ram~430_combout\ : std_logic;
SIGNAL \RAM1|ram~296_combout\ : std_logic;
SIGNAL \RAM1|ram~434_combout\ : std_logic;
SIGNAL \RAM1|ram~300_combout\ : std_logic;
SIGNAL \RAM1|ram~304_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~55_q\ : std_logic;
SIGNAL \RAM1|ram~47_q\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~406_combout\ : std_logic;
SIGNAL \RAM1|ram~271_combout\ : std_logic;
SIGNAL \RAM1|ram~79_q\ : std_logic;
SIGNAL \RAM1|ram~410_combout\ : std_logic;
SIGNAL \RAM1|ram~275_combout\ : std_logic;
SIGNAL \RAM1|ram~414_combout\ : std_logic;
SIGNAL \RAM1|ram~279_combout\ : std_logic;
SIGNAL \RAM1|ram~418_combout\ : std_logic;
SIGNAL \RAM1|ram~283_combout\ : std_logic;
SIGNAL \RAM1|ram~287_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~19_q\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~11_q\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~27_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~20_q\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~12_q\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~28_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~21_q\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~13_q\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~29_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~22_q\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~14_q\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~30_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~24_q\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~16_q\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~32_combout\ : std_logic;
SIGNAL \RAM1|ram~60_q\ : std_logic;
SIGNAL \RAM1|ram~52_q\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~486_combout\ : std_logic;
SIGNAL \RAM1|ram~355_combout\ : std_logic;
SIGNAL \RAM1|ram~84_q\ : std_logic;
SIGNAL \RAM1|ram~490_combout\ : std_logic;
SIGNAL \RAM1|ram~359_combout\ : std_logic;
SIGNAL \RAM1|ram~494_combout\ : std_logic;
SIGNAL \RAM1|ram~363_combout\ : std_logic;
SIGNAL \RAM1|ram~498_combout\ : std_logic;
SIGNAL \RAM1|ram~367_combout\ : std_logic;
SIGNAL \RAM1|ram~371_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~25_q\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~17_q\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~33_combout\ : std_logic;
SIGNAL \RAM1|ram~61_q\ : std_logic;
SIGNAL \RAM1|ram~53_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~502_combout\ : std_logic;
SIGNAL \RAM1|ram~372_combout\ : std_logic;
SIGNAL \RAM1|ram~85_q\ : std_logic;
SIGNAL \RAM1|ram~506_combout\ : std_logic;
SIGNAL \RAM1|ram~376_combout\ : std_logic;
SIGNAL \RAM1|ram~510_combout\ : std_logic;
SIGNAL \RAM1|ram~380_combout\ : std_logic;
SIGNAL \RAM1|ram~514_combout\ : std_logic;
SIGNAL \RAM1|ram~384_combout\ : std_logic;
SIGNAL \RAM1|ram~388_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \RAM1|ram~62_q\ : std_logic;
SIGNAL \RAM1|ram~54_q\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~518_combout\ : std_logic;
SIGNAL \RAM1|ram~389_combout\ : std_logic;
SIGNAL \RAM1|ram~86_q\ : std_logic;
SIGNAL \RAM1|ram~522_combout\ : std_logic;
SIGNAL \RAM1|ram~393_combout\ : std_logic;
SIGNAL \RAM1|ram~526_combout\ : std_logic;
SIGNAL \RAM1|ram~397_combout\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|ram~401_combout\ : std_logic;
SIGNAL \RAM1|ram~405_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~26_q\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~18_q\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~34_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~0_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~1_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~2_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~3_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~4_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~5_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~6_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~7_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|DOUT~q\ : std_logic;
SIGNAL \CPU1|DEC1|logica_desvio~0_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~15_wirecell_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \CPU1|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \CPU1|DEC1|ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \CPU1|FLGZERO|ALT_INV_DOUT~6_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|ALT_INV_DOUT~5_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|ALT_INV_DOUT~4_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~405_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~388_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~371_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~354_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~321_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~304_combout\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~35_combout\ : std_logic;
SIGNAL \CPU1|DEC1|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \CPU1|DEC1|ALT_INV_saida[3]~0_combout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~287_combout\ : std_logic;
SIGNAL \CPU1|DEC1|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \CPU1|DEC1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \CPU1|FLGZERO|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~34_combout\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~33_combout\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~32_combout\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~31_combout\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~30_combout\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~29_combout\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~28_combout\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~27_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[3]~7_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~526_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~522_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~518_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~514_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~510_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~506_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~502_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~498_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~494_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~490_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~486_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~482_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~478_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~474_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~470_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~466_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~462_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~458_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~454_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~450_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~446_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~442_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~438_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~434_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~430_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~426_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~422_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~418_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~414_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~410_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~406_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~401_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~397_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~393_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~389_combout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~384_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~380_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~376_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~372_combout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~367_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~363_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~359_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~355_combout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~350_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~346_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~342_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~338_combout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~334_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~330_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~326_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~322_combout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~317_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~313_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~309_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~305_combout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~300_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~296_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~292_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~288_combout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~283_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~279_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~275_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~271_combout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~11_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\RAM1|ALT_INV_ram~541_combout\ <= NOT \RAM1|ram~541_combout\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\RAM1|ALT_INV_ram~86_q\ <= NOT \RAM1|ram~86_q\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~85_q\ <= NOT \RAM1|ram~85_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~84_q\ <= NOT \RAM1|ram~84_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~83_q\ <= NOT \RAM1|ram~83_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~82_q\ <= NOT \RAM1|ram~82_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~81_q\ <= NOT \RAM1|ram~81_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~80_q\ <= NOT \RAM1|ram~80_q\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~79_q\ <= NOT \RAM1|ram~79_q\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\CPU1|DEC1|ALT_INV_saida[0]~1_combout\ <= NOT \CPU1|DEC1|saida[0]~1_combout\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\RAM1|ALT_INV_ram~54_q\ <= NOT \RAM1|ram~54_q\;
\RAM1|ALT_INV_ram~62_q\ <= NOT \RAM1|ram~62_q\;
\RAM1|ALT_INV_ram~53_q\ <= NOT \RAM1|ram~53_q\;
\RAM1|ALT_INV_ram~61_q\ <= NOT \RAM1|ram~61_q\;
\RAM1|ALT_INV_ram~52_q\ <= NOT \RAM1|ram~52_q\;
\RAM1|ALT_INV_ram~60_q\ <= NOT \RAM1|ram~60_q\;
\RAM1|ALT_INV_ram~51_q\ <= NOT \RAM1|ram~51_q\;
\RAM1|ALT_INV_ram~59_q\ <= NOT \RAM1|ram~59_q\;
\RAM1|ALT_INV_ram~50_q\ <= NOT \RAM1|ram~50_q\;
\RAM1|ALT_INV_ram~58_q\ <= NOT \RAM1|ram~58_q\;
\RAM1|ALT_INV_ram~49_q\ <= NOT \RAM1|ram~49_q\;
\RAM1|ALT_INV_ram~57_q\ <= NOT \RAM1|ram~57_q\;
\RAM1|ALT_INV_ram~48_q\ <= NOT \RAM1|ram~48_q\;
\RAM1|ALT_INV_ram~56_q\ <= NOT \RAM1|ram~56_q\;
\RAM1|ALT_INV_ram~47_q\ <= NOT \RAM1|ram~47_q\;
\RAM1|ALT_INV_ram~55_q\ <= NOT \RAM1|ram~55_q\;
\CPU1|FLGZERO|ALT_INV_DOUT~6_combout\ <= NOT \CPU1|FLGZERO|DOUT~6_combout\;
\CPU1|FLGZERO|ALT_INV_DOUT~5_combout\ <= NOT \CPU1|FLGZERO|DOUT~5_combout\;
\CPU1|FLGZERO|ALT_INV_DOUT~4_combout\ <= NOT \CPU1|FLGZERO|DOUT~4_combout\;
\CPU1|FLGZERO|ALT_INV_DOUT~3_combout\ <= NOT \CPU1|FLGZERO|DOUT~3_combout\;
\CPU1|FLGZERO|ALT_INV_DOUT~2_combout\ <= NOT \CPU1|FLGZERO|DOUT~2_combout\;
\CPU1|FLGZERO|ALT_INV_DOUT~1_combout\ <= NOT \CPU1|FLGZERO|DOUT~1_combout\;
\CPU1|FLGZERO|ALT_INV_DOUT~0_combout\ <= NOT \CPU1|FLGZERO|DOUT~0_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\RAM1|ALT_INV_ram~405_combout\ <= NOT \RAM1|ram~405_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[6]~5_combout\ <= NOT \CPU1|MUX1|saida_MUX[6]~5_combout\;
\RAM1|ALT_INV_ram~388_combout\ <= NOT \RAM1|ram~388_combout\;
\RAM1|ALT_INV_ram~371_combout\ <= NOT \RAM1|ram~371_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[4]~3_combout\ <= NOT \CPU1|MUX1|saida_MUX[4]~3_combout\;
\RAM1|ALT_INV_ram~354_combout\ <= NOT \RAM1|ram~354_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \CPU1|MUX1|saida_MUX[2]~2_combout\;
\RAM1|ALT_INV_ram~321_combout\ <= NOT \RAM1|ram~321_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU1|MUX1|saida_MUX[1]~1_combout\;
\RAM1|ALT_INV_ram~304_combout\ <= NOT \RAM1|ram~304_combout\;
\CPU1|BancREG|ALT_INV_registrador~35_combout\ <= NOT \CPU1|BancREG|registrador~35_combout\;
\CPU1|DEC1|ALT_INV_Equal6~0_combout\ <= NOT \CPU1|DEC1|Equal6~0_combout\;
\CPU1|DEC1|ALT_INV_saida[3]~0_combout\ <= NOT \CPU1|DEC1|saida[3]~0_combout\;
\CPU1|ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \CPU1|ULA1|saida[0]~0_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~0_combout\;
\RAM1|ALT_INV_ram~287_combout\ <= NOT \RAM1|ram~287_combout\;
\CPU1|DEC1|ALT_INV_Equal2~1_combout\ <= NOT \CPU1|DEC1|Equal2~1_combout\;
\CPU1|DEC1|ALT_INV_Equal2~0_combout\ <= NOT \CPU1|DEC1|Equal2~0_combout\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\CPU1|FLGZERO|ALT_INV_DOUT~q\ <= NOT \CPU1|FLGZERO|DOUT~q\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\CPU1|BancREG|ALT_INV_registrador~34_combout\ <= NOT \CPU1|BancREG|registrador~34_combout\;
\CPU1|BancREG|ALT_INV_registrador~33_combout\ <= NOT \CPU1|BancREG|registrador~33_combout\;
\CPU1|BancREG|ALT_INV_registrador~32_combout\ <= NOT \CPU1|BancREG|registrador~32_combout\;
\CPU1|BancREG|ALT_INV_registrador~31_combout\ <= NOT \CPU1|BancREG|registrador~31_combout\;
\CPU1|BancREG|ALT_INV_registrador~30_combout\ <= NOT \CPU1|BancREG|registrador~30_combout\;
\CPU1|BancREG|ALT_INV_registrador~29_combout\ <= NOT \CPU1|BancREG|registrador~29_combout\;
\CPU1|BancREG|ALT_INV_registrador~28_combout\ <= NOT \CPU1|BancREG|registrador~28_combout\;
\CPU1|BancREG|ALT_INV_registrador~27_combout\ <= NOT \CPU1|BancREG|registrador~27_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[3]~7_combout\ <= NOT \CPU1|MUX1|saida_MUX[3]~7_combout\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~526_combout\ <= NOT \RAM1|ram~526_combout\;
\RAM1|ALT_INV_ram~522_combout\ <= NOT \RAM1|ram~522_combout\;
\RAM1|ALT_INV_ram~518_combout\ <= NOT \RAM1|ram~518_combout\;
\RAM1|ALT_INV_ram~514_combout\ <= NOT \RAM1|ram~514_combout\;
\RAM1|ALT_INV_ram~510_combout\ <= NOT \RAM1|ram~510_combout\;
\RAM1|ALT_INV_ram~506_combout\ <= NOT \RAM1|ram~506_combout\;
\RAM1|ALT_INV_ram~502_combout\ <= NOT \RAM1|ram~502_combout\;
\RAM1|ALT_INV_ram~498_combout\ <= NOT \RAM1|ram~498_combout\;
\RAM1|ALT_INV_ram~494_combout\ <= NOT \RAM1|ram~494_combout\;
\RAM1|ALT_INV_ram~490_combout\ <= NOT \RAM1|ram~490_combout\;
\RAM1|ALT_INV_ram~486_combout\ <= NOT \RAM1|ram~486_combout\;
\RAM1|ALT_INV_ram~482_combout\ <= NOT \RAM1|ram~482_combout\;
\RAM1|ALT_INV_ram~478_combout\ <= NOT \RAM1|ram~478_combout\;
\RAM1|ALT_INV_ram~474_combout\ <= NOT \RAM1|ram~474_combout\;
\RAM1|ALT_INV_ram~470_combout\ <= NOT \RAM1|ram~470_combout\;
\RAM1|ALT_INV_ram~466_combout\ <= NOT \RAM1|ram~466_combout\;
\RAM1|ALT_INV_ram~462_combout\ <= NOT \RAM1|ram~462_combout\;
\RAM1|ALT_INV_ram~458_combout\ <= NOT \RAM1|ram~458_combout\;
\RAM1|ALT_INV_ram~454_combout\ <= NOT \RAM1|ram~454_combout\;
\RAM1|ALT_INV_ram~450_combout\ <= NOT \RAM1|ram~450_combout\;
\RAM1|ALT_INV_ram~446_combout\ <= NOT \RAM1|ram~446_combout\;
\RAM1|ALT_INV_ram~442_combout\ <= NOT \RAM1|ram~442_combout\;
\RAM1|ALT_INV_ram~438_combout\ <= NOT \RAM1|ram~438_combout\;
\RAM1|ALT_INV_ram~434_combout\ <= NOT \RAM1|ram~434_combout\;
\RAM1|ALT_INV_ram~430_combout\ <= NOT \RAM1|ram~430_combout\;
\RAM1|ALT_INV_ram~426_combout\ <= NOT \RAM1|ram~426_combout\;
\RAM1|ALT_INV_ram~422_combout\ <= NOT \RAM1|ram~422_combout\;
\RAM1|ALT_INV_ram~418_combout\ <= NOT \RAM1|ram~418_combout\;
\RAM1|ALT_INV_ram~414_combout\ <= NOT \RAM1|ram~414_combout\;
\RAM1|ALT_INV_ram~410_combout\ <= NOT \RAM1|ram~410_combout\;
\RAM1|ALT_INV_ram~406_combout\ <= NOT \RAM1|ram~406_combout\;
\RAM1|ALT_INV_ram~401_combout\ <= NOT \RAM1|ram~401_combout\;
\RAM1|ALT_INV_ram~397_combout\ <= NOT \RAM1|ram~397_combout\;
\RAM1|ALT_INV_ram~393_combout\ <= NOT \RAM1|ram~393_combout\;
\RAM1|ALT_INV_ram~389_combout\ <= NOT \RAM1|ram~389_combout\;
\CPU1|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU1|ULA1|Add0~29_sumout\;
\RAM1|ALT_INV_ram~384_combout\ <= NOT \RAM1|ram~384_combout\;
\RAM1|ALT_INV_ram~380_combout\ <= NOT \RAM1|ram~380_combout\;
\RAM1|ALT_INV_ram~376_combout\ <= NOT \RAM1|ram~376_combout\;
\RAM1|ALT_INV_ram~372_combout\ <= NOT \RAM1|ram~372_combout\;
\CPU1|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU1|ULA1|Add0~25_sumout\;
\RAM1|ALT_INV_ram~367_combout\ <= NOT \RAM1|ram~367_combout\;
\RAM1|ALT_INV_ram~363_combout\ <= NOT \RAM1|ram~363_combout\;
\RAM1|ALT_INV_ram~359_combout\ <= NOT \RAM1|ram~359_combout\;
\RAM1|ALT_INV_ram~355_combout\ <= NOT \RAM1|ram~355_combout\;
\CPU1|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU1|ULA1|Add0~21_sumout\;
\RAM1|ALT_INV_ram~350_combout\ <= NOT \RAM1|ram~350_combout\;
\RAM1|ALT_INV_ram~346_combout\ <= NOT \RAM1|ram~346_combout\;
\RAM1|ALT_INV_ram~342_combout\ <= NOT \RAM1|ram~342_combout\;
\RAM1|ALT_INV_ram~338_combout\ <= NOT \RAM1|ram~338_combout\;
\CPU1|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU1|ULA1|Add0~17_sumout\;
\RAM1|ALT_INV_ram~334_combout\ <= NOT \RAM1|ram~334_combout\;
\RAM1|ALT_INV_ram~330_combout\ <= NOT \RAM1|ram~330_combout\;
\RAM1|ALT_INV_ram~326_combout\ <= NOT \RAM1|ram~326_combout\;
\RAM1|ALT_INV_ram~322_combout\ <= NOT \RAM1|ram~322_combout\;
\CPU1|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU1|ULA1|Add0~13_sumout\;
\RAM1|ALT_INV_ram~317_combout\ <= NOT \RAM1|ram~317_combout\;
\RAM1|ALT_INV_ram~313_combout\ <= NOT \RAM1|ram~313_combout\;
\RAM1|ALT_INV_ram~309_combout\ <= NOT \RAM1|ram~309_combout\;
\RAM1|ALT_INV_ram~305_combout\ <= NOT \RAM1|ram~305_combout\;
\CPU1|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU1|ULA1|Add0~9_sumout\;
\RAM1|ALT_INV_ram~300_combout\ <= NOT \RAM1|ram~300_combout\;
\RAM1|ALT_INV_ram~296_combout\ <= NOT \RAM1|ram~296_combout\;
\RAM1|ALT_INV_ram~292_combout\ <= NOT \RAM1|ram~292_combout\;
\RAM1|ALT_INV_ram~288_combout\ <= NOT \RAM1|ram~288_combout\;
\CPU1|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU1|ULA1|Add0~5_sumout\;
\RAM1|ALT_INV_ram~283_combout\ <= NOT \RAM1|ram~283_combout\;
\RAM1|ALT_INV_ram~279_combout\ <= NOT \RAM1|ram~279_combout\;
\RAM1|ALT_INV_ram~275_combout\ <= NOT \RAM1|ram~275_combout\;
\RAM1|ALT_INV_ram~271_combout\ <= NOT \RAM1|ram~271_combout\;
\CPU1|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU1|ULA1|Add0~1_sumout\;
\CPU1|BancREG|ALT_INV_registrador~18_q\ <= NOT \CPU1|BancREG|registrador~18_q\;
\CPU1|BancREG|ALT_INV_registrador~26_q\ <= NOT \CPU1|BancREG|registrador~26_q\;
\CPU1|BancREG|ALT_INV_registrador~17_q\ <= NOT \CPU1|BancREG|registrador~17_q\;
\CPU1|BancREG|ALT_INV_registrador~25_q\ <= NOT \CPU1|BancREG|registrador~25_q\;
\CPU1|BancREG|ALT_INV_registrador~16_q\ <= NOT \CPU1|BancREG|registrador~16_q\;
\CPU1|BancREG|ALT_INV_registrador~24_q\ <= NOT \CPU1|BancREG|registrador~24_q\;
\CPU1|BancREG|ALT_INV_registrador~15_q\ <= NOT \CPU1|BancREG|registrador~15_q\;
\CPU1|BancREG|ALT_INV_registrador~23_q\ <= NOT \CPU1|BancREG|registrador~23_q\;
\CPU1|BancREG|ALT_INV_registrador~14_q\ <= NOT \CPU1|BancREG|registrador~14_q\;
\CPU1|BancREG|ALT_INV_registrador~22_q\ <= NOT \CPU1|BancREG|registrador~22_q\;
\CPU1|BancREG|ALT_INV_registrador~13_q\ <= NOT \CPU1|BancREG|registrador~13_q\;
\CPU1|BancREG|ALT_INV_registrador~21_q\ <= NOT \CPU1|BancREG|registrador~21_q\;
\CPU1|BancREG|ALT_INV_registrador~12_q\ <= NOT \CPU1|BancREG|registrador~12_q\;
\CPU1|BancREG|ALT_INV_registrador~20_q\ <= NOT \CPU1|BancREG|registrador~20_q\;
\CPU1|BancREG|ALT_INV_registrador~11_q\ <= NOT \CPU1|BancREG|registrador~11_q\;
\CPU1|BancREG|ALT_INV_registrador~19_q\ <= NOT \CPU1|BancREG|registrador~19_q\;
\CPU1|PC|ALT_INV_DOUT\(8) <= NOT \CPU1|PC|DOUT\(8);
\CPU1|PC|ALT_INV_DOUT\(7) <= NOT \CPU1|PC|DOUT\(7);
\CPU1|PC|ALT_INV_DOUT\(6) <= NOT \CPU1|PC|DOUT\(6);
\CPU1|PC|ALT_INV_DOUT\(5) <= NOT \CPU1|PC|DOUT\(5);
\CPU1|PC|ALT_INV_DOUT\(4) <= NOT \CPU1|PC|DOUT\(4);
\CPU1|PC|ALT_INV_DOUT\(3) <= NOT \CPU1|PC|DOUT\(3);
\CPU1|PC|ALT_INV_DOUT\(2) <= NOT \CPU1|PC|DOUT\(2);
\CPU1|PC|ALT_INV_DOUT\(1) <= NOT \CPU1|PC|DOUT\(1);
\CPU1|PC|ALT_INV_DOUT\(0) <= NOT \CPU1|PC|DOUT\(0);

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
	i => \CPU1|BancREG|registrador~27_combout\,
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
	i => \CPU1|BancREG|registrador~28_combout\,
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
	i => \CPU1|BancREG|registrador~29_combout\,
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
	i => \CPU1|BancREG|registrador~30_combout\,
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
	i => \CPU1|BancREG|registrador~31_combout\,
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
	i => \CPU1|BancREG|registrador~32_combout\,
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
	i => \CPU1|BancREG|registrador~33_combout\,
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
	i => \CPU1|BancREG|registrador~34_combout\,
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

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( !\CPU1|PC|DOUT\(4) & ( \ROM1|memROM~1_combout\ & ( (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(1) & (\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \CPU1|PC|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~13_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \CPU1|PC|DOUT\(4) & ( (!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(3))) ) ) # ( !\CPU1|PC|DOUT\(4) & ( (!\CPU1|PC|DOUT\(2) & (((!\CPU1|PC|DOUT\(1) & !\CPU1|PC|DOUT\(3))))) # (\CPU1|PC|DOUT\(2) & 
-- (\CPU1|PC|DOUT\(0) & ((\CPU1|PC|DOUT\(3)) # (\CPU1|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100000101110000000000000011000001000001011100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \CPU1|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\ROM1|memROM~1_combout\) # (!\ROM1|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (\CPU1|PC|DOUT\(1) & (\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(0)) # (!\CPU1|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000000011001000000000001100100000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = ( \CPU1|PC|DOUT\(4) & ( (!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(3))) ) ) # ( !\CPU1|PC|DOUT\(4) & ( (\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(1) & (\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110000000000000000000000000000011100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \CPU1|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~18_combout\);

\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~18_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \ROM1|memROM~19_combout\);

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

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(6) & !\CPU1|PC|DOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT\(6),
	datac => \CPU1|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(1) & ((!\CPU1|PC|DOUT\(3)) # (\CPU1|PC|DOUT\(2)))) # (\CPU1|PC|DOUT\(1) & ((\CPU1|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010101010001000001010101000100000101010100010000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(8) & (\ROM1|memROM~6_combout\ & \ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \CPU1|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~8_combout\);

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(2) & ((\CPU1|PC|DOUT\(3)) # (\CPU1|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001010000000100000101000000010000010100000001000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \CPU1|PC|DOUT\(4) & ( (!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(3))) ) ) # ( !\CPU1|PC|DOUT\(4) & ( (!\CPU1|PC|DOUT\(1) & (((!\CPU1|PC|DOUT\(3))) # (\CPU1|PC|DOUT\(0)))) # (\CPU1|PC|DOUT\(1) & 
-- ((!\CPU1|PC|DOUT\(2) & ((\CPU1|PC|DOUT\(3)))) # (\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110101110101110000000000000011001101011101011100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \CPU1|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~11_combout\);

\CPU1|DEC1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|Equal2~0_combout\ = ( \ROM1|memROM~11_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~9_combout\) # (\CPU1|PC|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000001000000000000000000000011000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU1|DEC1|Equal2~0_combout\);

\CPU1|DEC1|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|Equal2~1_combout\ = (!\ROM1|memROM~8_combout\ & \CPU1|DEC1|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	combout => \CPU1|DEC1|Equal2~1_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \CPU1|PC|DOUT\(4) & ( (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(3)))) ) ) # ( !\CPU1|PC|DOUT\(4) & ( (!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(1) $ (\CPU1|PC|DOUT\(3))))) 
-- # (\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) $ (\CPU1|PC|DOUT\(3)))) # (\CPU1|PC|DOUT\(1) & ((\CPU1|PC|DOUT\(3)) # (\CPU1|PC|DOUT\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010111010000000000000001001001000101110100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \CPU1|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (!\CPU1|PC|DOUT\(1) & ((!\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(3)))) # (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001000000100010000100000010001000010000001000100001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~14_combout\);

\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = (!\CPU1|PC|DOUT\(4) & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~534_combout\);

\CPU1|DEC1|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|saida[0]~1_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~11_combout\ & ( (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(8) & \ROM1|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \CPU1|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU1|DEC1|saida[0]~1_combout\);

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (!\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(1) & \CPU1|PC|DOUT\(3))) # (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(1) & !\CPU1|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000100000010000000010000001000000001000000100000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~16_combout\);

\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = (\ROM1|memROM~1_combout\ & (((!\CPU1|PC|DOUT\(4) & \ROM1|memROM~16_combout\)) # (\ROM1|memROM~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000110011000000100011001100000010001100110000001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \RAM1|ram~535_combout\);

\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( !\RAM1|ram~535_combout\ & ( (\CPU1|DEC1|Equal2~0_combout\ & (!\ROM1|memROM~13_combout\ & (\RAM1|ram~534_combout\ & \CPU1|DEC1|saida[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \RAM1|ALT_INV_ram~534_combout\,
	datad => \CPU1|DEC1|ALT_INV_saida[0]~1_combout\,
	datae => \RAM1|ALT_INV_ram~535_combout\,
	combout => \RAM1|ram~536_combout\);

\RAM1|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~31_combout\,
	ena => \RAM1|ram~536_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~59_q\);

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ((!\ROM1|memROM~1_combout\) # (!\ROM1|memROM~14_combout\)) # (\CPU1|PC|DOUT\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111111011111110111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \ROM1|memROM~15_combout\);

\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( \CPU1|DEC1|saida[0]~1_combout\ & ( !\RAM1|ram~535_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~15_combout\ & (\CPU1|DEC1|Equal2~0_combout\ & !\ROM1|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \CPU1|DEC1|ALT_INV_saida[0]~1_combout\,
	dataf => \RAM1|ALT_INV_ram~535_combout\,
	combout => \RAM1|ram~537_combout\);

\RAM1|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~31_combout\,
	ena => \RAM1|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~51_q\);

\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~14_combout\) # (\CPU1|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000001000000110000000100000011000000010000001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~539_combout\);

\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( \RAM1|ram~539_combout\ & ( (\CPU1|DEC1|Equal2~0_combout\ & (!\ROM1|memROM~13_combout\ & (\CPU1|DEC1|saida[0]~1_combout\ & !\RAM1|ram~535_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \CPU1|DEC1|ALT_INV_saida[0]~1_combout\,
	datad => \RAM1|ALT_INV_ram~535_combout\,
	datae => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~540_combout\);

\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~31_combout\,
	ena => \RAM1|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = (\ROM1|memROM~1_combout\ & (((!\CPU1|PC|DOUT\(4) & \ROM1|memROM~14_combout\)) # (\ROM1|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100100011000000110010001100000011001000110000001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~541_combout\);

\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( !\RAM1|ram~541_combout\ & ( (\CPU1|DEC1|Equal2~0_combout\ & (!\ROM1|memROM~13_combout\ & (\CPU1|DEC1|saida[0]~1_combout\ & !\RAM1|ram~535_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \CPU1|DEC1|ALT_INV_saida[0]~1_combout\,
	datad => \RAM1|ALT_INV_ram~535_combout\,
	datae => \RAM1|ALT_INV_ram~541_combout\,
	combout => \RAM1|ram~542_combout\);

\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~31_combout\,
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

\RAM1|ram~470\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~470_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~3_combout\ & ((\RAM1|ram~19_q\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~27_q\)) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \ROM1|memROM~3_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~27_q\,
	datac => \RAM1|ALT_INV_ram~19_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~470_combout\);

\RAM1|ram~338\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~338_combout\ = ( \ROM1|memROM~13_combout\ & ( \RAM1|ram~470_combout\ & ( \ROM1|memROM~15_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~470_combout\ & ( (\ROM1|memROM~15_combout\) # (\RAM1|ram~59_q\) ) ) ) # ( 
-- !\ROM1|memROM~13_combout\ & ( !\RAM1|ram~470_combout\ & ( (\RAM1|ram~51_q\ & !\ROM1|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000001010101111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~59_q\,
	datac => \RAM1|ALT_INV_ram~51_q\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~470_combout\,
	combout => \RAM1|ram~338_combout\);

\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = (!\CPU1|PC|DOUT\(4) & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~16_combout\ & !\ROM1|memROM~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \RAM1|ram~538_combout\);

\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( !\RAM1|ram~541_combout\ & ( (\CPU1|DEC1|Equal2~0_combout\ & (!\ROM1|memROM~13_combout\ & (\CPU1|DEC1|saida[0]~1_combout\ & \RAM1|ram~538_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \CPU1|DEC1|ALT_INV_saida[0]~1_combout\,
	datad => \RAM1|ALT_INV_ram~538_combout\,
	datae => \RAM1|ALT_INV_ram~541_combout\,
	combout => \RAM1|ram~543_combout\);

\RAM1|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~31_combout\,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~83_q\);

\RAM1|ram~474\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~474_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( (\RAM1|ram~83_q\ & !\ROM1|memROM~3_combout\) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) ) # ( 
-- !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~83_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~474_combout\);

\RAM1|ram~342\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~342_combout\ = ( \RAM1|ram~474_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~474_combout\,
	combout => \RAM1|ram~342_combout\);

\RAM1|ram~478\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~478_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~478_combout\);

\RAM1|ram~346\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~346_combout\ = ( \RAM1|ram~478_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~478_combout\,
	combout => \RAM1|ram~346_combout\);

\RAM1|ram~482\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~482_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~482_combout\);

\RAM1|ram~350\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~350_combout\ = ( \RAM1|ram~482_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~482_combout\,
	combout => \RAM1|ram~350_combout\);

\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (!\CPU1|PC|DOUT\(4) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \ROM1|memROM~17_combout\);

\RAM1|ram~354\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~354_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~350_combout\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~346_combout\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( 
-- !\ROM1|memROM~19_combout\ & ( \RAM1|ram~342_combout\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~338_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~338_combout\,
	datab => \RAM1|ALT_INV_ram~342_combout\,
	datac => \RAM1|ALT_INV_ram~346_combout\,
	datad => \RAM1|ALT_INV_ram~350_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~354_combout\);

\CPU1|MUX1|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[4]~3_combout\ = (!\CPU1|DEC1|Equal2~1_combout\ & ((\RAM1|ram~354_combout\))) # (\CPU1|DEC1|Equal2~1_combout\ & (\ROM1|memROM~19_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \CPU1|DEC1|ALT_INV_Equal2~1_combout\,
	datac => \RAM1|ALT_INV_ram~354_combout\,
	combout => \CPU1|MUX1|saida_MUX[4]~3_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (!\CPU1|PC|DOUT\(4) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~10_combout\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~12_combout\);

\CPU1|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|saida[0]~0_combout\ = (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~10_combout\ & ((\ROM1|memROM~12_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000000100000101000000010000010100000001000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU1|ULA1|saida[0]~0_combout\);

\CPU1|DEC1|saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|saida[3]~0_combout\ = (\ROM1|memROM~1_combout\ & (((!\CPU1|PC|DOUT\(4) & \ROM1|memROM~9_combout\)) # (\ROM1|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000110011000000100011001100000010001100110000001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU1|DEC1|saida[3]~0_combout\);

\CPU1|DEC1|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|Equal6~0_combout\ = (\ROM1|memROM~6_combout\ & (((!\CPU1|PC|DOUT\(4) & \ROM1|memROM~7_combout\)) # (\ROM1|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100100011000000110010001100000011001000110000001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DEC1|Equal6~0_combout\);

\CPU1|BancREG|registrador~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|BancREG|registrador~35_combout\ = (!\CPU1|DEC1|saida[3]~0_combout\ & (!\CPU1|PC|DOUT\(8) & ((\CPU1|DEC1|Equal6~0_combout\)))) # (\CPU1|DEC1|saida[3]~0_combout\ & (((\CPU1|DEC1|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101100000011100010110000001110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(8),
	datab => \CPU1|DEC1|ALT_INV_saida[3]~0_combout\,
	datac => \CPU1|DEC1|ALT_INV_Equal2~1_combout\,
	datad => \CPU1|DEC1|ALT_INV_Equal6~0_combout\,
	combout => \CPU1|BancREG|registrador~35_combout\);

\CPU1|BancREG|registrador~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|BancREG|registrador~36_combout\ = (!\CPU1|PC|DOUT\(4) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \CPU1|BancREG|registrador~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~35_combout\,
	combout => \CPU1|BancREG|registrador~36_combout\);

\CPU1|BancREG|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~17_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[4]~3_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|BancREG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~23_q\);

\CPU1|BancREG|registrador~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|BancREG|registrador~37_combout\ = (\CPU1|BancREG|registrador~35_combout\ & (((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\)) # (\CPU1|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111101000000001111110100000000111111010000000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~35_combout\,
	combout => \CPU1|BancREG|registrador~37_combout\);

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
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|BancREG|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~15_q\);

\CPU1|BancREG|registrador~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|BancREG|registrador~31_combout\ = ( \CPU1|BancREG|registrador~15_q\ & ( ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~1_combout\) # (\CPU1|BancREG|registrador~23_q\))) # (\CPU1|PC|DOUT\(4)) ) ) # ( !\CPU1|BancREG|registrador~15_q\ & ( 
-- (!\CPU1|PC|DOUT\(4) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \CPU1|BancREG|registrador~23_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~23_q\,
	datae => \CPU1|BancREG|ALT_INV_registrador~15_q\,
	combout => \CPU1|BancREG|registrador~31_combout\);

\RAM1|ram~462\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~462_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~462_combout\);

\RAM1|ram~330\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~330_combout\ = ( \RAM1|ram~462_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~462_combout\,
	combout => \RAM1|ram~330_combout\);

\RAM1|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~30_combout\,
	ena => \RAM1|ram~536_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~58_q\);

\RAM1|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~30_combout\,
	ena => \RAM1|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~50_q\);

\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~30_combout\,
	ena => \RAM1|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~30_combout\,
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~454\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~454_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~3_combout\ & ((\RAM1|ram~18_q\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~26_q\)) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \ROM1|memROM~3_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~26_q\,
	datac => \RAM1|ALT_INV_ram~18_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~454_combout\);

\RAM1|ram~322\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~322_combout\ = ( \ROM1|memROM~13_combout\ & ( \RAM1|ram~454_combout\ & ( \ROM1|memROM~15_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~454_combout\ & ( (\ROM1|memROM~15_combout\) # (\RAM1|ram~58_q\) ) ) ) # ( 
-- !\ROM1|memROM~13_combout\ & ( !\RAM1|ram~454_combout\ & ( (\RAM1|ram~50_q\ & !\ROM1|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000001010101111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~58_q\,
	datac => \RAM1|ALT_INV_ram~50_q\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~454_combout\,
	combout => \RAM1|ram~322_combout\);

\RAM1|ram~466\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~466_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~466_combout\);

\RAM1|ram~334\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~334_combout\ = ( \RAM1|ram~466_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~466_combout\,
	combout => \RAM1|ram~334_combout\);

\RAM1|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~30_combout\,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~82_q\);

\RAM1|ram~458\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~458_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( (\RAM1|ram~82_q\ & !\ROM1|memROM~3_combout\) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) ) # ( 
-- !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~82_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~458_combout\);

\RAM1|ram~326\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~326_combout\ = ( \RAM1|ram~458_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~458_combout\,
	combout => \RAM1|ram~326_combout\);

\CPU1|MUX1|saida_MUX[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[3]~7_combout\ = ( !\ROM1|memROM~19_combout\ & ( ((!\CPU1|DEC1|Equal2~1_combout\ & ((!\ROM1|memROM~17_combout\ & (\RAM1|ram~322_combout\)) # (\ROM1|memROM~17_combout\ & ((\RAM1|ram~326_combout\))))) # (\CPU1|DEC1|Equal2~1_combout\ & 
-- (((\ROM1|memROM~17_combout\))))) ) ) # ( \ROM1|memROM~19_combout\ & ( ((!\CPU1|DEC1|Equal2~1_combout\ & ((!\ROM1|memROM~17_combout\ & (\RAM1|ram~330_combout\)) # (\ROM1|memROM~17_combout\ & ((\RAM1|ram~334_combout\))))) # (\CPU1|DEC1|Equal2~1_combout\ & 
-- (((\ROM1|memROM~17_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100000000010101010000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~330_combout\,
	datab => \RAM1|ALT_INV_ram~322_combout\,
	datac => \RAM1|ALT_INV_ram~334_combout\,
	datad => \CPU1|DEC1|ALT_INV_Equal2~1_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	datag => \RAM1|ALT_INV_ram~326_combout\,
	combout => \CPU1|MUX1|saida_MUX[3]~7_combout\);

\RAM1|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~29_combout\,
	ena => \RAM1|ram~536_combout\,
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
	d => \CPU1|BancREG|registrador~29_combout\,
	ena => \RAM1|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~49_q\);

\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~29_combout\,
	ena => \RAM1|ram~540_combout\,
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
	d => \CPU1|BancREG|registrador~29_combout\,
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~438\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~438_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~3_combout\ & ((\RAM1|ram~17_q\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~25_q\)) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \ROM1|memROM~3_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~25_q\,
	datac => \RAM1|ALT_INV_ram~17_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~438_combout\);

\RAM1|ram~305\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~305_combout\ = ( \ROM1|memROM~13_combout\ & ( \RAM1|ram~438_combout\ & ( \ROM1|memROM~15_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~438_combout\ & ( (\ROM1|memROM~15_combout\) # (\RAM1|ram~57_q\) ) ) ) # ( 
-- !\ROM1|memROM~13_combout\ & ( !\RAM1|ram~438_combout\ & ( (\RAM1|ram~49_q\ & !\ROM1|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000001010101111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~57_q\,
	datac => \RAM1|ALT_INV_ram~49_q\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~438_combout\,
	combout => \RAM1|ram~305_combout\);

\RAM1|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~29_combout\,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~81_q\);

\RAM1|ram~442\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~442_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( (\RAM1|ram~81_q\ & !\ROM1|memROM~3_combout\) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) ) # ( 
-- !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~81_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~442_combout\);

\RAM1|ram~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~309_combout\ = ( \RAM1|ram~442_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~442_combout\,
	combout => \RAM1|ram~309_combout\);

\RAM1|ram~446\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~446_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~446_combout\);

\RAM1|ram~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~313_combout\ = ( \RAM1|ram~446_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~446_combout\,
	combout => \RAM1|ram~313_combout\);

\RAM1|ram~450\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~450_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~450_combout\);

\RAM1|ram~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~317_combout\ = ( \RAM1|ram~450_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~450_combout\,
	combout => \RAM1|ram~317_combout\);

\RAM1|ram~321\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~321_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~317_combout\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~313_combout\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( 
-- !\ROM1|memROM~19_combout\ & ( \RAM1|ram~309_combout\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~305_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~305_combout\,
	datab => \RAM1|ALT_INV_ram~309_combout\,
	datac => \RAM1|ALT_INV_ram~313_combout\,
	datad => \RAM1|ALT_INV_ram~317_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~321_combout\);

\CPU1|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[2]~2_combout\ = (!\CPU1|DEC1|Equal2~1_combout\ & ((\RAM1|ram~321_combout\))) # (\CPU1|DEC1|Equal2~1_combout\ & (!\ROM1|memROM~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000101110001011100010111000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \CPU1|DEC1|ALT_INV_Equal2~1_combout\,
	datac => \RAM1|ALT_INV_ram~321_combout\,
	combout => \CPU1|MUX1|saida_MUX[2]~2_combout\);

\RAM1|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~28_combout\,
	ena => \RAM1|ram~536_combout\,
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
	d => \CPU1|BancREG|registrador~28_combout\,
	ena => \RAM1|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~48_q\);

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~28_combout\,
	ena => \RAM1|ram~540_combout\,
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
	d => \CPU1|BancREG|registrador~28_combout\,
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

\RAM1|ram~422\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~422_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~3_combout\ & ((\RAM1|ram~16_q\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~24_q\)) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \ROM1|memROM~3_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~24_q\,
	datac => \RAM1|ALT_INV_ram~16_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~422_combout\);

\RAM1|ram~288\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~288_combout\ = ( \ROM1|memROM~13_combout\ & ( \RAM1|ram~422_combout\ & ( \ROM1|memROM~15_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~422_combout\ & ( (\ROM1|memROM~15_combout\) # (\RAM1|ram~56_q\) ) ) ) # ( 
-- !\ROM1|memROM~13_combout\ & ( !\RAM1|ram~422_combout\ & ( (\RAM1|ram~48_q\ & !\ROM1|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000001010101111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~56_q\,
	datac => \RAM1|ALT_INV_ram~48_q\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~422_combout\,
	combout => \RAM1|ram~288_combout\);

\RAM1|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~28_combout\,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~80_q\);

\RAM1|ram~426\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~426_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( (\RAM1|ram~80_q\ & !\ROM1|memROM~3_combout\) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) ) # ( 
-- !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~80_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~426_combout\);

\RAM1|ram~292\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~292_combout\ = ( \RAM1|ram~426_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~426_combout\,
	combout => \RAM1|ram~292_combout\);

\RAM1|ram~430\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~430_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~430_combout\);

\RAM1|ram~296\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~296_combout\ = ( \RAM1|ram~430_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~430_combout\,
	combout => \RAM1|ram~296_combout\);

\RAM1|ram~434\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~434_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~434_combout\);

\RAM1|ram~300\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~300_combout\ = ( \RAM1|ram~434_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~434_combout\,
	combout => \RAM1|ram~300_combout\);

\RAM1|ram~304\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~304_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~300_combout\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~296_combout\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( 
-- !\ROM1|memROM~19_combout\ & ( \RAM1|ram~292_combout\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~288_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~288_combout\,
	datab => \RAM1|ALT_INV_ram~292_combout\,
	datac => \RAM1|ALT_INV_ram~296_combout\,
	datad => \RAM1|ALT_INV_ram~300_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~304_combout\);

\CPU1|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[1]~1_combout\ = (!\CPU1|DEC1|Equal2~1_combout\ & \RAM1|ram~304_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_Equal2~1_combout\,
	datab => \RAM1|ALT_INV_ram~304_combout\,
	combout => \CPU1|MUX1|saida_MUX[1]~1_combout\);

\RAM1|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~27_combout\,
	ena => \RAM1|ram~536_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~55_q\);

\RAM1|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~27_combout\,
	ena => \RAM1|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~47_q\);

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~27_combout\,
	ena => \RAM1|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~27_combout\,
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

\RAM1|ram~406\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~406_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~3_combout\ & ((\RAM1|ram~15_q\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~23_q\)) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \ROM1|memROM~3_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~23_q\,
	datac => \RAM1|ALT_INV_ram~15_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~406_combout\);

\RAM1|ram~271\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~271_combout\ = ( \ROM1|memROM~13_combout\ & ( \RAM1|ram~406_combout\ & ( \ROM1|memROM~15_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~406_combout\ & ( (\ROM1|memROM~15_combout\) # (\RAM1|ram~55_q\) ) ) ) # ( 
-- !\ROM1|memROM~13_combout\ & ( !\RAM1|ram~406_combout\ & ( (\RAM1|ram~47_q\ & !\ROM1|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000001010101111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~55_q\,
	datac => \RAM1|ALT_INV_ram~47_q\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~406_combout\,
	combout => \RAM1|ram~271_combout\);

\RAM1|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~27_combout\,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~79_q\);

\RAM1|ram~410\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~410_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( (\RAM1|ram~79_q\ & !\ROM1|memROM~3_combout\) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) ) # ( 
-- !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~79_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~410_combout\);

\RAM1|ram~275\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~275_combout\ = ( \RAM1|ram~410_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~410_combout\,
	combout => \RAM1|ram~275_combout\);

\RAM1|ram~414\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~414_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~414_combout\);

\RAM1|ram~279\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~279_combout\ = ( \RAM1|ram~414_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~414_combout\,
	combout => \RAM1|ram~279_combout\);

\RAM1|ram~418\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~418_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~418_combout\);

\RAM1|ram~283\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~283_combout\ = ( \RAM1|ram~418_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~418_combout\,
	combout => \RAM1|ram~283_combout\);

\RAM1|ram~287\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~287_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~283_combout\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~279_combout\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( 
-- !\ROM1|memROM~19_combout\ & ( \RAM1|ram~275_combout\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~271_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~271_combout\,
	datab => \RAM1|ALT_INV_ram~275_combout\,
	datac => \RAM1|ALT_INV_ram~279_combout\,
	datad => \RAM1|ALT_INV_ram~283_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~287_combout\);

\CPU1|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~0_combout\ = (!\CPU1|DEC1|Equal2~1_combout\ & ((\RAM1|ram~287_combout\))) # (\CPU1|DEC1|Equal2~1_combout\ & (\ROM1|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \CPU1|DEC1|ALT_INV_Equal2~1_combout\,
	datac => \RAM1|ALT_INV_ram~287_combout\,
	combout => \CPU1|MUX1|saida_MUX[0]~0_combout\);

\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = (!\CPU1|PC|DOUT\(4) & (\ROM1|memROM~6_combout\ & \ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~20_combout\);

\CPU1|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~34_cout\ = CARRY(( (((\ROM1|memROM~20_combout\ & !\CPU1|PC|DOUT\(8))) # (\ROM1|memROM~5_combout\)) # (\CPU1|DEC1|saida[3]~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_saida[3]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT\(8),
	cin => GND,
	cout => \CPU1|ULA1|Add0~34_cout\);

\CPU1|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~1_sumout\ = SUM(( \CPU1|BancREG|registrador~27_combout\ ) + ( !\CPU1|MUX1|saida_MUX[0]~0_combout\ $ (((!\CPU1|DEC1|saida[3]~0_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~8_combout\)))) ) + ( \CPU1|ULA1|Add0~34_cout\ ))
-- \CPU1|ULA1|Add0~2\ = CARRY(( \CPU1|BancREG|registrador~27_combout\ ) + ( !\CPU1|MUX1|saida_MUX[0]~0_combout\ $ (((!\CPU1|DEC1|saida[3]~0_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~8_combout\)))) ) + ( \CPU1|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_saida[3]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~27_combout\,
	dataf => \CPU1|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	cin => \CPU1|ULA1|Add0~34_cout\,
	sumout => \CPU1|ULA1|Add0~1_sumout\,
	cout => \CPU1|ULA1|Add0~2\);

\CPU1|BancREG|registrador~19\ : dffeas
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
	ena => \CPU1|BancREG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~19_q\);

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
	ena => \CPU1|BancREG|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~11_q\);

\CPU1|BancREG|registrador~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|BancREG|registrador~27_combout\ = ( \CPU1|BancREG|registrador~11_q\ & ( ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~1_combout\) # (\CPU1|BancREG|registrador~19_q\))) # (\CPU1|PC|DOUT\(4)) ) ) # ( !\CPU1|BancREG|registrador~11_q\ & ( 
-- (!\CPU1|PC|DOUT\(4) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \CPU1|BancREG|registrador~19_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~19_q\,
	datae => \CPU1|BancREG|ALT_INV_registrador~11_q\,
	combout => \CPU1|BancREG|registrador~27_combout\);

\CPU1|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~5_sumout\ = SUM(( \CPU1|BancREG|registrador~28_combout\ ) + ( !\CPU1|MUX1|saida_MUX[1]~1_combout\ ) + ( \CPU1|ULA1|Add0~2\ ))
-- \CPU1|ULA1|Add0~6\ = CARRY(( \CPU1|BancREG|registrador~28_combout\ ) + ( !\CPU1|MUX1|saida_MUX[1]~1_combout\ ) + ( \CPU1|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|BancREG|ALT_INV_registrador~28_combout\,
	dataf => \CPU1|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	cin => \CPU1|ULA1|Add0~2\,
	sumout => \CPU1|ULA1|Add0~5_sumout\,
	cout => \CPU1|ULA1|Add0~6\);

\CPU1|BancREG|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~5_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[1]~1_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|BancREG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~20_q\);

\CPU1|BancREG|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~5_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[1]~1_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|BancREG|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~12_q\);

\CPU1|BancREG|registrador~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|BancREG|registrador~28_combout\ = ( \CPU1|BancREG|registrador~12_q\ & ( ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~1_combout\) # (\CPU1|BancREG|registrador~20_q\))) # (\CPU1|PC|DOUT\(4)) ) ) # ( !\CPU1|BancREG|registrador~12_q\ & ( 
-- (!\CPU1|PC|DOUT\(4) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \CPU1|BancREG|registrador~20_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~20_q\,
	datae => \CPU1|BancREG|ALT_INV_registrador~12_q\,
	combout => \CPU1|BancREG|registrador~28_combout\);

\CPU1|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~9_sumout\ = SUM(( \CPU1|BancREG|registrador~29_combout\ ) + ( !\CPU1|MUX1|saida_MUX[2]~2_combout\ ) + ( \CPU1|ULA1|Add0~6\ ))
-- \CPU1|ULA1|Add0~10\ = CARRY(( \CPU1|BancREG|registrador~29_combout\ ) + ( !\CPU1|MUX1|saida_MUX[2]~2_combout\ ) + ( \CPU1|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|BancREG|ALT_INV_registrador~29_combout\,
	dataf => \CPU1|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	cin => \CPU1|ULA1|Add0~6\,
	sumout => \CPU1|ULA1|Add0~9_sumout\,
	cout => \CPU1|ULA1|Add0~10\);

\CPU1|BancREG|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~9_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[2]~2_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|BancREG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~21_q\);

\CPU1|BancREG|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~9_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[2]~2_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|BancREG|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~13_q\);

\CPU1|BancREG|registrador~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|BancREG|registrador~29_combout\ = ( \CPU1|BancREG|registrador~13_q\ & ( ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~1_combout\) # (\CPU1|BancREG|registrador~21_q\))) # (\CPU1|PC|DOUT\(4)) ) ) # ( !\CPU1|BancREG|registrador~13_q\ & ( 
-- (!\CPU1|PC|DOUT\(4) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \CPU1|BancREG|registrador~21_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~21_q\,
	datae => \CPU1|BancREG|ALT_INV_registrador~13_q\,
	combout => \CPU1|BancREG|registrador~29_combout\);

\CPU1|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~13_sumout\ = SUM(( \CPU1|BancREG|registrador~30_combout\ ) + ( !\CPU1|MUX1|saida_MUX[3]~7_combout\ ) + ( \CPU1|ULA1|Add0~10\ ))
-- \CPU1|ULA1|Add0~14\ = CARRY(( \CPU1|BancREG|registrador~30_combout\ ) + ( !\CPU1|MUX1|saida_MUX[3]~7_combout\ ) + ( \CPU1|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|BancREG|ALT_INV_registrador~30_combout\,
	dataf => \CPU1|MUX1|ALT_INV_saida_MUX[3]~7_combout\,
	cin => \CPU1|ULA1|Add0~10\,
	sumout => \CPU1|ULA1|Add0~13_sumout\,
	cout => \CPU1|ULA1|Add0~14\);

\CPU1|BancREG|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~13_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[3]~7_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|BancREG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~22_q\);

\CPU1|BancREG|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~13_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[3]~7_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|BancREG|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~14_q\);

\CPU1|BancREG|registrador~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|BancREG|registrador~30_combout\ = ( \CPU1|BancREG|registrador~14_q\ & ( ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~1_combout\) # (\CPU1|BancREG|registrador~22_q\))) # (\CPU1|PC|DOUT\(4)) ) ) # ( !\CPU1|BancREG|registrador~14_q\ & ( 
-- (!\CPU1|PC|DOUT\(4) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \CPU1|BancREG|registrador~22_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~22_q\,
	datae => \CPU1|BancREG|ALT_INV_registrador~14_q\,
	combout => \CPU1|BancREG|registrador~30_combout\);

\CPU1|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~17_sumout\ = SUM(( \CPU1|BancREG|registrador~31_combout\ ) + ( !\CPU1|MUX1|saida_MUX[4]~3_combout\ ) + ( \CPU1|ULA1|Add0~14\ ))
-- \CPU1|ULA1|Add0~18\ = CARRY(( \CPU1|BancREG|registrador~31_combout\ ) + ( !\CPU1|MUX1|saida_MUX[4]~3_combout\ ) + ( \CPU1|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|BancREG|ALT_INV_registrador~31_combout\,
	dataf => \CPU1|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	cin => \CPU1|ULA1|Add0~14\,
	sumout => \CPU1|ULA1|Add0~17_sumout\,
	cout => \CPU1|ULA1|Add0~18\);

\CPU1|MUX1|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[5]~4_combout\ = (!\CPU1|DEC1|Equal2~1_combout\ & \RAM1|ram~371_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_Equal2~1_combout\,
	datab => \RAM1|ALT_INV_ram~371_combout\,
	combout => \CPU1|MUX1|saida_MUX[5]~4_combout\);

\CPU1|BancREG|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~21_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[5]~4_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|BancREG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~24_q\);

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
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|BancREG|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~16_q\);

\CPU1|BancREG|registrador~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|BancREG|registrador~32_combout\ = ( \CPU1|BancREG|registrador~16_q\ & ( ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~1_combout\) # (\CPU1|BancREG|registrador~24_q\))) # (\CPU1|PC|DOUT\(4)) ) ) # ( !\CPU1|BancREG|registrador~16_q\ & ( 
-- (!\CPU1|PC|DOUT\(4) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \CPU1|BancREG|registrador~24_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~24_q\,
	datae => \CPU1|BancREG|ALT_INV_registrador~16_q\,
	combout => \CPU1|BancREG|registrador~32_combout\);

\RAM1|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~32_combout\,
	ena => \RAM1|ram~536_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~60_q\);

\RAM1|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~32_combout\,
	ena => \RAM1|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~52_q\);

\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~32_combout\,
	ena => \RAM1|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~32_combout\,
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

\RAM1|ram~486\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~486_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~3_combout\ & ((\RAM1|ram~20_q\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~28_q\)) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \ROM1|memROM~3_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~28_q\,
	datac => \RAM1|ALT_INV_ram~20_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~486_combout\);

\RAM1|ram~355\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~355_combout\ = ( \ROM1|memROM~13_combout\ & ( \RAM1|ram~486_combout\ & ( \ROM1|memROM~15_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~486_combout\ & ( (\ROM1|memROM~15_combout\) # (\RAM1|ram~60_q\) ) ) ) # ( 
-- !\ROM1|memROM~13_combout\ & ( !\RAM1|ram~486_combout\ & ( (\RAM1|ram~52_q\ & !\ROM1|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000001010101111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~60_q\,
	datac => \RAM1|ALT_INV_ram~52_q\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~486_combout\,
	combout => \RAM1|ram~355_combout\);

\RAM1|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~32_combout\,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~84_q\);

\RAM1|ram~490\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~490_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( (\RAM1|ram~84_q\ & !\ROM1|memROM~3_combout\) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) ) # ( 
-- !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~84_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~490_combout\);

\RAM1|ram~359\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~359_combout\ = ( \RAM1|ram~490_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~490_combout\,
	combout => \RAM1|ram~359_combout\);

\RAM1|ram~494\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~494_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~494_combout\);

\RAM1|ram~363\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~363_combout\ = ( \RAM1|ram~494_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~494_combout\,
	combout => \RAM1|ram~363_combout\);

\RAM1|ram~498\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~498_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~498_combout\);

\RAM1|ram~367\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~367_combout\ = ( \RAM1|ram~498_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~498_combout\,
	combout => \RAM1|ram~367_combout\);

\RAM1|ram~371\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~371_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~367_combout\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~363_combout\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( 
-- !\ROM1|memROM~19_combout\ & ( \RAM1|ram~359_combout\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~355_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~355_combout\,
	datab => \RAM1|ALT_INV_ram~359_combout\,
	datac => \RAM1|ALT_INV_ram~363_combout\,
	datad => \RAM1|ALT_INV_ram~367_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~371_combout\);

\CPU1|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~21_sumout\ = SUM(( \CPU1|BancREG|registrador~32_combout\ ) + ( (!\RAM1|ram~371_combout\) # ((!\ROM1|memROM~8_combout\ & \CPU1|DEC1|Equal2~0_combout\)) ) + ( \CPU1|ULA1|Add0~18\ ))
-- \CPU1|ULA1|Add0~22\ = CARRY(( \CPU1|BancREG|registrador~32_combout\ ) + ( (!\RAM1|ram~371_combout\) # ((!\ROM1|memROM~8_combout\ & \CPU1|DEC1|Equal2~0_combout\)) ) + ( \CPU1|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011010000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datac => \RAM1|ALT_INV_ram~371_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~32_combout\,
	cin => \CPU1|ULA1|Add0~18\,
	sumout => \CPU1|ULA1|Add0~21_sumout\,
	cout => \CPU1|ULA1|Add0~22\);

\CPU1|MUX1|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[6]~5_combout\ = (!\CPU1|DEC1|Equal2~1_combout\ & \RAM1|ram~388_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_Equal2~1_combout\,
	datab => \RAM1|ALT_INV_ram~388_combout\,
	combout => \CPU1|MUX1|saida_MUX[6]~5_combout\);

\CPU1|BancREG|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~25_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[6]~5_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|BancREG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~25_q\);

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
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|BancREG|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~17_q\);

\CPU1|BancREG|registrador~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|BancREG|registrador~33_combout\ = ( \CPU1|BancREG|registrador~17_q\ & ( ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~1_combout\) # (\CPU1|BancREG|registrador~25_q\))) # (\CPU1|PC|DOUT\(4)) ) ) # ( !\CPU1|BancREG|registrador~17_q\ & ( 
-- (!\CPU1|PC|DOUT\(4) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \CPU1|BancREG|registrador~25_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~25_q\,
	datae => \CPU1|BancREG|ALT_INV_registrador~17_q\,
	combout => \CPU1|BancREG|registrador~33_combout\);

\RAM1|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~33_combout\,
	ena => \RAM1|ram~536_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~61_q\);

\RAM1|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~33_combout\,
	ena => \RAM1|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~53_q\);

\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~33_combout\,
	ena => \RAM1|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~33_combout\,
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

\RAM1|ram~502\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~502_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~3_combout\ & ((\RAM1|ram~21_q\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~29_q\)) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \ROM1|memROM~3_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~29_q\,
	datac => \RAM1|ALT_INV_ram~21_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~502_combout\);

\RAM1|ram~372\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~372_combout\ = ( \ROM1|memROM~13_combout\ & ( \RAM1|ram~502_combout\ & ( \ROM1|memROM~15_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~502_combout\ & ( (\ROM1|memROM~15_combout\) # (\RAM1|ram~61_q\) ) ) ) # ( 
-- !\ROM1|memROM~13_combout\ & ( !\RAM1|ram~502_combout\ & ( (\RAM1|ram~53_q\ & !\ROM1|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000001010101111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~61_q\,
	datac => \RAM1|ALT_INV_ram~53_q\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~502_combout\,
	combout => \RAM1|ram~372_combout\);

\RAM1|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~33_combout\,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~85_q\);

\RAM1|ram~506\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~506_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( (\RAM1|ram~85_q\ & !\ROM1|memROM~3_combout\) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) ) # ( 
-- !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~85_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~506_combout\);

\RAM1|ram~376\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~376_combout\ = ( \RAM1|ram~506_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~506_combout\,
	combout => \RAM1|ram~376_combout\);

\RAM1|ram~510\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~510_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~510_combout\);

\RAM1|ram~380\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~380_combout\ = ( \RAM1|ram~510_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~510_combout\,
	combout => \RAM1|ram~380_combout\);

\RAM1|ram~514\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~514_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~514_combout\);

\RAM1|ram~384\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~384_combout\ = ( \RAM1|ram~514_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~514_combout\,
	combout => \RAM1|ram~384_combout\);

\RAM1|ram~388\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~388_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~384_combout\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~380_combout\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( 
-- !\ROM1|memROM~19_combout\ & ( \RAM1|ram~376_combout\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~372_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~372_combout\,
	datab => \RAM1|ALT_INV_ram~376_combout\,
	datac => \RAM1|ALT_INV_ram~380_combout\,
	datad => \RAM1|ALT_INV_ram~384_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~388_combout\);

\CPU1|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~25_sumout\ = SUM(( \CPU1|BancREG|registrador~33_combout\ ) + ( (!\RAM1|ram~388_combout\) # ((!\ROM1|memROM~8_combout\ & \CPU1|DEC1|Equal2~0_combout\)) ) + ( \CPU1|ULA1|Add0~22\ ))
-- \CPU1|ULA1|Add0~26\ = CARRY(( \CPU1|BancREG|registrador~33_combout\ ) + ( (!\RAM1|ram~388_combout\) # ((!\ROM1|memROM~8_combout\ & \CPU1|DEC1|Equal2~0_combout\)) ) + ( \CPU1|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011010000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datac => \RAM1|ALT_INV_ram~388_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~33_combout\,
	cin => \CPU1|ULA1|Add0~22\,
	sumout => \CPU1|ULA1|Add0~25_sumout\,
	cout => \CPU1|ULA1|Add0~26\);

\RAM1|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~34_combout\,
	ena => \RAM1|ram~536_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~62_q\);

\RAM1|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~34_combout\,
	ena => \RAM1|ram~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~54_q\);

\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~34_combout\,
	ena => \RAM1|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~34_combout\,
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

\RAM1|ram~518\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~518_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~3_combout\ & ((\RAM1|ram~22_q\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~30_q\)) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \ROM1|memROM~3_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~30_q\,
	datac => \RAM1|ALT_INV_ram~22_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~518_combout\);

\RAM1|ram~389\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~389_combout\ = ( \ROM1|memROM~13_combout\ & ( \RAM1|ram~518_combout\ & ( \ROM1|memROM~15_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~518_combout\ & ( (\ROM1|memROM~15_combout\) # (\RAM1|ram~62_q\) ) ) ) # ( 
-- !\ROM1|memROM~13_combout\ & ( !\RAM1|ram~518_combout\ & ( (\RAM1|ram~54_q\ & !\ROM1|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000001010101111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~62_q\,
	datac => \RAM1|ALT_INV_ram~54_q\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~518_combout\,
	combout => \RAM1|ram~389_combout\);

\RAM1|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~34_combout\,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~86_q\);

\RAM1|ram~522\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~522_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( (\RAM1|ram~86_q\ & !\ROM1|memROM~3_combout\) ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) ) # ( 
-- !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~86_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~522_combout\);

\RAM1|ram~393\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~393_combout\ = ( \RAM1|ram~522_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~522_combout\,
	combout => \RAM1|ram~393_combout\);

\RAM1|ram~526\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~526_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~526_combout\);

\RAM1|ram~397\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~397_combout\ = ( \RAM1|ram~526_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~526_combout\,
	combout => \RAM1|ram~397_combout\);

\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~530_combout\);

\RAM1|ram~401\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~401_combout\ = ( \RAM1|ram~530_combout\ & ( \ROM1|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM1|ALT_INV_ram~530_combout\,
	combout => \RAM1|ram~401_combout\);

\RAM1|ram~405\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~405_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~401_combout\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~19_combout\ & ( \RAM1|ram~397_combout\ ) ) ) # ( \ROM1|memROM~17_combout\ & ( 
-- !\ROM1|memROM~19_combout\ & ( \RAM1|ram~393_combout\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~389_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~389_combout\,
	datab => \RAM1|ALT_INV_ram~393_combout\,
	datac => \RAM1|ALT_INV_ram~397_combout\,
	datad => \RAM1|ALT_INV_ram~401_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~405_combout\);

\CPU1|MUX1|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[7]~6_combout\ = (!\CPU1|DEC1|Equal2~1_combout\ & \RAM1|ram~405_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_Equal2~1_combout\,
	datab => \RAM1|ALT_INV_ram~405_combout\,
	combout => \CPU1|MUX1|saida_MUX[7]~6_combout\);

\CPU1|BancREG|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~29_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[7]~6_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|BancREG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~26_q\);

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
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|BancREG|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|BancREG|registrador~18_q\);

\CPU1|BancREG|registrador~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|BancREG|registrador~34_combout\ = ( \CPU1|BancREG|registrador~18_q\ & ( ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~1_combout\) # (\CPU1|BancREG|registrador~26_q\))) # (\CPU1|PC|DOUT\(4)) ) ) # ( !\CPU1|BancREG|registrador~18_q\ & ( 
-- (!\CPU1|PC|DOUT\(4) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \CPU1|BancREG|registrador~26_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~26_q\,
	datae => \CPU1|BancREG|ALT_INV_registrador~18_q\,
	combout => \CPU1|BancREG|registrador~34_combout\);

\CPU1|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~29_sumout\ = SUM(( \CPU1|BancREG|registrador~34_combout\ ) + ( (!\RAM1|ram~405_combout\) # ((\CPU1|DEC1|Equal2~0_combout\ & !\ROM1|memROM~8_combout\)) ) + ( \CPU1|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001011101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_Equal2~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~34_combout\,
	dataf => \RAM1|ALT_INV_ram~405_combout\,
	cin => \CPU1|ULA1|Add0~26\,
	sumout => \CPU1|ULA1|Add0~29_sumout\);

\CPU1|FLGZERO|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLGZERO|DOUT~0_combout\ = (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~8_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU1|FLGZERO|DOUT~0_combout\);

\CPU1|FLGZERO|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLGZERO|DOUT~1_combout\ = ( !\CPU1|ULA1|Add0~13_sumout\ & ( \CPU1|FLGZERO|DOUT~0_combout\ & ( (!\CPU1|ULA1|Add0~1_sumout\ & (!\CPU1|ULA1|saida[0]~0_combout\ & (!\CPU1|ULA1|Add0~5_sumout\ & !\CPU1|ULA1|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|ULA1|ALT_INV_Add0~1_sumout\,
	datab => \CPU1|ULA1|ALT_INV_saida[0]~0_combout\,
	datac => \CPU1|ULA1|ALT_INV_Add0~5_sumout\,
	datad => \CPU1|ULA1|ALT_INV_Add0~9_sumout\,
	datae => \CPU1|ULA1|ALT_INV_Add0~13_sumout\,
	dataf => \CPU1|FLGZERO|ALT_INV_DOUT~0_combout\,
	combout => \CPU1|FLGZERO|DOUT~1_combout\);

\CPU1|FLGZERO|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLGZERO|DOUT~2_combout\ = (\CPU1|FLGZERO|DOUT~q\ & !\CPU1|FLGZERO|DOUT~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|FLGZERO|ALT_INV_DOUT~q\,
	datab => \CPU1|FLGZERO|ALT_INV_DOUT~0_combout\,
	combout => \CPU1|FLGZERO|DOUT~2_combout\);

\CPU1|FLGZERO|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLGZERO|DOUT~3_combout\ = (\CPU1|ULA1|saida[0]~0_combout\ & \CPU1|FLGZERO|DOUT~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|ULA1|ALT_INV_saida[0]~0_combout\,
	datab => \CPU1|FLGZERO|ALT_INV_DOUT~0_combout\,
	combout => \CPU1|FLGZERO|DOUT~3_combout\);

\CPU1|FLGZERO|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLGZERO|DOUT~4_combout\ = ( \RAM1|ram~371_combout\ & ( \CPU1|FLGZERO|DOUT~3_combout\ & ( (!\ROM1|memROM~3_combout\ & \CPU1|DEC1|Equal2~1_combout\) ) ) ) # ( !\RAM1|ram~371_combout\ & ( \CPU1|FLGZERO|DOUT~3_combout\ & ( (!\CPU1|DEC1|Equal2~1_combout\ 
-- & (((!\RAM1|ram~287_combout\ & !\RAM1|ram~304_combout\)))) # (\CPU1|DEC1|Equal2~1_combout\ & (!\ROM1|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \CPU1|DEC1|ALT_INV_Equal2~1_combout\,
	datac => \RAM1|ALT_INV_ram~287_combout\,
	datad => \RAM1|ALT_INV_ram~304_combout\,
	datae => \RAM1|ALT_INV_ram~371_combout\,
	dataf => \CPU1|FLGZERO|ALT_INV_DOUT~3_combout\,
	combout => \CPU1|FLGZERO|DOUT~4_combout\);

\CPU1|FLGZERO|DOUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLGZERO|DOUT~5_combout\ = (!\CPU1|DEC1|Equal2~1_combout\ & (((!\RAM1|ram~354_combout\ & !\RAM1|ram~405_combout\)))) # (\CPU1|DEC1|Equal2~1_combout\ & (!\ROM1|memROM~19_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001000100010111000100010001011100010001000101110001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \CPU1|DEC1|ALT_INV_Equal2~1_combout\,
	datac => \RAM1|ALT_INV_ram~354_combout\,
	datad => \RAM1|ALT_INV_ram~405_combout\,
	combout => \CPU1|FLGZERO|DOUT~5_combout\);

\CPU1|FLGZERO|DOUT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLGZERO|DOUT~6_combout\ = ( \CPU1|FLGZERO|DOUT~4_combout\ & ( \CPU1|FLGZERO|DOUT~5_combout\ & ( (!\CPU1|FLGZERO|DOUT~2_combout\ & (((\CPU1|MUX1|saida_MUX[6]~5_combout\) # (\CPU1|MUX1|saida_MUX[3]~7_combout\)) # (\CPU1|MUX1|saida_MUX[2]~2_combout\))) 
-- ) ) ) # ( !\CPU1|FLGZERO|DOUT~4_combout\ & ( \CPU1|FLGZERO|DOUT~5_combout\ & ( !\CPU1|FLGZERO|DOUT~2_combout\ ) ) ) # ( \CPU1|FLGZERO|DOUT~4_combout\ & ( !\CPU1|FLGZERO|DOUT~5_combout\ & ( !\CPU1|FLGZERO|DOUT~2_combout\ ) ) ) # ( 
-- !\CPU1|FLGZERO|DOUT~4_combout\ & ( !\CPU1|FLGZERO|DOUT~5_combout\ & ( !\CPU1|FLGZERO|DOUT~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000000111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \CPU1|MUX1|ALT_INV_saida_MUX[3]~7_combout\,
	datac => \CPU1|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	datad => \CPU1|FLGZERO|ALT_INV_DOUT~2_combout\,
	datae => \CPU1|FLGZERO|ALT_INV_DOUT~4_combout\,
	dataf => \CPU1|FLGZERO|ALT_INV_DOUT~5_combout\,
	combout => \CPU1|FLGZERO|DOUT~6_combout\);

\CPU1|FLGZERO|DOUT~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLGZERO|DOUT~7_combout\ = ( \CPU1|FLGZERO|DOUT~1_combout\ & ( \CPU1|FLGZERO|DOUT~6_combout\ & ( (!\CPU1|ULA1|Add0~17_sumout\ & (!\CPU1|ULA1|Add0~21_sumout\ & (!\CPU1|ULA1|Add0~25_sumout\ & !\CPU1|ULA1|Add0~29_sumout\))) ) ) ) # ( 
-- \CPU1|FLGZERO|DOUT~1_combout\ & ( !\CPU1|FLGZERO|DOUT~6_combout\ ) ) # ( !\CPU1|FLGZERO|DOUT~1_combout\ & ( !\CPU1|FLGZERO|DOUT~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|ULA1|ALT_INV_Add0~17_sumout\,
	datab => \CPU1|ULA1|ALT_INV_Add0~21_sumout\,
	datac => \CPU1|ULA1|ALT_INV_Add0~25_sumout\,
	datad => \CPU1|ULA1|ALT_INV_Add0~29_sumout\,
	datae => \CPU1|FLGZERO|ALT_INV_DOUT~1_combout\,
	dataf => \CPU1|FLGZERO|ALT_INV_DOUT~6_combout\,
	combout => \CPU1|FLGZERO|DOUT~7_combout\);

\CPU1|FLGZERO|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|FLGZERO|DOUT~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|FLGZERO|DOUT~q\);

\CPU1|DEC1|logica_desvio~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|logica_desvio~0_combout\ = ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~10_combout\ & ((!\ROM1|memROM~8_combout\) # (\CPU1|FLGZERO|DOUT~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000100000000000000000000000001010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \CPU1|FLGZERO|ALT_INV_DOUT~q\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU1|DEC1|logica_desvio~0_combout\);

\CPU1|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~13_combout\,
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

\ROM1|memROM~15_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_wirecell_combout\ = !\ROM1|memROM~15_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \ROM1|memROM~15_wirecell_combout\);

\CPU1|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~15_wirecell_combout\,
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
	asdata => \ROM1|memROM~17_combout\,
	sload => \CPU1|DEC1|logica_desvio~0_combout\,
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

\CPU1|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~17_sumout\,
	asdata => \ROM1|memROM~19_combout\,
	sload => \CPU1|DEC1|logica_desvio~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(4));

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

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~3_combout\);

\CPU1|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~3_combout\,
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


