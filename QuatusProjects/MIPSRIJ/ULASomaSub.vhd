library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 4 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC;
		flg_igual : out std_logic;
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    begin
      soma      <= STD_LOGIC_VECTOR(signed(entradaA) + signed(entradaB));
      subtracao <= STD_LOGIC_VECTOR(signed(entradaA) - signed(entradaB));
      saida <= soma when (seletor = '1') else subtracao;
		
		flg_igual <= '1' when unsigned(saida) = 0 else '0'; 
end architecture;