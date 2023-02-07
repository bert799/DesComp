library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic(
			larguraDados : natural := 4
	 );
    port(
			entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
			seletor:  in STD_LOGIC_VECTOR(1 DOWNTO 0);
			flagZero: out std_logic;
			saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal ceq : STD_LOGIC_VECTOR((larguraDados-1) downto 0); 
	signal ANDop : STD_LOGIC_VECTOR((larguraDados-1) downto 0); 

	begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		ANDop <= entradaA AND entradaB;
		
		--ceq <= "00000001" when (subtracao = "00000000") else "00000000"; 
		
      saida <= soma when (seletor = "01") else 
					subtracao when (seletor = "00") else
					entradaB when (seletor = "10") else
					ANDop when (seletor = "11") else entradaB;
					
			   flagZero <= '1' when unsigned(saida) = 0 else '0';		
				
end architecture;