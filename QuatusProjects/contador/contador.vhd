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

--CLK
	signal CLK : std_logic;

--CPU
	signal wr 					: std_logic;
	alias CPU_RAM1_wr 		: std_logic is wr;
	
	signal rd 					: std_logic;
	alias CPU_RAM1_rd 		: std_logic is rd;
	
	signal CPU_data_out 		: std_logic_vector (7 downto 0);
	alias CPU_RAM1_data_in 	: std_logic_vector (7 downto 0) is CPU_data_out;
	
	signal CPU_data_address : std_logic_vector (8 downto 0);
	alias CPU_DEC3x8_1 		: std_logic_vector (2 downto 0) is CPU_data_address(8 downto 6);
	alias CPU_RAM1_address 	: std_logic_vector (5 downto 0) is CPU_data_address(5 downto 0);
	
	signal ROM_address 		: std_logic_vector (8 downto 0);
	alias CPU_ROM1 			: std_logic_vector (8 downto 0) is ROM_address(8 downto 0);
	
	signal CPU_data_in		: std_logic_vector (7 downto 0);
	alias RAM1_CPU_data_in 	: std_logic_vector (7 downto 0) is CPU_data_in;
	
--ROM1
	signal instruction 		: std_logic_vector (12 downto 0);
	alias ROM1_CPU 			: std_logic_vector (12 downto 0) is instruction;
	
--DEC3x8_1
	signal blocos				: std_logic_vector (7 downto 0);
	alias bloco0 				: std_logic is blocos(0);
	alias bloco1 				: std_logic is blocos(1);
	alias bloco2 				: std_logic is blocos(2);
	alias bloco3 				: std_logic is blocos(3);
	alias bloco4 				: std_logic is blocos(4);
	alias bloco5 				: std_logic is blocos(5);
	alias bloco6 				: std_logic is blocos(6);
	alias bloco7 				: std_logic is blocos(7);

  

begin

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

CPU1	: entity work.CPU port map   (CLK 				=> CLK, 
												RST 				=> '0', 
												Instruction_IN => ROM1_CPU, 
												Data_IN 			=> CPU_data_in,
												WR 				=> wr,
												RD 				=> rd,
												Data_OUT			=> CPU_data_out,
												Data_Address 	=> CPU_data_address,
												ROM_Address 	=> ROM_address);

ROM1 	: entity work.memoriaROM port map (Endereco	=> CPU_ROM1, 
													  Dado 		=> ROM1_CPU);

RAM1 	: entity work.memoriaRAM generic map(dataWidth => larguraDados, addrWidth => 6)
										 port map  (addr 		=> CPU_RAM1_address, 
														habilita => bloco0, 
														we 		=> CPU_RAM1_wr, 
														re 		=> CPU_RAM1_rd, 
														clk 		=> CLK, 
														dado_in 	=> CPU_RAM1_data_in, 
														dado_out => RAM1_CPU_data_in);

DEC3x8_1 :  entity work.decoder3x8 port map (entrada	=> CPU_DEC3x8_1,
															saida 	=> blocos);
															
PC_OUT <= ROM_address;
															
end architecture;