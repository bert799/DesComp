library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 15;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001"; -- Carrega regA com valor da memoria 
  constant SOMA : std_logic_vector(3 downto 0) := "0010"; -- Soma
  constant SUB  : std_logic_vector(3 downto 0) := "0011"; -- Subtraçao
  constant LDI  : std_logic_vector(3 downto 0) := "0100";  -- Carrega regA com constante 
  constant STA  : std_logic_vector(3 downto 0) := "0101";  -- Salva valor em A em um endereço de memoria
  constant JMP  : std_logic_vector(3 downto 0) := "0110"; -- JMP incondicional
  constant JEQ  : std_logic_vector(3 downto 0) := "0111"; -- Jump se é igual
  constant CEQ  : std_logic_vector(3 downto 0) := "1000"; -- Checa se é igual a valor guardado na memória
  
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
        tmp(0)  := JMP & "00" & '0' & x"04";	-- JMP to line 4
        tmp(1)  := JEQ & "00" & '0' & x"09";	-- JMP to line 9
        tmp(2)  := NOP & "00" & '0' & x"00";	-- No Operation
        tmp(3)  := NOP & "00" & '0' & x"00";	-- No Operation
        tmp(4)  := LDI & "00" & '0' & x"05";	-- Carrega REG1 com valor 5
        tmp(5)  := STA & "00" & '0' & x"00";	-- Armazena 5 na posição 0 da memória
        tmp(6)  := CEQ & "00" & '0' & x"00";	-- A comparação deve fazer o flagIgual ser 1
		  tmp(7)  := JMP & "00" & '0' & x"01";	-- JMP to line 1, testa flag zero
		  tmp(8)  := NOP & "00" & '0' & x"00";	-- No Operation
		  tmp(9)  := LDI & "00" & '0' & x"04";	-- Carrega REG1 com valor 4
		  tmp(10) := LDI & "01" & '0' & x"08";	-- Carrega REG2 com valor 8
		  tmp(11) := STA & "01" & '0' & x"01";	-- Armazena 8 na posição 0 da memória
		  tmp(12) := CEQ & "00" & '0' & x"00";	-- Compara com valor 5, deve fazer o flagIgual ser 0
		  tmp(13) := JEQ & "00" & '0' & x"03";	-- JMP to line 3, não deve ocorrer
		  tmp(14) := CEQ & "01" & '0' & x"01";	-- Compara com valor 8, deve fazer o flagIgual ser 1
		  tmp(15) := JEQ & "00" & '0' & x"11";	-- JMP to line 17, deve ocorrer
		  tmp(16) := JMP & "00" & '0' & x"10";	-- JMP to line 16
		  tmp(17) := JMP & "00" & '0' & x"11";	-- JMP to line 17
		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;