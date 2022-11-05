library ieee;
use ieee.std_logic_1164.all;

entity relogioBEQ is
  -- Total de bits das entradas e saidas
  generic ( largura_dados : natural := 8;
            largura_endereco : natural := 9;
            simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
	 
    KEY :          in std_logic_vector(3 downto 0);
	 FPGA_RESET_N : in std_logic;
	 SW :           in std_logic_vector(9 downto 0);
	 
	 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector (6 DOWNTO 0);
    LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of relogioBEQ is

-- Faltam alguns sinais:
  signal CLK : std_logic;
  signal Barramento_Leitura :   std_logic_vector(largura_dados-1 downto 0);
  signal Barramento_Escrita :   std_logic_vector(largura_dados-1 downto 0);
  signal Barramento_Enderecos : std_logic_vector(largura_endereco-1 downto 0);
  signal Barramento_Controle :  std_logic_vector(3 downto 0);
  
  signal Grupo_Habilita :       std_logic_vector(20 downto 0);
  
  signal ROM_Address :          std_logic_vector(largura_endereco-1 downto 0);
  signal Instrucao_IN :         std_logic_vector(15 downto 0);
  
  signal GROUPLED_OUT :         std_logic_vector(largura_dados-1 downto 0);
  signal LED8_OUT, LED9_OUT :   std_logic;
  
  signal HEX0_OUT, HEX1_OUT, HEX2_OUT, HEX3_OUT, HEX4_OUT, HEX5_OUT : std_logic_vector(3 downto 0);
  
  signal KEY0_DS, FFKEY0_OUT, FFKEYRES_OUT :  std_logic;
  signal KEY1_DS, FFKEY1_OUT, KEYRES_DS    :  std_logic;
  
  signal SP : std_logic_vector(3 downto 0);
  
  -- Alias:
  alias Wr:    std_logic is Barramento_Controle(0);
  alias Rd:    std_logic is Barramento_Controle(1);
  alias Reset: std_logic is Barramento_Controle(2);
  alias Clock: std_logic is Barramento_Controle(3);
  
  alias HabilitaRAM:  std_logic is Grupo_Habilita(0);
  
  alias Habilita8LED: std_logic is Grupo_Habilita(1);
  alias HabilitaLED8: std_logic is Grupo_Habilita(2);
  alias HabilitaLED9: std_logic is Grupo_Habilita(3);
  
  alias HabilitaHEX0: std_logic is Grupo_Habilita(4);
  alias HabilitaHEX1: std_logic is Grupo_Habilita(5);
  alias HabilitaHEX2: std_logic is Grupo_Habilita(6);
  alias HabilitaHEX3: std_logic is Grupo_Habilita(7);
  alias HabilitaHEX4: std_logic is Grupo_Habilita(8);
  alias HabilitaHEX5: std_logic is Grupo_Habilita(9);
  
  alias Habilita8SW:  std_logic is Grupo_Habilita(10);
  alias HabilitaSW8:  std_logic is Grupo_Habilita(11);
  alias HabilitaSW9:  std_logic is Grupo_Habilita(12);
  
  alias HabilitaKEY0: std_logic is Grupo_Habilita(13);
  alias HabilitaKEY1: std_logic is Grupo_Habilita(14);
  alias HabilitaKEY2: std_logic is Grupo_Habilita(15);
  alias HabilitaKEY3: std_logic is Grupo_Habilita(16);
  alias HabilitaKEY_FPGA_RESET: std_logic is Grupo_Habilita(17);
  
  alias ResetKey0Read: std_logic is Grupo_Habilita(18);
  alias ResetKey1Read: std_logic is Grupo_Habilita(19);
  alias ResetKeyResRead: std_logic is Grupo_Habilita(20);
  
  
begin
-- Para facilitar o teste com clock lento e controlado manualmente
gravar:  if simulacao generate
CLK <= KEY(3);
else generate
CLK <= CLOCK_50;
end generate;



-- arquivo processador.vhd - configura o processador para a aplicação (Estrutura Acumulador):
PROCESSADOR : entity work.processador   generic map (largura_dados => largura_dados, largura_enderecos => largura_endereco)
          port map (CLK            => CLK,
						  Data_IN        => Barramento_Leitura,
						  Instruction_IN => Instrucao_IN,
						  Data_OUT       => Barramento_Escrita,
						  Data_Address   => Barramento_Enderecos,
						  ROM_Address    => ROM_Address,
						  SP_overflow    => LEDR(8),
						  SP 				  => SP,
						  Control        => Barramento_Controle);


-- arquivo memoriaROM.vhd para configurar instruções - 15~12(Opcode); 11~9 (Reg Address); 8~0 (Endereço); 7~0 (Data)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 16, addrWidth => largura_endereco)
          port map (Endereco => ROM_Address, Dado => Instrucao_IN);


-- arquivo decoderEnderecos.vhd - garante o controle dos pontos de Habilita
DECEND : entity work.decoderEnderecos
          port map (barramentoEnderecos => Barramento_Enderecos, 
						  barramentoControle => Barramento_Controle, 
						  grupoHabilita => Grupo_Habilita);

						  
