library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port(
		opcode : in std_logic_vector(3 downto 0);
      saida : out std_logic_vector(11 downto 0)
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
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";
  constant ANDop  : std_logic_vector(3 downto 0) := "1011";

  alias WR : std_logic is saida(0);
  alias RD : std_logic is saida(1);
  alias habFlagIgual : std_logic is saida(2);
  alias OPERACAO : std_logic_vector(1 downto 0) is saida(4 downto 3);
  alias habA : std_logic is saida(5);
  alias selMUX : std_logic is saida(6);
  alias JEQop : std_logic is saida(7);
  alias JSRop : std_logic is saida(8);
  alias RETop : std_logic is saida(9);
  alias JMPop : std_logic is saida(10);
  alias habEscritaRET : std_logic is saida(11);
 
 begin
 
 WR <= '1' when (opcode = STA) else '0';
 RD <= '1' when (opcode = LDA) or (opcode = SOMA) or (opcode = SUB) or (opcode = CEQ) or (opcode = ANDop) else '0';
 habFlagIgual <= '1' when (opcode = CEQ) else '0';
 OPERACAO <= "00" when (opcode = SUB) or (opcode = CEQ) else
				 "01" when (opcode = SOMA) else
				 "10" when (opcode = LDA) or (opcode = LDI) else
				 "11" when (opcode = ANDop) else 
				 "00";
 
 habA <= '1' when (opcode = LDA) or (opcode = ANDop) or (opcode = SOMA) or (opcode = SUB) or (opcode = LDI) else '0';
 
 selMUX <= '1' when (opcode = LDI) else '0';
 
 JEQop <= '1' when (opcode = JEQ) else '0';
 
 JSRop <= '1' when  (opcode = JSR) else '0';
 RETop <= '1' when  (opcode = RET) else '0';
 JMPop <= '1' when  (opcode = JMP) else '0';
 
 habEscritaRET <= '1' when  (opcode = JSR) else '0';
 

end architecture;