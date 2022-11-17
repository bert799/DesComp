library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROMMIPS IS
   generic (
          dataWidth: natural := 32;
          addrWidth: natural := 32;
       memoryAddrWidth:  natural := 6 );   -- 64 posicoes de 32 bits cada
   port (
          Endereco : in  std_logic_vector (addrWidth-1 downto 0);
          Dado     : out std_logic_vector (dataWidth-1 downto 0) );
end entity;

architecture assincrona OF ROMMIPS IS
  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 downto 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
        -- Inicializa os endereços:
        tmp(0) := 6x"2b" & "01000" & "01001" & x"0000"; --SW t1, RAM[0 + t0]
        tmp(1) := 6x"23" & "01000" & "01000" & x"0000"; --LW t0, RAM[0 + t0]
		  tmp(2) := 6x"04" & "01010" & "01001" & x"000F"; --BEQ t2, t1, @15
        tmp(3) := 6x"04" & "01000" & "01001" & x"000F"; --BEQ t0, t1, @15
		  tmp(4) := 6x"00" & "01001" & "01010" & "01111" & "00000" & 6x"20"; --ADD t7 = t1 + t2 
        tmp(5) := 6x"00" & "01111" & "01011" & "01111" & "00000" & 6x"22"; --SUB t7 = t7 - t3
		  tmp(20):= 6x"02" & 26x"0004"; --JMP @4
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;