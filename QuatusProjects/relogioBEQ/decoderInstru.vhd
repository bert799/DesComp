library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(13 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant NOP   : std_logic_vector(3 downto 0) := "0000";
  constant LDA   : std_logic_vector(3 downto 0) := "0001";
  constant SOMA  : std_logic_vector(3 downto 0) := "0010";
  constant SUB   : std_logic_vector(3 downto 0) := "0011";
  constant LDI   : std_logic_vector(3 downto 0) := "0100";
  constant STA   : std_logic_vector(3 downto 0) := "0101";
  constant JMP   : std_logic_vector(3 downto 0) := "0110";
  constant JEQ   : std_logic_vector(3 downto 0) := "0111";
  constant CEQ   : std_logic_vector(3 downto 0) := "1000";
  constant JSR   : std_logic_vector(3 downto 0) := "1001";
  constant RET   : std_logic_vector(3 downto 0) := "1010";
  constant OPAND : std_logic_vector(3 downto 0) := "1011";
  constant RJMP  : std_logic_vector(3 downto 0) := "1100";
  constant RJEQ  : std_logic_vector(3 downto 0) := "1101";
  
  begin
saida <= "00000000011000" when opcode = NOP   else
         "00000000111010" when opcode = LDA   else
         "00000000101010" when opcode = SOMA  else
         "00000000100010" when opcode = SUB   else
         "00000001111000" when opcode = LDI   else
			"00000000011001" when opcode = STA   else
			"00010000011000" when opcode = JMP   else
			"00000010011000" when opcode = JEQ   else
			"00000000011110" when opcode = CEQ   else
			"01100100011000" when opcode = JSR   else
			"01001000011000" when opcode = RET   else
			"00000000110010" when opcode = OPAND else
			"10010000011000" when opcode = RJMP else
			"10000010011000" when opcode = RJEQ else
         "00000000011000";  -- NOP para os opcodes Indefinidos
end architecture;