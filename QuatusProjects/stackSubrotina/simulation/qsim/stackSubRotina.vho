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

-- DATE "11/03/2022 23:58:44"

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

ENTITY 	stackSubRotina IS
    PORT (
	clk : IN std_logic;
	PushPop : IN std_logic_vector(1 DOWNTO 0);
	Dado_in : IN std_logic_vector(8 DOWNTO 0);
	Dado_out : BUFFER std_logic_vector(8 DOWNTO 0);
	SP : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END stackSubRotina;

ARCHITECTURE structure OF stackSubRotina IS
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
SIGNAL ww_PushPop : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Dado_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Dado_out : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_SP : std_logic_vector(2 DOWNTO 0);
SIGNAL \Dado_out[0]~output_o\ : std_logic;
SIGNAL \Dado_out[1]~output_o\ : std_logic;
SIGNAL \Dado_out[2]~output_o\ : std_logic;
SIGNAL \Dado_out[3]~output_o\ : std_logic;
SIGNAL \Dado_out[4]~output_o\ : std_logic;
SIGNAL \Dado_out[5]~output_o\ : std_logic;
SIGNAL \Dado_out[6]~output_o\ : std_logic;
SIGNAL \Dado_out[7]~output_o\ : std_logic;
SIGNAL \Dado_out[8]~output_o\ : std_logic;
SIGNAL \SP[0]~output_o\ : std_logic;
SIGNAL \SP[1]~output_o\ : std_logic;
SIGNAL \SP[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Dado_in[0]~input_o\ : std_logic;
SIGNAL \PushPop[0]~input_o\ : std_logic;
SIGNAL \PushPop[1]~input_o\ : std_logic;
SIGNAL \StackPointer|DOUT[0]~0_combout\ : std_logic;
SIGNAL \SomaSubStackPointer|Add0~0_combout\ : std_logic;
SIGNAL \SomaSubStackPointer|Add0~1_combout\ : std_logic;
SIGNAL \StackRotinas|mem~158_combout\ : std_logic;
SIGNAL \StackRotinas|mem~59_q\ : std_logic;
SIGNAL \StackRotinas|mem~159_combout\ : std_logic;
SIGNAL \StackRotinas|mem~77_q\ : std_logic;
SIGNAL \StackRotinas|mem~161_combout\ : std_logic;
SIGNAL \StackRotinas|mem~68_q\ : std_logic;
SIGNAL \StackRotinas|mem~162_combout\ : std_logic;
SIGNAL \StackRotinas|mem~23_q\ : std_logic;
SIGNAL \StackRotinas|mem~163_combout\ : std_logic;
SIGNAL \StackRotinas|mem~41_q\ : std_logic;
SIGNAL \StackRotinas|mem~165_combout\ : std_logic;
SIGNAL \StackRotinas|mem~32_q\ : std_logic;
SIGNAL \StackRotinas|mem~164_combout\ : std_logic;
SIGNAL \StackRotinas|mem~14_q\ : std_logic;
SIGNAL \StackRotinas|mem~122_combout\ : std_logic;
SIGNAL \StackRotinas|mem~160_combout\ : std_logic;
SIGNAL \StackRotinas|mem~50_q\ : std_logic;
SIGNAL \StackRotinas|mem~86_combout\ : std_logic;
SIGNAL \Dado_in[1]~input_o\ : std_logic;
SIGNAL \StackRotinas|mem~60_q\ : std_logic;
SIGNAL \StackRotinas|mem~78_q\ : std_logic;
SIGNAL \StackRotinas|mem~69_q\ : std_logic;
SIGNAL \StackRotinas|mem~24_q\ : std_logic;
SIGNAL \StackRotinas|mem~42_q\ : std_logic;
SIGNAL \StackRotinas|mem~33_q\ : std_logic;
SIGNAL \StackRotinas|mem~15_q\ : std_logic;
SIGNAL \StackRotinas|mem~126_combout\ : std_logic;
SIGNAL \StackRotinas|mem~51_q\ : std_logic;
SIGNAL \StackRotinas|mem~90_combout\ : std_logic;
SIGNAL \Dado_in[2]~input_o\ : std_logic;
SIGNAL \StackRotinas|mem~61_q\ : std_logic;
SIGNAL \StackRotinas|mem~79_q\ : std_logic;
SIGNAL \StackRotinas|mem~70_q\ : std_logic;
SIGNAL \StackRotinas|mem~25_q\ : std_logic;
SIGNAL \StackRotinas|mem~43_q\ : std_logic;
SIGNAL \StackRotinas|mem~34_q\ : std_logic;
SIGNAL \StackRotinas|mem~16_q\ : std_logic;
SIGNAL \StackRotinas|mem~130_combout\ : std_logic;
SIGNAL \StackRotinas|mem~52_q\ : std_logic;
SIGNAL \StackRotinas|mem~94_combout\ : std_logic;
SIGNAL \Dado_in[3]~input_o\ : std_logic;
SIGNAL \StackRotinas|mem~62_q\ : std_logic;
SIGNAL \StackRotinas|mem~80_q\ : std_logic;
SIGNAL \StackRotinas|mem~71_q\ : std_logic;
SIGNAL \StackRotinas|mem~26_q\ : std_logic;
SIGNAL \StackRotinas|mem~44_q\ : std_logic;
SIGNAL \StackRotinas|mem~35_q\ : std_logic;
SIGNAL \StackRotinas|mem~17_q\ : std_logic;
SIGNAL \StackRotinas|mem~134_combout\ : std_logic;
SIGNAL \StackRotinas|mem~53_q\ : std_logic;
SIGNAL \StackRotinas|mem~98_combout\ : std_logic;
SIGNAL \Dado_in[4]~input_o\ : std_logic;
SIGNAL \StackRotinas|mem~63_q\ : std_logic;
SIGNAL \StackRotinas|mem~81_q\ : std_logic;
SIGNAL \StackRotinas|mem~72_q\ : std_logic;
SIGNAL \StackRotinas|mem~27_q\ : std_logic;
SIGNAL \StackRotinas|mem~45_q\ : std_logic;
SIGNAL \StackRotinas|mem~36_q\ : std_logic;
SIGNAL \StackRotinas|mem~18_q\ : std_logic;
SIGNAL \StackRotinas|mem~138_combout\ : std_logic;
SIGNAL \StackRotinas|mem~54_q\ : std_logic;
SIGNAL \StackRotinas|mem~102_combout\ : std_logic;
SIGNAL \Dado_in[5]~input_o\ : std_logic;
SIGNAL \StackRotinas|mem~64_q\ : std_logic;
SIGNAL \StackRotinas|mem~82_q\ : std_logic;
SIGNAL \StackRotinas|mem~73_q\ : std_logic;
SIGNAL \StackRotinas|mem~28_q\ : std_logic;
SIGNAL \StackRotinas|mem~46_q\ : std_logic;
SIGNAL \StackRotinas|mem~37_q\ : std_logic;
SIGNAL \StackRotinas|mem~19_q\ : std_logic;
SIGNAL \StackRotinas|mem~142_combout\ : std_logic;
SIGNAL \StackRotinas|mem~55_q\ : std_logic;
SIGNAL \StackRotinas|mem~106_combout\ : std_logic;
SIGNAL \Dado_in[6]~input_o\ : std_logic;
SIGNAL \StackRotinas|mem~65_q\ : std_logic;
SIGNAL \StackRotinas|mem~83_q\ : std_logic;
SIGNAL \StackRotinas|mem~74_q\ : std_logic;
SIGNAL \StackRotinas|mem~29_q\ : std_logic;
SIGNAL \StackRotinas|mem~47_q\ : std_logic;
SIGNAL \StackRotinas|mem~38_q\ : std_logic;
SIGNAL \StackRotinas|mem~20_q\ : std_logic;
SIGNAL \StackRotinas|mem~146_combout\ : std_logic;
SIGNAL \StackRotinas|mem~56_q\ : std_logic;
SIGNAL \StackRotinas|mem~110_combout\ : std_logic;
SIGNAL \Dado_in[7]~input_o\ : std_logic;
SIGNAL \StackRotinas|mem~66_q\ : std_logic;
SIGNAL \StackRotinas|mem~84_q\ : std_logic;
SIGNAL \StackRotinas|mem~75_q\ : std_logic;
SIGNAL \StackRotinas|mem~30_q\ : std_logic;
SIGNAL \StackRotinas|mem~48_q\ : std_logic;
SIGNAL \StackRotinas|mem~39_q\ : std_logic;
SIGNAL \StackRotinas|mem~21_q\ : std_logic;
SIGNAL \StackRotinas|mem~150_combout\ : std_logic;
SIGNAL \StackRotinas|mem~57_q\ : std_logic;
SIGNAL \StackRotinas|mem~114_combout\ : std_logic;
SIGNAL \Dado_in[8]~input_o\ : std_logic;
SIGNAL \StackRotinas|mem~67_q\ : std_logic;
SIGNAL \StackRotinas|mem~85_q\ : std_logic;
SIGNAL \StackRotinas|mem~76_q\ : std_logic;
SIGNAL \StackRotinas|mem~31_q\ : std_logic;
SIGNAL \StackRotinas|mem~49_q\ : std_logic;
SIGNAL \StackRotinas|mem~40_q\ : std_logic;
SIGNAL \StackRotinas|mem~22_q\ : std_logic;
SIGNAL \StackRotinas|mem~154_combout\ : std_logic;
SIGNAL \StackRotinas|mem~58_q\ : std_logic;
SIGNAL \StackRotinas|mem~118_combout\ : std_logic;
SIGNAL \StackPointer|DOUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \StackRotinas|ALT_INV_mem~40_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~22_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~49_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~31_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~39_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~21_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~48_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~30_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~38_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~20_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~47_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~29_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~37_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~19_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~46_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~28_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~36_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~18_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~45_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~27_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~35_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~17_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~44_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~26_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~34_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~16_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~43_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~25_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~33_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~15_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~42_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~24_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~32_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~14_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~41_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~23_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~76_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~58_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~85_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~67_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~75_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~57_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~84_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~66_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~74_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~56_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~83_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~65_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~73_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~55_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~82_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~64_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~72_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~54_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~81_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~63_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~71_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~53_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~80_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~62_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~70_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~52_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~79_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~61_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~69_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~51_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~78_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~60_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~68_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~50_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~77_q\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~59_q\ : std_logic;
SIGNAL \StackPointer|ALT_INV_DOUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \StackRotinas|ALT_INV_mem~154_combout\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~150_combout\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~146_combout\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~142_combout\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~138_combout\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~134_combout\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~130_combout\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~126_combout\ : std_logic;
SIGNAL \StackRotinas|ALT_INV_mem~122_combout\ : std_logic;
SIGNAL \ALT_INV_PushPop[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_PushPop[0]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_PushPop <= PushPop;
ww_Dado_in <= Dado_in;
Dado_out <= ww_Dado_out;
SP <= ww_SP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\StackRotinas|ALT_INV_mem~40_q\ <= NOT \StackRotinas|mem~40_q\;
\StackRotinas|ALT_INV_mem~22_q\ <= NOT \StackRotinas|mem~22_q\;
\StackRotinas|ALT_INV_mem~49_q\ <= NOT \StackRotinas|mem~49_q\;
\StackRotinas|ALT_INV_mem~31_q\ <= NOT \StackRotinas|mem~31_q\;
\StackRotinas|ALT_INV_mem~39_q\ <= NOT \StackRotinas|mem~39_q\;
\StackRotinas|ALT_INV_mem~21_q\ <= NOT \StackRotinas|mem~21_q\;
\StackRotinas|ALT_INV_mem~48_q\ <= NOT \StackRotinas|mem~48_q\;
\StackRotinas|ALT_INV_mem~30_q\ <= NOT \StackRotinas|mem~30_q\;
\StackRotinas|ALT_INV_mem~38_q\ <= NOT \StackRotinas|mem~38_q\;
\StackRotinas|ALT_INV_mem~20_q\ <= NOT \StackRotinas|mem~20_q\;
\StackRotinas|ALT_INV_mem~47_q\ <= NOT \StackRotinas|mem~47_q\;
\StackRotinas|ALT_INV_mem~29_q\ <= NOT \StackRotinas|mem~29_q\;
\StackRotinas|ALT_INV_mem~37_q\ <= NOT \StackRotinas|mem~37_q\;
\StackRotinas|ALT_INV_mem~19_q\ <= NOT \StackRotinas|mem~19_q\;
\StackRotinas|ALT_INV_mem~46_q\ <= NOT \StackRotinas|mem~46_q\;
\StackRotinas|ALT_INV_mem~28_q\ <= NOT \StackRotinas|mem~28_q\;
\StackRotinas|ALT_INV_mem~36_q\ <= NOT \StackRotinas|mem~36_q\;
\StackRotinas|ALT_INV_mem~18_q\ <= NOT \StackRotinas|mem~18_q\;
\StackRotinas|ALT_INV_mem~45_q\ <= NOT \StackRotinas|mem~45_q\;
\StackRotinas|ALT_INV_mem~27_q\ <= NOT \StackRotinas|mem~27_q\;
\StackRotinas|ALT_INV_mem~35_q\ <= NOT \StackRotinas|mem~35_q\;
\StackRotinas|ALT_INV_mem~17_q\ <= NOT \StackRotinas|mem~17_q\;
\StackRotinas|ALT_INV_mem~44_q\ <= NOT \StackRotinas|mem~44_q\;
\StackRotinas|ALT_INV_mem~26_q\ <= NOT \StackRotinas|mem~26_q\;
\StackRotinas|ALT_INV_mem~34_q\ <= NOT \StackRotinas|mem~34_q\;
\StackRotinas|ALT_INV_mem~16_q\ <= NOT \StackRotinas|mem~16_q\;
\StackRotinas|ALT_INV_mem~43_q\ <= NOT \StackRotinas|mem~43_q\;
\StackRotinas|ALT_INV_mem~25_q\ <= NOT \StackRotinas|mem~25_q\;
\StackRotinas|ALT_INV_mem~33_q\ <= NOT \StackRotinas|mem~33_q\;
\StackRotinas|ALT_INV_mem~15_q\ <= NOT \StackRotinas|mem~15_q\;
\StackRotinas|ALT_INV_mem~42_q\ <= NOT \StackRotinas|mem~42_q\;
\StackRotinas|ALT_INV_mem~24_q\ <= NOT \StackRotinas|mem~24_q\;
\StackRotinas|ALT_INV_mem~32_q\ <= NOT \StackRotinas|mem~32_q\;
\StackRotinas|ALT_INV_mem~14_q\ <= NOT \StackRotinas|mem~14_q\;
\StackRotinas|ALT_INV_mem~41_q\ <= NOT \StackRotinas|mem~41_q\;
\StackRotinas|ALT_INV_mem~23_q\ <= NOT \StackRotinas|mem~23_q\;
\StackRotinas|ALT_INV_mem~76_q\ <= NOT \StackRotinas|mem~76_q\;
\StackRotinas|ALT_INV_mem~58_q\ <= NOT \StackRotinas|mem~58_q\;
\StackRotinas|ALT_INV_mem~85_q\ <= NOT \StackRotinas|mem~85_q\;
\StackRotinas|ALT_INV_mem~67_q\ <= NOT \StackRotinas|mem~67_q\;
\StackRotinas|ALT_INV_mem~75_q\ <= NOT \StackRotinas|mem~75_q\;
\StackRotinas|ALT_INV_mem~57_q\ <= NOT \StackRotinas|mem~57_q\;
\StackRotinas|ALT_INV_mem~84_q\ <= NOT \StackRotinas|mem~84_q\;
\StackRotinas|ALT_INV_mem~66_q\ <= NOT \StackRotinas|mem~66_q\;
\StackRotinas|ALT_INV_mem~74_q\ <= NOT \StackRotinas|mem~74_q\;
\StackRotinas|ALT_INV_mem~56_q\ <= NOT \StackRotinas|mem~56_q\;
\StackRotinas|ALT_INV_mem~83_q\ <= NOT \StackRotinas|mem~83_q\;
\StackRotinas|ALT_INV_mem~65_q\ <= NOT \StackRotinas|mem~65_q\;
\StackRotinas|ALT_INV_mem~73_q\ <= NOT \StackRotinas|mem~73_q\;
\StackRotinas|ALT_INV_mem~55_q\ <= NOT \StackRotinas|mem~55_q\;
\StackRotinas|ALT_INV_mem~82_q\ <= NOT \StackRotinas|mem~82_q\;
\StackRotinas|ALT_INV_mem~64_q\ <= NOT \StackRotinas|mem~64_q\;
\StackRotinas|ALT_INV_mem~72_q\ <= NOT \StackRotinas|mem~72_q\;
\StackRotinas|ALT_INV_mem~54_q\ <= NOT \StackRotinas|mem~54_q\;
\StackRotinas|ALT_INV_mem~81_q\ <= NOT \StackRotinas|mem~81_q\;
\StackRotinas|ALT_INV_mem~63_q\ <= NOT \StackRotinas|mem~63_q\;
\StackRotinas|ALT_INV_mem~71_q\ <= NOT \StackRotinas|mem~71_q\;
\StackRotinas|ALT_INV_mem~53_q\ <= NOT \StackRotinas|mem~53_q\;
\StackRotinas|ALT_INV_mem~80_q\ <= NOT \StackRotinas|mem~80_q\;
\StackRotinas|ALT_INV_mem~62_q\ <= NOT \StackRotinas|mem~62_q\;
\StackRotinas|ALT_INV_mem~70_q\ <= NOT \StackRotinas|mem~70_q\;
\StackRotinas|ALT_INV_mem~52_q\ <= NOT \StackRotinas|mem~52_q\;
\StackRotinas|ALT_INV_mem~79_q\ <= NOT \StackRotinas|mem~79_q\;
\StackRotinas|ALT_INV_mem~61_q\ <= NOT \StackRotinas|mem~61_q\;
\StackRotinas|ALT_INV_mem~69_q\ <= NOT \StackRotinas|mem~69_q\;
\StackRotinas|ALT_INV_mem~51_q\ <= NOT \StackRotinas|mem~51_q\;
\StackRotinas|ALT_INV_mem~78_q\ <= NOT \StackRotinas|mem~78_q\;
\StackRotinas|ALT_INV_mem~60_q\ <= NOT \StackRotinas|mem~60_q\;
\StackRotinas|ALT_INV_mem~68_q\ <= NOT \StackRotinas|mem~68_q\;
\StackRotinas|ALT_INV_mem~50_q\ <= NOT \StackRotinas|mem~50_q\;
\StackRotinas|ALT_INV_mem~77_q\ <= NOT \StackRotinas|mem~77_q\;
\StackRotinas|ALT_INV_mem~59_q\ <= NOT \StackRotinas|mem~59_q\;
\StackPointer|ALT_INV_DOUT\(2) <= NOT \StackPointer|DOUT\(2);
\StackPointer|ALT_INV_DOUT\(1) <= NOT \StackPointer|DOUT\(1);
\StackPointer|ALT_INV_DOUT\(0) <= NOT \StackPointer|DOUT\(0);
\StackRotinas|ALT_INV_mem~154_combout\ <= NOT \StackRotinas|mem~154_combout\;
\StackRotinas|ALT_INV_mem~150_combout\ <= NOT \StackRotinas|mem~150_combout\;
\StackRotinas|ALT_INV_mem~146_combout\ <= NOT \StackRotinas|mem~146_combout\;
\StackRotinas|ALT_INV_mem~142_combout\ <= NOT \StackRotinas|mem~142_combout\;
\StackRotinas|ALT_INV_mem~138_combout\ <= NOT \StackRotinas|mem~138_combout\;
\StackRotinas|ALT_INV_mem~134_combout\ <= NOT \StackRotinas|mem~134_combout\;
\StackRotinas|ALT_INV_mem~130_combout\ <= NOT \StackRotinas|mem~130_combout\;
\StackRotinas|ALT_INV_mem~126_combout\ <= NOT \StackRotinas|mem~126_combout\;
\StackRotinas|ALT_INV_mem~122_combout\ <= NOT \StackRotinas|mem~122_combout\;
\ALT_INV_PushPop[1]~input_o\ <= NOT \PushPop[1]~input_o\;
\ALT_INV_PushPop[0]~input_o\ <= NOT \PushPop[0]~input_o\;

\Dado_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \StackRotinas|mem~86_combout\,
	devoe => ww_devoe,
	o => \Dado_out[0]~output_o\);

\Dado_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \StackRotinas|mem~90_combout\,
	devoe => ww_devoe,
	o => \Dado_out[1]~output_o\);

\Dado_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \StackRotinas|mem~94_combout\,
	devoe => ww_devoe,
	o => \Dado_out[2]~output_o\);

