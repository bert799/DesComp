library ieee;
use ieee.std_logic_1164.all;


entity ProcACUMULADOR is

  generic(
		simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );

  port(
		CLOCK_50			: in std_logic;
		KEY				: in std_logic_vector(3 DOWNTO 0);
		FPGA_RESET_N	: in std_logic;
		SW					: in std_logic_vector(9 DOWNTO 0);
		LEDR				: out std_logic_vector(9 DOWNTO 0);
		HEX0				: out std_logic_vector(6 DOWNTO 0);
		HEX1				: out std_logic_vector(6 DOWNTO 0);
		HEX2				: out std_logic_vector(6 DOWNTO 0);
		HEX3				: out std_logic_vector(6 DOWNTO 0);
		HEX4				: out std_logic_vector(6 DOWNTO 0);
		HEX5				: out std_logic_vector(6 DOWNTO 0);
		PC_OUT 			: out std_logic_vector(8 DOWNTO 0);
		
		----
		VGA_HS		:	out	std_logic;								--horiztonal sync pulse
		VGA_VS		:	out	std_logic;								--vertical sync pulse
		VGA_R			:	out	std_logic_vector(3 DOWNTO 0);
		VGA_G			:	out	std_logic_vector(3 DOWNTO 0);
		VGA_B			:	out	std_logic_vector(3 DOWNTO 0);
		
		
		----
		PS2_CLK     :	in		std_logic;		--clock from keyboard
		PS2_DAT     :	in		std_logic;		--data  from keyboard
		
		teste_PS2_CODE : out std_Logic_vector(23 downto 0)
  );
  
end entity;


architecture arquitetura of ProcACUMULADOR is

-- Sinais:
	signal SIG_CLK						: std_logic;
	signal SIG_RD						: std_logic;
	signal SIG_WR						: std_logic;
	signal SIG_HAB_LED_0_TO_7		: std_logic;
	signal SIG_HAB_LED8				: std_logic;
	signal SIG_HAB_LED9				: std_logic;
	signal SIG_FF_LED_TO_LED8		: std_logic;
	signal SIG_FF_LED_TO_LED9		: std_logic;
	signal SIG_HAB_HEX0				: std_logic;
	signal SIG_HAB_HEX1				: std_logic;
	signal SIG_HAB_HEX2				: std_logic;
	signal SIG_HAB_HEX3				: std_logic;
	signal SIG_HAB_HEX4				: std_logic;
	signal SIG_HAB_HEX5				: std_logic;
	signal SIG_HAB_KEY0				: std_logic;
	signal SIG_HAB_KEY1				: std_logic;
   signal SIG_HAB_KEY2				: std_logic;
	signal SIG_HAB_KEY3				: std_logic;
	signal SIG_HAB_FPGA_RESET		: std_logic;
	signal SIG_HAB_SW9				: std_logic;
	signal SIG_HAB_SW8				: std_logic;
	signal SIG_HAB_SW0_TO_7			: std_logic;
	signal SIG_DETECTOR_KEY0_OUT	: std_logic;
	signal SIG_DETECTOR_KEY1_OUT  : std_logic;
	signal SIG_DETECT_TSTATE_KEY0	: std_logic;
	signal SIG_DETECT_TSTATE_KEY1	: std_logic;
	signal SIG_LIMPA_LEITURA_KEY0	: std_logic;
	signal SIG_LIMPA_LEITURA_KEY1	: std_logic;
	signal SIG_CPU_TO_ROM 			: std_logic_vector(8 DOWNTO 0);
	signal SIG_ROM_TO_INSTRUCTION : std_logic_vector(12 DOWNTO 0);
	signal SIG_CPU_DATA_ADDR_OUT 	: std_logic_vector(8 DOWNTO 0);
	signal SIG_RAM_TO_CPU_DATA		: std_logic_vector(7 DOWNTO 0);
	signal SIG_CPU_TO_RAM_DATA 	: std_logic_vector(7 DOWNTO 0);
	signal SIG_DECODER_BLOCO_OUT	: std_logic_vector(7 DOWNTO 0);
	signal SIG_DECODER_LED_OUT		: std_logic_vector(7 DOWNTO 0);
	signal SIG_REG_LED_TO_LEDR		: std_logic_vector(7 DOWNTO 0);
	signal SIG_KEY_SW_OUT			: std_logic_vector(7	DOWNTO 0);
	
	
	----
	signal SIG_HAB_LIN_VGA, SIG_HAB_COL_VGA, SIG_HAB_DATA_VGA, SIG_HAB_WRITE_VGA, SIG_HAB_WRITE_VGA_OUT : std_logic;
	signal SIG_LIN_VGA, 		SIG_COL_VGA , SIG_DATA_VGA : std_logic_vector(7 downto 0);
	signal CLOCK_50_edge : std_logic;
	signal clock1s	: std_logic;
	signal SIG_DETECT_TSTATE_clock1s : std_logic;
	signal SIG_LIMPA_LEITURA_clock1s : std_logic; 
	signal SIG_HAB_clock1s : std_logic;
	
	
	
	----
	
	signal signalPS2_Code : std_logic_vector(63 downto 0);
	signal signalPS2_Code_TO_ASCII : std_logic_vector(7 downto 0);
	signal signalPS2_Code_Available_REG : std_logic;
	signal signalPS2_Code_TO_BUFFER : std_logic_vector(7 downto 0);
	signal SIG_HAB_PS2_CODE_LEITURA : std_logic;
	signal SIG_HAB_PS2_CODE_LIMPA : std_logic;
	
	signal signal_resetPARIDADE : std_logic;
	
	signal signalFALHAparidade : std_logic_vector(7 downto 0);
	
