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
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";
  
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
        tmp(0)  := LDI & "00" & '0' & x"00";	-- 
        tmp(1)  := STA & "00" & '0' & x"00";	-- 
        tmp(2)  := LDA & "00" & '0' & x"02";	-- 
        tmp(3)  := LDI & "00" & '0' & x"01";	-- 
        tmp(4)  := STA & "00" & '0' & x"01";	-- 
        tmp(5)  := NOP & "00" & '0' & x"00";
		  tmp(6)  := LDA & "00" & '0' & x"60";  
        tmp(7)  := STA & "00" & '1' & x"20";	-- 
		  tmp(8)  := CEQ & "00" & '0' & x"00";	-- 
		  tmp(9)  := JEQ & "00" & '0' & x"10";	-- 
		  tmp(10)  := JSR & "00" & '0' & x"32";	-- 
		  tmp(11) := NOP & "00" & '0' & x"00";	--
		  tmp(12) := JMP & "00" & '0' & x"05";
		  tmp(32) := STA & "00" & '1' & x"FF";
		  tmp(33) := LDA & "00" & '0' & x"02";
		  tmp(34) := SOMA & "00" & '0' & x"01";
		  tmp(35) := STA & "00" & '0' & x"02";
		  tmp(36) := STA & "00" & '1' & x"02";	-- 
		  tmp(37) := RET & "00" & '0' & x"00";
		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;