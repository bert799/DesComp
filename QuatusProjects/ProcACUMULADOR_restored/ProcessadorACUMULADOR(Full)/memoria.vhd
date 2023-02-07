library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria is
   generic (
          dataWidth: natural := 4;
          addrWidth: natural := 3
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoria is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);
	
  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";
  constant ANDop  : std_logic_vector(3 downto 0) := "1011";

	
  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
		
		
		
		
			
		tmp(0) := LDI & "000000000"; --pos COLUNA
		tmp(1) := STA & "000101010"; --End pos COLUNA
		
		tmp(2) := LDI & "000000000"; --pos LINHA
		tmp(3) := STA & "000101011"; --End pos LINHA
		
		tmp(4) := LDI & "000000000"; --prox PROXLINHA_COL
		tmp(5) := STA & "000101100"; --End prox PROXLINHA_COL
		
		tmp(6) := LDI & "000101010"; --valor 42
		tmp(7) := CEQ & "000101100"; --compara PROXLINHA_COL
		tmp(8) := JEQ & "000101010";
		--tmp(9) := JMP & "000000000";
		
		
		
		tmp(10) := JMP & "001001001";
		tmp(11) := JSR & "101111111";	--PULA PARA ESCREVER ARQCOMP
		tmp(12) := LDI & "000000001"; 
		tmp(13) := SOMA & "000101100"; --SOMA prox PROXLINHA_COL/COL
		tmp(14) := STA & "000101100"; --End prox PROXLINHA_COL
		tmp(15) := STA & "000101010";
		tmp(16) := STA & "000101011";
		
		tmp(17) := LDI & "000000001"; --
		tmp(18) := STA & "000111111";
		tmp(19) := LDA & "111010101"; -- Lê Base_TEMPO
		tmp(20) := CEQ & "000111111";
		tmp(21) := JEQ & "000010111";
		tmp(22) := JMP & "000010011";
		
		tmp(23) := STA & "111010110"; -- Limpa Base_TEMPO
		tmp(24) := JMP & "000000110"; -- Jump Chamando JSR
		
		
		
		
		
		
		
		
		
		
		
		tmp (43) := LDI  & "000000000"; -- CARREGA DADO
		tmp (44) := STA  & "010000010"; -- GRAVA DADO
		
		tmp(45) := LDI  & "000000000"; -- CARREGA 0
		tmp (46) := STA  & "000001111"; --guarda MEM[15]
		tmp (47) := STA  & "000010000"; --guarda MEM[16]
		
		
		tmp (48) :=  LDA & "000001111";
		tmp (49) := STA  & "010000000"; -- GRAVA LINHA
		tmp(50) := LDA  & "000010000";
		tmp (51) := STA  & "010000001"; -- GRAVA COL
		
		tmp (52) := STA  & "010000011"; -- ESCREVE TELA
																
		
		tmp (53) := LDI & "000000001";
		tmp (54) := SOMA  & "000001111";
		tmp (55) := STA  & "000001111"; --guarda MEM[15]
		tmp (56) := LDI &  "000010011";
		tmp (57) := CEQ & "000001111";
		tmp (58) := JEQ & "000111100";
		tmp (59) := JMP & "000110000";
		
		tmp (60) := LDI & "000000001";
		tmp (61) := SOMA & "000010000";
		tmp (62) := STA  & "000010000"; --guarda MEM[16]
		tmp (63) := LDI & "000001110";
		tmp (64) := CEQ & "000010000";
		tmp (65) := JEQ & "001000011";
		tmp (66) := JMP & "000110000";
		tmp (67) := JMP & "000000000";
		
		
		
		
		tmp (73) := LDI  & "000000000"; -- CARREGA DADO
		tmp (74) := STA  & "010000010"; -- GRAVA DADO
		
		tmp(75) := LDI  & "000000000"; -- CARREGA 0
		tmp (76) := STA  & "000001111"; --guarda MEM[15]
		tmp (77) := STA  & "000010000"; --guarda MEM[16]
		
		
		tmp (78) :=  LDA & "000001111";
		tmp (79) := STA  & "010000000"; -- GRAVA LINHA
		tmp(80) := LDA  & "000010000";
		tmp (81) := STA  & "010000001"; -- GRAVA COL
		
		tmp (82) := STA  & "010000011"; -- ESCREVE TELA
		
		
		tmp (83) := LDI & "000000001";
		tmp (84) := SOMA  & "000001111";
		tmp (85) := STA  & "000001111"; --guarda MEM[15]
		tmp (86) := LDI &  "000010011";
		tmp (87) := CEQ & "000001111";
		tmp (88) := JEQ & "001011010";
		tmp (89) := JMP & "001001110";
		
		tmp (90) := LDI & "000000001";
		tmp (91) := SOMA & "000010000";
		tmp (92) := STA  & "000010000"; --guarda MEM[16]
		tmp (93) := LDI & "000001110";
		tmp (94) := CEQ & "000010000";
		tmp (95) := JEQ & "001100001";
		tmp (96) := JMP & "001001110";
		tmp (97) := JMP & "000001011";
		
		
		