begin

gravar:  if simulacao generate

	--SIG_CLK <= KEY(0);

else generate

	--detectorSub0: work.edgeDetector(bordaSubida)
     --   port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => CLOCK_50_edge);
		  
end generate;



	

SIG_CLK <= CLOCK_50;
-- Instanciando os componentes:

CPU : entity work.CPU 
			port map(
				CLK => SIG_CLK,
				RESET => '0',
				INSTRUCTION_IN => SIG_ROM_TO_INSTRUCTION,
				DATA_IN => SIG_RAM_TO_CPU_DATA,
				RD => SIG_RD,
				WR => SIG_WR,
				ROM_ADDRESS => SIG_CPU_TO_ROM,
				DATA_OUT => SIG_CPU_TO_RAM_DATA,
				DATA_ADDRESS => SIG_CPU_DATA_ADDR_OUT
			);

RAM : entity work.memoriaRAM generic map(dataWidth => 8, addrWidth => 6)
			port map(
				addr => SIG_CPU_DATA_ADDR_OUT(5 DOWNTO 0),
				we => SIG_WR,
				re => SIG_RD,
				habilita => SIG_DECODER_BLOCO_OUT(0),
				clk => SIG_CLK,
				dado_in => SIG_CPU_TO_RAM_DATA,
				dado_out => SIG_RAM_TO_CPU_DATA
			);
			
ROM : entity work.memoria generic map(dataWidth => 13, addrWidth => 9)
			port map(
				Endereco => SIG_CPU_TO_ROM,
				Dado => SIG_ROM_TO_INSTRUCTION
			);
			
DECODER_BLOCO : entity work.decoder3x8 
			port map(
				entrada => SIG_CPU_DATA_ADDR_OUT(8 DOWNTO 6),
				saida => SIG_DECODER_BLOCO_OUT
			);
			
DECODER_LED : entity work.decoder3x8
			port map(
				entrada => SIG_CPU_DATA_ADDR_OUT(2 DOWNTO 0),
				saida => SIG_DECODER_LED_OUT
			);
			
REG_LED : entity work.registradorGenerico generic map (larguraDados => 8)
			port map(
				DIN => SIG_CPU_TO_RAM_DATA,
				DOUT => SIG_REG_LED_TO_LEDR,
				ENABLE => SIG_HAB_LED_0_TO_7,
				CLK => SIG_CLK,
				RST => '0'
			);
			
