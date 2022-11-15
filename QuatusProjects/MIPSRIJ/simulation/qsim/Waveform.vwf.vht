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
-- Generated on "11/15/2022 15:31:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MIPSRIJ
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MIPSRIJ_vhd_vec_tst IS
END MIPSRIJ_vhd_vec_tst;
ARCHITECTURE MIPSRIJ_arch OF MIPSRIJ_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL EN_REG : STD_LOGIC;
SIGNAL imediato_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL PC_OUT_sig : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RAM_OUT_sig : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RD : STD_LOGIC;
SIGNAL RD_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RS_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RS_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RT_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RT_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SEL_MUX_PC_JMP : STD_LOGIC;
SIGNAL Sel_MUX_RB_IN : STD_LOGIC;
SIGNAL Sel_MUX_RD_ADDR : STD_LOGIC;
SIGNAL Sel_MUX_ULA : STD_LOGIC;
SIGNAL ULA_OP : STD_LOGIC;
SIGNAL ULA_OUT_sig : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL WR : STD_LOGIC;
COMPONENT MIPSRIJ
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	EN_REG : IN STD_LOGIC;
	imediato_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	PC_OUT_sig : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	RAM_OUT_sig : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	RD : IN STD_LOGIC;
	RD_addr : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	RS_addr : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	RS_OUT : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	RT_addr : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	RT_OUT : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	SEL_MUX_PC_JMP : IN STD_LOGIC;
	Sel_MUX_RB_IN : IN STD_LOGIC;
	Sel_MUX_RD_ADDR : IN STD_LOGIC;
	Sel_MUX_ULA : IN STD_LOGIC;
	ULA_OP : IN STD_LOGIC;
	ULA_OUT_sig : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	WR : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MIPSRIJ
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	EN_REG => EN_REG,
	imediato_out => imediato_out,
	PC_OUT_sig => PC_OUT_sig,
	RAM_OUT_sig => RAM_OUT_sig,
	RD => RD,
	RD_addr => RD_addr,
	RS_addr => RS_addr,
	RS_OUT => RS_OUT,
	RT_addr => RT_addr,
	RT_OUT => RT_OUT,
	SEL_MUX_PC_JMP => SEL_MUX_PC_JMP,
	Sel_MUX_RB_IN => Sel_MUX_RB_IN,
	Sel_MUX_RD_ADDR => Sel_MUX_RD_ADDR,
	Sel_MUX_ULA => Sel_MUX_ULA,
	ULA_OP => ULA_OP,
	ULA_OUT_sig => ULA_OUT_sig,
	WR => WR
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 11
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 10000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;

-- WR
t_prcs_WR: PROCESS
BEGIN
	WR <= '1';
	WAIT FOR 20000 ps;
	WR <= '0';
WAIT;
END PROCESS t_prcs_WR;

-- RD
t_prcs_RD: PROCESS
BEGIN
	RD <= '0';
	WAIT FOR 20000 ps;
	RD <= '1';
	WAIT FOR 20000 ps;
	RD <= '0';
WAIT;
END PROCESS t_prcs_RD;

-- EN_REG
t_prcs_EN_REG: PROCESS
BEGIN
	EN_REG <= '0';
	WAIT FOR 20000 ps;
	EN_REG <= '1';
	WAIT FOR 20000 ps;
	EN_REG <= '0';
WAIT;
END PROCESS t_prcs_EN_REG;

-- ULA_OP
t_prcs_ULA_OP: PROCESS
BEGIN
	ULA_OP <= '0';
WAIT;
END PROCESS t_prcs_ULA_OP;

-- Sel_MUX_RD_ADDR
t_prcs_Sel_MUX_RD_ADDR: PROCESS
BEGIN
	Sel_MUX_RD_ADDR <= '0';
WAIT;
END PROCESS t_prcs_Sel_MUX_RD_ADDR;

-- Sel_MUX_ULA
t_prcs_Sel_MUX_ULA: PROCESS
BEGIN
	Sel_MUX_ULA <= '1';
	WAIT FOR 40000 ps;
	Sel_MUX_ULA <= '0';
WAIT;
END PROCESS t_prcs_Sel_MUX_ULA;

-- Sel_MUX_RB_IN
t_prcs_Sel_MUX_RB_IN: PROCESS
BEGIN
	Sel_MUX_RB_IN <= '0';
	WAIT FOR 20000 ps;
	Sel_MUX_RB_IN <= '1';
	WAIT FOR 20000 ps;
	Sel_MUX_RB_IN <= '0';
WAIT;
END PROCESS t_prcs_Sel_MUX_RB_IN;

-- SEL_MUX_PC_JMP
t_prcs_SEL_MUX_PC_JMP: PROCESS
BEGIN
	SEL_MUX_PC_JMP <= '0';
WAIT;
END PROCESS t_prcs_SEL_MUX_PC_JMP;
END MIPSRIJ_arch;
