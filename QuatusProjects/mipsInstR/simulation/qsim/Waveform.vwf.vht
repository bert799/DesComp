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
-- Generated on "10/30/2022 13:16:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mipsInstR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mipsInstR_vhd_vec_tst IS
END mipsInstR_vhd_vec_tst;
ARCHITECTURE mipsInstR_arch OF mipsInstR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL funct : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL PC_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RD_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RS_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RS_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RT_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RT_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULA_OP : STD_LOGIC;
SIGNAL ULA_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL WR_RD : STD_LOGIC;
COMPONENT mipsInstR
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	funct : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	PC_OUT : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	RD_addr : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	RS_addr : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	RS_OUT : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	RT_addr : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	RT_OUT : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULA_OP : IN STD_LOGIC;
	ULA_OUT : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	WR_RD : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mipsInstR
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	funct => funct,
	PC_OUT => PC_OUT,
	RD_addr => RD_addr,
	RS_addr => RS_addr,
	RS_OUT => RS_OUT,
	RT_addr => RT_addr,
	RT_OUT => RT_OUT,
	ULA_OP => ULA_OP,
	ULA_OUT => ULA_OUT,
	WR_RD => WR_RD
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 3
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 10000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;

-- ULA_OP
t_prcs_ULA_OP: PROCESS
BEGIN
	ULA_OP <= '1';
	WAIT FOR 20000 ps;
	ULA_OP <= '0';
WAIT;
END PROCESS t_prcs_ULA_OP;

-- WR_RD
t_prcs_WR_RD: PROCESS
BEGIN
	WR_RD <= '1';
	WAIT FOR 40000 ps;
	WR_RD <= '0';
WAIT;
END PROCESS t_prcs_WR_RD;
END mipsInstR_arch;
