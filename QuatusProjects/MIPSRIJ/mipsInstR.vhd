library ieee;
use ieee.std_logic_1164.all;

entity mipsInstR is
  -- Total de bits das entradas e saidas
  generic ( largura_dados : natural := 32;
            largura_endereco : natural := 32;
            simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
	 CLOCK_50 : in std_logic;
	 ULA_OP 	: in std_logic;
	 WR_RD 	: in std_logic;
	 funct 	: out std_logic_vector(5 downto 0);
	 PC_OUT 	: out std_logic_vector(largura_dados - 1 downto 0);
	 ULA_OUT : out std_logic_vector(largura_dados - 1 downto 0);
	 RD_addr : out std_logic_vector(4 downto 0);
	 RT_addr : out std_logic_vector(4 downto 0);
	 RS_addr : out std_logic_vector(4 downto 0);
	 RT_OUT 	: out std_logic_vector(largura_dados - 1 downto 0);
	 RS_OUT 	: out std_logic_vector(largura_dados - 1 downto 0)
  );
end entity;


architecture arquitetura of mipsInstR is

	signal CLK : std_logic;
	
	signal IncrementaPC_OUT : std_logic_vector(largura_dados-1 downto 0);
	signal PC_VAL 			: std_logic_vector(largura_dados-1 downto 0);
	
	signal Instrucao 		: std_logic_vector(largura_dados-1 downto 0);
	alias Opcode 			: std_logic_vector(5 downto 0) is Instrucao(31 downto 26);
	alias EnderecoRegS 	: std_logic_vector(4 downto 0) is Instrucao(25 downto 21);
	alias EnderecoRegT 	: std_logic_vector(4 downto 0) is Instrucao(20 downto 16);
	alias EnderecoRegD 	: std_logic_vector(4 downto 0) is Instrucao(15 downto 11);
	alias Funct_code 			: std_logic_vector(5 downto 0) is Instrucao(5 downto 0);
	
	signal RegS_OUT 		: std_logic_vector(largura_dados-1 downto 0);
	signal RegT_OUT 		: std_logic_vector(largura_dados-1 downto 0);
	signal ULA_REG_BLOCK : std_logic_vector(largura_dados-1 downto 0);
  
begin
-- Para facilitar o teste com clock lento e controlado manualmente
gravar:  if simulacao generate
CLK <= CLOCK_50;
else generate
CLK <= CLOCK_50;
end generate;

PC : entity work.registradorGenerico   generic map (larguraDados => largura_dados)
	port map (DIN => IncrementaPC_OUT, DOUT => PC_VAL, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => largura_dados, constante => 4)
	port map( entrada => PC_VAL, saida => IncrementaPC_OUT);
		  
ROM : entity work.ROMMIPS
	port map (Endereco => PC_VAL, Dado => Instrucao);
	
REG_BLOCK: entity work.bancoReg 
	port map (clk=> CLK,
				enderecoA=> EnderecoRegS,
				enderecoB=> EnderecoRegT,
				enderecoC=> EnderecoRegD,
				dadoEscritaC=> ULA_REG_BLOCK,
				escreveC=> WR_RD,
				saidaA=> REGS_OUT,
				saidaB=> REGT_OUT);

ULA : entity work.ULASomaSub  generic map(larguraDados => largura_dados)
	port map (entradaA => REGS_OUT, entradaB =>  REGT_OUT, saida => ULA_REG_BLOCK, seletor => ULA_OP);
	
funct <= Funct_code;
PC_OUT <= PC_VAL;
ULA_OUT <= ULA_REG_BLOCK;
RS_addr<= EnderecoRegS;
RT_addr<= EnderecoRegT;
RD_addr<= EnderecoRegD;
RS_OUT <= REGS_OUT;
RT_OUT <= REGT_OUT;

end architecture;