FF_LED8 : entity work.flipFlop
			port map(
				DIN => SIG_CPU_TO_RAM_DATA(0),
				DOUT => SIG_FF_LED_TO_LED8,
				ENABLE => SIG_HAB_LED8,
				CLK => SIG_CLK,
				RST => '0'
			);
			
FF_LED9 : entity work.flipFlop
			port map(
				DIN => SIG_CPU_TO_RAM_DATA(0),
				DOUT => SIG_FF_LED_TO_LED9,
				ENABLE => SIG_HAB_LED9,
				CLK => SIG_CLK,
				RST => '0'
			);
			
HEXREG0 : entity work.HexReg
			port map(
				CLK => SIG_CLK,
				DATA_IN => SIG_CPU_TO_RAM_DATA(3 DOWNTO 0),
				HABILITA => SIG_HAB_HEX0,
				HEX => HEX0
			);

HEXREG1 : entity work.HexReg
			port map(
				CLK => SIG_CLK,
				DATA_IN => SIG_CPU_TO_RAM_DATA(3 DOWNTO 0),
				HABILITA => SIG_HAB_HEX1,
				HEX => HEX1
			);

HEXREG2 : entity work.HexReg
			port map(
				CLK => SIG_CLK,
				DATA_IN => SIG_CPU_TO_RAM_DATA(3 DOWNTO 0),
				HABILITA => SIG_HAB_HEX2,
				HEX => HEX2
			);
			
HEXREG3 : entity work.HexReg
			port map(
				CLK => SIG_CLK,
				DATA_IN => SIG_CPU_TO_RAM_DATA(3 DOWNTO 0),
				HABILITA => SIG_HAB_HEX3,
				HEX => HEX3
			);
		
HEXREG4 : entity work.HexReg
			port map(
				CLK => SIG_CLK,
				DATA_IN => SIG_CPU_TO_RAM_DATA(3 DOWNTO 0),
				HABILITA => SIG_HAB_HEX4,
				HEX => HEX4
			);
			
			
			
--			HEX_SEG : entity work.conversorHex7Seg 
--			port map(
--				dadoHex => SIG_CPU_TO_ROM(3 downto 0),
--				apaga => '0',
--				negativo => '0',
--				overFlow => '0',
--				saida7Seg => HEX5
--			);
			
HEXREG5 : entity work.HexReg
			port map(
				CLK => SIG_CLK,
				DATA_IN => SIG_CPU_TO_RAM_DATA(3 DOWNTO 0),
				HABILITA => SIG_HAB_HEX5,
				HEX => HEX5
			);

DETECTOR_KEY0 : work.edgeDetector(bordaSubida)
			port map (
				CLK => CLOCK_50, 
				ENTRADA => not KEY(0), 
				SAIDA => SIG_DETECTOR_KEY0_OUT
			);
			
FLIPFLOP_KEY0: work.flipFlop
			port map (
				DIN => '1', 
				DOUT => SIG_DETECT_TSTATE_KEY0,
				ENABLE => '1',
				CLK => SIG_DETECTOR_KEY0_OUT,
				RST => SIG_LIMPA_LEITURA_KEY0
			);	
		
TRI_STATE_KEY0 : entity work.buffer_3_state
			port map(
				ENTRADA => SIG_DETECT_TSTATE_KEY0,
				HABILITA => SIG_HAB_KEY0,
				SAIDA => SIG_KEY_SW_OUT
			);

DETECTOR_KEY1 : work.edgeDetector(bordaSubida)
			port map (
				CLK => CLOCK_50, 
				ENTRADA => not KEY(1), 
				SAIDA => SIG_DETECTOR_KEY1_OUT
			);
			
