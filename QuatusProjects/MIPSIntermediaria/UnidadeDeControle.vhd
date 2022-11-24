library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity UnidadeDeControle is
	port (
			opcode: in std_logic_vector(5 downto 0);
			saida: out std_logic_vector(8 downto 0)
	);
end entity;

architecture comportamento of UnidadeDeControle is 
	begin
		-- Saida : MuxPC+4/BEQ_JMP . MUX_RT_RD . Hab_escrita_reg . Mux_RT_Im . Tipo_R . Mux_ULA_Mem . BEQ . Hab_leitura_Mem . Hab_escrita_MEm
		
		saida <= "011010000" when opcode = "000000" else -- Operações do tipo R
					"001101010" when opcode = "100011" else -- LW
					"000100001" when opcode = "101011" else -- SW
					"000000100" when opcode = "000100" else -- BEQ
					"100000000" when opcode = "000010" else -- JMP
					"000000000"; -- NOP para operações não definidas
					
end architecture;
