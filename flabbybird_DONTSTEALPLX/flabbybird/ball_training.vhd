-- Bouncing Ball Video 
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

PACKAGE de0core3 IS
	COMPONENT vga_sync
 		PORT(clock_25Mhz : in std_logic; 
				red, green, blue	: IN	STD_LOGIC_vector(3 downto 0);
         	red_out, green_out, blue_out	: OUT 	STD_LOGIC_vector(3 downto 0);
			horiz_sync_out, vert_sync_out	: OUT 	STD_LOGIC;
			pixel_row, pixel_column			: OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
	END COMPONENT;
END de0core3;

-- Bouncing Ball Video 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
LIBRARY work;
USE work.de0core3.all;

ENTITY ball_training IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT(SIGNAL mouse, PB0, PB1, Clock 			: IN std_logic;
        SIGNAL Red,Green,Blue 			: OUT std_logic_vector(3 downto 0);
        SIGNAL Horiz_sync,Vert_sync		: OUT std_logic);
END ball_training;

architecture behavior of ball_training is

			-- Video Display Signals   
SIGNAL vert_sync_int,
		reset, Ball_on, Text_on			: std_logic;
SIGNAL Red_Data, Green_Data, Blue_Data : std_logic_vector(3 DOWNTO 0);
SIGNAL Size 								: std_logic_vector(9 DOWNTO 0);  
SIGNAL Ball_Y_motion 						: std_logic_vector(9 DOWNTO 0);
SIGNAL Ball_Y_pos, Ball_X_pos				: std_logic_vector(9 DOWNTO 0);
SIGNAL pixel_row, pixel_column				: std_logic_vector(9 DOWNTO 0); 

--Character select/display signals

SIGNAL row_sel : std_logic_vector(2 downto 0);
SIGNAL col_sel : std_logic_vector(2 downto 0);
SIGNAL char_sel : std_logic_vector(5 downto 0) := "000000";
SIGNAL char_out : std_logic;

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
			
Size <= CONV_STD_LOGIC_VECTOR(8,10);
Ball_X_pos <= CONV_STD_LOGIC_VECTOR(320,10);


		-- need internal copy of vert_sync to read
vert_sync <= vert_sync_int;

		-- Colors for pixel data on video signal
Red_Data <= "1111";
		-- Turn off Green and Blue when displaying ball
Green_Data <= NOT (Ball_on OR char_out) & "000";
Blue_Data <= NOT (Ball_on OR char_out) & "000";

--we select 3 downto 1 to increase size of the characters displayed
RGB_Display: Process (Ball_X_pos, Ball_Y_pos, pixel_column, pixel_row, Size)
BEGIN
			-- Set Ball_on ='1' to display ball
 IF ('0' & Ball_X_pos <= pixel_column + Size) AND
 			-- compare positive numbers only
 	(Ball_X_pos + Size >= '0' & pixel_column) AND
 	('0' & Ball_Y_pos <= pixel_row + Size) AND
 	(Ball_Y_pos + Size >= '0' & pixel_row ) THEN
 		Ball_on <= '1';
 	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(0,10)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(14,10)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,10)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(14,10))) THEN
			char_sel <= "010011"; --S
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(15,10)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(30,10)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,10)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(14,10))) THEN
			char_sel <= "000011" ; --C
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(31,10)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(46,10)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,10)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(14,10))) THEN
			char_sel <= "001111"; --O
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(47,10)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(62,10)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,10)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(14,10))) THEN
			char_sel <= "010010"; --R
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(63,10)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(78,10)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,10)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(14,10))) THEN
			char_sel <= "000101"; --E
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
	ELSE
		--reset the char rom mux
		row_sel <= "000";
		col_sel <= "000";
		char_sel <= "000000";
 		Ball_on <= '0';
	END IF;
END process RGB_Display;


--ball vertical movement logic
Move_Ball: process(vert_sync_int)
VARIABLE PRESSED : STD_LOGIC;
BEGIN
				IF (vert_sync_int'event and vert_sync_int = '1') THEN
				-- Move ball once every vertical sync
				-- Bounce off top or bottom of screen
					IF (('0' & Ball_Y_pos) >= CONV_STD_LOGIC_VECTOR(480,10) - Size) THEN
						--not game over when it hits the bottom for testing purposes
						IF (mouse = '1') THEN
							Ball_Y_motion <= - CONV_STD_LOGIC_VECTOR(3,10);
						ELSE
							Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
						END IF;
					ELSIF (('0' & Ball_Y_pos) < CONV_STD_LOGIC_VECTOR(480,10) - Size) AND (Ball_Y_pos > Size) THEN 
						IF (mouse = '1') THEN
							Ball_Y_motion <= - CONV_STD_LOGIC_VECTOR(3,10);
						ELSE
							Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(4,10);
						END IF;
					ELSIF Ball_Y_pos <= Size THEN
						Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(2,10);
					END IF;
					-- Compute next ball Y position
					Ball_Y_pos <= Ball_Y_pos + Ball_Y_motion;
					--reset to middle
					IF (PB0 = '1') THEN
						Ball_Y_pos <= CONV_STD_LOGIC_VECTOR(240,10);
						Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
					END IF;
				END IF;
END process Move_Ball;

END behavior;

