library ieee;
use ieee.std_logic_1164.all;

entity mipsInstructionI is
  -- Total de bits das entradas e saidas
  generic ( largura_dados : natural := 32;
            largura_endereco : natural := 32;
            simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
	 CLOCK_50: in std_logic;
	 ULA_OP 	: in std_logic;
	 WR,RD	: in std_logic;
	 EN_REG  : in std_logic;
	 Sel_MUX_ULA: in std_logic;
	 imediato_out: out std_logic_vector(15 downto 0);
	 PC_OUT 	: out std_logic_vector(largura_dados - 1 downto 0);
	 ULA_OUT : out std_logic_vector(largura_dados - 1 downto 0);
	 RAM_OUT : out std_logic_vector(largura_dados - 1 downto 0);
	 RT_addr : out std_logic_vector(4 downto 0);
	 RS_addr : out std_logic_vector(4 downto 0);
	 RT_OUT 	: out std_logic_vector(largura_dados - 1 downto 0);
	 RS_OUT 	: out std_logic_vector(largura_dados - 1 downto 0)
  );
end entity;


architecture arquitetura of mipsInstructionI is

	signal CLK : std_logic;
	
	signal IncrementaPC_OUT : std_logic_vector(largura_dados-1 downto 0);
	signal PC_VAL 			: std_logic_vector(largura_dados-1 downto 0);
	
	signal Instrucao 		: std_logic_vector(largura_dados-1 downto 0);
	alias Opcode 			: std_logic_vector(5 downto 0) is Instrucao(31 downto 26);
	alias EnderecoRegS 	: std_logic_vector(4 downto 0) is Instrucao(25 downto 21);
	alias EnderecoRegT 	: std_logic_vector(4 downto 0) is Instrucao(20 downto 16);
	alias Imediato		 	: std_logic_vector(15 downto 0) is Instrucao(15 downto 0);
	
	signal RegS_OUT 		: std_logic_vector(largura_dados-1 downto 0);
	signal RegT_OUT 		: std_logic_vector(largura_dados-1 downto 0);
	signal Imediato_extd : std_logic_vector(largura_dados-1 downto 0);
	signal ULA_RAM : std_logic_vector(largura_dados-1 downto 0);
	signal RAM_REG : std_logic_vector(largura_dados-1 downto 0);
	signal MUX_ULA_OUT : std_logic_vector(largura_dados-1 downto 0);
	signal PC_IN : std_logic_vector(largura_dados-1 downto 0);
	signal shift_imediato : std_logic_vector(largura_dados-1 downto 0);
	signal puloPC_OUT: std_logic_vector(largura_dados-1 downto 0);
	signal Flg_igual: std_logic;
  
begin
-- Para facilitar o teste com clock lento e controlado manualmente
gravar:  if simulacao generate
CLK <= CLOCK_50;
else generate
CLK <= CLOCK_50;
end generate;

PC : entity work.registradorGenerico   generic map (larguraDados => largura_dados)
	port map (DIN => PC_IN, DOUT => PC_VAL, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => largura_dados, constante => 4)
	port map( entrada => PC_VAL, saida => IncrementaPC_OUT);

shift_imediato(1 downto 0) <= "00";
shift_imediato(31 downto 2) <= Imediato_extd(29 downto 0);
puloPC: entity work.somadorGenerico generic map (larguraDados => largura_dados)
	port map (entradaA => IncrementaPC_OUT, entradaB => shift_imediato, saida => puloPC_OUT);
	
MUX_PC : entity work.muxGenerico2x1 generic map(larguraDados => largura_dados)
	port map (entradaA_MUX => IncrementaPC_OUT, entradaB_MUX => puloPC_OUT, seletor_MUX => Flg_igual, saida_MUX => PC_IN);
		  
ROM : entity work.ROMMIPS
	port map (Endereco => PC_VAL, Dado => Instrucao);
	
REG_BLOCK: entity work.bancoReg 
	port map (clk=> CLK,
				enderecoA=> EnderecoRegS,
				enderecoB=> EnderecoRegT,
				enderecoC=> EnderecoRegT,
				dadoEscritaC=> RAM_REG,
				escreveC=> EN_REG,
				saidaA=> REGS_OUT,
				saidaB=> REGT_OUT);
				
MUX_ULA: entity work.muxGenerico2x1 generic map(larguraDados => largura_dados)
	port map (entradaA_MUX => REGT_OUT, entradaB_MUX => Imediato_extd, seletor_MUX => Sel_MUX_ULA, saida_MUX => MUX_ULA_OUT);

ULA : entity work.ULASomaSub  generic map(larguraDados => largura_dados)
	port map (entradaA => REGS_OUT, entradaB =>  MUX_ULA_OUT, saida => ULA_RAM, flg_igual => Flg_igual, seletor => ULA_OP);
	
RAM: entity work.RAMMIPS
	port map (clk => CLK, Endereco => ULA_RAM, Dado_in => REGT_OUT, Dado_out => RAM_REG, we => WR, re => RD, habilita =>'1');

Estende_imediato : entity work.estendeSinalGenerico
          port map (estendeSinal_IN => Imediato, estendeSinal_OUT => Imediato_extd);	
	
imediato_out <= Imediato;
PC_OUT <= PC_VAL;
ULA_OUT <= ULA_RAM;
RS_addr<= EnderecoRegS;
RT_addr<= EnderecoRegT;
RS_OUT <= REGS_OUT;
RT_OUT <= REGT_OUT;
RAM_OUT <= RAM_REG;

end architecture;