\Dado_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \StackRotinas|mem~98_combout\,
	devoe => ww_devoe,
	o => \Dado_out[3]~output_o\);

\Dado_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \StackRotinas|mem~102_combout\,
	devoe => ww_devoe,
	o => \Dado_out[4]~output_o\);

\Dado_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \StackRotinas|mem~106_combout\,
	devoe => ww_devoe,
	o => \Dado_out[5]~output_o\);

\Dado_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \StackRotinas|mem~110_combout\,
	devoe => ww_devoe,
	o => \Dado_out[6]~output_o\);

\Dado_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \StackRotinas|mem~114_combout\,
	devoe => ww_devoe,
	o => \Dado_out[7]~output_o\);

\Dado_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \StackRotinas|mem~118_combout\,
	devoe => ww_devoe,
	o => \Dado_out[8]~output_o\);

\SP[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \StackPointer|DOUT\(0),
	devoe => ww_devoe,
	o => \SP[0]~output_o\);

\SP[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \StackPointer|DOUT\(1),
	devoe => ww_devoe,
	o => \SP[1]~output_o\);

\SP[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \StackPointer|DOUT\(2),
	devoe => ww_devoe,
	o => \SP[2]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\Dado_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado_in(0),
	o => \Dado_in[0]~input_o\);

