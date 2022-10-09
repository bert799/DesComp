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

-- DATE "10/09/2022 15:24:53"

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
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \CPU1|DEC1|Equal6~0_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU1|DEC1|saida[6]~0_combout\ : std_logic;
SIGNAL \CPU1|DEC1|Equal6~1_combout\ : std_logic;
SIGNAL \RAM1|ram~557_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~556_combout\ : std_logic;
SIGNAL \RAM1|ram~551_combout\ : std_logic;
SIGNAL \RAM1|ram~558_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~555_combout\ : std_logic;
SIGNAL \RAM1|ram~550_combout\ : std_logic;
SIGNAL \RAM1|ram~554_combout\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \RAM1|ram~552_combout\ : std_logic;
SIGNAL \RAM1|ram~553_combout\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU1|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU1|DEC1|saida[5]~1_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~11_q\ : std_logic;
SIGNAL \habilita_REG_LEDs~1_combout\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~583_combout\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~12_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \RAM1|ram~579_combout\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~13_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~575_combout\ : std_logic;
SIGNAL \RAM1|ram~545_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~14_q\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~571_combout\ : std_logic;
SIGNAL \RAM1|ram~546_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~15_q\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~567_combout\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~16_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~563_combout\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~17_q\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~559_combout\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU1|BancREG|registrador~18_q\ : std_logic;
SIGNAL \RAM1|process_0~1_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \habilita_FF_LED8~0_combout\ : std_logic;
SIGNAL \FF_LED8|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LED8|DOUT~q\ : std_logic;
SIGNAL \habilita_REG_LEDs~0_combout\ : std_logic;
SIGNAL \FF_LED9|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LED9|DOUT~q\ : std_logic;
SIGNAL \CPU1|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_LEDs|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU1|DEC1|ALT_INV_saida[6]~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ALT_INV_habilita_REG_LEDs~0_combout\ : std_logic;
SIGNAL \ALT_INV_habilita_FF_LED8~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \FF_LED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FF_LED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \CPU1|BancREG|ALT_INV_registrador~11_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \CPU1|DEC1|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~528_combout\ <= NOT \RAM1|ram~528_combout\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\CPU1|DEC1|ALT_INV_saida[6]~0_combout\ <= NOT \CPU1|DEC1|saida[6]~0_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\ALT_INV_habilita_REG_LEDs~0_combout\ <= NOT \habilita_REG_LEDs~0_combout\;
\ALT_INV_habilita_FF_LED8~0_combout\ <= NOT \habilita_FF_LED8~0_combout\;
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\FF_LED9|ALT_INV_DOUT~q\ <= NOT \FF_LED9|DOUT~q\;
\FF_LED8|ALT_INV_DOUT~q\ <= NOT \FF_LED8|DOUT~q\;
\RAM1|ALT_INV_ram~583_combout\ <= NOT \RAM1|ram~583_combout\;
\RAM1|ALT_INV_ram~579_combout\ <= NOT \RAM1|ram~579_combout\;
\RAM1|ALT_INV_ram~575_combout\ <= NOT \RAM1|ram~575_combout\;
\RAM1|ALT_INV_ram~571_combout\ <= NOT \RAM1|ram~571_combout\;
\RAM1|ALT_INV_ram~567_combout\ <= NOT \RAM1|ram~567_combout\;
\RAM1|ALT_INV_ram~563_combout\ <= NOT \RAM1|ram~563_combout\;
\RAM1|ALT_INV_ram~559_combout\ <= NOT \RAM1|ram~559_combout\;
\CPU1|BancREG|ALT_INV_registrador~18_q\ <= NOT \CPU1|BancREG|registrador~18_q\;
\CPU1|BancREG|ALT_INV_registrador~17_q\ <= NOT \CPU1|BancREG|registrador~17_q\;
\CPU1|BancREG|ALT_INV_registrador~16_q\ <= NOT \CPU1|BancREG|registrador~16_q\;
\CPU1|BancREG|ALT_INV_registrador~15_q\ <= NOT \CPU1|BancREG|registrador~15_q\;
\CPU1|BancREG|ALT_INV_registrador~14_q\ <= NOT \CPU1|BancREG|registrador~14_q\;
\CPU1|BancREG|ALT_INV_registrador~13_q\ <= NOT \CPU1|BancREG|registrador~13_q\;
\CPU1|BancREG|ALT_INV_registrador~12_q\ <= NOT \CPU1|BancREG|registrador~12_q\;
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
\RAM1|ALT_INV_process_0~1_combout\ <= NOT \RAM1|process_0~1_combout\;
\RAM1|ALT_INV_ram~556_combout\ <= NOT \RAM1|ram~556_combout\;
\RAM1|ALT_INV_ram~555_combout\ <= NOT \RAM1|ram~555_combout\;
\RAM1|ALT_INV_ram~554_combout\ <= NOT \RAM1|ram~554_combout\;
\RAM1|ALT_INV_ram~553_combout\ <= NOT \RAM1|ram~553_combout\;
\RAM1|ALT_INV_ram~552_combout\ <= NOT \RAM1|ram~552_combout\;
\RAM1|ALT_INV_ram~551_combout\ <= NOT \RAM1|ram~551_combout\;
\RAM1|ALT_INV_ram~550_combout\ <= NOT \RAM1|ram~550_combout\;
\RAM1|ALT_INV_ram~549_combout\ <= NOT \RAM1|ram~549_combout\;
\RAM1|ALT_INV_ram~548_combout\ <= NOT \RAM1|ram~548_combout\;
\RAM1|ALT_INV_ram~547_combout\ <= NOT \RAM1|ram~547_combout\;
\RAM1|ALT_INV_ram~546_combout\ <= NOT \RAM1|ram~546_combout\;
\RAM1|ALT_INV_ram~545_combout\ <= NOT \RAM1|ram~545_combout\;
\RAM1|ALT_INV_ram~544_combout\ <= NOT \RAM1|ram~544_combout\;
\RAM1|ALT_INV_ram~543_combout\ <= NOT \RAM1|ram~543_combout\;
\RAM1|ALT_INV_ram~542_combout\ <= NOT \RAM1|ram~542_combout\;
\CPU1|DEC1|ALT_INV_Equal6~1_combout\ <= NOT \CPU1|DEC1|Equal6~1_combout\;
\RAM1|ALT_INV_ram~541_combout\ <= NOT \RAM1|ram~541_combout\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~540_combout\ <= NOT \RAM1|ram~540_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~537_combout\ <= NOT \RAM1|ram~537_combout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;

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

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~1_combout\ & ( (\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(1) & (\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~8_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(0) $ (\CPU1|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000001000000001000000100000000100000010000000010000",
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
-- \ROM1|memROM~4_combout\ = (!\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(2) $ (!\CPU1|PC|DOUT\(3))))) # (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(1)) # (!\CPU1|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111010100000010111101010000001011110101000000101111010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(1) $ (!\CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT\(3) & (((\CPU1|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000001111001010000000111100101000000011110010100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\CPU1|DEC1|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|Equal6~0_combout\ = (\ROM1|memROM~1_combout\ & (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \CPU1|DEC1|Equal6~0_combout\);

\CPU1|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \CPU1|DEC1|Equal6~0_combout\,
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

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(3) & \ROM1|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \CPU1|PC|ALT_INV_DOUT\(3),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~9_combout\);

\CPU1|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~9_combout\,
	sload => \CPU1|DEC1|Equal6~0_combout\,
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
	asdata => \ROM1|memROM~8_combout\,
	sload => \CPU1|DEC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(4));

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

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \ROM1|memROM~1_combout\ & ( (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~10_combout\);

\CPU1|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~21_sumout\,
	asdata => \ROM1|memROM~10_combout\,
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
	asdata => \ROM1|memROM~8_combout\,
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
	asdata => \ROM1|memROM~10_combout\,
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

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(0) & ((\CPU1|PC|DOUT\(3))))) # (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(0) $ (!\CPU1|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001101010000000000000000000000000011010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~11_combout\);

