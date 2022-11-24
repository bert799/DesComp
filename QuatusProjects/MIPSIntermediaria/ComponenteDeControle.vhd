library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ComponenteDeControle is
	port (
			instrucao: in std_logic_vector(31 downto 0);
			palavraDeControle: out std_logic_vector(8 downto 0);
			UlaCtrl: out std_logic_vector(2 downto 0)
	);
end entity;

architecture arquitetura of ComponenteDeControle is 
	
	alias opcode: std_logic_vector(5 downto 0) is instrucao (31 downto 26);
	alias funct: std_logic_vector(5 downto 0) is instrucao (5 downto 0);
	
	signal saidaDecOp: std_logic_vector(2 downto 0);
	signal saidaDecFun: std_logic_vector(2 downto 0);
	
	signal sel_ULA_OP : std_logic;
	
	begin
		-- Saida : MuxPC+4/BEQ_JMP . MUX_RT_RD . Hab_escrita_reg . Mux_RT_Im . Tipo_R . Mux_ULA_Mem . BEQ . Hab_leitura_Mem . Hab_escrita_MEm
		
		UnidadeDeControle : entity work.UnidadeDeControle
				port map(opcode=>opcode , saida=>palavraDeControle);
				
		DecOpcode : entity work.DecoderOpcode
				port map(opcode=>opcode , saida=>saidaDecOp);
				
		DecFunct : entity work.DecoderFunct
				port map(funct=>funct , saida=>saidaDecFun);
				
		MUX_ULA_OP : entity work.muxGenerico2x1 generic map(larguraDados => 3)
				port map (entradaA_MUX => saidaDecOp, entradaB_MUX => saidaDecFun, seletor_MUX => sel_ULA_OP, saida_MUX => UlaCtrl);

		sel_ULA_OP <= palavraDeControle(4);
		
end architecture;