\PushPop[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PushPop(0),
	o => \PushPop[0]~input_o\);

\PushPop[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PushPop(1),
	o => \PushPop[1]~input_o\);

\StackPointer|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackPointer|DOUT[0]~0_combout\ = !\StackPointer|DOUT\(0) $ (!\PushPop[0]~input_o\ $ (\PushPop[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackPointer|ALT_INV_DOUT\(0),
	datab => \ALT_INV_PushPop[0]~input_o\,
	datac => \ALT_INV_PushPop[1]~input_o\,
	combout => \StackPointer|DOUT[0]~0_combout\);

\StackPointer|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \StackPointer|DOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointer|DOUT\(0));

\SomaSubStackPointer|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaSubStackPointer|Add0~0_combout\ = !\StackPointer|DOUT\(1) $ (((!\StackPointer|DOUT\(0) & ((!\PushPop[0]~input_o\) # (\PushPop[1]~input_o\))) # (\StackPointer|DOUT\(0) & ((!\PushPop[1]~input_o\) # (\PushPop[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101100101010110010110010101011001011001010101100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackPointer|ALT_INV_DOUT\(1),
	datab => \StackPointer|ALT_INV_DOUT\(0),
	datac => \ALT_INV_PushPop[0]~input_o\,
	datad => \ALT_INV_PushPop[1]~input_o\,
	combout => \SomaSubStackPointer|Add0~0_combout\);

\StackPointer|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \SomaSubStackPointer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointer|DOUT\(1));

\SomaSubStackPointer|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaSubStackPointer|Add0~1_combout\ = ( \PushPop[1]~input_o\ & ( !\StackPointer|DOUT\(2) $ (((!\StackPointer|DOUT\(1)) # ((!\StackPointer|DOUT\(0)) # (\PushPop[0]~input_o\)))) ) ) # ( !\PushPop[1]~input_o\ & ( !\StackPointer|DOUT\(2) $ 
-- ((((!\PushPop[0]~input_o\) # (\StackPointer|DOUT\(0))) # (\StackPointer|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110010101010101100101010101010101100101010101011001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackPointer|ALT_INV_DOUT\(2),
	datab => \StackPointer|ALT_INV_DOUT\(1),
	datac => \StackPointer|ALT_INV_DOUT\(0),
	datad => \ALT_INV_PushPop[0]~input_o\,
	datae => \ALT_INV_PushPop[1]~input_o\,
	combout => \SomaSubStackPointer|Add0~1_combout\);

\StackPointer|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \SomaSubStackPointer|Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointer|DOUT\(2));

\StackRotinas|mem~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~158_combout\ = (\StackPointer|DOUT\(2) & (!\StackPointer|DOUT\(1) & \StackPointer|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackPointer|ALT_INV_DOUT\(2),
	datab => \StackPointer|ALT_INV_DOUT\(1),
	datac => \StackPointer|ALT_INV_DOUT\(0),
	combout => \StackRotinas|mem~158_combout\);

\StackRotinas|mem~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[0]~input_o\,
	ena => \StackRotinas|mem~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~59_q\);

\StackRotinas|mem~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~159_combout\ = (\StackPointer|DOUT\(2) & (\StackPointer|DOUT\(1) & \StackPointer|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackPointer|ALT_INV_DOUT\(2),
	datab => \StackPointer|ALT_INV_DOUT\(1),
	datac => \StackPointer|ALT_INV_DOUT\(0),
	combout => \StackRotinas|mem~159_combout\);

\StackRotinas|mem~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[0]~input_o\,
	ena => \StackRotinas|mem~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~77_q\);

\StackRotinas|mem~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~161_combout\ = (\StackPointer|DOUT\(2) & (\StackPointer|DOUT\(1) & !\StackPointer|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackPointer|ALT_INV_DOUT\(2),
	datab => \StackPointer|ALT_INV_DOUT\(1),
	datac => \StackPointer|ALT_INV_DOUT\(0),
	combout => \StackRotinas|mem~161_combout\);

\StackRotinas|mem~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[0]~input_o\,
	ena => \StackRotinas|mem~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~68_q\);

\StackRotinas|mem~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~162_combout\ = (!\StackPointer|DOUT\(2) & (!\StackPointer|DOUT\(1) & \StackPointer|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackPointer|ALT_INV_DOUT\(2),
	datab => \StackPointer|ALT_INV_DOUT\(1),
	datac => \StackPointer|ALT_INV_DOUT\(0),
	combout => \StackRotinas|mem~162_combout\);

\StackRotinas|mem~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[0]~input_o\,
	ena => \StackRotinas|mem~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~23_q\);

\StackRotinas|mem~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~163_combout\ = (!\StackPointer|DOUT\(2) & (\StackPointer|DOUT\(1) & \StackPointer|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackPointer|ALT_INV_DOUT\(2),
	datab => \StackPointer|ALT_INV_DOUT\(1),
	datac => \StackPointer|ALT_INV_DOUT\(0),
	combout => \StackRotinas|mem~163_combout\);

\StackRotinas|mem~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[0]~input_o\,
	ena => \StackRotinas|mem~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~41_q\);

\StackRotinas|mem~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~165_combout\ = (!\StackPointer|DOUT\(2) & (\StackPointer|DOUT\(1) & !\StackPointer|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackPointer|ALT_INV_DOUT\(2),
	datab => \StackPointer|ALT_INV_DOUT\(1),
	datac => \StackPointer|ALT_INV_DOUT\(0),
	combout => \StackRotinas|mem~165_combout\);

\StackRotinas|mem~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[0]~input_o\,
	ena => \StackRotinas|mem~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~32_q\);

\StackRotinas|mem~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~164_combout\ = (!\StackPointer|DOUT\(2) & (!\StackPointer|DOUT\(1) & !\StackPointer|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackPointer|ALT_INV_DOUT\(2),
	datab => \StackPointer|ALT_INV_DOUT\(1),
	datac => \StackPointer|ALT_INV_DOUT\(0),
	combout => \StackRotinas|mem~164_combout\);

\StackRotinas|mem~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[0]~input_o\,
	ena => \StackRotinas|mem~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~14_q\);

\StackRotinas|mem~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~122_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~14_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~23_q\)))) ) ) # ( 
-- \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~32_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~41_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~23_q\,
	datab => \StackRotinas|ALT_INV_mem~41_q\,
	datac => \StackRotinas|ALT_INV_mem~32_q\,
	datad => \StackPointer|ALT_INV_DOUT\(0),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackPointer|ALT_INV_DOUT\(2),
	datag => \StackRotinas|ALT_INV_mem~14_q\,
	combout => \StackRotinas|mem~122_combout\);

\StackRotinas|mem~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~160_combout\ = (\StackPointer|DOUT\(2) & (!\StackPointer|DOUT\(1) & !\StackPointer|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackPointer|ALT_INV_DOUT\(2),
	datab => \StackPointer|ALT_INV_DOUT\(1),
	datac => \StackPointer|ALT_INV_DOUT\(0),
	combout => \StackRotinas|mem~160_combout\);

\StackRotinas|mem~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[0]~input_o\,
	ena => \StackRotinas|mem~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~50_q\);

\StackRotinas|mem~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~86_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~122_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~122_combout\ & ((\StackRotinas|mem~50_q\))) # (\StackRotinas|mem~122_combout\ 
-- & (\StackRotinas|mem~59_q\))))) ) ) # ( \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~122_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~122_combout\ & ((\StackRotinas|mem~68_q\))) # 
-- (\StackRotinas|mem~122_combout\ & (\StackRotinas|mem~77_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~59_q\,
	datab => \StackRotinas|ALT_INV_mem~77_q\,
	datac => \StackRotinas|ALT_INV_mem~68_q\,
	datad => \StackPointer|ALT_INV_DOUT\(2),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackRotinas|ALT_INV_mem~122_combout\,
	datag => \StackRotinas|ALT_INV_mem~50_q\,
	combout => \StackRotinas|mem~86_combout\);

\Dado_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado_in(1),
	o => \Dado_in[1]~input_o\);

