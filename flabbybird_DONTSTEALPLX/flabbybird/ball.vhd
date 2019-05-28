-- Bouncing Ball Video 
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

PACKAGE de0core IS
	COMPONENT vga_sync
 		PORT(clock_25Mhz : in std_logic; 
				red, green, blue	: IN	STD_LOGIC_vector(3 downto 0);
         	red_out, green_out, blue_out	: OUT 	STD_LOGIC_vector(3 downto 0);
			horiz_sync_out, vert_sync_out	: OUT 	STD_LOGIC;
			pixel_row, pixel_column			: OUT STD_LOGIC_VECTOR(10 DOWNTO 0));
	END COMPONENT;
END de0core;

-- Bouncing Ball Video
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
LIBRARY work;
USE work.de0core.all;

ENTITY ball IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT(SIGNAL mouse, PB0, PB1, Clock 			: IN std_logic;
			SIGNAL pipe_x1, pipe_gap1 : IN std_logic_vector(10 DOWNTO 0);
			SIGNAL pipe_display1 : IN std_logic;
			SIGNAL pipe_x2, pipe_gap2 : IN std_logic_vector(10 DOWNTO 0);
			SIGNAL pipe_display2 : IN std_logic;
			SIGNAL pipe_x3, pipe_gap3 : IN std_logic_vector(10 DOWNTO 0);
			SIGNAL pipe_display3 : IN std_logic;
        SIGNAL Red,Green,Blue 			: OUT std_logic_vector(3 downto 0);
        SIGNAL Horiz_sync,Vert_sync		: OUT std_logic;
		  SIGNAL pipe_en1, pipe_en2, pipe_en3 : out std_logic;
		  SIGNAL pipe_reset1, pipe_reset2, pipe_reset3, hit : out std_logic;
		  SIGNAL pipe_sz : out std_logic_vector(9 DOWNTO 0)
		  );
END ball;

architecture behavior of ball is

			-- Video Display Signals   
SIGNAL vert_sync_int,
		reset, Ball_on, Text_on, Pipe_on	: std_logic;
SIGNAL Red_Data, Green_Data, Blue_Data : std_logic_vector(3 DOWNTO 0);
SIGNAL Size, Pipe_Size, Gap_Size 		: std_logic_vector(9 DOWNTO 0);  
SIGNAL Ball_Y_motion 						: std_logic_vector(9 DOWNTO 0);
SIGNAL Ball_Y_pos, Ball_X_pos				: std_logic_vector(9 DOWNTO 0);
SIGNAL pixel_row, pixel_column			: std_logic_vector(10 DOWNTO 0); 

--Character select/display signals

SIGNAL row_sel : std_logic_vector(2 downto 0);
SIGNAL col_sel : std_logic_vector(2 downto 0);
SIGNAL char_sel : std_logic_vector(5 downto 0) := "000000";
SIGNAL char_out : std_logic;

--Game logic signals
SIGNAL score: std_logic_vector(13 downto 0);

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
Pipe_Size <= CONV_STD_LOGIC_VECTOR(16,10);
Gap_Size <= CONV_STD_LOGIC_VECTOR(96,10);
Ball_X_pos <= CONV_STD_LOGIC_VECTOR(320,10);

		-- need internal copy of vert_sync and pipe_size to read
vert_sync <= vert_sync_int;
pipe_sz <= Pipe_size;

--Pipe/Ball/Character display mux
--needs redoing for proper structure/overlap handling/colour management for different objects
--Red_Data <= "1111";
--Green_Data <= (NOT (Ball_on OR char_out OR (pipe_display1 AND pipe_on) OR (pipe_display2 AND pipe_on) OR (pipe_display3 AND pipe_on))) & "011";
--Blue_Data <= (NOT (Ball_on OR char_out OR (pipe_display1 AND pipe_on) OR (pipe_display2 AND pipe_on) OR (pipe_display3 AND pipe_on))) & "000";

Display_Mux: Process(Ball_on, char_out, pipe_display1, pipe_display2, pipe_display3, pipe_on)
begin
	if (ball_on = '1') then
		Red_Data <= "1111";
		Green_Data <= "0111";
		Blue_Data <= "1010";
	elsif (char_out = '1') then
		Red_Data <= "0000";
		Green_Data <= "0111";
		Blue_Data <= "1010";
	elsif (pipe_display1 = '1' AND pipe_on = '1') OR (pipe_display2 = '1' AND pipe_on = '1') OR (pipe_display3 = '1' AND pipe_on = '1') then
		Red_Data <= "0000";
		Green_Data <= "1111";
		Blue_Data <= "0000";
	end if;