-------------------------	
------ PERIFÉRICOS ------
-------------------------


------ Memoria RAM ------
MEM : entity work.memoriaRAM   generic map (dataWidth => largura_dados, addrWidth => 6)
          port map (addr => Barramento_Enderecos(5 downto 0), 
						  we => Wr, 
						  re => Rd, 
						  habilita => HabilitaRAM, 
						  dado_in => Barramento_Escrita, 
						  dado_out => Barramento_Leitura, 
						  clk => CLK);


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
--LEDR(8) <= LED8_OUT;
LEDR(9) <= LED9_OUT;



-------- HEXs -----------
--REGHEX0 : entity work.registradorGenerico   generic map (larguraDados => 4)
--          port map (DIN => Barramento_Escrita(3 downto 0), 
--			           DOUT => HEX0_OUT,
--						  ENABLE => HabilitaHEX0, 
--						  CLK => CLK, 
--						  RST => '0');

REGHEX0 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => SP, 
			           DOUT => HEX0_OUT,
						  ENABLE => '1', 
						  CLK => CLK, 
						  RST => '0');
						  
REGHEX1 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Barramento_Escrita(3 downto 0), 
			           DOUT => HEX1_OUT,
						  ENABLE => HabilitaHEX1, 
						  CLK => CLK, 
						  RST => '0');
						  
--REGHEX2 : entity work.registradorGenerico   generic map (larguraDados => 4)
--          port map (DIN => Barramento_Escrita(3 downto 0), 
--			           DOUT => HEX2_OUT,
--						  ENABLE => HabilitaHEX2, 
--						  CLK => CLK, 
--						  RST => '0');

REGHEX2 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => ROM_Address(3 downto 0), 
			           DOUT => HEX2_OUT,
						  ENABLE => '1', 
						  CLK => CLK, 
						  RST => '0');
						  
--REGHEX3 : entity work.registradorGenerico   generic map (larguraDados => 4)
--          port map (DIN => Barramento_Escrita(3 downto 0), 
--			           DOUT => HEX3_OUT,
--						  ENABLE => HabilitaHEX3, 
--						  CLK => CLK, 
--						  RST => '0');

REGHEX3 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => ROM_Address(7 downto 4), 
			           DOUT => HEX3_OUT,
						  ENABLE => '1', 
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

					
					
-------- Chaves ---------

B3S_SW0to7 :  entity work.buffer_3_state_8portas
        port map(entrada => SW(7 downto 0), habilita =>  Habilita8SW, saida => Barramento_Leitura);

B3S_SW8 :  entity work.buffer_3_state_mask
        port map(entrada => SW(8), habilita =>  HabilitaSW8, saida => Barramento_Leitura(0));
		  
B3S_SW9 :  entity work.buffer_3_state_mask
        port map(entrada => SW(9), habilita =>  HabilitaSW9, saida => Barramento_Leitura(0));

		
	
-------- Botões ---------

DSKEY0: work.edgeDetector(bordaSubida)
        port map (clk => CLK, entrada => (not KEY(0)), saida => KEY0_DS);

FFKEY0 : entity work.flipFlop
          port map (DIN => '1', DOUT => FFKEY0_OUT, ENABLE => '1', CLK => KEY0_DS, RST => ResetKey0Read);

B3S_KEY0 :  entity work.buffer_3_state_mask
        port map(entrada => FFKEY0_OUT, habilita =>  HabilitaKEY0, saida => Barramento_Leitura(0));
		  


DSKEY1: work.edgeDetector(bordaSubida)
        port map (clk => CLK, entrada => (not KEY(1)), saida => KEY1_DS);

FFKEY1 : entity work.flipFlop
          port map (DIN => '1', DOUT => FFKEY1_OUT, ENABLE => '1', CLK => KEY1_DS, RST => ResetKey1Read);
		  
B3S_KEY1 :  entity work.buffer_3_state_mask
        port map(entrada => FFKEY1_OUT, habilita =>  HabilitaKEY1, saida => Barramento_Leitura(0));
		  
		  
		  
B3S_KEY2 :  entity work.buffer_3_state_mask
        port map(entrada => (not KEY(2)), habilita =>  HabilitaKEY2, saida => Barramento_Leitura(0));
		  
B3S_KEY3 :  entity work.buffer_3_state_mask
        port map(entrada => (not KEY(3)), habilita =>  HabilitaKEY3, saida => Barramento_Leitura(0));
		  
		  
		  
DSKEYRES: work.edgeDetector(bordaSubida)
        port map (clk => CLK, entrada => (not FPGA_RESET_N), saida => KEYRES_DS);

FFKEYRES : entity work.flipFlop
          port map (DIN => '1', DOUT => FFKEYRES_OUT, ENABLE => '1', CLK => KEYRES_DS, RST => ResetKeyResRead);
			 
B3S_KEY_RESET :  entity work.buffer_3_state_mask
        port map(entrada => FFKEYRES_OUT, habilita =>  HabilitaKEY_FPGA_RESET, saida => Barramento_Leitura(0));
		  

end architecture;