library ieee;
use ieee.std_logic_1164.all;

entity CPU is
  -- Total de bits das entradas e saidas
	generic (
		larguraDados 			: natural := 8;
		larguraEnderecos 		: natural := 8;
		larguraEnderecosROM 	: natural := 9;
		simulacao 				: boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
	);
  
	port   (
		CLK				: in  std_logic;
		RST				: in  std_logic;
		Instruction_IN	: in  std_logic_vector (12 downto 0);
		Data_IN			: in  std_logic_vector (7 downto 0);
		RAM_WR			: out std_logic;
		RAM_RD			: out std_logic;
		Data_OUT			: out std_logic_vector (7 downto 0);
		Data_Address	: out std_logic_vector (8 downto 0);
		ROM_Address		: out std_logic_vector (8 downto 0)
	);
end entity;


architecture arquitetura of CPU is

--PC
	signal MUXPC_PC 					: std_logic_vector(larguraEnderecosROM -1 downto 0);
	signal PC_ROM1 					: std_logic_vector(larguraEnderecosROM -1 downto 0);

--IncrementaPC
	alias PC_IncrementaPC 			: std_logic_vector(larguraEnderecosROM -1 downto 0) is PC_ROM1;
	signal IncrementaPC_MUXPC 		: std_logic_vector(larguraEnderecosROM -1 downto 0);
	
--MUXPC
	signal Sel_MUXPC 					: std_logic;
	alias DEC1_MUXPC 					: std_logic is Sel_MUXPC;
	 
--DEC1	 
	signal Sel_MUX1 					: std_logic;
	signal Habilita_REGA 			: std_logic;
	signal Habilita_FLGZERO 		: std_logic;
	signal Habilita_ler_RAM1 		: std_logic;
	signal Habilita_escrever_RAM1 : std_logic;
	signal Operacao_ULA1 			: std_logic_vector(1 downto 0);	
	signal Op_code 					: std_logic_vector(3 downto 0);
	signal Sinais_Controle 			: std_logic_vector (6 downto 0);
	 
--MUX1
	signal Imediato					: std_logic_vector(larguraDados-1 downto 0);
	signal Dados_RAM1					: std_logic_vector(larguraDados-1 downto 0);
	signal MUX1_ULA1					: std_logic_vector(larguraDados-1 downto 0);
	alias ROM_MUX1						: std_logic_vector(larguraDados-1 downto 0) is Imediato;
	alias RAM1_MUX1					: std_logic_vector(larguraDados-1 downto 0) is Dados_RAM1;

--REGA
	signal ULA1_REGA 					: std_logic_vector(larguraDados-1 downto 0);
	signal REGA_ULA1 					: std_logic_vector(larguraDados-1 downto 0);
	alias REGA_RAM1 					: std_logic_vector(larguraDados-1 downto 0) is REGA_ULA1;
 
--ULA1
	signal ULA1_FLGZERO				: std_logic;
	
--FLGZERO
	signal FLGZERO_DEC1				: std_logic;
	
--ROM1
	signal Instrucao					: std_logic_vector(12 downto 0);
	
--RAM1
	alias Endereco_RAM1				: std_logic_vector(larguraEnderecos-1 downto 0) is Instrucao(larguraEnderecos-1 downto 0);
	alias Habilita_RAM1				: std_logic is instrucao(8);


begin

-- Entrada CPU
Instrucao 	<= instruction_IN;
Dados_RAM1 	<= Data_IN;


-- Instanciando os componentes:

-- O port map completo do MUX.
MUXPC :  entity work.muxGenerico2x1  generic map (larguraDados => 9)
        port map( entradaA_MUX => IncrementaPC_MUXPC,
                 entradaB_MUX =>  Instrucao(8 downto 0),
                 seletor_MUX => DEC1_MUXPC,
                 saida_MUX => MUXPC_PC);

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map (DIN => MUXPC_PC, DOUT => PC_ROM1, ENABLE => '1', CLK => CLK, RST => RST);

incrementaPC :  entity work.somaConstante  generic map (larguraDados => 9, constante => 1)
        port map( entrada => PC_IncrementaPC, saida => IncrementaPC_MUXPC);

-- O port map completo do MUX.
Imediato <= Instrucao(7 downto 0);
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => RAM1_MUX1,
                 entradaB_MUX =>  Imediato,
                 seletor_MUX => Sel_MUX1,
                 saida_MUX => MUX1_ULA1);
					  
-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => ULA1_REGA, DOUT => REGA_ULA1, ENABLE => Habilita_REGA, CLK => CLK, RST => RST);

-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REGA_ULA1, entradaB => MUX1_ULA1, saida => ULA1_REGA, flagZero => ULA1_FLGZERO, seletor => Operacao_ULA1);
			 
FLGZERO : entity work.flipFlop port map (DIN => ULA1_FLGZERO, DOUT => FLGZERO_DEC1, ENABLE => Habilita_FLGZERO, CLK => CLK, RST => RST);

Op_code <= Instrucao(12 downto 9);
DEC1 : entity work.decoderInstru port map (opcode => Op_code, flagZero => FLGZERO_DEC1, Saida => Sinais_Controle, logica_desvio => Sel_MUXPC);
Sel_MUX1 					<= Sinais_Controle(6);
Habilita_REGA 				<= Sinais_Controle(5);
Operacao_ULA1 				<= Sinais_Controle(4 downto 3);
Habilita_FLGZERO 			<= Sinais_Controle(2);
Habilita_ler_RAM1 		<= Sinais_Controle(1);
Habilita_escrever_RAM1 	<= Sinais_Controle(0);


-- Saídas da CPU
RAM_WR			<= Habilita_ler_RAM1;
RAM_RD 			<= Habilita_escrever_RAM1;
Data_OUT 		<= REGA_RAM1;
Data_address	<= Endereco_RAM1
ROM_Address		<= PC_ROM1;

end architecture;