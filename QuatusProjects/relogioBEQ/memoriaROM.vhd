library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
		-- SETUP:
		tmp(0):= "0100000000000000";	-- LDI R[0] $0
		tmp(1):= "0101000000000000";	-- STA R[0] @0
		tmp(2):= "0100010000000000";	-- LDI R[2] $0         	# Limpando o registrador das unidades
		tmp(3):= "0100011000000000";	-- LDI R[3] $0         	# Limpando o registrador das dezenas
		tmp(4):= "0100100000000000";	-- LDI R[4] $0         	# Limpando o registrador das centenas
		tmp(5):= "0101000000001010";	-- STA R[0] @10        	# Espaço na memória dedicado ao milhar
		tmp(6):= "0101000000001011";	-- STA R[0] @11        	# Espaço na memória dedicado à dezena de milhar
		tmp(7):= "0101000000001100";	-- STA R[0] @12        	# Espaço na memória dedicado à centena de milhar
		tmp(8):= "0100000000000001";	-- LDI R[0] $1
		tmp(9):= "0101000000000001";	-- STA R[0] @1
		tmp(10):= "0101000000000011";	-- STA R[0] @3         	# Utilizado para máscara de Bit menos significativo
		tmp(11):= "0100000000001001";	-- LDI R[0] $9
		tmp(12):= "0101000000000010";	-- STA R[0] @2         	# Comparação para definir o aumento do próximo HEX
		tmp(13):= "0101000000010100";	-- STA R[0] @20        	# Redefinindo todos os HEX para 0
		tmp(14):= "0101000000010101";	-- STA R[0] @21
		tmp(15):= "0101000000010110";	-- STA R[0] @22
		tmp(16):= "0101000000010111";	-- STA R[0] @23
		tmp(17):= "0101000000011000";	-- STA R[0] @24
		tmp(18):= "0101000000011001";	-- STA R[0] @25
		tmp(19):= "0100000010000000";	-- LDI R[0] $128
		tmp(20):= "0101000000000100";	-- STA R[0] @4         	# Utilizado para máscara de Bit mais significativo
		tmp(21):= "0101000111111111";	-- STA R[0] @511       	# Limpando o botão de Incremento
		tmp(22):= "0101000111111110";	-- STA R[0] @510       	# Limpando o botão de Alterar Limite
		tmp(23):= "0101000111111011";	-- STA R[0] @507       	# Limpando o botão de RESET
		-- # ========================================================= #
		-- #                      LOOP PRINCIPAL                       #
		-- # ========================================================= #
		-- LOOP:
		tmp(24):= "0001001101100000";	-- LDA R[1] @352
		tmp(25):= "1011001000000011";	-- OPAND R[1] @3
		tmp(26):= "1000001000000000";	-- CEQ R[1] @0         	# O botão de incremento não foi clicado
		tmp(27):= "0111000000011110";	-- JEQ @TROCALIMITE
		tmp(28):= "1001000000100100";	-- JSR @INCREMENTA
		tmp(29):= "1001000001010101";	-- JSR @VERIFICA
		-- TROCALIMITE:
		tmp(30):= "0001001101100001";	-- LDA R[1] @353
		tmp(31):= "1011001000000011";	-- OPAND R[1] @3
		tmp(32):= "1000001000000000";	-- CEQ R[1] @0         	# O botão de troca de limite não foi clicado
		tmp(33):= "0111000000011000";	-- JEQ @LOOP
		tmp(34):= "1001000010001110";	-- JSR @SETLIMITE
		tmp(35):= "0110000000011000";	-- JMP @LOOP
		-- # ========================================================= #
		-- #                     INCREMENTA VALOR                      #
		-- # ========================================================= #
		-- INCREMENTA:
		tmp(36):= "0101000111111111";	-- STA @511
		tmp(37):= "1000010000000010";	-- CEQ R[2] @2
		tmp(38):= "1101000000000100";	-- RJEQ $4
		tmp(39):= "0010010000000001";	-- SOMA R[2] @1
		tmp(40):= "0101010100100000";	-- STA R[2] @288
		tmp(41):= "1010000000000000";	-- RET         
		tmp(42):= "0100010000000000";	-- LDI R[2] $0        	# Atualiza o dígito das dezenas
		tmp(43):= "0101010100100000";	-- STA R[2] @288
		tmp(44):= "1000011000000010";	-- CEQ R[3] @2
		tmp(45):= "1101000000000100";	-- RJEQ $4
		tmp(46):= "0010011000000001";	-- SOMA R[3] @1
		tmp(47):= "0101011100100001";	-- STA R[3] @289
		tmp(48):= "1010000000000000";	-- RET           
		tmp(49):= "0100011000000000";	-- LDI R[3] $0        	# Atualiza o dígito das centenas
		tmp(50):= "0101011100100001";	-- STA R[3] @289
		tmp(51):= "1000100000000010";	-- CEQ R[4] @2
		tmp(52):= "0111000000111000";	-- JEQ @ATMIL
		tmp(53):= "0010100000000001";	-- SOMA R[4] @1
		tmp(54):= "0101100100100010";	-- STA R[4] @290
		tmp(55):= "1010000000000000";	-- RET
		-- ATMIL:             	# Atualiza o dígito dos milhares
		tmp(56):= "0100100000000000";	-- LDI R[4] $0
		tmp(57):= "0101100100100010";	-- STA R[4] @290
		tmp(58):= "0001101000001010";	-- LDA R[5] @10
		tmp(59):= "1000101000000010";	-- CEQ R[5] @2
		tmp(60):= "0111000001000001";	-- JEQ @ATDMIL
		tmp(61):= "0010101000000001";	-- SOMA R[5] @1
		tmp(62):= "0101101100100011";	-- STA R[5] @291
		tmp(63):= "0101101000001010";	-- STA R[5] @10
		tmp(64):= "1010000000000000";	-- RET
		-- ATDMIL:            	# Atualiza o dígito das dezenas de milhar
		tmp(65):= "0100101000000000";	-- LDI R[5] $0
		tmp(66):= "0101101100100011";	-- STA R[5] @291
		tmp(67):= "0101101000001010";	-- STA R[5] @10
		tmp(68):= "0001101000001011";	-- LDA R[5] @11
		tmp(69):= "1000101000000010";	-- CEQ R[5] @2
		tmp(70):= "0111000001001011";	-- JEQ @ATCMIL
		tmp(71):= "0010101000000001";	-- SOMA R[5] @1
		tmp(72):= "0101101100100100";	-- STA R[5] @292
		tmp(73):= "0101101000001011";	-- STA R[5] @11
		tmp(74):= "1010000000000000";	-- RET
		-- ATCMIL:            	# Atualiza o dígito das centenas de milhar
		tmp(75):= "0100101000000000";	-- LDI R[5] $0
		tmp(76):= "0101101100100100";	-- STA R[5] @292
		tmp(77):= "0101101000001011";	-- STA R[5] @11
		tmp(78):= "0001101000001100";	-- LDA R[5] @12
		tmp(79):= "1000101000000010";	-- CEQ R[5] @2
		tmp(80):= "0111000011010100";	-- JEQ @MAXOVERFLOW   	# Caso exceda o limite máximo do contador
		tmp(81):= "0010101000000001";	-- SOMA R[5] @1
		tmp(82):= "0101101100100101";	-- STA R[5] @293
		tmp(83):= "0101101000001100";	-- STA R[5] @12
		tmp(84):= "1010000000000000";	-- RET
		-- # ========================================================= #
		-- #                     VERIFICA LIMITE                       #
		-- # ========================================================= #
		-- ## A verificação começa com a centena de milhar
		-- VERIFICA:
		tmp(85):= "0001111000011001";	-- LDA R[7] @25
		tmp(86):= "0011111000001100";	-- SUB R[7] @12
		tmp(87):= "1011111000000100";	-- OPAND R[7] @4
		tmp(88):= "1000111000000100";	-- CEQ R[7] @4
		tmp(89):= "0111000011100001";	-- JEQ @OVERLIMIT
		tmp(90):= "0001111000001100";	-- LDA R[7] @12
		tmp(91):= "1000111000011001";	-- CEQ R[7] @25
		tmp(92):= "0111000001011110";	-- JEQ @VERDMIL
		tmp(93):= "1010000000000000";	-- RET
		-- VERDMIL:
		tmp(94):= "0001111000011000";	-- LDA R[7] @24
		tmp(95):= "0011111000001011";	-- SUB R[7] @11
		tmp(96):= "1011111000000100";	-- OPAND R[7] @4
		tmp(97):= "1000111000000100";	-- CEQ R[7] @4
		tmp(98):= "0111000011100001";	-- JEQ @OVERLIMIT
		tmp(99):= "0001111000001011";	-- LDA R[7] @11
		tmp(100):= "1000111000011000";	-- CEQ R[7] @24
		tmp(101):= "0111000001100111";	-- JEQ @VERMIL
		tmp(102):= "1010000000000000";	-- RET
		-- VERMIL:
		tmp(103):= "0001111000010111";	-- LDA R[7] @23
		tmp(104):= "0011111000001010";	-- SUB R[7] @10
		tmp(105):= "1011111000000100";	-- OPAND R[7] @4
		tmp(106):= "1000111000000100";	-- CEQ R[7] @4
		tmp(107):= "0111000011100001";	-- JEQ @OVERLIMIT
		tmp(108):= "0001111000001010";	-- LDA R[7] @10
		tmp(109):= "1000111000010111";	-- CEQ R[7] @23
		tmp(110):= "0111000001110000";	-- JEQ @VERCEN
		tmp(111):= "1010000000000000";	-- RET
		-- VERCEN:
		tmp(112):= "0101100000011110";	-- STA R[4] @30
		tmp(113):= "0001111000010110";	-- LDA R[7] @22
		tmp(114):= "0011111000011110";	-- SUB R[7] @30
		tmp(115):= "1011111000000100";	-- OPAND R[7] @4
		tmp(116):= "1000111000000100";	-- CEQ R[7] @4
		tmp(117):= "0111000011100001";	-- JEQ @OVERLIMIT
		tmp(118):= "1000100000010110";	-- CEQ R[4] @22
		tmp(119):= "0111000001111001";	-- JEQ @VERDEZ
		tmp(120):= "1010000000000000";	-- RET
		-- VERDEZ:
		tmp(121):= "0101011000011110";	-- STA R[3] @30
		tmp(122):= "0001111000010101";	-- LDA R[7] @21
		tmp(123):= "0011111000011110";	-- SUB R[7] @30
		tmp(124):= "1011111000000100";	-- OPAND R[7] @4
		tmp(125):= "1000111000000100";	-- CEQ R[7] @4
		tmp(126):= "0111000011100001";	-- JEQ @OVERLIMIT
		tmp(127):= "1000011000010101";	-- CEQ R[3] @21
		tmp(128):= "0111000010000010";	-- JEQ @VERUNI
		tmp(129):= "1010000000000000";	-- RET
		-- VERUNI:
		tmp(130):= "0101010000011110";	-- STA R[2] @30
		tmp(131):= "0001111000010100";	-- LDA R[7] @20
		tmp(132):= "0011111000011110";	-- SUB R[7] @30
		tmp(133):= "1011111000000100";	-- OPAND R[7] @4
		tmp(134):= "1000111000000100";	-- CEQ R[7] @4
		tmp(135):= "0111000011100001";	-- JEQ @OVERLIMIT
		tmp(136):= "1000010000010100";	-- CEQ R[2] @20
		tmp(137):= "0111000010001011";	-- JEQ @LIMITE
		tmp(138):= "1010000000000000";	-- RET
		-- # =================== Chegou no limite ==================== #
		-- LIMITE:
		tmp(139):= "0100000011111111";	-- LDI R[0] $255
		tmp(140):= "0101000100000000";	-- STA R[0] @256
		tmp(141):= "0110000011101000";	-- JMP @END
		-- # ========================================================= #
		-- #                        SET LIMITE                         #
		-- # ========================================================= #
		-- SETLIMITE:
		tmp(142):= "0101000111111110";	-- STA @510
		tmp(143):= "0100000000000000";	-- LDI R[0] $0
		tmp(144):= "0101000100100000";	-- STA R[0] @288
		tmp(145):= "0101000100100001";	-- STA R[0] @289
		tmp(146):= "0101000100100010";	-- STA R[0] @290
		tmp(147):= "0101000100100011";	-- STA R[0] @291
		tmp(148):= "0101000100100100";	-- STA R[0] @292
		tmp(149):= "0101000100100101";	-- STA R[0] @293
		tmp(150):= "0100110000000001";	-- LDI R[6] @1
		tmp(151):= "0101110100000001";	-- STA R[6] @257
		-- WAITUNI:
		tmp(152):= "0001001101100001";	-- LDA R[1] @353
		tmp(153):= "1011001000000011";	-- OPAND R[1] @3
		tmp(154):= "1000001000000000";	-- CEQ R[1] @0
		tmp(155):= "0111000010011000";	-- JEQ @WAITUNI
		tmp(156):= "0101000111111110";	-- STA @510
		tmp(157):= "0001110101000000";	-- LDA R[6] @320
		tmp(158):= "0101110000010100";	-- STA R[6] @20
		tmp(159):= "0101110100100000";	-- STA R[6] @288
		-- WAITDEZ:
		tmp(160):= "0001001101100001";	-- LDA R[1] @353
		tmp(161):= "1011001000000011";	-- OPAND R[1] @3
		tmp(162):= "1000001000000000";	-- CEQ R[1] @0
		tmp(163):= "0111000010100000";	-- JEQ @WAITDEZ
		tmp(164):= "0101000111111110";	-- STA @510
		tmp(165):= "0001110101000000";	-- LDA R[6] @320
		tmp(166):= "0101110000010101";	-- STA R[6] @21
		tmp(167):= "0101110100100001";	-- STA R[6] @289
		-- WAITCEN:
		tmp(168):= "0001001101100001";	-- LDA R[1] @353
		tmp(169):= "1011001000000011";	-- OPAND R[1] @3
		tmp(170):= "1000001000000000";	-- CEQ R[1] @0
		tmp(171):= "0111000010101000";	-- JEQ @WAITCEN
		tmp(172):= "0101000111111110";	-- STA @510
		tmp(173):= "0001110101000000";	-- LDA R[6] @320
		tmp(174):= "0101110000010110";	-- STA R[6] @22
		tmp(175):= "0101110100100010";	-- STA R[6] @290
		-- WAITMIL:
		tmp(176):= "0001001101100001";	-- LDA R[1] @353
		tmp(177):= "1011001000000011";	-- OPAND R[1] @3
		tmp(178):= "1000001000000000";	-- CEQ R[1] @0
		tmp(179):= "0111000010110000";	-- JEQ @WAITMIL
		tmp(180):= "0101000111111110";	-- STA @510
		tmp(181):= "0001110101000000";	-- LDA R[6] @320
		tmp(182):= "0101110000010111";	-- STA R[6] @23
		tmp(183):= "0101110100100011";	-- STA R[6] @291
		-- WAITDMIL:
		tmp(184):= "0001001101100001";	-- LDA R[1] @353
		tmp(185):= "1011001000000011";	-- OPAND R[1] @3
		tmp(186):= "1000001000000000";	-- CEQ R[1] @0
		tmp(187):= "0111000010111000";	-- JEQ @WAITDMIL
		tmp(188):= "0101000111111110";	-- STA @510
		tmp(189):= "0001110101000000";	-- LDA R[6] @320
		tmp(190):= "0101110000011000";	-- STA R[6] @24
		tmp(191):= "0101110100100100";	-- STA R[6] @292
		-- WAITCMIL:
		tmp(192):= "0001001101100001";	-- LDA R[1] @353
		tmp(193):= "1011001000000011";	-- OPAND R[1] @3
		tmp(194):= "1000001000000000";	-- CEQ R[1] @0
		tmp(195):= "0111000011000000";	-- JEQ @WAITCMIL
		tmp(196):= "0101000111111110";	-- STA @510
		tmp(197):= "0001110101000000";	-- LDA R[6] @320
		tmp(198):= "0101110000011001";	-- STA R[6] @25
		tmp(199):= "0101110100100101";	-- STA R[6] @293
		-- # ============ Retornando o valor do contador ============= #
		tmp(200):= "0101010100100000";	-- STA R[2] @288
		tmp(201):= "0101011100100001";	-- STA R[3] @289
		tmp(202):= "0101100100100010";	-- STA R[4] @290
		tmp(203):= "0001101000001010";	-- LDA R[5] @10
		tmp(204):= "0101101100100011";	-- STA R[5] @291
		tmp(205):= "0001101000001011";	-- LDA R[5] @11
		tmp(206):= "0101101100100100";	-- STA R[5] @292
		tmp(207):= "0001101000001100";	-- LDA R[5] @12
		tmp(208):= "0101101100100101";	-- STA R[5] @293
		tmp(209):= "0100110000000000";	-- LDI R[6] @0
		tmp(210):= "0101110100000001";	-- STA R[6] @257
		tmp(211):= "1010000000000000";	-- RET
		-- # ========================================================= #
		-- #                         OVERFLOW                          #
		-- # ========================================================= #
		-- MAXOVERFLOW:
		tmp(212):= "0100010000001001";	-- LDI R[2] $9
		tmp(213):= "0100011000001001";	-- LDI R[3] $9
		tmp(214):= "0100100000001001";	-- LDI R[4] $9
		tmp(215):= "0101010000001010";	-- STA R[2] @10
		tmp(216):= "0101010000001011";	-- STA R[2] @11
		tmp(217):= "0101010000001100";	-- STA R[2] @12
		tmp(218):= "0101010100100000";	-- STA R[2] @288
		tmp(219):= "0101010100100001";	-- STA R[2] @289
		tmp(220):= "0101010100100010";	-- STA R[2] @290
		tmp(221):= "0101010100100011";	-- STA R[2] @291
		tmp(222):= "0101010100100100";	-- STA R[2] @292
		tmp(223):= "0101010100100101";	-- STA R[2] @293
		tmp(224):= "0110000011100100";	-- JMP @OVERFLOW
		-- OVERLIMIT:
		tmp(225):= "0100000011111111";	-- LDI R[0] $255
		tmp(226):= "0101000100000000";	-- STA R[0] @256
		tmp(227):= "0110000011100100";	-- JMP @OVERFLOW
		-- OVERFLOW:
		tmp(228):= "0101000111111111";	-- STA @511
		tmp(229):= "0100000000000001";	-- LDI R[0] $1
		tmp(230):= "0101000100000010";	-- STA R[0] @258
		tmp(231):= "0110000011101000";	-- JMP @END
		-- # ========================================================= #
		-- #                         LOOP END                          #
		-- # ========================================================= #
		-- END:
		tmp(232):= "0001001101100100";	-- LDA R[1] @356
		tmp(233):= "1011001000000011";	-- OPAND R[1] @3
		tmp(234):= "1000001000000001";	-- CEQ R[1] @1
		tmp(235):= "0111000011110001";	-- JEQ @CLEAR
		tmp(236):= "0001001101100000";	-- LDA R[1] @352
		tmp(237):= "1011001000000011";	-- OPAND R[1] @3
		tmp(238):= "1000001000000001";	-- CEQ R[1] @1
		tmp(239):= "0111000011100100";	-- JEQ @OVERFLOW
		tmp(240):= "0110000011101000";	-- JMP @END
		-- # ========================================================= #
		-- #                          CLEAR                            #
		-- # ========================================================= #
		-- CLEAR:
		tmp(241):= "0100000000000000";	-- LDI R[0] $0
		tmp(242):= "0101000100100000";	-- STA R[0] @288
		tmp(243):= "0101000100100001";	-- STA R[0] @289
		tmp(244):= "0101000100100010";	-- STA R[0] @290
		tmp(245):= "0101000100100011";	-- STA R[0] @291
		tmp(246):= "0101000100100100";	-- STA R[0] @292
		tmp(247):= "0101000100100101";	-- STA R[0] @293
		tmp(248):= "0101000100000000";	-- STA R[0] @256
		tmp(249):= "0101000100000001";	-- STA R[0] @257
		tmp(250):= "0101000100000010";	-- STA R[0] @258
		tmp(251):= "0101000111111111";	-- STA R[0] @511
		tmp(252):= "0101000111111110";	-- STA R[0] @510
		tmp(253):= "0101000111111011";	-- STA R[0] @507
		tmp(254):= "0110000000000000";	-- JMP @SETUP


		return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;