\StackRotinas|mem~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[1]~input_o\,
	ena => \StackRotinas|mem~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~60_q\);

\StackRotinas|mem~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[1]~input_o\,
	ena => \StackRotinas|mem~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~78_q\);

\StackRotinas|mem~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[1]~input_o\,
	ena => \StackRotinas|mem~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~69_q\);

\StackRotinas|mem~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[1]~input_o\,
	ena => \StackRotinas|mem~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~24_q\);

\StackRotinas|mem~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[1]~input_o\,
	ena => \StackRotinas|mem~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~42_q\);

\StackRotinas|mem~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[1]~input_o\,
	ena => \StackRotinas|mem~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~33_q\);

\StackRotinas|mem~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[1]~input_o\,
	ena => \StackRotinas|mem~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~15_q\);

\StackRotinas|mem~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~126_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~15_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~24_q\)))) ) ) # ( 
-- \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~33_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~42_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~24_q\,
	datab => \StackRotinas|ALT_INV_mem~42_q\,
	datac => \StackRotinas|ALT_INV_mem~33_q\,
	datad => \StackPointer|ALT_INV_DOUT\(0),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackPointer|ALT_INV_DOUT\(2),
	datag => \StackRotinas|ALT_INV_mem~15_q\,
	combout => \StackRotinas|mem~126_combout\);