\CPU1|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~11_combout\,
	sload => \CPU1|DEC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(8));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU1|PC|DOUT\(8) & ( (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(6) & !\CPU1|PC|DOUT\(7)))) ) )

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
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(1) & (\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(3)))) # (\CPU1|PC|DOUT\(0) & (((!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010000000000100101000000000010010100000000001001010000",
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
-- \ROM1|memROM~7_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~7_combout\);

\CPU1|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~7_combout\,
	sload => \CPU1|DEC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(1));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(3)))) # (\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(1))) # (\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010100010000100101010001000010010101000100001001010100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

\CPU1|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \CPU1|DEC1|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(0));

\CPU1|DEC1|saida[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|saida[6]~0_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \CPU1|DEC1|saida[6]~0_combout\);

\CPU1|DEC1|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|Equal6~1_combout\ = (\ROM1|memROM~1_combout\ & (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~4_combout\ & \ROM1|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \CPU1|DEC1|Equal6~1_combout\);

\RAM1|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~557_combout\ = ( \CPU1|PC|DOUT\(0) & ( (\ROM1|memROM~1_combout\ & (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~557_combout\);

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\RAM1|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~556_combout\ = (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~556_combout\);

\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~556_combout\ & ( (\RAM1|ram~23_q\ & !\ROM1|memROM~1_combout\) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \RAM1|ram~556_combout\ & ( (\RAM1|ram~23_q\ & !\ROM1|memROM~1_combout\) ) ) ) # ( 
-- \ROM1|memROM~6_combout\ & ( !\RAM1|ram~556_combout\ & ( (\RAM1|ram~23_q\ & !\ROM1|memROM~1_combout\) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\RAM1|ram~556_combout\ & ( \RAM1|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~23_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \RAM1|ALT_INV_ram~556_combout\,
	combout => \RAM1|ram~551_combout\);

\RAM1|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~558_combout\ = ( \CPU1|PC|DOUT\(0) & ( (\ROM1|memROM~1_combout\ & (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~558_combout\);

\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~11_q\,
	ena => \RAM1|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

\RAM1|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~555_combout\ = (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(2),
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~555_combout\);

\RAM1|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~550_combout\ = ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~555_combout\ & ( (\RAM1|ram~15_q\ & !\ROM1|memROM~1_combout\) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \RAM1|ram~555_combout\ & ( (\RAM1|ram~15_q\ & ((!\CPU1|PC|DOUT\(0)) # 
-- (!\ROM1|memROM~1_combout\))) ) ) ) # ( \ROM1|memROM~6_combout\ & ( !\RAM1|ram~555_combout\ & ( (\RAM1|ram~15_q\ & !\ROM1|memROM~1_combout\) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\RAM1|ram~555_combout\ & ( \RAM1|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010000000001010101010100000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~15_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \RAM1|ALT_INV_ram~555_combout\,
	combout => \RAM1|ram~550_combout\);

\RAM1|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~554_combout\ = ( \RAM1|ram~550_combout\ & ( !\ROM1|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~550_combout\,
	combout => \RAM1|ram~554_combout\);

\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( \RAM1|ram~554_combout\ & ( (!\ROM1|memROM~8_combout\ & ((!\ROM1|memROM~2_combout\) # (\RAM1|ram~551_combout\))) ) ) # ( !\RAM1|ram~554_combout\ & ( (!\ROM1|memROM~8_combout\ & (\ROM1|memROM~2_combout\ & \RAM1|ram~551_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101000001010101000000000000010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_ram~551_combout\,
	datae => \RAM1|ALT_INV_ram~554_combout\,
	combout => \RAM1|ram~542_combout\);

\CPU1|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~34_cout\ = CARRY(( !\CPU1|DEC1|Equal6~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|DEC1|ALT_INV_Equal6~1_combout\,
	cin => GND,
	cout => \CPU1|ULA1|Add0~34_cout\);

\CPU1|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~1_sumout\ = SUM(( \CPU1|BancREG|registrador~11_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~542_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~2_combout\)))) ) + ( 
-- \CPU1|ULA1|Add0~34_cout\ ))
-- \CPU1|ULA1|Add0~2\ = CARRY(( \CPU1|BancREG|registrador~11_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~542_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~2_combout\)))) ) + ( 
-- \CPU1|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111101011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU1|DEC1|ALT_INV_Equal6~1_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~11_q\,
	dataf => \RAM1|ALT_INV_ram~542_combout\,
	cin => \CPU1|ULA1|Add0~34_cout\,
	sumout => \CPU1|ULA1|Add0~1_sumout\,
	cout => \CPU1|ULA1|Add0~2\);

\RAM1|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~552_combout\ = (!\ROM1|memROM~9_combout\ & (\RAM1|ram~15_q\ & !\ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \RAM1|ALT_INV_ram~15_q\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~552_combout\);

\RAM1|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~553_combout\ = (!\ROM1|memROM~10_combout\ & (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~7_combout\ & \RAM1|ram~23_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~23_q\,
	combout => \RAM1|ram~553_combout\);

\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \RAM1|ram~553_combout\ & ( ((!\ROM1|memROM~10_combout\ & \RAM1|ram~552_combout\)) # (\ROM1|memROM~2_combout\) ) ) # ( !\RAM1|ram~553_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~10_combout\ & \RAM1|ram~552_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000010101011101110100000000100010000101010111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~552_combout\,
	datae => \RAM1|ALT_INV_ram~553_combout\,
	combout => \RAM1|ram~527_combout\);

\CPU1|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~0_combout\ = ( \RAM1|ram~527_combout\ & ( (!\CPU1|DEC1|saida[6]~0_combout\ & ((!\ROM1|memROM~8_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~2_combout\)) ) ) # ( !\RAM1|ram~527_combout\ & ( (\ROM1|memROM~2_combout\ 
-- & \CPU1|DEC1|saida[6]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101110001011100010100000101000001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datae => \RAM1|ALT_INV_ram~527_combout\,
	combout => \CPU1|MUX1|saida_MUX[0]~0_combout\);

\CPU1|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|saida[0]~0_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~5_combout\) # (\ROM1|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000100010001000000010001000100000001000100010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \CPU1|ULA1|saida[0]~0_combout\);

\CPU1|DEC1|saida[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DEC1|saida[5]~1_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~5_combout\ $ (((\ROM1|memROM~4_combout\) # (\ROM1|memROM~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010101010000000001010101000000000101010100000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
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

\habilita_REG_LEDs~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_REG_LEDs~1_combout\ = (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(0) & \ROM1|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
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

\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \RAM1|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~555_combout\ & ( (\RAM1|ram~16_q\ & !\ROM1|memROM~1_combout\) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \RAM1|ram~555_combout\ & ( (\RAM1|ram~16_q\ & ((!\CPU1|PC|DOUT\(0)) # 
-- (!\ROM1|memROM~1_combout\))) ) ) ) # ( \ROM1|memROM~6_combout\ & ( !\RAM1|ram~555_combout\ & ( (\RAM1|ram~16_q\ & !\ROM1|memROM~1_combout\) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\RAM1|ram~555_combout\ & ( \RAM1|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010000000001010101010100000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~16_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \RAM1|ALT_INV_ram~555_combout\,
	combout => \RAM1|ram~528_combout\);

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~12_q\,
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

\RAM1|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~583_combout\ = ( \CPU1|PC|DOUT\(3) & ( \RAM1|ram~24_q\ & ( ((!\ROM1|memROM~1_combout\) # (!\CPU1|PC|DOUT\(0))) # (\CPU1|PC|DOUT\(2)) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( \RAM1|ram~24_q\ & ( (!\CPU1|PC|DOUT\(2)) # ((!\ROM1|memROM~1_combout\) # 
-- ((!\CPU1|PC|DOUT\(1)) # (\CPU1|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110111111111111111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(2),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT\(1),
	datad => \CPU1|PC|ALT_INV_DOUT\(0),
	datae => \CPU1|PC|ALT_INV_DOUT\(3),
	dataf => \RAM1|ALT_INV_ram~24_q\,
	combout => \RAM1|ram~583_combout\);

\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~583_combout\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~528_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~528_combout\,
	datab => \RAM1|ALT_INV_ram~583_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~529_combout\);

\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = (!\ROM1|memROM~8_combout\ & \RAM1|ram~529_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~529_combout\,
	combout => \RAM1|ram~543_combout\);

\CPU1|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~5_sumout\ = SUM(( \CPU1|BancREG|registrador~12_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~543_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~7_combout\)))) ) + ( 
-- \CPU1|ULA1|Add0~2\ ))
-- \CPU1|ULA1|Add0~6\ = CARRY(( \CPU1|BancREG|registrador~12_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~543_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~7_combout\)))) ) + ( \CPU1|ULA1|Add0~2\ 
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
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~12_q\,
	dataf => \RAM1|ALT_INV_ram~543_combout\,
	cin => \CPU1|ULA1|Add0~2\,
	sumout => \CPU1|ULA1|Add0~5_sumout\,
	cout => \CPU1|ULA1|Add0~6\);

\CPU1|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[1]~1_combout\ = ( \RAM1|ram~529_combout\ & ( (!\CPU1|DEC1|saida[6]~0_combout\ & ((!\ROM1|memROM~8_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~7_combout\)) ) ) # ( !\RAM1|ram~529_combout\ & ( (\ROM1|memROM~7_combout\ 
-- & \CPU1|DEC1|saida[6]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101110001011100010100000101000001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datae => \RAM1|ALT_INV_ram~529_combout\,
	combout => \CPU1|MUX1|saida_MUX[1]~1_combout\);

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
	ena => \CPU1|DEC1|saida[5]~1_combout\,
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

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \RAM1|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~17_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~530_combout\);

\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~13_q\,
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~25_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~531_combout\);

\RAM1|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~579_combout\ = ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~531_combout\ & ( (\ROM1|memROM~2_combout\) # (\RAM1|ram~530_combout\) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\RAM1|ram~531_combout\ & ( (\RAM1|ram~530_combout\ & 
-- !\ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~530_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~531_combout\,
	combout => \RAM1|ram~579_combout\);

\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = (!\ROM1|memROM~8_combout\ & \RAM1|ram~579_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~579_combout\,
	combout => \RAM1|ram~544_combout\);

\CPU1|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~9_sumout\ = SUM(( \CPU1|BancREG|registrador~13_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~544_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~8_combout\)))) ) + ( 
-- \CPU1|ULA1|Add0~6\ ))
-- \CPU1|ULA1|Add0~10\ = CARRY(( \CPU1|BancREG|registrador~13_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~544_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~8_combout\)))) ) + ( \CPU1|ULA1|Add0~6\ 
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
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~13_q\,
	dataf => \RAM1|ALT_INV_ram~544_combout\,
	cin => \CPU1|ULA1|Add0~6\,
	sumout => \CPU1|ULA1|Add0~9_sumout\,
	cout => \CPU1|ULA1|Add0~10\);

