-- Bouncing Ball Video 
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

PACKAGE de0core1 IS
	COMPONENT vga_sync
 		PORT(clock_25Mhz : in std_logic; 
				red, green, blue	: IN	STD_LOGIC_vector(3 downto 0);
         	red_out, green_out, blue_out	: OUT 	STD_LOGIC_vector(3 downto 0);
			horiz_sync_out, vert_sync_out	: OUT STD_LOGIC;
			pixel_row, pixel_column			: OUT STD_LOGIC_VECTOR(10 DOWNTO 0));
	END COMPONENT;
END de0core1;

-- Bouncing Ball Video 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
LIBRARY work;
USE work.de0core1.all;

ENTITY ball_menu IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT(SIGNAL mouse, PB0, PB1, Clock 			: IN std_logic;
			SIGNAL bg_input : IN std_logic_vector(11 DOWNTO 0);
        SIGNAL Red,Green,Blue 			: OUT std_logic_vector(3 downto 0);
        SIGNAL Horiz_sync,Vert_sync		: OUT std_logic;
		  SIGNAL pix_row, pix_column			: out std_logic_vector(10 DOWNTO 0));
END ball_menu;

architecture behavior of ball_menu is

			-- Video Display Signals   
SIGNAL vert_sync_int,
		reset, Text_on			: std_logic;
SIGNAL Red_Data, Green_Data, Blue_Data : std_logic_vector(3 DOWNTO 0);
SIGNAL pixel_row, pixel_column				: std_logic_vector(10 DOWNTO 0); 

--Character select/display signals

SIGNAL row_sel : std_logic_vector(2 downto 0);
SIGNAL col_sel : std_logic_vector(2 downto 0);
SIGNAL char_sel : std_logic_vector(5 downto 0) := "000000";
SIGNAL char_out : std_logic;
SIGNAL char_disp : std_logic;

COMPONENT char_rom
		PORT(character_address	:	IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		font_row, font_col	:	IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		clock				: 	IN STD_LOGIC ;
		rom_mux_output		:	OUT STD_LOGIC);
END COMPONENT;

BEGIN
   SYNC: vga_sync
 		PORT MAP(clock_25Mhz => clock, 
				red => red_data, green => green_data, blue => blue_data,	
    	     	red_out => red, green_out => green, blue_out => blue,
			 	horiz_sync_out => horiz_sync, vert_sync_out => vert_sync_int,
			 	pixel_row => pixel_row, pixel_column => pixel_column);
				
	CHAR: char_rom
		PORT MAP(clock => clock, character_address => char_sel, 
			font_row => row_sel,
			font_col => col_sel,
			rom_mux_output => char_out);
			
		-- need internal copy of vert_sync to read
vert_sync <= vert_sync_int;

Red_Data <= "0000" when (char_out = '1') AND (Char_disp = '1') 
		else bg_input(11 downto 8);
		
Green_Data <= "0000" when (char_out = '1') AND (Char_disp = '1') 
		else bg_input(7 downto 4);
		
Blue_Data <= "0000" when (char_out = '1') AND (Char_disp = '1')
		else bg_input(3 downto 0);

pix_row <= pixel_row;
pix_column <= pixel_column;

