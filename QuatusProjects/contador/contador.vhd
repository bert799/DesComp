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
		FPGA_RESET_N : std_logic;
		KEY 		: in  std_logic_vector(5 downto 0);
		SW			: in  std_logic_vector(9 downto 0);
		PC_OUT 	: out std_logic_vector(8 downto 0);
		LEDR  	: out std_logic_vector(9 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0)
	);
end entity;


architecture arquitetura of contador is

--CLK
	signal CLK : std_logic;

--CPU
	signal wr 							: std_logic;
	alias CPU_RAM1_wr 				: std_logic is wr;
	
	signal rd	 						: std_logic;
	alias CPU_RAM1_rd 				: std_logic is rd;
	
	signal CPU_data_out 				: std_logic_vector (7 downto 0);
	alias CPU_RAM1_data_in 			: std_logic_vector (7 downto 0) is CPU_data_out;
	alias CPU_REG_LEDs_data_in 	: std_logic_vector (7 downto 0) is CPU_data_out;
	alias CPU_FF_LED8_data_in 		: std_logic is CPU_data_out(0);
	alias CPU_FF_LED9_data_in 		: std_logic is CPU_data_out(0);
	alias CPU_REGSEG_data_in		: std_logic_vector(3 downto 0) is CPU_data_out(3 downto 0);
	
	signal CPU_data_address 		: std_logic_vector (8 downto 0);
	alias CPU_DEC3x8_1 				: std_logic_vector (2 downto 0) is CPU_data_address(8 downto 6);
	alias CPU_DEC3x8_2 				: std_logic_vector (2 downto 0) is CPU_data_address(2 downto 0);
	alias CPU_RAM1_address 			: std_logic_vector (5 downto 0) is CPU_data_address(5 downto 0);
	alias selSEG						: std_logic is CPU_data_address(5);
	
	signal ROM_address 				: std_logic_vector (8 downto 0);
	alias CPU_ROM1 					: std_logic_vector (8 downto 0) is ROM_address(8 downto 0);
	
	signal CPU_data_in				: std_logic_vector (7 downto 0);
	alias RAM1_CPU_data_in 			: std_logic_vector (7 downto 0) is CPU_data_in;
	
--ROM1
	signal instruction 				: std_logic_vector (14 downto 0);
	alias ROM1_CPU 					: std_logic_vector (14 downto 0) is instruction;
	
--DEC3x8_1
	signal blocos						: std_logic_vector (7 downto 0);
	alias bloco0 						: std_logic is blocos(0);
	alias bloco1 						: std_logic is blocos(1);
	alias bloco2 						: std_logic is blocos(2);
	alias bloco3 						: std_logic is blocos(3);
	alias bloco4 						: std_logic is blocos(4);
	alias bloco5 						: std_logic is blocos(5);
	alias bloco6 						: std_logic is blocos(6);
	alias bloco7 						: std_logic is blocos(7);
	
--DEC3x8_2
	signal enderecos					: std_logic_vector (7 downto 0);
	alias endereco0 					: std_logic is enderecos(0);
	alias endereco1 					: std_logic is enderecos(1);
	alias endereco2 					: std_logic is enderecos(2);
	alias endereco3 					: std_logic is enderecos(3);
	alias endereco4 					: std_logic is enderecos(4);
	alias endereco5 					: std_logic is enderecos(5);
	alias endereco6 					: std_logic is enderecos(6);
	alias endereco7 					: std_logic is enderecos(7);
	
--REG_LEDs
	signal habilita_REG_LEDs		: std_logic;
	signal REG_LEDs_data_out		: std_logic_vector(7 downto 0);

--FF_LED8
	signal habilita_FF_LED8			: std_logic;
	signal FF_LED8_data_out			: std_logic;

--FF_LED9
	signal habilita_FF_LED9			: std_logic;
	signal FF_LED9_data_out			: std_logic;
	
