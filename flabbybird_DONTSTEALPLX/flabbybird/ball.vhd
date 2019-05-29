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
			SIGNAL bg_input : IN std_logic_vector(11 DOWNTO 0);
			SIGNAL pause : IN std_logic;
			SIGNAL resetsignal : IN std_logic;
        SIGNAL Red,Green,Blue 			: OUT std_logic_vector(3 downto 0);
        SIGNAL Horiz_sync,Vert_sync		: OUT std_logic;
		  SIGNAL pipe_en1, pipe_en2, pipe_en3 : out std_logic;
		  SIGNAL pipe_reset1, pipe_reset2, pipe_reset3, hit : out std_logic;
		  SIGNAL pipe_sz : out std_logic_vector(10 DOWNTO 0);
		  SIGNAL pix_row, pix_column			: out std_logic_vector(10 DOWNTO 0)
		  );
END ball;

architecture behavior of ball is

			-- Video Display Signals   
SIGNAL vert_sync_int,
		reset, Ball_on, Text_on, Pipe_on	: std_logic;
SIGNAL Red_Data, Green_Data, Blue_Data : std_logic_vector(3 DOWNTO 0);
SIGNAL Size, Pipe_Size, Gap_Size 		: std_logic_vector(10 DOWNTO 0);  
SIGNAL Ball_Y_motion 						: std_logic_vector(10 DOWNTO 0);
SIGNAL Ball_Y_pos								: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(240,11);
SIGNAL Ball_X_pos								: std_logic_vector(10 DOWNTO 0);
SIGNAL pixel_row, pixel_column			: std_logic_vector(10 DOWNTO 0); 

--Character select/display signals

SIGNAL row_sel : std_logic_vector(2 downto 0);
SIGNAL col_sel : std_logic_vector(2 downto 0);
SIGNAL char_sel : std_logic_vector(5 downto 0) := "000000";
SIGNAL char_out : std_logic;
SIGNAL char_disp : std_logic;

--Game logic signals
SIGNAL score0: std_logic_vector(5 downto 0); --score digit 0 
SIGNAL score1: std_logic_vector(5 downto 0); --score digit 1 
SIGNAL score2: std_logic_vector(5 downto 0); --score digit 2

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
			
Size <= CONV_STD_LOGIC_VECTOR(8,11);
Pipe_Size <= CONV_STD_LOGIC_VECTOR(16,11);
Gap_Size <= CONV_STD_LOGIC_VECTOR(96,11);
Ball_X_pos <= CONV_STD_LOGIC_VECTOR(320,11);

		-- need external copy of some signals
vert_sync <= vert_sync_int;
pipe_sz <= Pipe_size;
pix_row <= pixel_row;
pix_column <= pixel_column;

--Pipe/Ball/Character display mux
--needs redoing for proper structure/overlap handling/colour management for different objects
--Red_Data <= "1111";
--Green_Data <= (NOT (Ball_on OR char_out OR (pipe_display1 AND pipe_on) OR (pipe_display2 AND pipe_on) OR (pipe_display3 AND pipe_on))) & "011";
--Blue_Data <= (NOT (Ball_on OR char_out OR (pipe_display1 AND pipe_on) OR (pipe_display2 AND pipe_on) OR (pipe_display3 AND pipe_on))) & "000";

--Ball = "111100000000" -red
--Char = "000000000000" -black
--Pipe = "101001010000" -brown
--everything else - bg_input

Red_Data <= "1111" when (ball_on = '1') 
		else "0000" when (char_out = '1') AND (Char_disp = '1')
		else "1010" when (pipe_display1 = '1' AND pipe_on = '1') OR (pipe_display2 = '1' AND pipe_on = '1') OR (pipe_display3 = '1' AND pipe_on = '1') 
		else bg_input(11 downto 8);
		
Green_Data <= "0000" when (ball_on = '1') 
		else "0000" when (char_out = '1') AND (Char_disp = '1')
		else "0101" when (pipe_display1 = '1' AND pipe_on = '1') OR (pipe_display2 = '1' AND pipe_on = '1') OR (pipe_display3 = '1' AND pipe_on = '1') 
		else bg_input(7 downto 4);
		
Blue_Data <= "0000" when (ball_on = '1') 
		else "0000" when (char_out = '1') AND (Char_disp = '1')
		else "0000" when (pipe_display1 = '1' AND pipe_on = '1') OR (pipe_display2 = '1' AND pipe_on = '1') OR (pipe_display3 = '1' AND pipe_on = '1') 
		else bg_input(3 downto 0);