FLIPFLOP_KEY1: work.flipFlop
			port map (
				DIN => '1', 
				DOUT => SIG_DETECT_TSTATE_KEY1,
				ENABLE => '1',
				CLK => SIG_DETECTOR_KEY1_OUT,
				RST => SIG_LIMPA_LEITURA_KEY1
			);	
			
TRI_STATE_KEY1 : entity work.buffer_3_state
			port map(
				ENTRADA => SIG_DETECT_TSTATE_KEY1,
				HABILITA => SIG_HAB_KEY1,
				SAIDA => SIG_KEY_SW_OUT
			);

TRI_STATE_KEY2 : entity work.buffer_3_state
			port map(
				ENTRADA => not KEY(2),
				HABILITA => SIG_HAB_KEY2,
				SAIDA => SIG_KEY_SW_OUT
			);
	
TRI_STATE_KEY3 : entity work.buffer_3_state
			port map(
				ENTRADA => not KEY(3),
				HABILITA => SIG_HAB_KEY3,
				SAIDA => SIG_KEY_SW_OUT
			);
			
--TRI_STATE_ : entity work.buffer_3_state
--			port map(
--				ENTRADA => FPGA_RESET_N,
--				HABILITA => SIG_HAB_FPGA_RESET,
--				SAIDA => SIG_KEY_SW_OUT
--			);

TRI_STATE_SW0_TO_7 : entity work.buffer_3_state_8portas
			port map(
				ENTRADA => SW(7 DOWNTO 0),
				HABILITA => SIG_HAB_SW0_TO_7,
				SAIDA => SIG_KEY_SW_OUT
			);
			
TRI_STATE_SW8 : entity work.buffer_3_state
			port map(
				ENTRADA => SW(8),
				HABILITA => SIG_HAB_SW8,
				SAIDA => SIG_KEY_SW_OUT
			);
			
TRI_STATE_SW9 : entity work.buffer_3_state
			port map(
				ENTRADA => SW(9),
				HABILITA => SIG_HAB_SW9,
				SAIDA => SIG_KEY_SW_OUT
			);
			

SIG_LIMPA_LEITURA_KEY0 <= SIG_WR AND SIG_CPU_DATA_ADDR_OUT(0) AND SIG_CPU_DATA_ADDR_OUT(1) AND SIG_CPU_DATA_ADDR_OUT(2) AND SIG_CPU_DATA_ADDR_OUT(3) AND SIG_CPU_DATA_ADDR_OUT(4) AND SIG_CPU_DATA_ADDR_OUT(5) AND SIG_CPU_DATA_ADDR_OUT(6) AND SIG_CPU_DATA_ADDR_OUT(7) AND SIG_CPU_DATA_ADDR_OUT(8);
SIG_LIMPA_LEITURA_KEY1 <= SIG_WR AND (NOT SIG_CPU_DATA_ADDR_OUT(0)) AND SIG_CPU_DATA_ADDR_OUT(1) AND SIG_CPU_DATA_ADDR_OUT(2) AND SIG_CPU_DATA_ADDR_OUT(3) AND SIG_CPU_DATA_ADDR_OUT(4) AND SIG_CPU_DATA_ADDR_OUT(5) AND SIG_CPU_DATA_ADDR_OUT(6) AND SIG_CPU_DATA_ADDR_OUT(7) AND SIG_CPU_DATA_ADDR_OUT(8);
			
SIG_HAB_SW0_TO_7 <= 	SIG_RD AND SIG_DECODER_LED_OUT(0) AND SIG_DECODER_BLOCO_OUT(5) AND (NOT SIG_CPU_DATA_ADDR_OUT(5));
SIG_HAB_SW8 <= SIG_RD AND SIG_DECODER_LED_OUT(1) AND SIG_DECODER_BLOCO_OUT(5) AND (NOT SIG_CPU_DATA_ADDR_OUT(5));
SIG_HAB_SW9 <= SIG_RD AND SIG_DECODER_LED_OUT(2) AND SIG_DECODER_BLOCO_OUT(5) AND (NOT SIG_CPU_DATA_ADDR_OUT(5));