--REGSEG0
	signal REGSEG0_data_out 		: std_logic_vector(3 downto 0);
	signal habilita_REGSEG0			: std_logic;

--SEG0
	signal SEG0_data_out 			: std_logic_vector(6 downto 0);

--REGSEG1
	signal REGSEG1_data_out 		: std_logic_vector(3 downto 0);
	signal habilita_REGSEG1			: std_logic;
	
--SEG1
	signal SEG1_data_out 			: std_logic_vector(6 downto 0);

--REGSEG2
	signal REGSEG2_data_out 		: std_logic_vector(3 downto 0);
	signal habilita_REGSEG2			: std_logic;
	
--SEG2
	signal SEG2_data_out 			: std_logic_vector(6 downto 0);

--REGSEG3
	signal REGSEG3_data_out 		: std_logic_vector(3 downto 0);
	signal habilita_REGSEG3			: std_logic;
	
--SEG3
	signal SEG3_data_out 			: std_logic_vector(6 downto 0);

--REGSEG4
	signal REGSEG4_data_out 		: std_logic_vector(3 downto 0);
	signal habilita_REGSEG4			: std_logic;
	
--SEG4
	signal SEG4_data_out 			: std_logic_vector(6 downto 0);

--REGSEG5
	signal REGSEG5_data_out 		: std_logic_vector(3 downto 0);
	signal habilita_REGSEG5			: std_logic;
	
--SEG5
	signal SEG5_data_out 			: std_logic_vector(6 downto 0);
	
-- SW
	signal habilita_buf3_8por 		: std_logic;
	signal habilita_SW8 				: std_logic;
	signal habilita_SW9 				: std_logic;
	
--	KEY
	signal habilita_KEY0				: std_logic;
	signal habilita_KEY1				: std_logic;
	signal habilita_KEY2				: std_logic;
	signal habilita_KEY3				: std_logic;
	signal habilita_RESET			: std_logic;

begin

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


CPU1	: entity work.CPU 
	port map (CLK 					=> CLK, 
				 RST 					=> '0', 
				 Instruction_IN 	=> ROM1_CPU, 
				 Data_IN 			=> CPU_data_in,
				 WR 					=> wr,
				 RD 					=> rd,
				 Data_OUT			=> CPU_data_out,
				 Data_Address 		=> CPU_data_address,
				 ROM_Address 		=> ROM_address);

				
ROM1 	: entity work.memoriaROM 
	port map (Endereco 	=> CPU_ROM1, 
				 Dado 		=> ROM1_CPU);

				
RAM1 	: entity work.memoriaRAM generic map(dataWidth => larguraDados, addrWidth => 6)
	port map (addr 		=> CPU_RAM1_address, 
				 habilita 	=> bloco0, 
				 we 			=> CPU_RAM1_wr, 
				 re 			=> CPU_RAM1_rd, 
				 clk 			=> CLK, 
				 dado_in 	=> CPU_RAM1_data_in, 
				 dado_out 	=> RAM1_CPU_data_in);
			

habilita_REG_LEDs <= bloco4 and endereco0 and wr and not(selSEG);			
REG_LEDs : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
	port map (DIN 		=> CPU_REG_LEDs_data_in, 
				 DOUT 	=> REG_LEDs_data_out, 
				 ENABLE 	=> habilita_REG_LEDs, 
				 CLK 		=> CLK, 
				 RST 		=> '0');
						
						
habilita_FF_LED8 <= bloco4 and endereco1 and wr and not(selSEG);						 
FF_LED8 : entity work.flipFlop 
	port map (DIN 		=> CPU_FF_LED8_data_in,
				 DOUT 	=> FF_LED8_data_out, 
				 ENABLE  => habilita_FF_LED8, 
				 CLK 		=> CLK, 
				 RST 		=> '0');


