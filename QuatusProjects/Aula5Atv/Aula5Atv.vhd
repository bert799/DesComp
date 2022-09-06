library ieee;
use ieee.std_logic_1164.all;

entity Aula5Atv is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 8;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    PC_OUT: out std_logic_vector(8 downto 0);
    LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of Aula5Atv is

-- Faltam alguns sinais:
  signal saida_MUX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal valor_MUX_A : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (5 downto 0);
  signal Codigo_operacao : std_logic_vector (12 downto 0);
  signal Endereco : std_logic_vector (8 downto 0);
  signal proxPC : std_logic_vector (8 downto 0);
  signal Operacao_ULA : std_logic_vector (1 downto 0);
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Reset_A : std_logic;
  signal Habilita_RAM : std_logic;
  signal Habilita_ler_RAM : std_logic;
  signal Habilita_escrever_RAM : std_logic;  
  signal Endereco_RAM : std_logic_vector(larguraDados-1 downto 0);
  signal Entrada_dados_RAM : std_logic_vector(larguraDados-1 downto 0);
  signal Saida_dados_RAM : std_logic_vector(larguraDados-1 downto 0);
  signal JMP : std_logic;
  signal MUX2_REGPC : std_logic_vector(8 downto 0);
  

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_dados_RAM,
                 entradaB_MUX =>  Codigo_operacao(7 downto 0),
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_REG1);

-- O port map completo do MUX.
MUX2 :  entity work.muxGenerico2x1  generic map (larguraDados => 9)
        port map( entradaA_MUX => proxPC,
                 entradaB_MUX =>  Codigo_operacao(8 downto 0),
                 seletor_MUX => JMP,
                 saida_MUX => MUX2_REGPC);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => Reset_A);

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map (DIN => proxPC, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => 9, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_REG1, saida => Saida_ULA, seletor => Operacao_ULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM port map (Endereco => Endereco, Dado => Codigo_operacao);

DEC1 : entity work.decoderInstru port map (opcode => Codigo_operacao(12 downto 9), Saida => Sinais_Controle);

RAM1 : entity work.memoriaRAM generic map(dataWidth => larguraDados, addrWidth => larguraEnderecos)
			port map (addr => Endereco_RAM , habilita => Habilita_RAM, we => Habilita_escrever_RAM, re => Habilita_ler_RAM, clk => CLK, dado_in => Entrada_dados_RAM, dado_out => Saida_dados_RAM);

selMUX <= Sinais_Controle(5);
Habilita_A <= Sinais_Controle(4);
Operacao_ULA <= Sinais_Controle(3 downto 2);
Habilita_ler_RAM <= Sinais_Controle(1);
Habilita_escrever_RAM <= Sinais_Controle(0);

Habilita_RAM <= Codigo_operacao(8);
Endereco_RAM <= Codigo_operacao(7 downto 0);

Entrada_dados_Ram <= REG1_ULA_A;

-- A ligacao dos LEDs:
LEDR (9) <= SelMUX;
LEDR (8) <= Habilita_A;
LEDR (7 downto 0) <= REG1_ULA_A;

PC_OUT <= Endereco;

end architecture;