SIG_HAB_KEY0 <=  SIG_RD AND SIG_DECODER_LED_OUT(0) AND SIG_DECODER_BLOCO_OUT(5) AND SIG_CPU_DATA_ADDR_OUT(5); --
SIG_HAB_KEY1 <=  SIG_RD AND SIG_DECODER_LED_OUT(1) AND SIG_DECODER_BLOCO_OUT(5) AND SIG_CPU_DATA_ADDR_OUT(5);
SIG_HAB_KEY2 <=  SIG_RD AND SIG_DECODER_LED_OUT(2) AND SIG_DECODER_BLOCO_OUT(5) AND SIG_CPU_DATA_ADDR_OUT(5);
SIG_HAB_KEY3 <=  SIG_RD AND SIG_DECODER_LED_OUT(3) AND SIG_DECODER_BLOCO_OUT(5) AND SIG_CPU_DATA_ADDR_OUT(5);
--SIG_HAB_FPGA_RESET <= SIG_RD AND SIG_DECODER_LED_OUT(4) AND SIG_DECODER_BLOCO_OUT(5) AND SIG_CPU_DATA_ADDR_OUT(5);
			
SIG_HAB_HEX0 <= SIG_WR AND SIG_DECODER_LED_OUT(0) AND SIG_DECODER_BLOCO_OUT(4) AND SIG_CPU_DATA_ADDR_OUT(5);
SIG_HAB_HEX1 <= SIG_WR AND SIG_DECODER_LED_OUT(1) AND SIG_DECODER_BLOCO_OUT(4) AND SIG_CPU_DATA_ADDR_OUT(5);
SIG_HAB_HEX2 <= SIG_WR AND SIG_DECODER_LED_OUT(2) AND SIG_DECODER_BLOCO_OUT(4) AND SIG_CPU_DATA_ADDR_OUT(5);
SIG_HAB_HEX3 <= SIG_WR AND SIG_DECODER_LED_OUT(3) AND SIG_DECODER_BLOCO_OUT(4) AND SIG_CPU_DATA_ADDR_OUT(5);
SIG_HAB_HEX4 <= SIG_WR AND SIG_DECODER_LED_OUT(4) AND SIG_DECODER_BLOCO_OUT(4) AND SIG_CPU_DATA_ADDR_OUT(5);
SIG_HAB_HEX5 <= SIG_WR AND SIG_DECODER_LED_OUT(5) AND SIG_DECODER_BLOCO_OUT(4) AND SIG_CPU_DATA_ADDR_OUT(5);
			
SIG_HAB_LED_0_TO_7 <= SIG_WR AND SIG_DECODER_LED_OUT(0) AND SIG_DECODER_BLOCO_OUT(4) AND (NOT SIG_CPU_DATA_ADDR_OUT(5));
SIG_HAB_LED8 <= SIG_WR AND SIG_DECODER_LED_OUT(1) AND SIG_DECODER_BLOCO_OUT(4) AND (NOT SIG_CPU_DATA_ADDR_OUT(5));
SIG_HAB_LED9 <= SIG_WR AND SIG_DECODER_LED_OUT(2) AND SIG_DECODER_BLOCO_OUT(4) AND (NOT SIG_CPU_DATA_ADDR_OUT(5));

SIG_HAB_clock1s <= SIG_RD AND
						 SIG_CPU_DATA_ADDR_OUT(8) AND
							SIG_CPU_DATA_ADDR_OUT(7) AND
						  SIG_CPU_DATA_ADDR_OUT(6) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(5)) AND
						  SIG_CPU_DATA_ADDR_OUT(4) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(3)) AND
						  SIG_CPU_DATA_ADDR_OUT(2) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(1)) AND
						   SIG_CPU_DATA_ADDR_OUT(0);--@469 1 1101 0101
						 
						 