\StackRotinas|mem~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[1]~input_o\,
	ena => \StackRotinas|mem~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~51_q\);

\StackRotinas|mem~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~90_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~126_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~126_combout\ & ((\StackRotinas|mem~51_q\))) # (\StackRotinas|mem~126_combout\ 
-- & (\StackRotinas|mem~60_q\))))) ) ) # ( \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~126_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~126_combout\ & ((\StackRotinas|mem~69_q\))) # 
-- (\StackRotinas|mem~126_combout\ & (\StackRotinas|mem~78_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~60_q\,
	datab => \StackRotinas|ALT_INV_mem~78_q\,
	datac => \StackRotinas|ALT_INV_mem~69_q\,
	datad => \StackPointer|ALT_INV_DOUT\(2),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackRotinas|ALT_INV_mem~126_combout\,
	datag => \StackRotinas|ALT_INV_mem~51_q\,
	combout => \StackRotinas|mem~90_combout\);

\Dado_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado_in(2),
	o => \Dado_in[2]~input_o\);

\StackRotinas|mem~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[2]~input_o\,
	ena => \StackRotinas|mem~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~61_q\);

\StackRotinas|mem~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[2]~input_o\,
	ena => \StackRotinas|mem~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~79_q\);

\StackRotinas|mem~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[2]~input_o\,
	ena => \StackRotinas|mem~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~70_q\);

