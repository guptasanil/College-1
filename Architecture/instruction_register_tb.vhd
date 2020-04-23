library ieee;
use ieee.std_logic_1164.all;

entity instruction_register_tb is
end instruction_register_tb;
 
architecture behavior of instruction_register_tb is 

component instruction_register
port( 
	load : in STD_LOGIC;
	instruction: in STD_LOGIC_VECTOR(15 downto 0);
	clk: in STD_LOGIC;
	dest_reg, src_a, src_b : out STD_LOGIC_VECTOR(2 downto 0);
	opcode : out STD_LOGIC_VECTOR(7 downto 0)
);
end component;
--In
signal load : STD_LOGIC;
signal clk : STD_LOGIC := '0';
signal instruction : STD_LOGIC_VECTOR( 15 downto 0);
--Out
signal opcode : STD_LOGIC_VECTOR(7 downto 0);
signal dest_reg : STD_LOGIC_VECTOR(2 downto 0);
signal src_a : STD_LOGIC_VECTOR(2 downto 0);
signal src_b : STD_LOGIC_VECTOR(2 downto 0);
 
begin
	uut: instruction_register port map (
		load => load,
		instruction => instruction,
		clk => clk,
		dest_reg => dest_reg,
		src_a => src_a,
		src_b => src_b,
		opcode => opcode
	);
	stim_proc: process
	begin
		load <= '1';
		instruction <= "1111111111111111";
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		load <= '0';
		instruction <= "1010101010101010";
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
	end process;
end;