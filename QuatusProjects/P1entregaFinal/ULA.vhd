library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA is
    generic ( larguraDados : natural := 8 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(1 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		flagZ:    out STD_LOGIC
    );
end entity;

architecture comportamento of ULA is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal operacao_and : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    begin
      soma      <= STD_LOGIC_VECTOR(signed(entradaA) + signed(entradaB));
      subtracao <= STD_LOGIC_VECTOR(signed(entradaA) - signed(entradaB));
		operacao_and <= entradaA and entradaB;
		saida <= operacao_and when (seletor = "10") else
					soma when (seletor = "01") else
					subtracao when (seletor = "00") else
					entradaB;
		flagZ <= '1' when signed(subtracao) = 0 else '0';
end architecture;