\CPU1|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[2]~2_combout\ = (!\ROM1|memROM~8_combout\ & (!\CPU1|DEC1|saida[6]~0_combout\ & \RAM1|ram~579_combout\)) # (\ROM1|memROM~8_combout\ & (\CPU1|DEC1|saida[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110011001000100011001100100010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datad => \RAM1|ALT_INV_ram~579_combout\,
	combout => \CPU1|MUX1|saida_MUX[2]~2_combout\);

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
	ena => \CPU1|DEC1|saida[5]~1_combout\,
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

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \RAM1|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~18_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~532_combout\);

\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~14_q\,
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~26_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~533_combout\);

\RAM1|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~575_combout\ = ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~533_combout\ & ( (\ROM1|memROM~2_combout\) # (\RAM1|ram~532_combout\) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\RAM1|ram~533_combout\ & ( (\RAM1|ram~532_combout\ & 
-- !\ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~532_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~533_combout\,
	combout => \RAM1|ram~575_combout\);

\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = (!\ROM1|memROM~8_combout\ & \RAM1|ram~575_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~575_combout\,
	combout => \RAM1|ram~545_combout\);

\CPU1|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~13_sumout\ = SUM(( \CPU1|BancREG|registrador~14_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~545_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~9_combout\)))) ) + ( 
-- \CPU1|ULA1|Add0~10\ ))
-- \CPU1|ULA1|Add0~14\ = CARRY(( \CPU1|BancREG|registrador~14_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~545_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~9_combout\)))) ) + ( \CPU1|ULA1|Add0~10\ 
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
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~14_q\,
	dataf => \RAM1|ALT_INV_ram~545_combout\,
	cin => \CPU1|ULA1|Add0~10\,
	sumout => \CPU1|ULA1|Add0~13_sumout\,
	cout => \CPU1|ULA1|Add0~14\);