--we select 3 downto 1 to increase size of the characters displayed
Text_Display: Process (pixel_column, pixel_row)
BEGIN
			-- Set Ball_on ='1' to display ball
 IF ((pixel_column >= CONV_STD_LOGIC_VECTOR(64,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(127,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(128,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(191,11))) THEN
			char_sel <= "001000"; --H
			row_sel <= pixel_row(5 downto 3);
			col_sel <= pixel_column(5 downto 3);
			char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(128,10)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(191,10)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(128,10)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(191,10))) THEN
			char_sel <= "000101"; --E
			row_sel <= pixel_row(5 downto 3);
			col_sel <= pixel_column(5 downto 3);
			char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(192,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(255,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(128,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(191,11))) THEN
			char_sel <= "010010"; --R
			row_sel <= pixel_row(5 downto 3);
			col_sel <= pixel_column(5 downto 3);
			char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(256,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(319,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(128,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(191,11))) THEN
			char_sel <= "001111"; --O
			row_sel <= pixel_row(5 downto 3);
			col_sel <= pixel_column(5 downto 3);
			char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(320,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(383,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(128,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(191,11))) THEN
			char_sel <= "100000"; --space
			row_sel <= pixel_row(5 downto 3);
			col_sel <= pixel_column(5 downto 3);
			char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(384,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(447,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(128,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(191,11))) THEN
			char_sel <= "100000"; --space
			row_sel <= pixel_row(5 downto 3);
			col_sel <= pixel_column(5 downto 3);
			char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(448,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(511,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(128,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(191,11))) THEN
			char_sel <= "001111"; --O
			row_sel <= pixel_row(5 downto 3);
			col_sel <= pixel_column(5 downto 3);
			char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(512,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(575,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(128,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(191,11))) THEN
			char_sel <= "000110"; --F
			row_sel <= pixel_row(5 downto 3);
			col_sel <= pixel_column(5 downto 3);
			char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(128,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(191,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(192,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(255,11))) THEN
			char_sel <= "001011"; --K
			row_sel <= pixel_row(5 downto 3);
			col_sel <= pixel_column(5 downto 3);
			char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(192,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(255,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(192,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(255,11))) THEN
			char_sel <= "001111"; --O
			row_sel <= pixel_row(5 downto 3);
			col_sel <= pixel_column(5 downto 3);
			char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(256,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(319,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(192,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(255,11))) THEN
			char_sel <= "001110"; --N
			row_sel <= pixel_row(5 downto 3);
			col_sel <= pixel_column(5 downto 3);
			char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(320,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(383,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(192,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(255,11))) THEN
			char_sel <= "001111"; --O
			row_sel <= pixel_row(5 downto 3);
			col_sel <= pixel_column(5 downto 3);
			char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(384,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(447,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(192,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(255,11))) THEN
			char_sel <= "001000"; --H
			row_sel <= pixel_row(5 downto 3);
			col_sel <= pixel_column(5 downto 3);
			char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(448,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(511,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(192,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(255,11))) THEN
			char_sel <= "000001"; --A
			row_sel <= pixel_row(5 downto 3);
			col_sel <= pixel_column(5 downto 3);
			char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(64,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(95,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(319,11))) THEN
			char_sel <= "010000"; --P
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(96,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(127,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(319,11))) THEN
			char_sel <= "010010" ; --R
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(128,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(159,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(319,11))) THEN
			char_sel <= "000101"; --E
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(160,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(191,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(319,11))) THEN
			char_sel <= "010011"; --S
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(192,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(223,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(319,11))) THEN
			char_sel <= "010011"; --S
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(224,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(255,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(319,11))) THEN
			char_sel <= "100000"; --space
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(256,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(287,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(319,11))) THEN
			char_sel <= "011110" ; --up arrow
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(319,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(319,11))) THEN
			char_sel <= "100000"; --space
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(320,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(351,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(319,11))) THEN
			char_sel <= "010100"; --T
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(383,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(319,11))) THEN
			char_sel <= "001111"; --O
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
		ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(384,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(415,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(319,11))) THEN
			char_sel <= "100000"; --space
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(416,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(447,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(319,11))) THEN
			char_sel <= "010000" ; --P
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(448,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(479,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(319,11))) THEN
			char_sel <= "001100"; --L
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(480,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(511,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(319,11))) THEN
			char_sel <= "000001"; --A
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(512,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(543,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(319,11))) THEN
			char_sel <= "011001"; --Y
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(64,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(95,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(383,11))) THEN
			char_sel <= "010000"; --P
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(96,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(127,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(383,11))) THEN
			char_sel <= "010010" ; --R
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(128,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(159,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(383,11))) THEN
			char_sel <= "000101"; --E
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(160,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(191,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(383,11))) THEN
			char_sel <= "010011"; --S
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(192,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(223,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(383,11))) THEN
			char_sel <= "010011"; --S
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(224,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(255,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(383,11))) THEN
			char_sel <= "100000"; --space
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(256,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(287,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(383,11))) THEN
			char_sel <= "011100" ; --down arrow
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(288,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(319,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(383,11))) THEN
			char_sel <= "100000"; --space
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(320,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(351,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(383,11))) THEN
			char_sel <= "010100"; --T
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(383,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(383,11))) THEN
			char_sel <= "001111"; --O
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
		ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(384,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(415,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(383,11))) THEN
			char_sel <= "100000"; --space
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(416,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(447,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(383,11))) THEN
			char_sel <= "010100" ; --T
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(448,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(479,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(383,11))) THEN
			char_sel <= "010010"; --R
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(480,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(511,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(383,11))) THEN
			char_sel <= "000001"; --A
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(512,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(543,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(383,11))) THEN
			char_sel <= "001001"; --I
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(544,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(575,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(352,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(383,11))) THEN
			char_sel <= "001110"; --N
			row_sel <= pixel_row(4 downto 2);
			col_sel <= pixel_column(4 downto 2);
			Char_disp <= '1';
	ELSE
		--reset the char rom mux
		row_sel <= "000";
		col_sel <= "000";
		char_sel <= "000000";
		char_disp <= '0';
	END IF;
END process Text_Display;
END behavior;

