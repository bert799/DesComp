library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity DecoderFunct is
	port (
		funct: in std_logic_vector(5 downto 0);
		saida: out std_logic_vector(2 downto 0)			
	);
end entity;

architecture comportamento of DecoderFunct is 
	begin
		-- Saida : MuxPC+4/BEQ_JMP . MUX_RT_RD . Hab_escrita_reg . Mux_RT_Im . Tipo_R . Mux_ULA_Mem . BEQ . Hab_leitura_Mem . Hab_escrita_MEm
		saida <= "000" when funct = "100100"  else -- AND
					"001" when funct = "100101"  else -- OR
					"010" when funct = "100000"  else -- ADD
					"110" when funct = "100010"  else -- SUB
					"111" when funct = "101010";   -- SLT

					
end architecture;