\CPU1|MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[3]~3_combout\ = ( \RAM1|ram~575_combout\ & ( (!\CPU1|DEC1|saida[6]~0_combout\ & ((!\ROM1|memROM~8_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~9_combout\)) ) ) # ( !\RAM1|ram~575_combout\ & ( (\ROM1|memROM~9_combout\ 
-- & \CPU1|DEC1|saida[6]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101110001011100010100000101000001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datae => \RAM1|ALT_INV_ram~575_combout\,
	combout => \CPU1|MUX1|saida_MUX[3]~3_combout\);

\CPU1|BancREG|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~13_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[3]~3_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~1_combout\,
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

\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~15_q\,
	ena => \RAM1|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~534_combout\);

\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~15_q\,
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~27_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~535_combout\);

\RAM1|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~571_combout\ = ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~535_combout\ & ( (\ROM1|memROM~2_combout\) # (\RAM1|ram~534_combout\) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\RAM1|ram~535_combout\ & ( (\RAM1|ram~534_combout\ & 
-- !\ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~534_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~535_combout\,
	combout => \RAM1|ram~571_combout\);

\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = (!\ROM1|memROM~8_combout\ & \RAM1|ram~571_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~571_combout\,
	combout => \RAM1|ram~546_combout\);

\CPU1|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~17_sumout\ = SUM(( \CPU1|BancREG|registrador~15_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~546_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~8_combout\)))) ) + ( 
-- \CPU1|ULA1|Add0~14\ ))
-- \CPU1|ULA1|Add0~18\ = CARRY(( \CPU1|BancREG|registrador~15_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~546_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~8_combout\)))) ) + ( \CPU1|ULA1|Add0~14\ 
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
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~15_q\,
	dataf => \RAM1|ALT_INV_ram~546_combout\,
	cin => \CPU1|ULA1|Add0~14\,
	sumout => \CPU1|ULA1|Add0~17_sumout\,
	cout => \CPU1|ULA1|Add0~18\);

