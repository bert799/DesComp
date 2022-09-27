library ieee;
use ieee.std_logic_1164.all;

entity contador is
  -- Total de bits das entradas e saidas
	generic ( 
		larguraDados 			: natural := 8;
		larguraEnderecos 		: natural := 8;
		larguraEnderecosROM 	: natural := 9;
		simulacao 				: boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
	);
	port   (
		CLOCK_50 : in  std_logic;
		KEY 		: in  std_logic_vector(5 downto 0);
		PC_OUT 	: out std_logic_vector(8 downto 0);
		LEDR  	: out std_logic_vector(9 downto 0)
	);
end entity;


architecture arquitetura of contador is
  

begin

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


CPU	: entity work.CPU port map ();

ROM1 	: entity work.memoriaROM port map (Endereco => PC_ROM1, Dado => Instrucao);

RAM1 	: entity work.memoriaRAM generic map(dataWidth => larguraDados, addrWidth => 6)
			port map (addr => Endereco_RAM1, habilita => Habilita_RAM1, we => Habilita_escrever_RAM1, re => Habilita_ler_RAM1, clk => CLK, dado_in => REGA_RAM1, dado_out => RAM1_MUX1);


end architecture;