library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(3 downto 0);
			flagZero: in std_logic;
			logica_desvio: out std_logic;
         saida : out std_logic_vector(6 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111"; -- Jump se é igual
  constant CEQ  : std_logic_vector(3 downto 0) := "1000"; -- Checa se é igual a valor guardado na memória

  begin
saida <= "0000000" when opcode = NOP else
         "0110010" when opcode = LDA else
         "0101010" when opcode = SOMA else
         "0100010" when opcode = SUB else
         "1110000" when opcode = LDI else
			"0010001" when opcode = STA else
			"0000000" when opcode = JMP else
			"0000000" when opcode = JEQ else
			"0000110" when opcode = CEQ else
         "0000000";  -- NOP para os opcodes Indefinidos
			
logica_desvio <= '1' when (opcode = JMP or (opcode = JEQ and flagZero = '1')) else
					  '0';
end architecture;