\StackRotinas|mem~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[2]~input_o\,
	ena => \StackRotinas|mem~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~25_q\);

\StackRotinas|mem~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[2]~input_o\,
	ena => \StackRotinas|mem~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~43_q\);

\StackRotinas|mem~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[2]~input_o\,
	ena => \StackRotinas|mem~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~34_q\);

\StackRotinas|mem~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[2]~input_o\,
	ena => \StackRotinas|mem~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~16_q\);

\StackRotinas|mem~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~130_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~16_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~25_q\)))) ) ) # ( 
-- \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~34_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~43_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~25_q\,
	datab => \StackRotinas|ALT_INV_mem~43_q\,
	datac => \StackRotinas|ALT_INV_mem~34_q\,
	datad => \StackPointer|ALT_INV_DOUT\(0),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackPointer|ALT_INV_DOUT\(2),
	datag => \StackRotinas|ALT_INV_mem~16_q\,
	combout => \StackRotinas|mem~130_combout\);

\StackRotinas|mem~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[2]~input_o\,
	ena => \StackRotinas|mem~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~52_q\);

\StackRotinas|mem~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~94_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~130_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~130_combout\ & ((\StackRotinas|mem~52_q\))) # (\StackRotinas|mem~130_combout\ 
-- & (\StackRotinas|mem~61_q\))))) ) ) # ( \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~130_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~130_combout\ & ((\StackRotinas|mem~70_q\))) # 
-- (\StackRotinas|mem~130_combout\ & (\StackRotinas|mem~79_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~61_q\,
	datab => \StackRotinas|ALT_INV_mem~79_q\,
	datac => \StackRotinas|ALT_INV_mem~70_q\,
	datad => \StackPointer|ALT_INV_DOUT\(2),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackRotinas|ALT_INV_mem~130_combout\,
	datag => \StackRotinas|ALT_INV_mem~52_q\,
	combout => \StackRotinas|mem~94_combout\);

\Dado_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado_in(3),
	o => \Dado_in[3]~input_o\);

\StackRotinas|mem~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[3]~input_o\,
	ena => \StackRotinas|mem~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~62_q\);

\StackRotinas|mem~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[3]~input_o\,
	ena => \StackRotinas|mem~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~80_q\);

\StackRotinas|mem~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[3]~input_o\,
	ena => \StackRotinas|mem~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~71_q\);

\StackRotinas|mem~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[3]~input_o\,
	ena => \StackRotinas|mem~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~26_q\);

\StackRotinas|mem~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[3]~input_o\,
	ena => \StackRotinas|mem~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~44_q\);

\StackRotinas|mem~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[3]~input_o\,
	ena => \StackRotinas|mem~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~35_q\);

\StackRotinas|mem~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[3]~input_o\,
	ena => \StackRotinas|mem~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~17_q\);

\StackRotinas|mem~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~134_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~17_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~26_q\)))) ) ) # ( 
-- \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~35_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~44_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~26_q\,
	datab => \StackRotinas|ALT_INV_mem~44_q\,
	datac => \StackRotinas|ALT_INV_mem~35_q\,
	datad => \StackPointer|ALT_INV_DOUT\(0),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackPointer|ALT_INV_DOUT\(2),
	datag => \StackRotinas|ALT_INV_mem~17_q\,
	combout => \StackRotinas|mem~134_combout\);

\StackRotinas|mem~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[3]~input_o\,
	ena => \StackRotinas|mem~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~53_q\);

\StackRotinas|mem~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~98_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~134_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~134_combout\ & ((\StackRotinas|mem~53_q\))) # (\StackRotinas|mem~134_combout\ 
-- & (\StackRotinas|mem~62_q\))))) ) ) # ( \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~134_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~134_combout\ & ((\StackRotinas|mem~71_q\))) # 
-- (\StackRotinas|mem~134_combout\ & (\StackRotinas|mem~80_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~62_q\,
	datab => \StackRotinas|ALT_INV_mem~80_q\,
	datac => \StackRotinas|ALT_INV_mem~71_q\,
	datad => \StackPointer|ALT_INV_DOUT\(2),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackRotinas|ALT_INV_mem~134_combout\,
	datag => \StackRotinas|ALT_INV_mem~53_q\,
	combout => \StackRotinas|mem~98_combout\);

\Dado_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado_in(4),
	o => \Dado_in[4]~input_o\);

\StackRotinas|mem~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[4]~input_o\,
	ena => \StackRotinas|mem~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~63_q\);

\StackRotinas|mem~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[4]~input_o\,
	ena => \StackRotinas|mem~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~81_q\);

\StackRotinas|mem~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[4]~input_o\,
	ena => \StackRotinas|mem~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~72_q\);

\StackRotinas|mem~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[4]~input_o\,
	ena => \StackRotinas|mem~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~27_q\);

