library ieee;
use ieee.std_logic_1164.all;

entity mipsInstR is
  -- Total de bits das entradas e saidas
  generic ( largura_dados : natural := 32;
            largura_endereco : natural := 32;
            simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
	 ULA_OP 	: in std_logic;
	 WR_RD 	: in std_logic;
	 funct 	: out std_logic_vector(5 downto 0);
	 PC_OUT 	: out std_logic_vector(largura_dados - 1 downto 0);
	 ULA_OUT : out std_logic_vector(largura_dados - 1 downto 0);
	 RD_addr : out std_logic_vector(4 downto 0);
	 RT_addr : out std_logic_vector(4 downto 0);
	 RT_OUT 	: out std_logic_vector(largura_dados - 1 downto 0);
	 RS_addr : out std_logic_vector(4 downto 0);
	 RS_OUT 	: out std_logic_vector(largura_dados - 1 downto 0);
  );
end entity;


architecture arquitetura of mipsInstR is

-- Faltam alguns sinais:
  signal CLK : std_logic;  
  
begin
-- Para facilitar o teste com clock lento e controlado manualmente
gravar:  if simulacao generate
CLK <= KEY(3);
else generate
CLK <= CLOCK_50;
end generate;

		  

end architecture;