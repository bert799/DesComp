library ieee;
use ieee.std_logic_1164.all;

entity logicaDesvio is
  port ( JMP : in std_logic;
			RET : in std_logic;
			JSR : in std_logic;
			JEQ : in std_logic;
			FZ  : in std_logic;
			RTV : in std_logic;
         saida : out std_logic_vector (1 downto 0)
  );
end entity;

architecture comportamento of logicaDesvio is

  begin
saida <= "01" when ((JMP or (JEQ and FZ) or JSR) and not RTV) else
			"10" when RET else
			"11" when ((JMP or (JEQ and FZ) or JSR) and RTV) else 
			"00";
		
end architecture;