library ieee;
use ieee.std_logic_1164.all;


entity Entrega4 is

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
		PC_OUT 			: out std_logic_vector(8 DOWNTO 0)
  );
  
end entity;


architecture arquitetura of Entrega4 is

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
	
	signal CLOCK_50_edge : std_logic;

begin

gravar:  if simulacao generate

	SIG_CLK <= KEY(0);

else generate

	detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLOCK_50_edge);
		  
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
				ENTRADA => KEY(0), 
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
				ENTRADA => KEY(1), 
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
				ENTRADA => KEY(2),
				HABILITA => SIG_HAB_KEY2,
				SAIDA => SIG_KEY_SW_OUT
			);
	
TRI_STATE_KEY3 : entity work.buffer_3_state
			port map(
				ENTRADA => KEY(3),
				HABILITA => SIG_HAB_KEY3,
				SAIDA => SIG_KEY_SW_OUT
			);
			
TRI_STATE_FPGA_RESET : entity work.buffer_3_state
			port map(
				ENTRADA => FPGA_RESET_N,
				HABILITA => SIG_HAB_FPGA_RESET,
				SAIDA => SIG_KEY_SW_OUT
			);

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

SIG_HAB_KEY0 <=  SIG_RD AND SIG_DECODER_LED_OUT(0) AND SIG_DECODER_BLOCO_OUT(5) AND SIG_CPU_DATA_ADDR_OUT(5);
SIG_HAB_KEY1 <=  SIG_RD AND SIG_DECODER_LED_OUT(1) AND SIG_DECODER_BLOCO_OUT(5) AND SIG_CPU_DATA_ADDR_OUT(5);
SIG_HAB_KEY2 <=  SIG_RD AND SIG_DECODER_LED_OUT(2) AND SIG_DECODER_BLOCO_OUT(5) AND SIG_CPU_DATA_ADDR_OUT(5);
SIG_HAB_KEY3 <=  SIG_RD AND SIG_DECODER_LED_OUT(3) AND SIG_DECODER_BLOCO_OUT(5) AND SIG_CPU_DATA_ADDR_OUT(5);
SIG_HAB_FPGA_RESET <= SIG_RD AND SIG_DECODER_LED_OUT(4) AND SIG_DECODER_BLOCO_OUT(5) AND SIG_CPU_DATA_ADDR_OUT(5);
			
SIG_HAB_HEX0 <= SIG_WR AND SIG_DECODER_LED_OUT(0) AND SIG_DECODER_BLOCO_OUT(4) AND SIG_CPU_DATA_ADDR_OUT(5);
SIG_HAB_HEX1 <= SIG_WR AND SIG_DECODER_LED_OUT(1) AND SIG_DECODER_BLOCO_OUT(4) AND SIG_CPU_DATA_ADDR_OUT(5);
SIG_HAB_HEX2 <= SIG_WR AND SIG_DECODER_LED_OUT(2) AND SIG_DECODER_BLOCO_OUT(4) AND SIG_CPU_DATA_ADDR_OUT(5);
SIG_HAB_HEX3 <= SIG_WR AND SIG_DECODER_LED_OUT(3) AND SIG_DECODER_BLOCO_OUT(4) AND SIG_CPU_DATA_ADDR_OUT(5);
SIG_HAB_HEX4 <= SIG_WR AND SIG_DECODER_LED_OUT(4) AND SIG_DECODER_BLOCO_OUT(4) AND SIG_CPU_DATA_ADDR_OUT(5);
SIG_HAB_HEX5 <= SIG_WR AND SIG_DECODER_LED_OUT(5) AND SIG_DECODER_BLOCO_OUT(4) AND SIG_CPU_DATA_ADDR_OUT(5);
			
SIG_HAB_LED_0_TO_7 <= SIG_WR AND SIG_DECODER_LED_OUT(0) AND SIG_DECODER_BLOCO_OUT(4) AND (NOT SIG_CPU_DATA_ADDR_OUT(5));
SIG_HAB_LED8 <= SIG_WR AND SIG_DECODER_LED_OUT(1) AND SIG_DECODER_BLOCO_OUT(4) AND (NOT SIG_CPU_DATA_ADDR_OUT(5));
SIG_HAB_LED9 <= SIG_WR AND SIG_DECODER_LED_OUT(2) AND SIG_DECODER_BLOCO_OUT(4) AND (NOT SIG_CPU_DATA_ADDR_OUT(5));

LEDR(7 DOWNTO 0) <= SIG_REG_LED_TO_LEDR;
LEDR(8) <= SIG_FF_LED_TO_LED8;
LEDR(9) <= SIG_FF_LED_TO_LED9;

SIG_RAM_TO_CPU_DATA <= SIG_KEY_SW_OUT;
PC_OUT <= SIG_CPU_TO_ROM;

end architecture;