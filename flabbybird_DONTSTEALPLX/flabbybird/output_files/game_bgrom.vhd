LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity game_bgrom is
	port(
		clk : in std_logic;
		pixel_row, pixel_col: in std_logic_vector(10 downto 0);
		rom_mux_output : out std_logic_vector(11 downto 0)
	);

end entity;

architecture bg of game_bgrom is

component game_background
	PORT (
		clock : in std_logic;
		address : in std_logic_vector(14 downto 0);
		q : out std_logic_vector(11 downto 0)
	);
end component;

signal data : std_logic_vector(11 downto 0);
signal address : std_logic_vector(14 downto 0);
signal address_int : integer := 0;
signal bgcol : integer := 0;
signal bgrow : integer := 0;

begin
	game_BG : game_background
	port map (clock => clk, address => address, q => data);
	bgrow <= to_integer(unsigned(pixel_row(9 downto 2)));
	bgcol <= to_integer(unsigned(pixel_col(9 downto 2)));
	address_int <= bgcol + (bgrow * 160);
	address <= std_logic_vector(to_unsigned(address_int,15));
	rom_mux_output <= data;
end architecture;