library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity DecoderOpcode is
	port (
		opcode: in std_logic_vector(5 downto 0);
		saida: out std_logic_vector(2 downto 0)			
	);
end entity;

architecture comportamento of DecoderOpcode is 
	begin
		-- Saida : MuxPC+4/BEQ_JMP . MUX_RT_RD . Hab_escrita_reg . Mux_RT_Im . Tipo_R . Mux_ULA_Mem . BEQ . Hab_leitura_Mem . Hab_escrita_MEm
		saida <= "010" when opcode = "101011" else -- SW
					"010" when opcode = "100011" else -- LW
					"110" when opcode = "000100" else -- BEQ
					"000"; 
					
end architecture;
