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
		pix_r0,pix_c0 : in std_logic_vector(10 downto 0);
		
		red1,green1,blue1 : in std_logic_vector(3 downto 0);
		horiz1,vert1 : in std_logic;
		pix_r1,pix_c1 : in std_logic_vector(10 downto 0);
		
		red2,green2,blue2 : in std_logic_vector(3 downto 0);
		horiz2,vert2 : in std_logic;
		pix_r2,pix_c2 : in std_logic_vector(10 downto 0);
		
		red3,green3,blue3 : in std_logic_vector(3 downto 0);
		horiz3,vert3 : in std_logic;
		pix_r3,pix_c3 : in std_logic_vector(10 downto 0);
		
		red,green,blue : out std_logic_vector(3 downto 0);
		horiz,vert : out std_logic;
		pix_row,pix_col : out std_logic_vector(10 downto 0)
		);
end entity;

architecture selector of display_sel is
begin
	process(clk,output_sel)
	begin
		if (rising_edge(clk)) then
			case output_sel is
				when "00" => --menu display
					red <= red0;
					green <= green0;
					blue <= blue0;
					horiz <= horiz0;
					vert <= vert0;
					pix_row <= pix_r0;
					pix_col <= pix_c0;
				when "01" => --regular game display
					red <= red1;
					green <= green1;
					blue <= blue1;
					horiz <= horiz1;
					vert <= vert1;
					pix_row <= pix_r1;
					pix_col <= pix_c1;
				when "10" => --training mode display
					red <= red2;
					green <= green2;
					blue <= blue2;
					horiz <= horiz2;
					vert <= vert2;
					pix_row <= pix_r2;
					pix_col <= pix_c2;
				when "11" => --game over display
					red <= red3;
					green <= green3;
					blue <= blue3;
					horiz <= horiz3;
					vert <= vert3;
					pix_row <= pix_r3;
					pix_col <= pix_c3;
				when others => --default to menu screen
					red <= red0;
					green <= green0;
					blue <= blue0;
					horiz <= horiz0;
					vert <= vert0;
					pix_row <= pix_r0;
					pix_col <= pix_c0;
			end case;
		end if;
	end process;
end architecture;