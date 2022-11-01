library ieee;
use ieee.std_logic_1164.all;

entity logicaDesvio is
  port ( logica_desvio : in std_logic_vector (4 downto 0);
         saida : out std_logic_vector(1 downto 0)
  );
end entity;

architecture comportamento of LogicaDesvio is

  begin
saida <= "10" when logica_desvio(4 downto 1) = "0100" else
         "01" when logica_desvio(4 downto 1) = "1000" else
			"01" when logica_desvio(4 downto 1) = "0010" else
			"01" when logica_desvio = "00011" else
			"00" when logica_desvio = "00010" else
         "00";  -- NOP para os opcodes Indefinidos
			
end architecture;