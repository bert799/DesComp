library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity somadorHabilitado is
    generic
    (
        larguraDados : natural := 32
    );
    port
    (	  habilita : in std_logic;
        entradaA, entradaB: in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
        saida:  out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of somadorHabilitado is
    begin
        saida <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB)) when habilita = '1'  else (others => 'Z');
end architecture;