habilita_FF_LED9 <= bloco4 and endereco2 and wr and not(selSEG);
FF_LED9 : entity work.flipFlop 
	port map (DIN 		=> CPU_FF_LED8_data_in,
				 DOUT 	=> FF_LED9_data_out, 
				 ENABLE  => habilita_FF_LED9, 
				 CLK 		=> CLK, 
				 RST 		=> '0');						 
						 
						 
DEC3x8_1 :  entity work.decoder3x8 
	port map (entrada	=> CPU_DEC3x8_1,
				 saida 	=> blocos);

				
DEC3x8_2 :  entity work.decoder3x8 
	port map (entrada	=> CPU_DEC3x8_2,
				 saida 	=> enderecos);

				 
habilita_REGSEG0 <= bloco4 and endereco0 and selSEG and wr;
				 
REGSEG0 : entity work.registradorGenerico   generic map (larguraDados => 4)
	port map (DIN 		=> CPU_REGSEG_data_in, 
				 DOUT 	=> REGSEG0_data_out, 
				 ENABLE 	=> habilita_REGSEG0, 
				 CLK 		=> CLK, 
				 RST 		=> '0');
				 
SEG0 :  entity work.conversorHex7Seg
	port map (dadoHex 	=> REGSEG0_data_out,
				 apaga 		=> '0',
				 negativo 	=> '0',
				 overFlow 	=> '0',
				 saida7seg 	=> SEG0_data_out);

				 
habilita_REGSEG1 <= bloco4 and endereco1 and selSEG and wr;				 

REGSEG1 : entity work.registradorGenerico   generic map (larguraDados => 4)
	port map (DIN 		=> CPU_REGSEG_data_in, 
				 DOUT 	=> REGSEG1_data_out, 
				 ENABLE 	=> habilita_REGSEG1, 
				 CLK 		=> CLK, 
				 RST 		=> '0');			
			
SEG1 :  entity work.conversorHex7Seg
	port map (dadoHex 	=> REGSEG1_data_out,
				 apaga 		=> '0',
				 negativo 	=> '0',
				 overFlow 	=> '0',
				 saida7seg 	=> SEG1_data_out);
			

habilita_REGSEG2 <= bloco4 and endereco2 and selSEG and wr;
			
REGSEG2 : entity work.registradorGenerico   generic map (larguraDados => 4)
	port map (DIN 		=> CPU_REGSEG_data_in, 
				 DOUT 	=> REGSEG2_data_out, 
				 ENABLE 	=> habilita_REGSEG2, 
				 CLK 		=> CLK, 
				 RST 		=> '0');
			
SEG2 :  entity work.conversorHex7Seg
	port map (dadoHex 	=> REGSEG2_data_out,
				 apaga 		=> '0',
				 negativo 	=> '0',
				 overFlow 	=> '0',
				 saida7seg 	=> SEG2_data_out);


habilita_REGSEG3 <= bloco4 and endereco3 and selSEG and wr;				 
				 
REGSEG3 : entity work.registradorGenerico   generic map (larguraDados => 4)
	port map (DIN 		=> CPU_REGSEG_data_in, 
				 DOUT 	=> REGSEG3_data_out, 
				 ENABLE 	=> habilita_REGSEG3, 
				 CLK 		=> CLK, 
				 RST 		=> '0');			
		
SEG3 :  entity work.conversorHex7Seg
	port map (dadoHex 	=> REGSEG3_data_out,
				 apaga 		=> '0',
				 negativo 	=> '0',
				 overFlow 	=> '0',
				 saida7seg 	=> SEG3_data_out);


habilita_REGSEG4 <= bloco4 and endereco4 and selSEG and wr;				 
				 
REGSEG4 : entity work.registradorGenerico   generic map (larguraDados => 4)
	port map (DIN 		=> CPU_REGSEG_data_in, 
				 DOUT 	=> REGSEG4_data_out, 
				 ENABLE 	=> habilita_REGSEG4, 
				 CLK 		=> CLK, 
				 RST 		=> '0');				 
				 