\CPU1|MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[4]~4_combout\ = (!\ROM1|memROM~8_combout\ & (!\CPU1|DEC1|saida[6]~0_combout\ & \RAM1|ram~571_combout\)) # (\ROM1|memROM~8_combout\ & (\CPU1|DEC1|saida[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110011001000100011001100100010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datad => \RAM1|ALT_INV_ram~571_combout\,
	combout => \CPU1|MUX1|saida_MUX[4]~4_combout\);

\CPU1|BancREG|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~17_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[4]~4_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~1_combout\,
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

\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~16_q\,
	ena => \RAM1|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~536_combout\);

\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~16_q\,
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~28_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~537_combout\);

\RAM1|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~567_combout\ = ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~537_combout\ & ( (\ROM1|memROM~2_combout\) # (\RAM1|ram~536_combout\) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\RAM1|ram~537_combout\ & ( (\RAM1|ram~536_combout\ & 
-- !\ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~536_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~537_combout\,
	combout => \RAM1|ram~567_combout\);

\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = (!\ROM1|memROM~8_combout\ & \RAM1|ram~567_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~567_combout\,
	combout => \RAM1|ram~547_combout\);

\CPU1|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~21_sumout\ = SUM(( \CPU1|BancREG|registrador~16_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~547_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~10_combout\)))) ) + ( 
-- \CPU1|ULA1|Add0~18\ ))
-- \CPU1|ULA1|Add0~22\ = CARRY(( \CPU1|BancREG|registrador~16_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~547_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~10_combout\)))) ) + ( 
-- \CPU1|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datab => \CPU1|DEC1|ALT_INV_Equal6~1_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~16_q\,
	dataf => \RAM1|ALT_INV_ram~547_combout\,
	cin => \CPU1|ULA1|Add0~18\,
	sumout => \CPU1|ULA1|Add0~21_sumout\,
	cout => \CPU1|ULA1|Add0~22\);

