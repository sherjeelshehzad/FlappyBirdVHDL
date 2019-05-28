library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lfsr is
port
(
	clk : in std_logic;
	reset : in std_logic;
	output : out std_logic_vector(10 downto 0)
);
end entity;

architecture behaviour of lfsr is
	begin
		process(clk,reset)
		variable cout : std_logic_vector(10 downto 0) := "01010101011"; --random initial seed
		begin
			if (reset = '1') then --async reset
				cout := "01010101011"; --reset to initial seed
			elsif (cout = "00000000000") then
				cout := "01010101011"; --reset to initial if lfsr is stuck
			else
				if (rising_edge(clk)) then
					cout := cout(0) & (cout(10) xor cout(9)) & cout(9) & cout(8) &  cout(7) & cout(6) & cout(5) & cout(4) & cout(3) & cout(2) & (cout(1) xor cout(10));
				end if;
			end if;
			output <= cout;
		end process;
end behaviour;