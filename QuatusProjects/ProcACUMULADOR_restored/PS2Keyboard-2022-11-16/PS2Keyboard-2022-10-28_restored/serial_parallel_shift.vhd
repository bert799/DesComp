-------------------------------------------------------------------------------
--
-- Conversao Serial para Paralelo
--
-- Paulo Carlos F. Santos, paulocs5@insper.edu.br
-- Baseado no Quartus Prime VHDL Template - Basic Shift Register
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity serial_parallel_shift is
  generic ( NUM_STAGES : natural := 256 );
  port (
    clk          : in std_logic;
    reset        : in std_logic;
    serial_in    : in std_logic;
    serial_out   : out std_logic;
    parallel_out : out std_logic_vector(NUM_STAGES-1 downto 0)
  );
end entity;

architecture rtl of serial_parallel_shift is
	signal internal_register : std_logic_vector (NUM_STAGES-1 downto 0);

	begin
	process(clk, reset)
		begin
		if (reset = '1') then
			internal_register <= (others => '0');
		elsif rising_edge(clk) then
			internal_register(0) <= serial_in;
			internal_register(NUM_STAGES-1 downto 1) <= internal_register(NUM_STAGES-2 downto 0);
		end if;
	end process;
	parallel_out <= internal_register;
	serial_out <= internal_register(NUM_STAGES-1);
end architecture;
