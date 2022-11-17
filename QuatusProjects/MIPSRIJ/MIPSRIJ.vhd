library ieee;
use ieee.std_logic_1164.all;

entity MIPSRIJ is
  -- Total de bits das entradas e saidas
  generic ( largura_dados : natural := 32;
            largura_endereco : natural := 32;
            simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
	 CLOCK_50				: in std_logic;
	 ULA_OP 					: in std_logic;
	 WR,RD					: in std_logic;
	 EN_REG  				: in std_logic;
	 SEL_MUX_PC_JMP_OUT 	: out std_logic;
	 Sel_MUX_ULA			: in std_logic;
	 Sel_MUX_RD_ADDR 		: in std_logic;
	 Sel_MUX_RB_IN 		: in std_logic;
	 BEQ						: in std_logic;
	 shift_J					: out std_logic_vector(largura_dados - 1 downto 0);
	 RB_MUX_OUT				: out std_logic_vector(largura_dados - 1 downto 0);	 
	 instrucao_out 		: out std_logic_vector(largura_dados - 1 downto 0);
	 PC_OUT_sig 			: out std_logic_vector(largura_dados - 1 downto 0);
	 ULA_OUT_sig 			: out std_logic_vector(largura_dados - 1 downto 0);
	 RAM_OUT_sig 			: out std_logic_vector(largura_dados - 1 downto 0);
	 RT_addr					: out std_logic_vector(4 downto 0);
	 RS_addr 				: out std_logic_vector(4 downto 0);
	 RD_addr 				: out std_logic_vector(4 downto 0);
	 RT_OUT 					: out std_logic_vector(largura_dados - 1 downto 0);
	 RS_OUT 					: out std_logic_vector(largura_dados - 1 downto 0)
  );
end entity;


architecture arquitetura of MIPSRIJ is

	signal CLK : std_logic;
	
---Program Counter----
	signal IncrementaPC_OUT	: std_logic_vector(largura_dados-1 downto 0);
	signal PC_OUT 				: std_logic_vector(largura_dados-1 downto 0);
	signal MUX_PC_BEQ_OUT   : std_logic_vector(largura_dados-1 downto 0);
	signal PC_IN 				: std_logic_vector(largura_dados-1 downto 0);
	signal puloPC_BEQ_OUT	: std_logic_vector(largura_dados-1 downto 0);

---Instrução----	
	signal Instrucao 			: std_logic_vector(largura_dados-1 downto 0);
	alias Opcode 				: std_logic_vector(5 downto 0) is Instrucao(31 downto 26);
	alias EnderecoRegS 		: std_logic_vector(4 downto 0) is Instrucao(25 downto 21);
	alias EnderecoRegT 		: std_logic_vector(4 downto 0) is Instrucao(20 downto 16);
	alias EnderecoRegD 		: std_logic_vector(4 downto 0) is Instrucao(15 downto 11);
	alias Imediato_I			: std_logic_vector(15 downto 0) is Instrucao(15 downto 0);
	alias Imediato_J			: std_logic_vector(25 downto 0) is Instrucao(25 downto 0);
	
---Imediato I----	
	signal Imediato_I_extd 	: std_logic_vector(largura_dados-1 downto 0);
	signal shift_imediato_I : std_logic_vector(largura_dados-1 downto 0);
	
---Imediato J----	
	signal shift_imediato_J : std_logic_vector(largura_dados-1 downto 0);
	signal SEL_MUX_PC_JMP : std_logic;
	
---Banco Registradores----
	signal MUX_RD_ADDR_OUT 	: std_logic_vector(4 downto 0);
	signal RB_IN	 			: std_logic_vector(largura_dados-1 downto 0);
	signal RegS_OUT 			: std_logic_vector(largura_dados-1 downto 0);
	signal RegT_OUT 			: std_logic_vector(largura_dados-1 downto 0);
	
---ULA----	
	signal ULA_OUT 			: std_logic_vector(largura_dados-1 downto 0);
	signal MUX_ULA_OUT 		: std_logic_vector(largura_dados-1 downto 0);
	signal Flg_igual			: std_logic;
	
---RAM----
	signal RAM_OUT : std_logic_vector(largura_dados-1 downto 0);
	
  
begin
-- Para facilitar o teste com clock lento e controlado manualmente
gravar:  if simulacao generate
CLK <= CLOCK_50;
else generate
CLK <= CLOCK_50;
end generate;