\CPU1|MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[5]~5_combout\ = ( \RAM1|ram~567_combout\ & ( (!\CPU1|DEC1|saida[6]~0_combout\ & ((!\ROM1|memROM~8_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~10_combout\)) ) ) # ( !\RAM1|ram~567_combout\ & ( 
-- (\ROM1|memROM~10_combout\ & \CPU1|DEC1|saida[6]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101110001011100010100000101000001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datae => \RAM1|ALT_INV_ram~567_combout\,
	combout => \CPU1|MUX1|saida_MUX[5]~5_combout\);

\CPU1|BancREG|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~21_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[5]~5_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~1_combout\,
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

\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~17_q\,
	ena => \RAM1|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~538_combout\);

\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~17_q\,
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~29_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~539_combout\);

\RAM1|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~563_combout\ = ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~539_combout\ & ( (\ROM1|memROM~2_combout\) # (\RAM1|ram~538_combout\) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\RAM1|ram~539_combout\ & ( (\RAM1|ram~538_combout\ & 
-- !\ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~538_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~563_combout\);

\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = (!\ROM1|memROM~8_combout\ & \RAM1|ram~563_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~563_combout\,
	combout => \RAM1|ram~548_combout\);

\CPU1|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~25_sumout\ = SUM(( \CPU1|BancREG|registrador~17_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~548_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~8_combout\)))) ) + ( 
-- \CPU1|ULA1|Add0~22\ ))
-- \CPU1|ULA1|Add0~26\ = CARRY(( \CPU1|BancREG|registrador~17_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~548_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~8_combout\)))) ) + ( \CPU1|ULA1|Add0~22\ 
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
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~17_q\,
	dataf => \RAM1|ALT_INV_ram~548_combout\,
	cin => \CPU1|ULA1|Add0~22\,
	sumout => \CPU1|ULA1|Add0~25_sumout\,
	cout => \CPU1|ULA1|Add0~26\);