SIG_LIMPA_LEITURA_clock1s <= SIG_WR AND
							 SIG_CPU_DATA_ADDR_OUT(8) AND
							SIG_CPU_DATA_ADDR_OUT(7) AND
						  SIG_CPU_DATA_ADDR_OUT(6) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(5)) AND
						 SIG_CPU_DATA_ADDR_OUT(4) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(3)) AND
						  SIG_CPU_DATA_ADDR_OUT(2) AND
						  SIG_CPU_DATA_ADDR_OUT(1) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(0)); --@470 1 1101 0110


divisor : entity work.divisorGenerico
            generic map (divisor => 3125000)   -- divide por 10.
            port map (clk => CLOCK_50, saida_clk => clock1s);
				
FF_clock1s : entity work.flipFlop
			port map (
				DIN => '1', 
				DOUT => SIG_DETECT_TSTATE_clock1s,
				ENABLE => '1',
				CLK => clock1s,
				RST => SIG_LIMPA_LEITURA_clock1s
			);	


TRI_STATE_clock1s : entity work.buffer_3_state
			port map(
				ENTRADA => SIG_DETECT_TSTATE_clock1s,
				HABILITA => SIG_HAB_clock1s,
				SAIDA => SIG_RAM_TO_CPU_DATA
			);
						
				
--Endereço 128
SIG_HAB_LIN_VGA <= SIG_WR AND
							(NOT SIG_CPU_DATA_ADDR_OUT(8)) AND
							SIG_CPU_DATA_ADDR_OUT(7) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(6)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(5)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(4)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(3)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(2)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(1)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(0));
						 
REG_LIN_VGA : entity work.registradorGenerico generic map (larguraDados => 8)
			port map(
				DIN => SIG_CPU_TO_RAM_DATA,
				DOUT => SIG_LIN_VGA,
				ENABLE => SIG_HAB_LIN_VGA,
				CLK => SIG_CLK,
				RST => '0'
			);
			
			
--Endereço 129
SIG_HAB_COL_VGA <= SIG_WR AND
							(NOT SIG_CPU_DATA_ADDR_OUT(8)) AND
							SIG_CPU_DATA_ADDR_OUT(7) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(6)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(5)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(4)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(3)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(2)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(1)) AND
						 (SIG_CPU_DATA_ADDR_OUT(0));
						 
REG_COL_VGA : entity work.registradorGenerico generic map (larguraDados => 8)
			port map(
				DIN => SIG_CPU_TO_RAM_DATA,
				DOUT => SIG_COL_VGA,
				ENABLE => SIG_HAB_COL_VGA,
				CLK => SIG_CLK,
				RST => '0'
			);
			
	
--Endereço 130
SIG_HAB_DATA_VGA <= SIG_WR AND
							(NOT SIG_CPU_DATA_ADDR_OUT(8)) AND
							SIG_CPU_DATA_ADDR_OUT(7) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(6)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(5)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(4)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(3)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(2)) AND
						 (SIG_CPU_DATA_ADDR_OUT(1)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(0));
						 
REG_DATA_VGA : entity work.registradorGenerico generic map (larguraDados => 8)
			port map(
				DIN => SIG_CPU_TO_RAM_DATA,
				DOUT => SIG_DATA_VGA,
				ENABLE => SIG_HAB_DATA_VGA,
				CLK => SIG_CLK,
				RST => '0'
			);
						
--Endereço 131
SIG_HAB_WRITE_VGA_OUT <= SIG_WR AND
							(NOT SIG_CPU_DATA_ADDR_OUT(8)) AND
							SIG_CPU_DATA_ADDR_OUT(7) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(6)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(5)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(4)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(3)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(2)) AND
						 (SIG_CPU_DATA_ADDR_OUT(1)) AND
						 (SIG_CPU_DATA_ADDR_OUT(0));
						 