\StackRotinas|mem~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[4]~input_o\,
	ena => \StackRotinas|mem~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~45_q\);

\StackRotinas|mem~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[4]~input_o\,
	ena => \StackRotinas|mem~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~36_q\);

\StackRotinas|mem~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[4]~input_o\,
	ena => \StackRotinas|mem~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~18_q\);

\StackRotinas|mem~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~138_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~18_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~27_q\)))) ) ) # ( 
-- \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~36_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~45_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~27_q\,
	datab => \StackRotinas|ALT_INV_mem~45_q\,
	datac => \StackRotinas|ALT_INV_mem~36_q\,
	datad => \StackPointer|ALT_INV_DOUT\(0),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackPointer|ALT_INV_DOUT\(2),
	datag => \StackRotinas|ALT_INV_mem~18_q\,
	combout => \StackRotinas|mem~138_combout\);

\StackRotinas|mem~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[4]~input_o\,
	ena => \StackRotinas|mem~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~54_q\);

\StackRotinas|mem~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~102_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~138_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~138_combout\ & ((\StackRotinas|mem~54_q\))) # (\StackRotinas|mem~138_combout\ 
-- & (\StackRotinas|mem~63_q\))))) ) ) # ( \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~138_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~138_combout\ & ((\StackRotinas|mem~72_q\))) # 
-- (\StackRotinas|mem~138_combout\ & (\StackRotinas|mem~81_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~63_q\,
	datab => \StackRotinas|ALT_INV_mem~81_q\,
	datac => \StackRotinas|ALT_INV_mem~72_q\,
	datad => \StackPointer|ALT_INV_DOUT\(2),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackRotinas|ALT_INV_mem~138_combout\,
	datag => \StackRotinas|ALT_INV_mem~54_q\,
	combout => \StackRotinas|mem~102_combout\);

\Dado_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado_in(5),
	o => \Dado_in[5]~input_o\);

\StackRotinas|mem~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[5]~input_o\,
	ena => \StackRotinas|mem~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~64_q\);

\StackRotinas|mem~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[5]~input_o\,
	ena => \StackRotinas|mem~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~82_q\);

\StackRotinas|mem~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[5]~input_o\,
	ena => \StackRotinas|mem~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~73_q\);

\StackRotinas|mem~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[5]~input_o\,
	ena => \StackRotinas|mem~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~28_q\);

\StackRotinas|mem~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[5]~input_o\,
	ena => \StackRotinas|mem~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~46_q\);

\StackRotinas|mem~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[5]~input_o\,
	ena => \StackRotinas|mem~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~37_q\);

\StackRotinas|mem~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[5]~input_o\,
	ena => \StackRotinas|mem~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~19_q\);

\StackRotinas|mem~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~142_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~19_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~28_q\)))) ) ) # ( 
-- \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~37_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~46_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~28_q\,
	datab => \StackRotinas|ALT_INV_mem~46_q\,
	datac => \StackRotinas|ALT_INV_mem~37_q\,
	datad => \StackPointer|ALT_INV_DOUT\(0),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackPointer|ALT_INV_DOUT\(2),
	datag => \StackRotinas|ALT_INV_mem~19_q\,
	combout => \StackRotinas|mem~142_combout\);

\StackRotinas|mem~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[5]~input_o\,
	ena => \StackRotinas|mem~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~55_q\);

\StackRotinas|mem~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~106_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~142_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~142_combout\ & ((\StackRotinas|mem~55_q\))) # (\StackRotinas|mem~142_combout\ 
-- & (\StackRotinas|mem~64_q\))))) ) ) # ( \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~142_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~142_combout\ & ((\StackRotinas|mem~73_q\))) # 
-- (\StackRotinas|mem~142_combout\ & (\StackRotinas|mem~82_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~64_q\,
	datab => \StackRotinas|ALT_INV_mem~82_q\,
	datac => \StackRotinas|ALT_INV_mem~73_q\,
	datad => \StackPointer|ALT_INV_DOUT\(2),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackRotinas|ALT_INV_mem~142_combout\,
	datag => \StackRotinas|ALT_INV_mem~55_q\,
	combout => \StackRotinas|mem~106_combout\);

\Dado_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado_in(6),
	o => \Dado_in[6]~input_o\);

\StackRotinas|mem~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[6]~input_o\,
	ena => \StackRotinas|mem~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~65_q\);

\StackRotinas|mem~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[6]~input_o\,
	ena => \StackRotinas|mem~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~83_q\);

\StackRotinas|mem~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[6]~input_o\,
	ena => \StackRotinas|mem~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~74_q\);

\StackRotinas|mem~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[6]~input_o\,
	ena => \StackRotinas|mem~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~29_q\);

\StackRotinas|mem~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[6]~input_o\,
	ena => \StackRotinas|mem~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~47_q\);

\StackRotinas|mem~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[6]~input_o\,
	ena => \StackRotinas|mem~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~38_q\);

\StackRotinas|mem~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[6]~input_o\,
	ena => \StackRotinas|mem~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~20_q\);

\StackRotinas|mem~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~146_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~20_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~29_q\)))) ) ) # ( 
-- \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~38_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~47_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~29_q\,
	datab => \StackRotinas|ALT_INV_mem~47_q\,
	datac => \StackRotinas|ALT_INV_mem~38_q\,
	datad => \StackPointer|ALT_INV_DOUT\(0),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackPointer|ALT_INV_DOUT\(2),
	datag => \StackRotinas|ALT_INV_mem~20_q\,
	combout => \StackRotinas|mem~146_combout\);

\StackRotinas|mem~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[6]~input_o\,
	ena => \StackRotinas|mem~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~56_q\);

\StackRotinas|mem~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~110_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~146_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~146_combout\ & ((\StackRotinas|mem~56_q\))) # (\StackRotinas|mem~146_combout\ 
-- & (\StackRotinas|mem~65_q\))))) ) ) # ( \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~146_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~146_combout\ & ((\StackRotinas|mem~74_q\))) # 
-- (\StackRotinas|mem~146_combout\ & (\StackRotinas|mem~83_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~65_q\,
	datab => \StackRotinas|ALT_INV_mem~83_q\,
	datac => \StackRotinas|ALT_INV_mem~74_q\,
	datad => \StackPointer|ALT_INV_DOUT\(2),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackRotinas|ALT_INV_mem~146_combout\,
	datag => \StackRotinas|ALT_INV_mem~56_q\,
	combout => \StackRotinas|mem~110_combout\);

\Dado_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado_in(7),
	o => \Dado_in[7]~input_o\);

