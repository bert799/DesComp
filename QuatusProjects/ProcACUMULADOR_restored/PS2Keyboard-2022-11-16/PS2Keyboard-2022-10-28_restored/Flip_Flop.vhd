library ieee;
use ieee.std_logic_1164.all;

entity Flip_Flop is
	port (
		clk      : in std_logic;
		reset    : in std_logic;
		input    : in std_logic;
		output   : out std_logic
	);
end entity;

architecture rtl of Flip_Flop is
	begin
	process(clk, reset)
		begin
		if (reset = '1') then
			output <= '0';
		elsif rising_edge(clk) then
			output <= input;
		end if;
	end process;
end architecture;