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
-- Generated on "11/17/2022 17:17:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bancoReg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bancoReg_vhd_vec_tst IS
END bancoReg_vhd_vec_tst;
ARCHITECTURE bancoReg_arch OF bancoReg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dadoEscritaC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL enderecoA : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL enderecoB : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL enderecoC : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL escreveC : STD_LOGIC;
SIGNAL saidaA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaB : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT bancoReg
	PORT (
	clk : IN STD_LOGIC;
	dadoEscritaC : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	enderecoA : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	enderecoB : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	enderecoC : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	escreveC : IN STD_LOGIC;
	saidaA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : bancoReg
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dadoEscritaC => dadoEscritaC,
	enderecoA => enderecoA,
	enderecoB => enderecoB,
	enderecoC => enderecoC,
	escreveC => escreveC,
	saidaA => saidaA,
	saidaB => saidaB
	);
END bancoReg_arch;
