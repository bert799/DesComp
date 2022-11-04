library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity stackPointer is
	generic (
		dataWidth: natural := 9
	 );
	port (
		clk : in std_logic;
		Dado_in : in std_logic_vector (dataWidth-1 DOWNTO 0);
		Endereco: in std_logic_vector (2 DOWNTO 0);
		Dado_out : out std_logic_vector (dataWidth-1 DOWNTO 0)
	 );
end entity;

architecture comportamento of stackPointer is

	type stack_t is array(0 TO 8) of std_logic_vector(dataWidth-1 DOWNTO 0);
	signal ram : stack_t;
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			ram(to_integer(unsigned(Endereco))) <= dado_in;
		end if;
	end process;
	Dado_out <= ram (to_integer(unsigned(Endereco)));
end architecture;