--		tmp(126)  := LDA  & "000101011"; -- CARREGA LINHA
--		  tmp(127)  := STA  & "010000000"; -- GRAVA LINHA
--							tmp(128)  := LDI  & "000000000"; -- CARREGA COL
--							tmp(129) :=  SOMA & "000101010";
--							tmp(130) := STA & "000101010";
--	
--		  tmp(131)  := STA  & "010000001"; -- GRAVA COL	  
--	--tmp(132)  := LDI  & "000000000"; -- CARREGA DADO
--	tmp(132)  := LDI  & "000011111"; -- CARREGA DADO
--		  tmp(133)  := STA  & "010000010"; -- GRAVA DADO que esta no acumulador e tambem no HEX
--		  tmp(134)  := STA  & "010000011"; -- ESCREVE TELA
--		 -- tmp(7)  := STA  & "010000011"; -- ESCREVE TELA
--		  
--		  tmp(135)  := LDA  & "000101011"; -- CARREGA LINHA
--		  tmp(136)  := STA  & "010000000"; -- GRAVA LINHA		  
--							tmp(137)  := LDI  & "000000001"; -- CARREGA COL
--							tmp(138) :=  SOMA & "000101010";
--							tmp(139) := STA & "000101010";
--		  tmp(140)  := STA  & "010000001"; -- GRAVA COL	  
--	--tmp(141)  := LDI  & "000000000"; -- CARREGA DADO
--	tmp(141)  := LDI  & "000011111"; -- CARREGA DADO
--		  tmp(142)  := STA  & "010000010"; -- GRAVA DADO 
--		  tmp(143)  := STA  & "010000011"; -- ESCREVE TELA	
--		--	 tmp(15)  := STA  & "010000011"; -- ESCREVE TELA
--	
--		  
--		  tmp(144)  := LDA  & "000101011"; -- CARREGA LINHA
--		  tmp(145)  := STA  & "010000000"; -- GRAVA LINHA		  
--								tmp(146)  := LDI  & "000000001"; -- CARREGA COL
--							tmp(147) :=  SOMA & "000101010";
--							tmp(148) := STA & "000101010";
--		  tmp(149)  := STA  & "010000001"; -- GRAVA COL	  
--	--tmp(150)  := LDI  & "000000000"; -- CARREGA DADO
--	tmp(150)  := LDI  & "000011111"; -- CARREGA DADO
--		  tmp(151)  := STA  & "010000010"; -- GRAVA DADO 
--		  tmp(152)  := STA  & "010000011"; -- ESCREVE TELA		
--		  -- tmp(23)  := STA  & "010000011"; -- ESCREVE TELA		
--		  
--		  tmp(153)  := LDA  & "000101011"; -- CARREGA LINHA
--		  tmp(154)  := STA  & "010000000"; -- GRAVA LINHA		  
--								tmp(155)  := LDI  & "000000001"; -- CARREGA COL
--							tmp(156) :=  SOMA & "000101010";
--							tmp(157) := STA & "000101010";
--		  tmp(158)  := STA  & "010000001"; -- GRAVA COL	  
--	--tmp(159)  := LDI  & "000000000"; -- CARREGA DADO
--	tmp(159)  := LDI  & "000011111"; -- CARREGA DADO
--		  tmp(160)  := STA  & "010000010"; -- GRAVA DADO 
--		  tmp(161)  := STA  & "010000011"; -- ESCREVE TELA
--		-- tmp(31)  := STA  & "010000011"; -- ESCREVE TELA	 
--		  
--		  tmp(162)  := LDA  & "000101011"; -- CARREGA LINHA
--		  tmp(163)  := STA  & "010000000"; -- GRAVA LINHA		  
--							tmp(164)  := LDI  & "000000001"; -- CARREGA COL
--							tmp(165) :=  SOMA & "000101010";
--							tmp(166) := STA & "000101010";
--		  tmp(167)  := STA  & "010000001"; -- GRAVA COL	  
--	--tmp(168)  := LDI  & "000001111"; -- CARREGA DADO
--	tmp(168)  := LDI  & "000011111"; -- CARREGA DADO
--		  tmp(169)  := STA  & "000000000"; -- GRAVA DADO 
--		  tmp(170)  := STA  & "010000011"; -- ESCREVE TELA
--		--  tmp(39)  := STA  & "010000011"; -- ESCREVE TELA 
--		  
--		  tmp(171)  := LDA  & "000101011"; -- CARREGA LINHA
--		  tmp(172)  := STA  & "010000000"; -- GRAVA LINHA		  
--								tmp(173)  := LDI  & "000000001"; -- CARREGA COL
--							tmp(174) :=  SOMA & "000101010";
--							tmp(175) := STA & "000101010";
--		  tmp(176)  := STA  & "010000001"; -- GRAVA COL	  
--	--tmp(177)  := LDI  & "000001101"; -- CARREGA DADO
--	tmp(177)  := LDI  & "000011111"; -- CARREGA DADO
--		  tmp(178)  := STA  & "000000000"; -- GRAVA DADO 
--		  tmp(179)  := STA  & "010000011"; -- ESCREVE TELA	
--	--	  tmp(47)  := STA  & "010000011"; -- ESCREVE TELA	
--		  
--		tmp(180)  := LDA  & "000101011"; -- CARREGA LINHA
--		  tmp(181)  := STA  & "010000000"; -- GRAVA LINHA		  
--											tmp(182)  := LDI  & "000000001"; -- CARREGA COL
--							tmp(183) :=  SOMA & "000101010";
--							tmp(184) := STA & "000101010";
--		  tmp(185)  := STA  & "010000001"; -- GRAVA COL	  
--	--tmp(186)  := LDI  & "000000000"; -- CARREGA DADO
--	tmp(186)  := LDI  & "000011111"; -- CARREGA DADO
--		  tmp(187)  := STA  & "010000010"; -- GRAVA DADO 
--		  tmp(188)  := STA  & "010000011"; -- ESCREVE TELA	
--		--  tmp(55)  := STA  & "010000011"; -- ESCREVE TELA
--		  
--		  tmp(189)  := RET  &  "000000000";
		
		
		
		
		
		
		
		tmp(383)  := LDA  & "000101011"; -- CARREGA LINHA
		tmp(384)  := STA  & "010000000"; -- GRAVA LINHA
		
			tmp(385)  := LDI  & "000000000"; -- CARREGA COL
			tmp(386) :=  SOMA & "000101010"; -- SOMA COL
			tmp(387) := STA & "000101010"; -- GRAVA PROX COL
				tmp(388)  := STA  & "010000001"; -- GRAVA COL
				
		tmp(389)  := LDI  & "000000001"; -- CARREGA DADO
		tmp(390)  := STA  & "010000010"; -- GRAVA DADO 
		
		tmp(391)  := STA  & "010000011"; -- ESCREVE TELA
		
		
		
		  
		tmp(392)  := LDA  & "000101011"; -- CARREGA LINHA
		tmp(393)  := STA  & "010000000"; -- GRAVA LINHA
		
			tmp(394)  := LDI  & "000000001"; -- CARREGA COL
			tmp(395) :=  SOMA & "000101010";
			tmp(396) := STA & "000101010";
				tmp(397)  := STA  & "010000001"; -- GRAVA COL	
				
		tmp(398)  := LDI  & "001010010"; -- CARREGA DADO
		tmp(399)  := STA  & "010000010"; -- GRAVA DADO 
		
		tmp(400)  := STA  & "010000011"; -- ESCREVE TELA	
	
		  
		  tmp(401)  := LDA  & "000101011"; -- CARREGA LINHA
		  tmp(402)  := STA  & "010000000"; -- GRAVA LINHA		  
								tmp(403)  := LDI  & "000000001"; -- CARREGA COL
							tmp(404) :=  SOMA & "000101010";
							tmp(405) := STA & "000101010";
		  tmp(406)  := STA  & "010000001"; -- GRAVA COL	  
	tmp(407)  := LDI  & "010010001"; -- CARREGA DADO
		  tmp(408)  := STA  & "010000010"; -- GRAVA DADO 
		  tmp(409)  := STA  & "010000011"; -- ESCREVE TELA		
		  -- tmp(23)  := STA  & "010000011"; -- ESCREVE TELA		
		  
		  tmp(410)  := LDA  & "000101011"; -- CARREGA LINHA
		  tmp(411)  := STA  & "010000000"; -- GRAVA LINHA		  
								tmp(412)  := LDI  & "000000001"; -- CARREGA COL
							tmp(413) :=  SOMA & "000101010";
							tmp(414) := STA & "000101010";
		  tmp(415)  := STA  & "010000001"; -- GRAVA COL	  
	tmp(416)  := LDI  & "011000011"; -- CARREGA DADO
		  tmp(417)  := STA  & "010000010"; -- GRAVA DADO 
		  tmp(418)  := STA  & "010000011"; -- ESCREVE TELA
		-- tmp(31)  := STA  & "010000011"; -- ESCREVE TELA	 
		  
		  tmp(419)  := LDA  & "000101011"; -- CARREGA LINHA
		  tmp(420)  := STA  & "010000000"; -- GRAVA LINHA		  
							tmp(421)  := LDI  & "000000001"; -- CARREGA COL
							tmp(422) :=  SOMA & "000101010";
							tmp(423) := STA & "000101010";
		  tmp(424)  := STA  & "010000001"; -- GRAVA COL	  
	tmp(425)  := LDI  & "000001111"; -- CARREGA DADO
		  tmp(426)  := STA  & "010000010"; -- GRAVA DADO 
		  tmp(427)  := STA  & "010000011"; -- ESCREVE TELA
		--  tmp(39)  := STA  & "010000011"; -- ESCREVE TELA 
		  
		  tmp(428)  := LDA  & "000101011"; -- CARREGA LINHA
		  tmp(429)  := STA  & "010000000"; -- GRAVA LINHA		  
								tmp(430)  := LDI  & "000000001"; -- CARREGA COL
							tmp(431) :=  SOMA & "000101010";
							tmp(432) := STA & "000101010";
		  tmp(434)  := STA  & "010000001"; -- GRAVA COL	  
	tmp(435)  := LDI  & "000001101"; -- CARREGA DADO
		  tmp(436)  := STA  & "010000010"; -- GRAVA DADO 
		  tmp(437)  := STA  & "010000011"; -- ESCREVE TELA	
	--	  tmp(47)  := STA  & "010000011"; -- ESCREVE TELA	
		  
		tmp(438)  := LDA  & "000101011"; -- CARREGA LINHA
		  tmp(439)  := STA  & "010000000"; -- GRAVA LINHA		  
											tmp(440)  := LDI  & "000000001"; -- CARREGA COL
							tmp(441) :=  SOMA & "000101010";
							tmp(442) := STA & "000101010";
		  tmp(443)  := STA  & "010000001"; -- GRAVA COL	  
	tmp(444)  := LDI  & "000010000"; -- CARREGA DADO
		  tmp(445)  := STA  & "010000010"; -- GRAVA DADO 
		  tmp(446)  := STA  & "010000011"; -- ESCREVE TELA	
		--  tmp(55)  := STA  & "010000011"; -- ESCREVE TELA
		  
		  --tmp(447)  := JMP  &  "110111111"; 
		  tmp(448)  := RET  &  "000000000"; 
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
--
--		tmp(0) := JMP & "1" & "00000000"; ---JUMP SETUP end 256
--		
--		
--		tmp(1) := LDI & "0" & "01000001"; --guarda valor 41 (tecla A) no ACUMULADOR p/ comparacao
--		tmp(2) := STA & "0" & "00000001"; --guarda valor 41 em MEM[1]
--		tmp(3) := LDA & "0" & "10000100"; --faz a leitura do valor no teclado
--		tmp(4) := CEQ & "0" & "00000001"; --compara valor de habilitado com 1C MEM[1]
--		tmp(5) := JEQ & "0" & "00101010"; --pula para printa se teclado foi pressionada tmp(42)
--		
--		
--		tmp(6) := LDI & "0" & "01111111"; --guarda valor 7F (tecla DEL) no ACUMULADOR p/ comparacao
--		tmp(7) := STA & "0" & "00000010"; --guarda valor 7F em MEM[2]
--		tmp(8) := LDA & "0" & "10000100"; --faz a leitura do valor no teclado
--		tmp(9) := CEQ & "0" & "00000010"; --compara valor de habilitado com 71 MEM[2]
--		tmp(10) := JEQ & "0" & "01010100"; --pula para printa se teclado foi pressionada tmp(84)
--		
--		
--		tmp(11) := JMP & "0" & "00000001"; -- pula para o inicio, aguardando teclado
--		
--		
--		
--		
--		tmp(42) := STA & "0" & "10000101"; --LIMPA LEITURA TECLADO
--		
--
--		tmp(43)  := LDI  & "0" & "00000000";
--		tmp(44)  := STA  & "0" & "00010001";
--		tmp(45) := LDA & "0" & "10000100"; --faz a leitura do valor no teclado
--		tmp(46)  := CEQ  & "0" & "00010001";
--		tmp(47)  := JEQ  & "0" & "00101010";
--		
--		tmp(48)  := LDI  & "0" & "00000000"; -- CARREGA LINHA
--		tmp(49)  := STA  & "0" & "10000000"; -- GRAVA LINHA
--		
--		tmp(50)  := LDI  & "0" & "00000001"; -- CARREGA 1
--		tmp(51)  := SOMA & "0" & "00001111";--- SOMA 1 com endereco de COL MEM[15]
--		tmp(52)  := STA & "0" & "00001111"; --ARMAZENA EM MEM 15
--		tmp(53)  := STA  & "0" & "10000001"; -- GRAVA COL
--				
--		tmp(54)  := LDI  & "000000001"; -- CARREGA DADO
--		tmp(55)  := STA  & "010000010"; -- GRAVA DADO 
--		
--		tmp(56)  := STA  & "010000011"; -- ESCREVE TELA
--		tmp(57) := JMP & "0" & "00000001"; -- pula para o inicio, aguardando teclado
--		
--		
--		
--		
--		
--		tmp(84) := STA & "0" & "10000101"; --LIMPA LEITURA TECLADO
--		
--
--		tmp(85)  := LDI  & "0" & "00000000";
--		tmp(86)  := STA  & "0" & "00010001";
--		tmp(87) := LDA & "0" & "10000100"; --faz a leitura do valor no teclado
--		tmp(88)  := CEQ  & "0" & "00010001";
--		tmp(89)  := JEQ  & "0" & "01010100";
--		
--		tmp (90) := LDI  & "000000000"; -- CARREGA DADO
--		tmp (91) := STA  & "010000010"; -- GRAVA DADO
--		tmp(92) := LDI  & "000000000"; -- CARREGA 0
--		tmp (93) := STA  & "000001111"; --guarda MEM[15]
--		tmp (94) := STA  & "000010000"; --guarda MEM[16]
--		
--		
--		tmp (95) :=  LDA & "000001111";
--		tmp (96) := STA  & "010000000"; -- GRAVA LINHA
--		tmp(97) := LDA  & "000010000";
--		tmp (98) := STA  & "010000001"; -- GRAVA COL	
--		tmp (99) := STA  & "010000011"; -- ESCREVE TELA
--																
--		
--		tmp (100) := LDI & "000000001";
--		tmp (101) := SOMA  & "000001111";
--		tmp (102) := STA  & "000001111"; --guarda MEM[15]
--		tmp (103) := LDI &  "000010011";
--		tmp (104) := CEQ & "000001111";
--		tmp (105) := JEQ & "001101011"; 
--		tmp (106) := JMP & "001011111";-- pula para tmp (95)
--		
--		tmp (107) := LDI & "000000001";
--		tmp (108) := SOMA & "000010000";
--		tmp (109) := STA  & "000010000"; --guarda MEM[16]
--		tmp (110) := LDI & "000001110";
--		tmp (111) := CEQ & "000010000"; 
--		tmp (112) := JEQ & "001110010"; -- se for igual pula para tmp (114)
--		tmp (113) := JMP & "001011111"; -- pula para tmp (95)
--		tmp (114) := JMP & "000000001"; -- pula para tmp (1)
--		
--		
--		
--		
--		
--		tmp(256) := LDI & "0" & "00000000";
--		tmp(257) := STA & "0" & "00001111"; --- ENDERECO COLMEM[15]
--		tmp(259) := JMP & "0" & "00000001";
--	
--		
		
		

			 
		

		  
		  return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM(to_integer(unsigned(Endereco)));
end architecture;