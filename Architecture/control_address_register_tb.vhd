library ieee;
use ieee.std_logic_1164.all;
entity control_address_register_tb is
end control_address_register_tb;
architecture behavioral of control_address_register_tb is 
component control_address_register
    port( 
			address : in std_logic_vector(7 downto 0);
			load: in std_logic;
			clk : in std_logic;
			output : out std_logic_vector(7 downto 0)
	);
end component;
  signal address : std_logic_vector(7 downto 0);
  signal clk : std_logic := '0';
  signal load : std_logic;
  signal output : std_logic_vector(7 downto 0);
  constant clk_period : time := 10 ns;
begin
	uut: control_address_register port map (
		address => address,
		load => load,
		clk => clk,
		output => output
	);
	stim_proc: process
	begin
		load <= '0';
		clk <= '0';
		wait for clk_period;
		clk <= '1';
		wait for clk_period;
		address <= "00000000";
		clk <= '0';
		load <= '1';
		wait for clk_period;
		clk <= '1';
		wait for clk_period;
		clk <= '0';
		load <= '0';
		wait for clk_period;
		clk <= '1';
		wait for clk_period;
		address <= "11111111";
		clk <= '0';
		load <= '1';
		wait for clk_period;
		clk <= '1';
		wait for clk_period;
	end process;
end;