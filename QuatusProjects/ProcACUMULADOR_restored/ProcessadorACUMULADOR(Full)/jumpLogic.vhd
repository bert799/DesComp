library ieee;
use ieee.std_logic_1164.all;

entity jumpLogic is
  port(
		flagEqual : in std_logic;
		jmpIn : in std_logic;
		jeqIn : in std_logic;
		retIn : in std_logic;
		jsrIn : in std_logic;
      saida : out std_logic_vector(1 DOWNTO 0)
  );
end entity;

architecture comportamento of jumpLogic is

 
  begin
  
  saida <= "00" when (jmpIn = '0' and jeqIn = '0' and jsrIn = '0' and retIn = '0') else 
			  "01" when (jmpIn = '1') else 
			  "00" when (jmpIn = '0' and jeqIn = '1' and flagEqual = '0' and jsrIn = '0' and retIn = '0') else 
			  "01" when (jmpIn = '0' and jeqIn = '1' and flagEqual = '1' and jsrIn = '0' and retIn = '0') else 
			  "01" when (jmpIn = '0' and jeqIn = '0' and jsrIn = '1' and retIn = '0') else 
			  "10" when (jmpIn = '0' and jeqIn = '0' and jsrIn = '0' and retIn = '1') else 
			  "00";
  
end architecture;