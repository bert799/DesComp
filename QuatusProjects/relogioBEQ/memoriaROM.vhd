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
tmp(0):= "0000000000000000";	-- NOP
tmp(1):= "1001000000000100";	-- JSR @TESTE0
tmp(2):= "0000000000000000";	-- NOP
tmp(3):= "1100000000000000";	-- RJMP $0
-- TESTE0:
tmp(4):= "0000000000000000";	-- NOP
tmp(5):= "1001000000001000";	-- JSR @TESTE1
tmp(6):= "0000000000000000";	-- NOP
tmp(7):= "1010000000000000";	-- RET
-- TESTE1:
tmp(8):= "0000000000000000";	-- NOP
tmp(9):= "1001000000001100";	-- JSR @TESTE2
tmp(10):= "0000000000000000";	-- NOP
tmp(11):= "1010000000000000";	-- RET
-- TESTE2:
tmp(12):= "0000000000000000";	-- NOP
tmp(13):= "1001000000010000";	-- JSR @TESTE3
tmp(14):= "0000000000000000";	-- NOP
tmp(15):= "1010000000000000";	-- RET
-- TESTE3:
tmp(16):= "0000000000000000";	-- NOP
tmp(17):= "1001000000010100";	-- JSR @TESTE4
tmp(18):= "0000000000000000";	-- NOP
tmp(19):= "1010000000000000";	-- RET
-- TESTE4:
tmp(20):= "0000000000000000";	-- NOP
tmp(21):= "1001000000011000";	-- JSR @TESTE5
tmp(22):= "0000000000000000";	-- NOP
tmp(23):= "1010000000000000";	-- RET
-- TESTE5:
tmp(24):= "0000000000000000";	-- NOP
tmp(25):= "1001000000011100";	-- JSR @TESTE6
tmp(26):= "0000000000000000";	-- NOP
tmp(27):= "1010000000000000";	-- RET
-- TESTE6:
tmp(28):= "0000000000000000";	-- NOP
tmp(29):= "1001000000100000";	-- JSR @TESTE7
tmp(30):= "0000000000000000";	-- NOP
tmp(31):= "1010000000000000";	-- RET
-- TESTE7:
tmp(32):= "0000000000000000";	-- NOP
tmp(33):= "1010000000000000";	-- RET
		return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;