--RGB display logic
RGB_Display: Process (Ball_X_pos, Ball_Y_pos, pixel_column, pixel_row)
BEGIN
END process RGB_Display;

Ball_Display: process(Ball_X_pos, Ball_Y_pos, pixel_column, pixel_row)
begin
-- Set Ball_on ='1' to display ball
 IF ('0' & Ball_X_pos <= pixel_column + Size) AND
 			-- compare positive numbers only
 	(Ball_X_pos + Size >= pixel_column) AND
 	('0' & Ball_Y_pos <= pixel_row + Size) AND
 	(Ball_Y_pos + Size >= pixel_row ) THEN
 		Ball_on <= '1';
	ELSE
		Ball_on <= '0'; --(default background display)
	END IF;
END process Ball_Display;

Pipe_Display: process(pipe_x1, pipe_x2, pipe_x3, pixel_column, pixel_row)
begin
	--turn pipe display on if current (row,column) location is within bounds of any pipe (except gaps)
	IF ((pixel_column + pipe_size >= pipe_x1) AND ((pixel_column) <= pipe_x1 + Pipe_Size) AND ((pixel_row < pipe_gap1) OR ((pixel_row) >= pipe_gap1 + gap_size))) THEN
		Pipe_on <= '1';
	ELSIF ((pixel_column + pipe_size >= pipe_x2) AND ((pixel_column) <= pipe_x2 + Pipe_Size) AND ((pixel_row < pipe_gap2) OR ((pixel_row) >= pipe_gap2 + gap_size))) THEN
		Pipe_on <= '1';
	ELSIF ((pixel_column + pipe_size >= pipe_x3) AND ((pixel_column) <= pipe_x3 + Pipe_Size) AND ((pixel_row < pipe_gap3) OR ((pixel_row) >= pipe_gap3 + gap_size))) THEN
		Pipe_on <= '1';
	ELSE
		--(default background display)
		Pipe_on <= '0';
	END IF;
END process Pipe_Display;

--turn SCORE text display on if within bounds of characters
--we select 3 downto 1 to increase size of the characters displayed
Text_Display : process(pixel_column,pixel_row)
begin
 	IF ((pixel_column >= CONV_STD_LOGIC_VECTOR(0,10)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(14,10)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,10)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(14,10))) THEN
			char_sel <= "010011"; --S
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(15,10)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(30,10)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,10)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(14,10))) THEN
			char_sel <= "000011" ; --C
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(31,10)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(46,10)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,10)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(14,10))) THEN
			char_sel <= "001111"; --O
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(47,10)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(62,10)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,10)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(14,10))) THEN
			char_sel <= "010010"; --R
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(63,10)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(78,10)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,10)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(14,10))) THEN
			char_sel <= "000101"; --E
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(79,10)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(94,10)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,10)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(14,10))) THEN
			char_sel <= score2; --digit 2
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(95,10)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(110,10)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,10)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(14,10))) THEN
			char_sel <= score1; --digit 1
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(111,10)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(126,10)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,10)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(14,10))) THEN
			char_sel <= score0; --digit 0
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSE
			row_sel <= "000";
			col_sel <= "000";
			char_sel <= "000000";
			Char_disp <= '0'; --(default background display)
	END IF;
end process Text_Display;