PC : entity work.registradorGenerico   generic map (larguraDados => largura_dados)
	port map (DIN => PC_IN, DOUT => PC_OUT, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => largura_dados, constante => 4)
	port map( entrada => PC_OUT, saida => IncrementaPC_OUT);

shift_imediato_I(1 downto 0) <= "00";
shift_imediato_I(31 downto 2) <= Imediato_I_extd(29 downto 0);
puloPCBEQ: entity work.somadorGenerico generic map (larguraDados => largura_dados)
	port map (entradaA => IncrementaPC_OUT, entradaB => shift_imediato_I, saida => puloPC_BEQ_OUT);

MUX_PC_BEQ : entity work.muxGenerico2x1 generic map(larguraDados => largura_dados)
	port map (entradaA_MUX => IncrementaPC_OUT, entradaB_MUX => puloPC_BEQ_OUT, seletor_MUX => Flg_igual and BEQ, saida_MUX => MUX_PC_BEQ_OUT);

shift_imediato_J(1 downto 0) <= "00";
shift_imediato_J(27 downto 2) <= Imediato_J;
shift_imediato_J(31 downto 28) <= IncrementaPC_OUT(31 downto 28);	
MUX_PC_JMP : entity work.muxGenerico2x1 generic map(larguraDados => largura_dados)
	port map (entradaA_MUX => MUX_PC_BEQ_OUT, entradaB_MUX => shift_imediato_J, seletor_MUX => SEL_MUX_PC_JMP, saida_MUX => PC_IN);
	
ROM : entity work.ROMMIPS
	port map (Endereco => PC_OUT, Dado => Instrucao);

MUX_RD_ADDR: entity work.muxGenerico2x1 generic map(larguraDados => 5)
	port map (entradaA_MUX => EnderecoRegT, entradaB_MUX => EnderecoRegD, seletor_MUX => Sel_MUX_RD_ADDR, saida_MUX => MUX_RD_ADDR_OUT); 	

MUX_REG_BLOCK_IN: entity work.muxGenerico2x1 generic map(larguraDados => largura_dados)
	port map (entradaA_MUX => ULA_OUT, entradaB_MUX => RAM_OUT, seletor_MUX => Sel_MUX_RB_IN, saida_MUX => RB_IN); 	
	
REG_BLOCK: entity work.bancoReg 
	port map (clk=> CLK,
				enderecoA=> EnderecoRegS,
				enderecoB=> EnderecoRegT,
				enderecoC=> MUX_RD_ADDR_OUT,
				dadoEscritaC=> RB_IN,
				escreveC=> EN_REG,
				saidaA=> REGS_OUT,
				saidaB=> REGT_OUT);
				
MUX_ULA: entity work.muxGenerico2x1 generic map(larguraDados => largura_dados)
	port map (entradaA_MUX => REGT_OUT, entradaB_MUX => Imediato_I_extd, seletor_MUX => Sel_MUX_ULA, saida_MUX => MUX_ULA_OUT);

ULA : entity work.ULASomaSub  generic map(larguraDados => largura_dados)
	port map (entradaA => REGS_OUT, entradaB =>  MUX_ULA_OUT, saida => ULA_OUT, flg_igual => Flg_igual, seletor => ULA_OP);
	
RAM: entity work.RAMMIPS
	port map (clk => CLK, Endereco => ULA_OUT, Dado_in => REGT_OUT, Dado_out => RAM_OUT, we => WR, re => RD, habilita =>'1');

Estende_imediato : entity work.estendeSinalGenerico
          port map (estendeSinal_IN => Imediato_I, estendeSinal_OUT => Imediato_I_extd);	

instrucao_out <= instrucao;

RB_MUX_OUT <= RB_IN;
shift_J 	<= shift_imediato_J;
PC_OUT_sig 		<= PC_OUT;
ULA_OUT_sig 	<= ULA_OUT;
RS_addr			<= EnderecoRegS;
RT_addr			<= EnderecoRegT;
RD_addr			<= MUX_RD_ADDR_OUT;
RS_OUT			<= REGS_OUT;
RT_OUT 			<= REGT_OUT;
RAM_OUT_sig 	<= RAM_OUT;
SEL_MUX_PC_JMP <= '1' when Opcode = "000010" else '0';
SEL_MUX_PC_JMP_OUT <= SEL_MUX_PC_JMP;

end architecture;