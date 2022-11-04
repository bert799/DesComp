library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
		tmp(0):= "1001000000000101";	-- JSR @TESTE1
		tmp(1):= "1001000000000111";	-- JSR @TESTE2
		tmp(2):= "1001000000001001";	-- JSR @TESTE3
		tmp(3):= "0000000000000000";	-- NOP
		tmp(4):= "1100000000000000";	-- RJMP $0
		-- TESTE1:
		tmp(5):= "0000000000000000";	-- NOP
		tmp(6):= "1010000000000000";	-- RET
		-- TESTE2:
		tmp(7):= "0000000000000000";	-- NOP
		tmp(8):= "1010000000000000";	-- RET
		-- TESTE3:
		tmp(9):= "1001000000001100";	-- JSR @TESTE4
		tmp(10):= "0000000000000000";	-- NOP
		tmp(11):= "1010000000000000";	-- RET
		-- TESTE4:
		tmp(12):= "0000000000000000";	-- NOP
		tmp(13):= "1010000000000000";	-- RET




		return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;