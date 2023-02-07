-------------------------------------------------------------------------------
--
-- Interface para Teclado PS/2
--
-- Paulo Carlos F. Santos, paulocs5@insper.edu.br
-- 
--
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PS2_Keyboard_Interface is
	generic (NUM_STAGES : natural := 88);
	port (CLK       : in std_logic;    -- Clock do sistema 
			PS2_CLK   : in std_logic;    -- Clock do Teclado (vem do PS/2)
			PS2_Data  : in std_logic;    -- Dado com informacao da tecla (vem do PS/2)
--			readStb   : in std_logic;    -- Read strobe
			--Reset     : in std_logic;
			PS2_Code_Available : out std_logic;  --Flag indica novo codigo disponivel
			
			
			
			PS2_Code  : out std_logic_vector(63 downto 0); --Codigo vindo do Teclado
			
			falhaParidade : out std_logic_vector(7 downto 0);
			resetPARIDADE : in std_logic
			
   );
end entity;

architecture rtl of PS2_Keyboard_Interface is
	signal clk_shiftReg, FF1_FF2,  flagCodigo : std_logic;
	
	signal flagCodigo_A, flagCodigo_B, flagCodigo_C, flagCodigo_D, flagCodigo_E, flagCodigo_F, flagCodigo_G, flagCodigo_H: std_logic;
	
	signal paridade_A, paridade_B, paridade_C, paridade_D, paridade_E, paridade_F, paridade_G, paridade_H : std_logic;
	
	signal leituraKBD_A : std_logic_vector (NUM_STAGES-1 downto 0);
	signal valor0, valor1, valor2, valor3, valor4, valor5, valor6, valor7 : std_logic_vector (7 downto 0);

	
	signal passou52ms,  passou55ms :  std_logic;

	signal signalFALHAparidade : std_logic;
	
	begin
	
	
	
	
	interfaceBaseTempo : entity work.divisorGenerico_e_Interface
              port map (clk => CLK,
								--habilitaLeitura => '1',
								--limpaLeitura => '0',
								resetaContagem => not PS2_CLK,
								leitura52ms => passou52ms,
								leitura55ms => passou55ms);
  
	
	shiftRegisterA: entity work.serial_parallel_shift
		generic map ( NUM_STAGES => NUM_STAGES )
		port map (
			 clk => not clk_shiftReg,
			 reset => passou55ms,
			 serial_in => PS2_Data,
			 serial_out => open,
			 parallel_out => leituraKBD_A
	);
	

	FF1: entity work.Flip_Flop
		port map (
			clk => CLK,
			reset => '0',
			input => PS2_CLK,
			output => FF1_FF2
		);
	FF2: entity work.Flip_Flop
		port map (
			clk => CLK,
			reset => '0',
			input => FF1_FF2,
			output => clk_shiftReg
		);
		
		
	flagCodigo_A <= leituraKBD_A(0); --STOP Bit
	valor0 <= leituraKBD_A(2) & leituraKBD_A(3) & leituraKBD_A(4) & leituraKBD_A(5) & leituraKBD_A(6) & leituraKBD_A(7) & leituraKBD_A(8) & leituraKBD_A(9) when (paridade_A = '1') else (others => '0');
	--Verifica paridade:
	paridade_A <= '1';--leituraKBD_A(1) xor leituraKBD_A(2) xor leituraKBD_A(3) xor leituraKBD_A(4) xor leituraKBD_A(5) xor leituraKBD_A(6) xor leituraKBD_A(7) xor leituraKBD_A(8) xor leituraKBD_A(9);
	

	flagCodigo_B <= leituraKBD_A(11); --STOP Bit
	valor1 <= leituraKBD_A(13) & leituraKBD_A(14) & leituraKBD_A(15) & leituraKBD_A(16) & leituraKBD_A(17) & leituraKBD_A(18) & leituraKBD_A(19) & leituraKBD_A(20) when (paridade_B = '1') else (others => '0');
	--Verifica paridade:
	paridade_B <= '1';--leituraKBD_A(12) xor leituraKBD_A(13) xor leituraKBD_A(14) xor leituraKBD_A(15) xor leituraKBD_A(16) xor leituraKBD_A(17) xor leituraKBD_A(18) xor leituraKBD_A(19) xor leituraKBD_A(20);
	
	
	flagCodigo_C <= leituraKBD_A(22); --STOP Bit
	valor2 <= leituraKBD_A(24) & leituraKBD_A(25) & leituraKBD_A(26) & leituraKBD_A(27) & leituraKBD_A(28) & leituraKBD_A(29) & leituraKBD_A(30) & leituraKBD_A(31) when (paridade_C = '1') else (others => '0');
	--Verifica paridade:
	paridade_C <= '1';--leituraKBD_A(23) xor leituraKBD_A(24) xor leituraKBD_A(25) xor leituraKBD_A(26) xor leituraKBD_A(27) xor leituraKBD_A(28) xor leituraKBD_A(29) xor leituraKBD_A(30) xor leituraKBD_A(31);
	
	
	flagCodigo_D <= leituraKBD_A(33); --STOP Bit
	valor3 <= leituraKBD_A(35) & leituraKBD_A(36) & leituraKBD_A(37) & leituraKBD_A(38) & leituraKBD_A(39) & leituraKBD_A(40) & leituraKBD_A(41) & leituraKBD_A(42) when (paridade_D = '1') else (others => '0');
	--Verifica paridade:
	paridade_D <= '1';--leituraKBD_A(34) xor leituraKBD_A(35) xor leituraKBD_A(36) xor leituraKBD_A(37) xor leituraKBD_A(38) xor leituraKBD_A(39) xor leituraKBD_A(40) xor leituraKBD_A(41) xor leituraKBD_A(42);
	
	flagCodigo_E <= leituraKBD_A(44); --STOP Bit
	valor4 <= leituraKBD_A(46) & leituraKBD_A(47) & leituraKBD_A(48) & leituraKBD_A(49) & leituraKBD_A(50) & leituraKBD_A(51) & leituraKBD_A(52) & leituraKBD_A(53) when (paridade_E = '1') else (others => '0');
	--Verifica paridade:
	paridade_E <= '1';--leituraKBD_A(45) xor leituraKBD_A(46) xor leituraKBD_A(47) xor leituraKBD_A(48) xor leituraKBD_A(49) xor leituraKBD_A(50) xor leituraKBD_A(51) xor leituraKBD_A(52) xor leituraKBD_A(53);
	
	
	flagCodigo_F <= leituraKBD_A(55); --STOP Bit
	valor5 <= leituraKBD_A(57) & leituraKBD_A(58) & leituraKBD_A(59) & leituraKBD_A(60) & leituraKBD_A(61) & leituraKBD_A(62) & leituraKBD_A(63) & leituraKBD_A(64) when (paridade_F = '1') else (others => '0');
	--Verifica paridade:
	paridade_F <= '1';--leituraKBD_A(56) xor leituraKBD_A(57) xor leituraKBD_A(58) xor leituraKBD_A(59) xor leituraKBD_A(60) xor leituraKBD_A(61) xor leituraKBD_A(62) xor leituraKBD_A(63) xor leituraKBD_A(64);
	
	
	flagCodigo_G <= leituraKBD_A(66); --STOP Bit
	valor6 <= leituraKBD_A(68) & leituraKBD_A(69) & leituraKBD_A(70) & leituraKBD_A(71) & leituraKBD_A(72) & leituraKBD_A(73) & leituraKBD_A(74) & leituraKBD_A(75) when (paridade_G = '1') else (others => '0');
	--Verifica paridade:
	paridade_G <= '1';--leituraKBD_A(67) xor leituraKBD_A(68) xor leituraKBD_A(69) xor leituraKBD_A(70) xor leituraKBD_A(71) xor leituraKBD_A(72) xor leituraKBD_A(73) xor leituraKBD_A(74) xor leituraKBD_A(75);
	
	
	flagCodigo_H <= leituraKBD_A(77); --STOP Bit
	valor7 <= leituraKBD_A(79) & leituraKBD_A(80) & leituraKBD_A(81) & leituraKBD_A(82) & leituraKBD_A(83) & leituraKBD_A(84) & leituraKBD_A(85) & leituraKBD_A(86) when (paridade_H = '1') else (others => '0');
	--Verifica paridade:
	paridade_H <= '1';--leituraKBD_A(78) xor leituraKBD_A(79) xor leituraKBD_A(80) xor leituraKBD_A(81) xor leituraKBD_A(82) xor leituraKBD_A(83) xor leituraKBD_A(84) xor leituraKBD_A(85) xor leituraKBD_A(86);
	
	
	paridadeTEST : entity work.registradorGenerico generic map (larguraDados => 8)
			port map(
				DIN => paridade_H & paridade_G & paridade_F & paridade_E & paridade_D & paridade_C & paridade_B & paridade_A,
				DOUT => FALHAparidade,
				ENABLE => '1',
				CLK => passou52ms,
				RST => resetPARIDADE
				
				--FORCE_WRITE => signalPS2_Code_Available_REG
														
			);

	

	
	PS2_Code <= valor7 & valor6 & valor5 & valor4 & valor3 & valor2 & valor1 & valor0;
	PS2_Code_Available <= '1' when (passou52ms = '1') else '0'; --and ( valor1 = x"F0") else '0'; --Precisar acertar para quando a tecla estiver ok
end architecture;