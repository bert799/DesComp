LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity divisorGenerico_e_Interface is
   port(clk      :   in std_logic;
		 resetaContagem : in std_logic;
      leitura52ms, leitura55ms :   out std_logic
   );
end entity;

architecture interface of divisorGenerico_e_Interface is
  
begin

baseTempo52ms: entity work.divisorGenericoComRESET
           generic map (divisor => 1375000)   -- antes 1250000 ou 625000
           port map (clk => clk, resetaContagem => resetaContagem, saida_clk => leitura52ms);
			  
baseTempo55ms: entity work.divisorGenericoComRESET
           generic map (divisor => 1500000)   -- antes 1250000 ou 625000
           port map (clk => clk, resetaContagem => resetaContagem, saida_clk => leitura55ms);
			  
			  



end architecture interface;