SEG4 :  entity work.conversorHex7Seg
	port map (dadoHex 	=> REGSEG4_data_out,
				 apaga 		=> '0',
				 negativo 	=> '0',
				 overFlow 	=> '0',
				 saida7seg 	=> SEG4_data_out);			


habilita_REGSEG5 <= bloco4 and endereco5 and selSEG and wr;
				 
REGSEG5 : entity work.registradorGenerico   generic map (larguraDados => 4)
	port map (DIN 		=> CPU_REGSEG_data_in, 
				 DOUT 	=> REGSEG5_data_out, 
				 ENABLE 	=> habilita_REGSEG5, 
				 CLK 		=> CLK, 
				 RST 		=> '0');
				 
SEG5 :  entity work.conversorHex7Seg
	port map (dadoHex 	=> REGSEG5_data_out,
				 apaga 		=> '0',
				 negativo 	=> '0',
				 overFlow 	=> '0',
				 saida7seg 	=> SEG5_data_out);
				 

habilita_buf3_8por <= bloco5 and endereco0 and not(selSEG) and rd;			 
				 
buf3_8por :  entity work.buffer_3_state_8portas
	port map (entrada 	=> SW(7 downto 0), 
				 habilita 	=>  habilita_buf3_8por, 
				 saida 		=> CPU_data_in);

				 
habilita_SW8 <= bloco5 and endereco1 and not(selSEG) and rd;			 

buff_SW8 :  entity work.buffer_3_state_1porta
	port map (entrada 	=> SW(8), 
				 habilita 	=>  habilita_SW8, 
				 saida 		=> CPU_data_in(0));


habilita_SW9 <= bloco5 and endereco2 and not(selSEG) and rd;

buff_SW9 :  entity work.buffer_3_state_1porta
	port map (entrada 	=> SW(9), 
				 habilita 	=>  habilita_SW9, 
				 saida 		=> CPU_data_in(0));


habilita_KEY0 <= bloco5 and endereco0 and selSEG and rd;				 
				 
buff_KEY0 :  entity work.buffer_3_state_1porta
	port map (entrada 	=> KEY(0), 
				 habilita 	=>  habilita_KEY0, 
				 saida 		=> CPU_data_in(0));


habilita_KEY1 <= bloco5 and endereco1 and selSEG and rd;					 
				 
buff_KEY1 :  entity work.buffer_3_state_1porta
	port map (entrada 	=> KEY(1), 
				 habilita 	=>  habilita_KEY1, 
				 saida 		=> CPU_data_in(0));


habilita_KEY2 <= bloco5 and endereco2 and selSEG and rd;					 

buff_KEY2 :  entity work.buffer_3_state_1porta
	port map (entrada 	=> KEY(2), 
				 habilita 	=>  habilita_KEY2, 
				 saida 		=> CPU_data_in(0));


habilita_KEY3 <= bloco5 and endereco3 and selSEG and rd;	

buff_KEY3 :  entity work.buffer_3_state_1porta
	port map (entrada 	=> KEY(3), 
				 habilita 	=>  habilita_KEY3, 
				 saida 		=> CPU_data_in(0));

				 
habilita_RESET <= bloco5 and endereco4 and selSEG and rd;	

buff_RESET :  entity work.buffer_3_state_1porta
	port map (entrada 	=> FPGA_RESET_N, 
				 habilita 	=>  habilita_RESET, 
				 saida 		=> CPU_data_in(0));
			
			
PC_OUT 				<= ROM_address;
LEDR(7 downto 0) <= REG_LEDs_data_out;
LEDR(8)				<=	FF_LED8_data_out;
LEDR(9)				<= FF_LED9_data_out;
HEX0 					<= SEG0_data_out;
HEX1 					<= SEG1_data_out;
HEX2 					<= SEG2_data_out;
HEX3 					<= SEG3_data_out;
HEX4 					<= SEG4_data_out;
HEX5 					<= SEG5_data_out; 
															
end architecture;