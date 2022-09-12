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

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001"; -- Carrega regA com valor da memoria 
  constant SOMA : std_logic_vector(3 downto 0) := "0010"; -- Soma
  constant SUB  : std_logic_vector(3 downto 0) := "0011"; -- Subtraçao
  constant LDI : std_logic_vector(3 downto 0) := "0100";  -- Carrega regA com constante 
  constant STA : std_logic_vector(3 downto 0) := "0101";  -- Salva valor em A em um endereço de memoria
  constant JMP : std_logic_vector(3 downto 0) := "0110"; -- JMP incondicional
  
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
        tmp(0)  := JMP & '0' & "00000100";   -- JMP to line 4
        tmp(1)  := JMP & '0' & "00000101";	-- JMP to line 5
        tmp(2)  := NOP & '0' & "00000000";	-- No Operation
        tmp(3)  := NOP & '0' & "00000000";	-- No Operation
        tmp(4)  := JMP & '0' & "00000001";	-- JMP to line 1
        tmp(5)  := NOP & '0' & "00000000";	-- No Operation
        tmp(6)  := JMP & '0' & "00000110";   -- JMP to line 6
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;