library ieee;
use ieee.std_logic_1164.all;

entity MIPSentregaIntermediaria is
  -- Total de bits das entradas e saidas
  generic ( largura_dados : natural := 32;
            largura_endereco : natural := 32;
            simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
	 CLOCK_50			: in std_logic
  );
end entity;


architecture arquitetura of MIPSentregaIntermediaria is

	signal CLK : std_logic;
	
---Program Counter---
	signal IncrementaPC_OUT	: std_logic_vector(largura_dados-1 downto 0);
	signal PC_OUT 				: std_logic_vector(largura_dados-1 downto 0);
	signal MUX_PC_BEQ_OUT   : std_logic_vector(largura_dados-1 downto 0);
	signal PC_IN 				: std_logic_vector(largura_dados-1 downto 0);
	signal puloPC_BEQ_OUT	: std_logic_vector(largura_dados-1 downto 0);

---Instrução---
	signal Instrucao 			: std_logic_vector(largura_dados-1 downto 0);
	alias Opcode 				: std_logic_vector(5 downto 0) is Instrucao(31 downto 26);
	alias Endereco_Rs 		: std_logic_vector(4 downto 0) is Instrucao(25 downto 21);
	alias Endereco_Rt 		: std_logic_vector(4 downto 0) is Instrucao(20 downto 16);
	alias Endereco_Rd 		: std_logic_vector(4 downto 0) is Instrucao(15 downto 11);
	alias Imediato_I			: std_logic_vector(15 downto 0) is Instrucao(15 downto 0);
	alias Imediato_J			: std_logic_vector(25 downto 0) is Instrucao(25 downto 0);
	
---Pontos de Controle---
	signal palavra_Controle : std_logic_vector(8 downto 0);
	alias MUX_PC_BEQ_JMP		: std_logic is palavra_Controle(8);
	alias MUX_Rt_Rd			: std_logic is palavra_Controle(7);
	alias habEscritaReg		: std_logic is palavra_Controle(6);
	alias MUX_Rt_Imediato	: std_logic is palavra_Controle(5);
	alias MUX_ULA_MEM			: std_logic is palavra_Controle(3);
	alias BEQ					: std_logic is palavra_Controle(2);
	alias habLeituraMEM		: std_logic is palavra_Controle(1);
	alias habEscritaMEM		: std_logic is palavra_Controle(0);
	
---Pontos de Controle ULA---
	signal ULACtrl				: std_logic_vector(2 downto 0);
	alias sel_ULA 				: std_logic_vector(1 downto 0) is ULACtrl(1 downto 0);
	alias invB					: std_logic is ULACtrl(2);
	
---Imediato I---
	signal Imediato_I_extd 	: std_logic_vector(largura_dados-1 downto 0);
	signal shift_imediato_I : std_logic_vector(largura_dados-1 downto 0);
	
---Imediato J---	
	signal shift_imediato_J : std_logic_vector(largura_dados-1 downto 0);
	
---Banco Registradores---
	signal MUX_RD_ADDR_OUT 	: std_logic_vector(4 downto 0);
	signal RegBlock_IN	 	: std_logic_vector(largura_dados-1 downto 0);
	signal Rs_OUT 				: std_logic_vector(largura_dados-1 downto 0);
	signal Rt_OUT 				: std_logic_vector(largura_dados-1 downto 0);
	
---ULA---	
	signal ULA_OUT 			: std_logic_vector(largura_dados-1 downto 0);
	signal MUX_ULA_OUT 		: std_logic_vector(largura_dados-1 downto 0);
	signal Flg_igual			: std_logic;
	
---RAM---
	signal RAM_OUT : std_logic_vector(largura_dados-1 downto 0);
	
  
begin
-- Para facilitar o teste com clock lento e controlado manualmente
gravar:  if simulacao generate
CLK <= KEY(0);
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
	port map (entradaA_MUX => MUX_PC_BEQ_OUT, entradaB_MUX => shift_imediato_J, seletor_MUX => MUX_PC_BEQ_JMP, saida_MUX => PC_IN);

	
ROM : entity work.ROMMIPS
	port map (Endereco => PC_OUT, Dado => Instrucao);

	
DECODER: work.ComponenteDeControle
	port map (instrucao => Instrucao, palavraDeControle => palavra_Controle, ULACtrl => ULACtrl);
	
	
MUX_RD_ADDR: entity work.muxGenerico2x1 generic map(larguraDados => 5)
	port map (entradaA_MUX => Endereco_Rt, entradaB_MUX => Endereco_Rd, seletor_MUX => MUX_Rt_Rd, saida_MUX => MUX_RD_ADDR_OUT); 	