--FF_WE : entity work.flipFlop
--			port map(
--				DIN => '1',
--				DOUT => SIG_HAB_WRITE_VGA_OUT,
--				ENABLE => SIG_HAB_WRITE_VGA,
--				CLK => SIG_CLK,
--				RST => (NOT SIG_HAB_WRITE_VGA)
--			);						 

				
	driverVGA: entity work.driverVGA  
	port map (CLOCK_50    => CLOCK_50,								--clock 50 MHz
		--FPGA_RESET_N:	IN		std_logic;								--active low asycnchronous reset
		VGA_HS		=> 	 VGA_HS,							--horiztonal sync pulse
		VGA_VS		=> 	 VGA_VS,										--vertical sync pulse
		VGA_R			=> 	 VGA_R,		
		VGA_G			=> 	 VGA_G,		
		VGA_B			=> 	 VGA_B,		
		posLin => 	SIG_LIN_VGA,	
		posCol =>  SIG_COL_VGA,
		dadoIN => SIG_DATA_VGA, 
		VideoRAMWREnable => SIG_HAB_WRITE_VGA_OUT
		);			
	

	PS2_Keyboard : entity work.PS2_Keyboard_Interface generic map (NUM_STAGES => 88)
			port map(
				CLK => SIG_CLK,
				PS2_CLK => PS2_CLK,
				PS2_Data => PS2_DAT,
				PS2_Code_Available => signalPS2_Code_Available_REG,
				PS2_Code => signalPS2_Code,
				resetPARIDADE => signal_resetPARIDADE,
				FALHAparidade => signalFALHAparidade
			);
			
			
			teste_PS2_CODE <= signalPS2_Code(23 downto 0);
			
			
			ROM_SCAN_TO_ASCII : entity work.memoriaSCAN_ASCII generic map(dataWidth => 8, addrWidth => 8)
			port map(
				Endereco => signalPS2_Code(7 downto 0),
				Dado => signalPS2_Code_TO_ASCII
			);
			
			REG_signalPS2_Code : entity work.registradorGenerico generic map (larguraDados => 8)
			port map(
				DIN => signalPS2_Code_TO_ASCII,
				DOUT => signalPS2_Code_TO_BUFFER,
				ENABLE => '1',
				CLK => signalPS2_Code_Available_REG,
				RST => SIG_HAB_PS2_CODE_LIMPA
				
				--FORCE_WRITE => signalPS2_Code_Available_REG
														
			);

			 TRI_STATE_S_PS2_code : entity work.buffer_3_state_8portas
			port map(
				ENTRADA =>  signalPS2_Code_TO_BUFFER,
				HABILITA => SIG_HAB_PS2_CODE_LEITURA,
				SAIDA => SIG_RAM_TO_CPU_DATA
			);	


	--Endereço 132					 
		 
	SIG_HAB_PS2_CODE_LEITURA	<= SIG_RD AND 
						(NOT SIG_CPU_DATA_ADDR_OUT(8)) AND
							SIG_CPU_DATA_ADDR_OUT(7) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(6)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(5)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(4)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(3)) AND
						 SIG_CPU_DATA_ADDR_OUT(2) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(1)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(0));
						 
						 
						 
						 
	--Endereço 133					 
				

			 
	SIG_HAB_PS2_CODE_LIMPA <= SIG_WR AND 
						 (NOT SIG_CPU_DATA_ADDR_OUT(8)) AND
						 SIG_CPU_DATA_ADDR_OUT(7) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(6)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(5)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(4)) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(3)) AND
						 SIG_CPU_DATA_ADDR_OUT(2) AND
						 (NOT SIG_CPU_DATA_ADDR_OUT(1)) AND
						 ( SIG_CPU_DATA_ADDR_OUT(0));
						 
					
					
			
			
			

--LEDR(7 DOWNTO 0) <= signalPS2_Code_TO_BUFFER;--SIG_REG_LED_TO_LEDR;
--LEDR(8) <= SIG_FF_LED_TO_LED8;
LEDR(7 downto 0) <=  signalFALHAparidade;--SIG_FF_LED_TO_LED9;

signal_resetPARIDADE <= not FPGA_RESET_N;

SIG_RAM_TO_CPU_DATA <= SIG_KEY_SW_OUT;
PC_OUT <= SIG_CPU_TO_ROM;

end architecture;