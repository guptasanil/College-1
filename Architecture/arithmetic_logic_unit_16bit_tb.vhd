library ieee;
use ieee.std_logic_1164.all;
 
entity arithmetic_logic_unit_16bit_tb is
end arithmetic_logic_unit_16bit_tb;
 
architecture behavior of arithmetic_logic_unit_16bit_tb is
 
component arithmetic_logic_unit_16bit
port( 
	s : in STD_LOGIC_VECTOR(2 downto 0); 
	carry_in : in  STD_LOGIC;
	input_a : in  STD_LOGIC_VECTOR(15 downto 0);
	input_b : in  STD_LOGIC_VECTOR(15 downto 0);
	carry : out STD_LOGIC;
	negative : out STD_LOGIC;
	overflow : out STD_LOGIC;
	zero : out STD_LOGIC;
	output : out  STD_LOGIC_VECTOR(15 downto 0)
);
end component;
--In
signal s : STD_LOGIC_VECTOR(2 downto 0);
signal carry_in : STD_LOGIC;
signal input_a : STD_LOGIC_VECTOR(15 downto 0);
signal input_b : STD_LOGIC_VECTOR(15 downto 0);
--Out
signal carry : STD_LOGIC;
signal negative : STD_LOGIC;
signal overflow : STD_LOGIC;
signal zero : STD_LOGIC;
signal output : STD_LOGIC_VECTOR(15 downto 0);

begin
	uut: arithmetic_logic_unit_16bit port map (
			  s => s,
			  carry_in => carry_in,
			  input_a => input_a,
			  input_b => input_b,
			  carry => carry,
			  overflow => overflow,
			  zero => zero,
			  negative => negative,
			  output => output
	);

	stim_proc: process
	begin
		input_a <= "1111111100000000";
		input_b <= "0000000011111111";
		carry_in <= '0';
		s <= "000";
		wait for 15 ns ;
		carry_in <= '1';
		s <= "000";
		wait for 15 ns ;
		carry_in <= '0';
		s <= "001";
		wait for 15 ns ;	
		carry_in <= '1';
		s <= "001";
		wait for 15 ns ;
		carry_in <= '0';
		s <= "010";
		wait for 15 ns ;
		carry_in <= '1';
		s <= "010";
		wait for 15 ns ;
		carry_in <= '0';
		s <= "011";
		wait for 15 ns ;
		carry_in <= '1';
		s <= "011";
		wait for 15 ns ;
		carry_in <= '0';
		s <= "100";
		wait for 15 ns ;
		carry_in <= '1';
		s <= "100";
		wait for 15 ns ;
		carry_in <= '0';
		s <= "101";
		wait for 15 ns ;
		carry_in <= '1';
		s <= "101";
		wait for 15 ns ;
		carry_in <= '0';
		s <= "110";
		wait for 15 ns ;
		carry_in <= '1';
		s <= "110";
		wait for 15 ns ;
		carry_in <= '0';
		s <= "111";
		wait for 15 ns ;
		carry_in <= '1';
		s <= "111";
		wait for 15 ns ;
	end process;
end;