\CPU1|MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[6]~6_combout\ = (!\ROM1|memROM~8_combout\ & (!\CPU1|DEC1|saida[6]~0_combout\ & \RAM1|ram~563_combout\)) # (\ROM1|memROM~8_combout\ & (\CPU1|DEC1|saida[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110011001000100011001100100010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datad => \RAM1|ALT_INV_ram~563_combout\,
	combout => \CPU1|MUX1|saida_MUX[6]~6_combout\);

\CPU1|BancREG|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~25_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[6]~6_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~1_combout\,
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

\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~18_q\,
	ena => \RAM1|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~22_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~540_combout\);

\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|BancREG|registrador~18_q\,
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~30_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~541_combout\);

\RAM1|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~559_combout\ = ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~541_combout\ & ( (\ROM1|memROM~2_combout\) # (\RAM1|ram~540_combout\) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\RAM1|ram~541_combout\ & ( (\RAM1|ram~540_combout\ & 
-- !\ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~540_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~541_combout\,
	combout => \RAM1|ram~559_combout\);

\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = (!\ROM1|memROM~8_combout\ & \RAM1|ram~559_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~559_combout\,
	combout => \RAM1|ram~549_combout\);

\CPU1|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~29_sumout\ = SUM(( \CPU1|BancREG|registrador~18_q\ ) + ( !\CPU1|DEC1|Equal6~1_combout\ $ (((!\CPU1|DEC1|saida[6]~0_combout\ & ((\RAM1|ram~549_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~10_combout\)))) ) + ( 
-- \CPU1|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111101011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \CPU1|DEC1|ALT_INV_Equal6~1_combout\,
	datad => \CPU1|BancREG|ALT_INV_registrador~18_q\,
	dataf => \RAM1|ALT_INV_ram~549_combout\,
	cin => \CPU1|ULA1|Add0~26\,
	sumout => \CPU1|ULA1|Add0~29_sumout\);

\CPU1|MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[7]~7_combout\ = ( \RAM1|ram~559_combout\ & ( (!\CPU1|DEC1|saida[6]~0_combout\ & ((!\ROM1|memROM~8_combout\))) # (\CPU1|DEC1|saida[6]~0_combout\ & (\ROM1|memROM~10_combout\)) ) ) # ( !\RAM1|ram~559_combout\ & ( 
-- (\ROM1|memROM~10_combout\ & \CPU1|DEC1|saida[6]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101110001011100010100000101000001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU1|DEC1|ALT_INV_saida[6]~0_combout\,
	datae => \RAM1|ALT_INV_ram~559_combout\,
	combout => \CPU1|MUX1|saida_MUX[7]~7_combout\);

\CPU1|BancREG|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU1|ULA1|Add0~29_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[7]~7_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DEC1|saida[5]~1_combout\,
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

\RAM1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~1_combout\ = ( \CPU1|PC|DOUT\(0) & ( (\ROM1|memROM~1_combout\ & (!\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(2)) # (!\CPU1|PC|DOUT\(1))))) ) ) # ( !\CPU1|PC|DOUT\(0) & ( (\ROM1|memROM~1_combout\ & (!\CPU1|PC|DOUT\(3) $ (!\CPU1|PC|DOUT\(2)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100010001000100000000010100000101000100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	combout => \RAM1|process_0~1_combout\);

\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|process_0~0_combout\);

\habilita_FF_LED8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_FF_LED8~0_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \habilita_FF_LED8~0_combout\);

\FF_LED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LED8|DOUT~0_combout\ = ( \RAM1|process_0~0_combout\ & ( \habilita_FF_LED8~0_combout\ & ( (!\ROM1|memROM~11_combout\ & (\FF_LED8|DOUT~q\)) # (\ROM1|memROM~11_combout\ & ((!\RAM1|process_0~1_combout\ & (\FF_LED8|DOUT~q\)) # (\RAM1|process_0~1_combout\ & 
-- ((\CPU1|BancREG|registrador~11_q\))))) ) ) ) # ( !\RAM1|process_0~0_combout\ & ( \habilita_FF_LED8~0_combout\ & ( \FF_LED8|DOUT~q\ ) ) ) # ( \RAM1|process_0~0_combout\ & ( !\habilita_FF_LED8~0_combout\ & ( \FF_LED8|DOUT~q\ ) ) ) # ( 
-- !\RAM1|process_0~0_combout\ & ( !\habilita_FF_LED8~0_combout\ & ( \FF_LED8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FF_LED8|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \CPU1|BancREG|ALT_INV_registrador~11_q\,
	datad => \RAM1|ALT_INV_process_0~1_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_habilita_FF_LED8~0_combout\,
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

\habilita_REG_LEDs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_REG_LEDs~0_combout\ = (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~11_combout\ & (\RAM1|process_0~1_combout\ & \RAM1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \RAM1|ALT_INV_process_0~1_combout\,
	datad => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \habilita_REG_LEDs~0_combout\);

\FF_LED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LED9|DOUT~0_combout\ = (!\ROM1|memROM~7_combout\ & (\FF_LED9|DOUT~q\)) # (\ROM1|memROM~7_combout\ & ((!\habilita_REG_LEDs~0_combout\ & (\FF_LED9|DOUT~q\)) # (\habilita_REG_LEDs~0_combout\ & ((\CPU1|BancREG|registrador~11_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000111010101010100011101010101010001110101010101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FF_LED9|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \CPU1|BancREG|ALT_INV_registrador~11_q\,
	datad => \ALT_INV_habilita_REG_LEDs~0_combout\,
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
END structure;


