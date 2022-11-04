library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity stackSubRotina is
	generic (
		larguraDados: natural := 9;
		larguraEnderecos: natural := 3
	 );
	port (
		clk : in std_logic;
		PushPop : in std_logic_vector(1 downto 0);
		Dado_in : in std_logic_vector (larguraDados-1 DOWNTO 0);
		Dado_out : out std_logic_vector (larguraDados-1 DOWNTO 0);
		SP : out std_logic_vector (larguraEnderecos-1 downto 0)
	 );
end entity;

architecture comportamento of stackSubRotina is
	signal stack_pointer_modificado : std_logic_vector(larguraEnderecos-1 downto 0);
	signal MUX_Out : std_logic_vector(larguraEnderecos-1 downto 0);
	signal endereco_stack : std_logic_vector(larguraEnderecos-1 downto 0);

begin

StackRotinas: entity work.stack
	port map (clk => clk,
				Dado_in => Dado_in,
				Endereco => endereco_stack,
				Dado_out => Dado_out);

StackPointer: entity work.registradorGenerico generic map (larguraDados => 3)
	port map (DIN => stack_pointer_modificado,
				DOUT => endereco_stack,
				CLK => clk,
				ENABLE => '1',
				RST => '0');

SomaSubStackPointer: entity work.somadorGenerico generic map (larguraDados => 3)
	port map (entradaA => endereco_stack,
				entradaB => MUX_Out,
				saida => stack_pointer_modificado);

MUXStackSubRotina: entity work.muxGenerico4x1 generic map (larguraDados => 3)
	port map (entradaA_MUX => "000",
				entradaB_MUX => "001",
				entradaC_MUX => "111",
				entradaD_MUX => "000",
				seletor_MUX => PushPop,
				saida_MUX => MUX_Out);
				
SP <= endereco_stack;

end architecture;