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
  
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
        tmp(0)  := LDI & '0' & "00000100";   -- set RegA = 4
        tmp(1)  := STA & '1' & "00000001";	 -- salva valor de RegA na posiçao de memoria 257
        tmp(2)  := LDI & '0' & "00000011";	 -- set RegA = 3
        tmp(3)  := STA & '1' & "00000000";   -- salva valor de RegA na posiçao de memoria 256
        tmp(4)  := SOMA & '1' & "00000000";  -- Soma mem 256 com valor no reg
        tmp(5)  := SOMA & '1' & "00000000";  -- Soma mem 256 com valor no reg
        tmp(6)  := SUB & '1' & "00000001";   -- Subtrai mem 257 com valor no reg
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;