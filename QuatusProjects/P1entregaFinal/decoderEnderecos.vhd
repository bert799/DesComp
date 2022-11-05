library ieee;
use ieee.std_logic_1164.all;

entity decoderEnderecos is
  port ( barramentoEnderecos : in std_logic_vector(8 downto 0);
			barramentoControle : in std_logic_vector(3 downto 0);
         grupoHabilita : out std_logic_vector(20 downto 0)
  );
end entity;

architecture comportamento of decoderEnderecos is

	signal decGrupos : std_logic_vector (7 downto 0);
	signal decSubGrupos : std_logic_vector (7 downto 0);
	
	-- Alias:
	alias Grupo1: std_logic is decGrupos(0);
	alias Grupo2: std_logic is decGrupos(1);
	alias Grupo3: std_logic is decGrupos(2);
	alias Grupo4: std_logic is decGrupos(3);
	alias Grupo5: std_logic is decGrupos(4);
	alias Grupo6: std_logic is decGrupos(5);
	alias Grupo7: std_logic is decGrupos(6);
	alias Grupo8: std_logic is decGrupos(7);
	
	
	alias Wr: std_logic is barramentoControle(0);
	alias Rd: std_logic is barramentoControle(1);

begin

DECMSB :  entity work.decoder3x8
        port map( entrada => barramentoEnderecos(8 downto 6),
                 saida => decGrupos);

DECLSB :  entity work.decoder3x8
        port map( entrada => barramentoEnderecos(2 downto 0),
                 saida => decSubGrupos);

-- Habilita RAM
grupoHabilita(0) <= Grupo1;

-- Habilita LEDs
grupoHabilita(1) <= ((Grupo5 and decSubGrupos(0)) and Wr) and not(barramentoEnderecos(5));	-- LED array
grupoHabilita(2) <= ((Grupo5 and decSubGrupos(1)) and Wr) and not(barramentoEnderecos(5));	-- LED(8)
grupoHabilita(3) <= ((Grupo5 and decSubGrupos(2)) and Wr) and not(barramentoEnderecos(5));	-- LED(9)

-- Habilita HEXs
grupoHabilita(4) <= ((Grupo5 and decSubGrupos(0)) and Wr) and barramentoEnderecos(5);	-- HEX 0
grupoHabilita(5) <= ((Grupo5 and decSubGrupos(1)) and Wr) and barramentoEnderecos(5);	-- HEX 1
grupoHabilita(6) <= ((Grupo5 and decSubGrupos(2)) and Wr) and barramentoEnderecos(5);	-- HEX 2
grupoHabilita(7) <= ((Grupo5 and decSubGrupos(3)) and Wr) and barramentoEnderecos(5);	-- HEX 3
grupoHabilita(8) <= ((Grupo5 and decSubGrupos(4)) and Wr) and barramentoEnderecos(5);	-- HEX 4
grupoHabilita(9) <= ((Grupo5 and decSubGrupos(5)) and Wr) and barramentoEnderecos(5);	-- HEX 5

-- Habilita SWs
grupoHabilita(10) <= ((Grupo6 and decSubGrupos(0)) and Rd) and not(barramentoEnderecos(5));	-- SW array
grupoHabilita(11) <= ((Grupo6 and decSubGrupos(1)) and Rd) and not(barramentoEnderecos(5));	-- SW(8)
grupoHabilita(12) <= ((Grupo6 and decSubGrupos(2)) and Rd) and not(barramentoEnderecos(5));	-- SW(9)

-- Habilita Buttons
grupoHabilita(13) <= ((Grupo6 and decSubGrupos(0)) and Rd) and barramentoEnderecos(5);	-- BUT 0
grupoHabilita(14) <= ((Grupo6 and decSubGrupos(1)) and Rd) and barramentoEnderecos(5);	-- BUT 1
grupoHabilita(15) <= ((Grupo6 and decSubGrupos(2)) and Rd) and barramentoEnderecos(5);	-- BUT 2
grupoHabilita(16) <= ((Grupo6 and decSubGrupos(3)) and Rd) and barramentoEnderecos(5);	-- BUT 3
grupoHabilita(17) <= ((Grupo6 and decSubGrupos(4)) and Rd) and barramentoEnderecos(5);	-- BUT FPGA RESET

-- Habilita CLEAR Button 0
grupoHabilita(18) <= barramentoEnderecos(0) and 
							barramentoEnderecos(1) and 
							barramentoEnderecos(2) and 
							barramentoEnderecos(3) and
							barramentoEnderecos(4) and
							barramentoEnderecos(5) and
							barramentoEnderecos(6) and
							barramentoEnderecos(7) and
							barramentoEnderecos(8) and
							Wr;

-- Habilita CLEAR Button 1
grupoHabilita(19) <= not(barramentoEnderecos(0)) and 
							barramentoEnderecos(1) and 
							barramentoEnderecos(2) and 
							barramentoEnderecos(3) and
							barramentoEnderecos(4) and
							barramentoEnderecos(5) and
							barramentoEnderecos(6) and
							barramentoEnderecos(7) and
							barramentoEnderecos(8) and
							Wr;

grupoHabilita(20) <= barramentoEnderecos(0) and 
							barramentoEnderecos(1) and 
							not(barramentoEnderecos(2)) and 
							barramentoEnderecos(3) and
							barramentoEnderecos(4) and
							barramentoEnderecos(5) and
							barramentoEnderecos(6) and
							barramentoEnderecos(7) and
							barramentoEnderecos(8) and
							Wr;
end architecture;