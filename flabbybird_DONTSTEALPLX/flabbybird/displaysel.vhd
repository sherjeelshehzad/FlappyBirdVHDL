--4 to 1 (5 bit) display selector mux
--selects the display entity to use based on the state machine

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity display_sel is
	port(
		clk : in std_logic;
		output_sel: in std_logic_vector(1 downto 0);
		
		red0,green0,blue0 : in std_logic_vector(3 downto 0);
		horiz0,vert0 : in std_logic;
		
		red1,green1,blue1 : in std_logic_vector(3 downto 0);
		horiz1,vert1 : in std_logic;
		
		red2,green2,blue2 : in std_logic_vector(3 downto 0);
		horiz2,vert2 : in std_logic;
		
		red3,green3,blue3 : in std_logic_vector(3 downto 0);
		horiz3,vert3 : in std_logic;
		
		red,green,blue : out std_logic_vector(3 downto 0);
		horiz,vert : out std_logic
		);
end entity;

architecture selector of display_sel is
begin
	process(clk,output_sel)
	begin
			case output_sel is
				when "00" => --menu display
					red <= red0;
					green <= green0;
					blue <= blue0;
					horiz <= horiz0;
					vert <= vert0;
				when "01" => --regular game display
					red <= red1;
					green <= green1;
					blue <= blue1;
					horiz <= horiz1;
					vert <= vert1;
				when "10" => --training mode display
					red <= red2;
					green <= green2;
					blue <= blue2;
					horiz <= horiz2;
					vert <= vert2;
				when "11" => --game over display
					red <= red3;
					green <= green3;
					blue <= blue3;
					horiz <= horiz3;
					vert <= vert3;
				when others => --default to menu screen
					red <= red0;
					green <= green0;
					blue <= blue0;
					horiz <= horiz0;
					vert <= vert0;
			end case;
	end process;
end architecture;