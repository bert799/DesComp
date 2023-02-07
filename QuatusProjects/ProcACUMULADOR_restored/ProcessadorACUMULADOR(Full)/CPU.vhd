library ieee;
use ieee.std_logic_1164.all;


entity CPU is
  port(
		CLK					: in std_logic;
		RESET					: in std_logic;
		INSTRUCTION_IN		: in std_logic_vector(12 DOWNTO 0);
		DATA_IN				: in std_logic_vector(7 DOWNTO 0);
		RD						: out std_logic;
		WR						: out std_logic;
		ROM_ADDRESS			: out std_logic_vector(8 DOWNTO 0);
		DATA_OUT				: out std_logic_vector(7 DOWNTO 0);
		DATA_ADDRESS		: out std_logic_vector(8 DOWNTO 0)
  );
end entity;


architecture arquitetura of CPU is

-- Faltam alguns sinais:
  signal SIG_FLAGEQ_TO_JMPLOGIC 	: std_logic;
  signal SIG_MUX_TO_ULA 			: std_logic_vector (7 downto 0);
  signal SIG_REGA_TO_ULA 			: std_logic_vector (7 downto 0);
  signal SIG_SAIDA_ULA 				: std_logic_vector (7 downto 0);
  signal SIG_SAIDA_INCREMENTA_PC : std_logic_vector (8 downto 0);
  signal SIG_SAIDA_DECODER 		: std_logic_vector(11 downto 0);
  signal SIG_JMPLOGIC_TO_MUXJMP 	: std_logic_vector(1 DOWNTO 0);
  signal SIG_MUXJMP_TO_PC			: std_logic_vector(8 DOWNTO 0);
  signal SIG_REGRET_TO_MUXJMP 	: std_logic_vector (8 downto 0);
  signal SIG_ROM_ADDR_TO_INC_PC	: std_logic_vector(8 DOWNTO 0);
  signal signalFlagZero : std_logic;

begin

-- Instanciando os componentes: 

-- O port map completo do MUX.
MUX_ULA :  entity work.muxGenerico2x1 	generic map (larguraDados => 8)
			port map(
				entradaA_MUX => DATA_IN,
				entradaB_MUX =>  INSTRUCTION_IN(7 DOWNTO 0),
				seletor_MUX => SIG_SAIDA_DECODER(6),
				saida_MUX => SIG_MUX_TO_ULA
			);

MUX_PC : entity work.muxGenerico4x1  generic map (larguraDados => 9)
			port map(
				entradaA_MUX =>  SIG_SAIDA_INCREMENTA_PC, 
				entradaB_MUX =>  INSTRUCTION_IN(8 DOWNTO 0),
				entradaC_MUX =>  SIG_REGRET_TO_MUXJMP,
				entradaD_MUX =>  "000000000",
				seletor_MUX =>  SIG_JMPLOGIC_TO_MUXJMP,
				saida_MUX =>  SIG_MUXJMP_TO_PC
			);


-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => 8)
          port map(DIN => SIG_SAIDA_ULA, DOUT => SIG_REGA_TO_ULA, ENABLE => SIG_SAIDA_DECODER(5), CLK => CLK, RST => RESET);
			 
REG_RET : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map(DIN => SIG_SAIDA_INCREMENTA_PC, DOUT => SIG_REGRET_TO_MUXJMP, ENABLE => SIG_SAIDA_DECODER(11), CLK => CLK, RST => RESET);

FLAG_EQ : entity work.flipFlop 
          port map(DIN => signalFlagZero, DOUT => SIG_FLAGEQ_TO_JMPLOGIC, ENABLE => SIG_SAIDA_DECODER(2), CLK => CLK, RST => RESET);
			
JMP_LOGIC : entity work.jumpLogic 
          port map(flagEqual => SIG_FLAGEQ_TO_JMPLOGIC, jmpIn => SIG_SAIDA_DECODER(10), jeqIn => SIG_SAIDA_DECODER(7), retIn => SIG_SAIDA_DECODER(9), jsrIn => SIG_SAIDA_DECODER(8), saida => SIG_JMPLOGIC_TO_MUXJMP);	
		
-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map(DIN => SIG_MUXJMP_TO_PC, DOUT => SIG_ROM_ADDR_TO_INC_PC, ENABLE => '1', CLK => CLK, RST => RESET);

INCREMENTA_PC :  entity work.somaConstante  generic map (larguraDados => 9, constante => 1)
        port map(entrada => SIG_ROM_ADDR_TO_INC_PC, saida => SIG_SAIDA_INCREMENTA_PC);


-- O port map completo da ULA:
ULA : entity work.ULASomaSub  generic map(larguraDados => 8)
          port map(entradaA => SIG_REGA_TO_ULA, entradaB => SIG_MUX_TO_ULA, saida => SIG_SAIDA_ULA, flagZero=>signalFlagZero,  seletor => SIG_SAIDA_DECODER(4 DOWNTO 3));

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
--ROM1 : entity work.memoria   generic map (dataWidth => 13, addrWidth => 9)
--          port map (Endereco => Endereco, Dado => Saida_ROM);
			 
--RAM1 : entity work.memoriaRAM  generic map(dataWidth => larguraDados, addrWidth => 8)
--			 port map(
--					addr => Saida_ROM(7 downto 0),
--					habilita => Saida_ROM(8),
--					we => SIG_SAIDA_DECODER(0),
--					re => SIG_SAIDA_DECODER(1),
--					dado_in => SIG_REGA_TO_ULA,
--					dado_out => ramToMux,
--					CLK => CLK
--			 );
			 
DECODER : entity work.decoderInstru port map(opCode => INSTRUCTION_IN(12 DOWNTO 9), saida => SIG_SAIDA_DECODER);
			 
--HEX_SEG_0 :  entity work.conversorHex7Seg
--        port map(
--				dadoHex => SIG_REGA_TO_ULA(3 DOWNTO 0),
--            apaga =>  '0',
--            negativo => '0',
--            overFlow =>  '0',
--            saida7seg => HEX0
--			);

ROM_ADDRESS <= SIG_ROM_ADDR_TO_INC_PC;
DATA_ADDRESS <= INSTRUCTION_IN(8 DOWNTO 0);
DATA_OUT <= SIG_REGA_TO_ULA;
RD <= SIG_SAIDA_DECODER(1);
WR <= SIG_SAIDA_DECODER(0);

end architecture;