--detect score so far, and also detect if collision has happened
Scoring: process(vert_sync_int, pipe_on, ball_on, Ball_X_pos, pipe_x1, pipe_x2, pipe_x3)
VARIABLE sc0: unsigned(3 downto 0); --score digit 0 
VARIABLE sc1: unsigned(3 downto 0); --score digit 1
VARIABLE sc2: unsigned(3 downto 0); --score digit 2
BEGIN
	if (pause = '0') then
	IF (vert_sync_int'event and vert_sync_int = '1') THEN
		--if ball's left edge has passed pipe's right edge
		if (Ball_X_pos = (pipe_x1 + pipe_size)) OR (Ball_X_pos = (pipe_x2 + pipe_size)) OR (Ball_X_pos = (pipe_x3 + pipe_size)) then
			sc0 := sc0 + '1'; --increment score
			if sc0 = 10 then
				sc0 := "0000";
				sc1 := sc1 + '1';
				if sc1 = 10 then
					sc1 := "0000";
					sc2 := sc2 + '1';
					if sc2 = 10 then
						sc0 := "0000";
						sc1 := "0000";
						sc2 := "0000";
					end if;
				end if;
			end if;
		end if;
	END IF;
	end if;
	score0 <= "11" & std_logic_vector(sc0);
	score1 <= "11" & std_logic_vector(sc1);
	score2 <= "11" & std_logic_vector(sc2);
END process Scoring;

Collision: process(pause,ball_on,pipe_on)
BEGIN
	if (pause = '0') then
		if (pipe_on = '1') AND (ball_on = '1') then
			hit <= '1';
		end if;
	end if;
end process Collision;

--pipe control and display process 
Pipe_Control: process(pause,vert_sync_int)
--save pipe previous state
variable pipe1_en_prev : std_logic;
variable pipe2_en_prev : std_logic;
variable pipe3_en_prev : std_logic;
BEGIN

	IF (vert_sync_int'event and vert_sync_int = '1') THEN
	if (pause = '0') then
		pipe_en1 <= pipe1_en_prev;
		pipe_en2 <= pipe2_en_prev;
		pipe_en3 <= pipe3_en_prev;
		--pipe 1
		if (pipe_x1 + pipe_size <= CONV_STD_LOGIC_VECTOR(0,11)) then
			pipe_reset1 <= '1';
			pipe_en1 <= '0';
			pipe1_en_prev := '0';
		elsif (pipe_x1 <= CONV_STD_LOGIC_VECTOR(640,11)) then
			pipe_reset1 <= '0';
			pipe_en1 <= '1';
			pipe1_en_prev := '1';
		end if;
		--pipe 2, starts after pipe 1 is a third of the way across
		if (pipe_x2 + pipe_size <= CONV_STD_LOGIC_VECTOR(0,11)) then
			pipe_reset2 <= '1';
			pipe_en2 <= '0';
			pipe2_en_prev := '0';
		elsif pipe_x2 <= CONV_STD_LOGIC_VECTOR(640,11) AND pipe_x1 <= CONV_STD_LOGIC_VECTOR(432,11) then
			pipe_reset2 <= '0';
			pipe_en2 <= '1';
			pipe2_en_prev := '1';
		end if;
		--pipe 3, starts after pipe 1 is two thirds of the way across
		if (pipe_x3 + pipe_size <= CONV_STD_LOGIC_VECTOR(0,11)) then
			pipe_reset3 <= '1';
			pipe_en3 <= '0';
			pipe3_en_prev := '0';
		elsif pipe_x3 <= CONV_STD_LOGIC_VECTOR(640,11) AND pipe_x1 <= CONV_STD_LOGIC_VECTOR(224,11) then
			pipe_reset3 <= '0';
			pipe_en3 <= '1';
			pipe3_en_prev := '1';
		end if;
	else
		pipe_en1 <= '0';
		pipe_en2 <= '0';
		pipe_en3 <= '0';
	end if;
	END IF;
	
END process Pipe_Control;

--ball vertical movement logic
Move_Ball: process(pause,vert_sync_int)
BEGIN
	if (pause = '0') then
				IF (vert_sync_int'event and vert_sync_int = '1') THEN
				-- Move ball once every vertical sync
				-- Bounce off top or bottom of screen
					IF (('0' & Ball_Y_pos) >= CONV_STD_LOGIC_VECTOR(480,11) - Size) THEN
						--not game over when it hits the bottom for testing purposes
						IF (mouse = '1') THEN
							Ball_Y_motion <= - CONV_STD_LOGIC_VECTOR(3,11);
						ELSE
							Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(0,11);
						END IF;
					ELSIF (('0' & Ball_Y_pos) < CONV_STD_LOGIC_VECTOR(480,11) - Size) AND (Ball_Y_pos > Size) THEN 
						IF (mouse = '1') THEN
							Ball_Y_motion <= - CONV_STD_LOGIC_VECTOR(3,11);
						ELSE
							Ball_Y_motion <= Ball_Y_motion + CONV_STD_LOGIC_VECTOR(1,11);
						END IF;
					ELSIF Ball_Y_pos <= Size THEN
						Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(2,11);
					END IF;
					
					-- Compute next ball Y position
					Ball_Y_pos <= Ball_Y_pos + Ball_Y_motion;
					--reset to middle
					--IF (PB0 = '1') THEN
					--	Ball_Y_pos <= CONV_STD_LOGIC_VECTOR(240,11);
					--	Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(0,11);
					--END IF;
				END IF;
	else
		Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(0,11);
	end if;
END process Move_Ball;

END behavior;

