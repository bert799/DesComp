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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/03/2022 23:58:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          stackSubRotina
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY stackSubRotina_vhd_vec_tst IS
END stackSubRotina_vhd_vec_tst;
ARCHITECTURE stackSubRotina_arch OF stackSubRotina_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Dado_in : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL Dado_out : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL PushPop : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SP : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT stackSubRotina
	PORT (
	clk : IN STD_LOGIC;
	Dado_in : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	Dado_out : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	PushPop : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	SP : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : stackSubRotina
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Dado_in => Dado_in,
	Dado_out => Dado_out,
	PushPop => PushPop,
	SP => SP
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 7
	LOOP
		clk <= '0';
		WAIT FOR 10000 ps;
		clk <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- PushPop[1]
t_prcs_PushPop_1: PROCESS
BEGIN
	PushPop(1) <= '0';
	WAIT FOR 20000 ps;
	PushPop(1) <= '1';
	WAIT FOR 20000 ps;
	PushPop(1) <= '0';
WAIT;
END PROCESS t_prcs_PushPop_1;
-- PushPop[0]
t_prcs_PushPop_0: PROCESS
BEGIN
	PushPop(0) <= '0';
	WAIT FOR 40000 ps;
	PushPop(0) <= '1';
	WAIT FOR 20000 ps;
	PushPop(0) <= '0';
WAIT;
END PROCESS t_prcs_PushPop_0;
-- Dado_in[8]
t_prcs_Dado_in_8: PROCESS
BEGIN
	Dado_in(8) <= '0';
WAIT;
END PROCESS t_prcs_Dado_in_8;
-- Dado_in[7]
t_prcs_Dado_in_7: PROCESS
BEGIN
	Dado_in(7) <= '0';
WAIT;
END PROCESS t_prcs_Dado_in_7;
-- Dado_in[6]
t_prcs_Dado_in_6: PROCESS
BEGIN
	Dado_in(6) <= '0';
WAIT;
END PROCESS t_prcs_Dado_in_6;
-- Dado_in[5]
t_prcs_Dado_in_5: PROCESS
BEGIN
	Dado_in(5) <= '0';
WAIT;
END PROCESS t_prcs_Dado_in_5;
-- Dado_in[4]
t_prcs_Dado_in_4: PROCESS
BEGIN
	Dado_in(4) <= '0';
WAIT;
END PROCESS t_prcs_Dado_in_4;
-- Dado_in[3]
t_prcs_Dado_in_3: PROCESS
BEGIN
	Dado_in(3) <= '0';
WAIT;
END PROCESS t_prcs_Dado_in_3;
-- Dado_in[2]
t_prcs_Dado_in_2: PROCESS
BEGIN
	Dado_in(2) <= '0';
WAIT;
END PROCESS t_prcs_Dado_in_2;
-- Dado_in[1]
t_prcs_Dado_in_1: PROCESS
BEGIN
	Dado_in(1) <= '0';
	WAIT FOR 20000 ps;
	Dado_in(1) <= '1';
	WAIT FOR 20000 ps;
	Dado_in(1) <= '0';
WAIT;
END PROCESS t_prcs_Dado_in_1;
-- Dado_in[0]
t_prcs_Dado_in_0: PROCESS
BEGIN
	Dado_in(0) <= '0';
WAIT;
END PROCESS t_prcs_Dado_in_0;
END stackSubRotina_arch;
