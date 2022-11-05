library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity somadorOverflow is
    generic
    (
        larguraDados : natural := 32
    );
    port
    (
        entradaA, entradaB: in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		  overflow: out std_logic;
        saida:  out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of somadorOverflow is
    begin
        saida <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
		  overflow <= '1' when (entradaA = "111" and entradaB = "001") else
						  '1' when (entradaA = "000" and entradaB = "111") else
						  '0';
end architecture;