MUX_REG_BLOCK_IN: entity work.muxGenerico2x1 generic map(larguraDados => largura_dados)
	port map (entradaA_MUX => ULA_OUT, entradaB_MUX => RAM_OUT, seletor_MUX => MUX_ULA_MEM, saida_MUX => RegBlock_IN); 	
	
REG_BLOCK: entity work.bancoReg 
	port map (clk=> CLK,
				enderecoA=> Endereco_Rs,
				enderecoB=> Endereco_Rt,
				enderecoC=> MUX_RD_ADDR_OUT,
				dadoEscritaC=> RegBlock_IN,
				escreveC=> habEscritaReg,
				saidaA=> Rs_OUT,
				saidaB=> Rt_OUT);

				
MUX_ULA: entity work.muxGenerico2x1 generic map(larguraDados => largura_dados)
	port map (entradaA_MUX => Rt_OUT, entradaB_MUX => Imediato_I_extd, seletor_MUX => MUX_Rt_Imediato, saida_MUX => MUX_ULA_OUT);

ULA : entity work.ULAMIPS  generic map(larguraDados => largura_dados)
	port map (A => Rs_OUT, B =>  MUX_ULA_OUT, sel => sel_ULA, invB => invB, Saida => ULA_OUT, isEQ=> Flg_igual);
	
RAM: entity work.RAMMIPS
	port map (clk => CLK, Endereco => ULA_OUT, Dado_in => Rt_OUT, Dado_out => RAM_OUT, we => habEscritaMEM, re => habLeituraMEM, habilita =>'1');

	
Estende_imediato : entity work.estendeSinalGenerico
          port map (estendeSinal_IN => Imediato_I, estendeSinal_OUT => Imediato_I_extd);
			 
		
		
--------- LEDs ----------
REG8LED : entity work.registradorGenerico   generic map (larguraDados => largura_dados)
          port map (DIN => Barramento_Escrita, 
			           DOUT => GROUPLED_OUT,
						  ENABLE => Habilita8LED, 
						  CLK => CLK, 
						  RST => '0');



FFLED8 : entity work.flipFlop
          port map (DIN => Barramento_Escrita(0), DOUT => LED8_OUT, ENABLE => HabilitaLED8, CLK => CLK, RST => '0');
			 
FFLED9 : entity work.flipFlop
          port map (DIN => Barramento_Escrita(0), DOUT => LED9_OUT, ENABLE => HabilitaLED9, CLK => CLK, RST => '0');


LEDR(7 downto 0) <= GROUPLED_OUT;
LEDR(8) <= LED8_OUT;
LEDR(9) <= LED9_OUT;



-------- HEXs -----------
REGHEX0 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Barramento_Escrita(3 downto 0), 
			           DOUT => HEX0_OUT,
						  ENABLE => HabilitaHEX0, 
						  CLK => CLK, 
						  RST => '0');
						  
REGHEX1 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Barramento_Escrita(3 downto 0), 
			           DOUT => HEX1_OUT,
						  ENABLE => HabilitaHEX1, 
						  CLK => CLK, 
						  RST => '0');
						  
REGHEX2 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Barramento_Escrita(3 downto 0), 
			           DOUT => HEX2_OUT,
						  ENABLE => HabilitaHEX2, 
						  CLK => CLK, 
						  RST => '0');
						  
REGHEX3 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Barramento_Escrita(3 downto 0), 
			           DOUT => HEX3_OUT,
						  ENABLE => HabilitaHEX3, 
						  CLK => CLK, 
						  RST => '0');
						  
REGHEX4 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Barramento_Escrita(3 downto 0), 
			           DOUT => HEX4_OUT,
						  ENABLE => HabilitaHEX4, 
						  CLK => CLK, 
						  RST => '0');
						  
REGHEX5 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Barramento_Escrita(3 downto 0), 
			           DOUT => HEX5_OUT,
						  ENABLE => HabilitaHEX5, 
						  CLK => CLK, 
						  RST => '0');

H0 :  entity work.conversorHex7Seg
        port map(dadoHex => HEX0_OUT,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX0);

H1 :  entity work.conversorHex7Seg
        port map(dadoHex => HEX1_OUT,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX1);
					  
H2 :  entity work.conversorHex7Seg
        port map(dadoHex => HEX2_OUT,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX2);
					  
H3 :  entity work.conversorHex7Seg
        port map(dadoHex => HEX3_OUT,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX3);
					  
H4 :  entity work.conversorHex7Seg
        port map(dadoHex => HEX4_OUT,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX4);
			  
H5 :  entity work.conversorHex7Seg
        port map(dadoHex => HEX5_OUT,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX5);

end architecture;