end process Display_Mux;

--RGB display logic
RGB_Display: Process (Ball_X_pos, Ball_Y_pos, pipe_x1, pipe_x2, pipe_x3, pixel_column, pixel_row, Size)
BEGIN
			-- Set Ball_on ='1' to display ball
 IF ('0' & Ball_X_pos <= pixel_column + Size) AND
 			-- compare positive numbers only
 	(Ball_X_pos + Size >= pixel_column) AND
 	('0' & Ball_Y_pos <= pixel_row + Size) AND
 	(Ball_Y_pos + Size >= pixel_row ) THEN
 		Ball_on <= '1';
	--turn pipe display on if current (row,column) location is within bounds of any pipe (except gaps)
	ELSIF ((pixel_column + pipe_size >= pipe_x1) AND ((pixel_column) <= pipe_x1 + Pipe_Size) AND ((pixel_row < pipe_gap1) OR ((pixel_row) >= pipe_gap1 + gap_size))) THEN
		Pipe_on <= '1';
	ELSIF ((pixel_column + pipe_size >= pipe_x2) AND ((pixel_column) <= pipe_x2 + Pipe_Size) AND ((pixel_row < pipe_gap2) OR ((pixel_row) >= pipe_gap2 + gap_size))) THEN
		Pipe_on <= '1';
	ELSIF ((pixel_column + pipe_size >= pipe_x3) AND ((pixel_column) <= pipe_x3 + Pipe_Size) AND ((pixel_row < pipe_gap3) OR ((pixel_row) >= pipe_gap3 + gap_size))) THEN
		Pipe_on <= '1';
	--turn SCORE text display on is within bounds of characters
	--we select 3 downto 1 to increase size of the characters displayed
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
		--reset everything to 0 (default background display)
		row_sel <= "000";
		col_sel <= "000";
		char_sel <= "000000";
 		Ball_on <= '0';
		Pipe_on <= '0';
	END IF;
END process RGB_Display;

--detect score so far, and also detect if collision has happened
Scoring: process(vert_sync_int, pipe_on, ball_on, Ball_X_pos, pipe_x1, pipe_x2, pipe_x3)
BEGIN
	IF (vert_sync_int'event and vert_sync_int = '1') THEN
		--if ball's left edge has passed pipe's right edge
		if ((Ball_X_pos - Size = pipe_x1 + pipe_size) OR (Ball_X_pos - Size = pipe_x2 + pipe_size) OR (Ball_X_pos - Size = pipe_x3 + pipe_size)) then
			score <= score + CONV_STD_LOGIC_VECTOR(1,10); --increment score
		end if;
		if (pipe_on = '1' AND ball_on = '1') then
			hit <= '1';
		end if;
	END IF;
END process Scoring;

--pipe control and display process 
Pipe_Control: process(vert_sync_int)
BEGIN
	IF (vert_sync_int'event and vert_sync_int = '1') THEN
		--pipe 1
		if (pipe_x1 + pipe_size <= CONV_STD_LOGIC_VECTOR(0,11)) then
			pipe_reset1 <= '1';
			pipe_en1 <= '0';
		elsif (pipe_x1 <= CONV_STD_LOGIC_VECTOR(640,11)) then
			pipe_reset1 <= '0';
			pipe_en1 <= '1';
		end if;
		--pipe 2, starts after pipe 1 is a third of the way across
		if (pipe_x2 + pipe_size <= CONV_STD_LOGIC_VECTOR(0,11)) then
			pipe_reset2 <= '1';
			pipe_en2 <= '0';
		elsif pipe_x2 <= CONV_STD_LOGIC_VECTOR(640,11) AND pipe_x1 <= CONV_STD_LOGIC_VECTOR(432,11) then
			pipe_reset2 <= '0';
			pipe_en2 <= '1';
		end if;
		--pipe 3, starts after pipe 1 is two thirds of the way across
		if (pipe_x3 + pipe_size <= CONV_STD_LOGIC_VECTOR(0,11)) then
			pipe_reset3 <= '1';
			pipe_en3 <= '0';
		elsif pipe_x3 <= CONV_STD_LOGIC_VECTOR(640,11) AND pipe_x1 <= CONV_STD_LOGIC_VECTOR(224,11) then
			pipe_reset3 <= '0';
			pipe_en3 <= '1';
		end if;
	END IF;
END process Pipe_Control;

--ball vertical movement logic
Move_Ball: process(vert_sync_int)
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