\StackRotinas|mem~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[7]~input_o\,
	ena => \StackRotinas|mem~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~66_q\);

\StackRotinas|mem~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[7]~input_o\,
	ena => \StackRotinas|mem~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~84_q\);

\StackRotinas|mem~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[7]~input_o\,
	ena => \StackRotinas|mem~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~75_q\);

\StackRotinas|mem~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[7]~input_o\,
	ena => \StackRotinas|mem~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~30_q\);

\StackRotinas|mem~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[7]~input_o\,
	ena => \StackRotinas|mem~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~48_q\);

\StackRotinas|mem~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[7]~input_o\,
	ena => \StackRotinas|mem~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~39_q\);

\StackRotinas|mem~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[7]~input_o\,
	ena => \StackRotinas|mem~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~21_q\);

\StackRotinas|mem~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~150_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~21_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~30_q\)))) ) ) # ( 
-- \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~39_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~48_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~30_q\,
	datab => \StackRotinas|ALT_INV_mem~48_q\,
	datac => \StackRotinas|ALT_INV_mem~39_q\,
	datad => \StackPointer|ALT_INV_DOUT\(0),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackPointer|ALT_INV_DOUT\(2),
	datag => \StackRotinas|ALT_INV_mem~21_q\,
	combout => \StackRotinas|mem~150_combout\);

\StackRotinas|mem~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[7]~input_o\,
	ena => \StackRotinas|mem~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~57_q\);

\StackRotinas|mem~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~114_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~150_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~150_combout\ & ((\StackRotinas|mem~57_q\))) # (\StackRotinas|mem~150_combout\ 
-- & (\StackRotinas|mem~66_q\))))) ) ) # ( \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~150_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~150_combout\ & ((\StackRotinas|mem~75_q\))) # 
-- (\StackRotinas|mem~150_combout\ & (\StackRotinas|mem~84_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~66_q\,
	datab => \StackRotinas|ALT_INV_mem~84_q\,
	datac => \StackRotinas|ALT_INV_mem~75_q\,
	datad => \StackPointer|ALT_INV_DOUT\(2),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackRotinas|ALT_INV_mem~150_combout\,
	datag => \StackRotinas|ALT_INV_mem~57_q\,
	combout => \StackRotinas|mem~114_combout\);

\Dado_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado_in(8),
	o => \Dado_in[8]~input_o\);

\StackRotinas|mem~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[8]~input_o\,
	ena => \StackRotinas|mem~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~67_q\);

\StackRotinas|mem~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[8]~input_o\,
	ena => \StackRotinas|mem~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~85_q\);

\StackRotinas|mem~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[8]~input_o\,
	ena => \StackRotinas|mem~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~76_q\);

\StackRotinas|mem~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[8]~input_o\,
	ena => \StackRotinas|mem~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~31_q\);

\StackRotinas|mem~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[8]~input_o\,
	ena => \StackRotinas|mem~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~49_q\);

\StackRotinas|mem~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[8]~input_o\,
	ena => \StackRotinas|mem~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~40_q\);

\StackRotinas|mem~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[8]~input_o\,
	ena => \StackRotinas|mem~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~22_q\);

\StackRotinas|mem~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~154_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~22_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~31_q\)))) ) ) # ( 
-- \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(0) & (((\StackRotinas|mem~40_q\ & !\StackPointer|DOUT\(2))))) # (\StackPointer|DOUT\(0) & (((\StackPointer|DOUT\(2))) # (\StackRotinas|mem~49_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~31_q\,
	datab => \StackRotinas|ALT_INV_mem~49_q\,
	datac => \StackRotinas|ALT_INV_mem~40_q\,
	datad => \StackPointer|ALT_INV_DOUT\(0),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackPointer|ALT_INV_DOUT\(2),
	datag => \StackRotinas|ALT_INV_mem~22_q\,
	combout => \StackRotinas|mem~154_combout\);

\StackRotinas|mem~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dado_in[8]~input_o\,
	ena => \StackRotinas|mem~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackRotinas|mem~58_q\);

\StackRotinas|mem~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \StackRotinas|mem~118_combout\ = ( !\StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~154_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~154_combout\ & ((\StackRotinas|mem~58_q\))) # (\StackRotinas|mem~154_combout\ 
-- & (\StackRotinas|mem~67_q\))))) ) ) # ( \StackPointer|DOUT\(1) & ( ((!\StackPointer|DOUT\(2) & (((\StackRotinas|mem~154_combout\)))) # (\StackPointer|DOUT\(2) & ((!\StackRotinas|mem~154_combout\ & ((\StackRotinas|mem~76_q\))) # 
-- (\StackRotinas|mem~154_combout\ & (\StackRotinas|mem~85_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StackRotinas|ALT_INV_mem~67_q\,
	datab => \StackRotinas|ALT_INV_mem~85_q\,
	datac => \StackRotinas|ALT_INV_mem~76_q\,
	datad => \StackPointer|ALT_INV_DOUT\(2),
	datae => \StackPointer|ALT_INV_DOUT\(1),
	dataf => \StackRotinas|ALT_INV_mem~154_combout\,
	datag => \StackRotinas|ALT_INV_mem~58_q\,
	combout => \StackRotinas|mem~118_combout\);

ww_Dado_out(0) <= \Dado_out[0]~output_o\;

ww_Dado_out(1) <= \Dado_out[1]~output_o\;

ww_Dado_out(2) <= \Dado_out[2]~output_o\;

ww_Dado_out(3) <= \Dado_out[3]~output_o\;

ww_Dado_out(4) <= \Dado_out[4]~output_o\;

ww_Dado_out(5) <= \Dado_out[5]~output_o\;

ww_Dado_out(6) <= \Dado_out[6]~output_o\;

ww_Dado_out(7) <= \Dado_out[7]~output_o\;

ww_Dado_out(8) <= \Dado_out[8]~output_o\;

ww_SP(0) <= \SP[0]~output_o\;

ww_SP(1) <= \SP[1]~output_o\;

ww_SP(2) <= \SP[2]~output_o\;
END structure;


