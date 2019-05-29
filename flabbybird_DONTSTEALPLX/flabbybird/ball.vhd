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
		  SIGNAL pix_row, pix_column			: out std_logic_vector(10 DOWNTO 0);
		  SIGNAL level : out std_logic_vector(1 downto 0);
		  SIGNAL sc0,sc1,sc2: out std_logic_vector(5 downto 0) --score digits
		  );
END ball;

architecture behavior of ball is

			-- Video Display Signals   
SIGNAL vert_sync_int,
		reset, Ball_on, Text_on, Pipe_on, Chakra_on 	: std_logic;
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
SIGNAL chakra_count : integer := 8; --chakra counter
SIGNAL score_count : unsigned(10 downto 0) := "00000000000"; --score counter
SIGNAL level_int : std_logic_vector(1 downto 0) := "00"; --current level

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
level <= level_int;
sc0 <= score0;
sc1 <= score1;
sc2 <= score2;

--Pipe/Ball/Character display mux
--everything else - bg_input

Red_Data <= "1110" when (ball_on = '1') AND (Char_disp = '1') AND (char_out = '1')
		else "0000" when (char_out = '1') AND (Char_disp = '1')
		else "1010" when (pipe_display1 = '1' AND pipe_on = '1') OR (pipe_display2 = '1' AND pipe_on = '1') OR (pipe_display3 = '1' AND pipe_on = '1')
		else "0000" when (Chakra_on = '1')
		else bg_input(11 downto 8);
		
Green_Data <= "1110" when (ball_on = '1') AND (Char_disp = '1') AND (char_out = '1')
		else "0000" when (char_out = '1') AND (Char_disp = '1')
		else "0101" when (pipe_display1 = '1' AND pipe_on = '1') OR (pipe_display2 = '1' AND pipe_on = '1') OR (pipe_display3 = '1' AND pipe_on = '1')
		else "0000" when (Chakra_on = '1')
		else bg_input(7 downto 4);
		
Blue_Data <= "0000" when (ball_on = '1') AND (Char_disp = '1') AND (char_out = '1')
		else "0000" when (char_out = '1') AND (Char_disp = '1')
		else "0000" when (pipe_display1 = '1' AND pipe_on = '1') OR (pipe_display2 = '1' AND pipe_on = '1') OR (pipe_display3 = '1' AND pipe_on = '1')
		else "1111" when (Chakra_on = '1')
		else bg_input(3 downto 0);

--display chakra bar
Chakra_Display: process(pixel_column, pixel_row, chakra_count, resetsignal, pause)
variable bar_length : integer := chakra_count;
BEGIN
	if (resetsignal = '1') then
		bar_length := 8; --reset to max (8) chakras
		Chakra_on <= '0';
	else --16 pixels per "chakra"
		if (pixel_column >= CONV_STD_LOGIC_VECTOR(96,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(96+(bar_length*16),11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(16,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(31,11)) then
			Chakra_on <= '1';
		else
			Chakra_on <= '0';
		end if;
	end if;
	bar_length := chakra_count;
END process Chakra_Display;

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

--turn display on if within bounds of characters/ball
--we select 3 downto 1 to increase size of the characters displayed
Text_Display : process(Ball_X_pos, Ball_Y_pos, pixel_column, pixel_row)
variable ballrow, ballcol : std_logic_vector(10 DOWNTO 0);
begin
	 IF ('0' & Ball_X_pos <= pixel_column + Size) AND
 			-- compare positive numbers only
 	(Ball_X_pos + Size >= pixel_column) AND
 	('0' & Ball_Y_pos <= pixel_row + Size) AND
 	(Ball_Y_pos + Size >= pixel_row ) THEN
		char_sel <= "111111"; --kunai
		--calculate position of row and column relative to ball coordinates
		ballrow := pixel_row - (Ball_Y_pos - Size);
		ballcol := pixel_column - (Ball_X_pos - Size);
		row_sel <= ballrow(3 downto 1);
		col_sel <= ballcol(3 downto 1);
		Char_disp <= '1';
 		Ball_on <= '1';
 	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(0,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(14,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(15,11))) THEN
			char_sel <= "010011"; --S
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(15,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(30,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(15,11))) THEN
			char_sel <= "000011" ; --C
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(31,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(46,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(15,11))) THEN
			char_sel <= "001111"; --O
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(47,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(62,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(15,11))) THEN
			char_sel <= "010010"; --R
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(63,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(78,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(15,11))) THEN
			char_sel <= "000101"; --E
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(79,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(94,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(15,11))) THEN
			char_sel <= score2; --digit 2
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(95,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(110,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(15,11))) THEN
			char_sel <= score1; --digit 1
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(111,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(126,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(0,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(15,11))) THEN
			char_sel <= score0; --digit 0
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(0,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(15,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(16,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(31,11))) THEN
			char_sel <= "000011"; --C
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(16,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(31,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(16,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(31,11))) THEN
			char_sel <= "001000" ; --H
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(32,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(47,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(16,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(31,11))) THEN
			char_sel <= "000001"; --A
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(48,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(63,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(16,11)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(31,11))) THEN
			char_sel <= "001011"; --K
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(64,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(79,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(16,10)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(31,10))) THEN
			char_sel <= "010010"; --R
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSIF ((pixel_column >= CONV_STD_LOGIC_VECTOR(80,11)) AND (pixel_column <= CONV_STD_LOGIC_VECTOR(95,11)) AND (pixel_row >= CONV_STD_LOGIC_VECTOR(16,10)) AND (pixel_row <= CONV_STD_LOGIC_VECTOR(31,10))) THEN
			char_sel <= "000001"; --A
			row_sel <= pixel_row(3 downto 1);
			col_sel <= pixel_column(3 downto 1);
			Char_disp <= '1';
	ELSE
			Ball_on <= '0';
			row_sel <= "000";
			col_sel <= "000";
			char_sel <= "000000";
			Char_disp <= '0'; --(default background display)
	END IF;
end process Text_Display;

--detect score so far
Scoring: process(vert_sync_int, pause, resetsignal, pipe_on, ball_on, Ball_X_pos, Ball_Y_pos, pipe_x1, pipe_x2, pipe_x3)
VARIABLE sc0: unsigned(3 downto 0); --score digit 0 
VARIABLE sc1: unsigned(3 downto 0); --score digit 1
VARIABLE sc2: unsigned(3 downto 0); --score digit 2
BEGIN
	if (pause = '0') and (resetsignal = '0') then
	IF (vert_sync_int'event and vert_sync_int = '1') THEN
		--if ball's left edge has passed pipe's right edge
		if (Ball_X_pos = (pipe_x1 + pipe_size))  then
			if ((Ball_Y_pos <= pipe_gap1) OR (Ball_Y_pos >= pipe_gap1 + gap_size)) then
				--if hit, lose 2 chakra
				chakra_count <= chakra_count - 2;
			else
				sc0 := sc0 + '1'; --increment score
				--if successful pass, restore 1 chakra
				if (chakra_count = 8) then
						chakra_count <= 8; --max chakra 
				else
						chakra_count <= chakra_count + 1; --increase chakra
				end if;
				
				if sc0 = 10 then
					sc0 := "0000";
					sc1 := sc1 + '1';
					
					if (level_int = "11") then
						level_int <= "11"; --max level 
					else
						level_int <= level_int + '1'; --increase level every 10 score points
					end if;
					
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
		elsif (Ball_X_pos = (pipe_x2 + pipe_size)) then
			if ((Ball_Y_pos <= pipe_gap2) OR (Ball_Y_pos >= pipe_gap2 + gap_size)) then
				--if hit, lose 2 chakra
				chakra_count <= chakra_count - 2;
			else
				sc0 := sc0 + '1'; --increment score
				--if successful pass, restore 1 chakra
				if (chakra_count = 8) then
						chakra_count <= 8; --max chakra 
				else
						chakra_count <= chakra_count + 1; --increase chakra
				end if;
				
				
				if sc0 = 10 then
					sc0 := "0000";
					sc1 := sc1 + '1';
					
					if (level_int = "11") then
						level_int <= "11"; --max level 
					else
						level_int <= level_int + '1'; --increase level every 10 score points
					end if;
					
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
		elsif (Ball_X_pos = (pipe_x3 + pipe_size)) then
			if ((Ball_Y_pos <= pipe_gap3) OR (Ball_Y_pos >= pipe_gap3 + gap_size)) then
				--if hit, lose 2 chakra
				chakra_count <= chakra_count - 2;
			else
				sc0 := sc0 + '1'; --increment score
				--if successful pass, restore 1 chakra
				if (chakra_count = 8) then
						chakra_count <= 8; --max chakra 
				else
						chakra_count <= chakra_count + 1; --increase chakra
				end if;
				if sc0 = 10 then
					sc0 := "0000";
					sc1 := sc1 + '1';
					
					if (level_int = "11") then
						level_int <= "11"; --max level 
					else
						level_int <= level_int + '1'; --increase level every 10 score points
					end if;
					
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
		end if;
	END IF;
	elsif (resetsignal = '1') then
		--reset score and chakra
		sc0 := "0000";
		sc1 := "0000";
		sc2 := "0000";
		score_count <= "00000000000";
		chakra_count <= 8;
		level_int <= "00";
	end if;
	score0 <= "11" & std_logic_vector(sc0);
	score1 <= "11" & std_logic_vector(sc1);
	score2 <= "11" & std_logic_vector(sc2);
END process Scoring;

--detect if chakra has run out 
Collision: process(pause,chakra_count)
BEGIN
	if (pause = '0') then
		if (chakra_count <= 0) then
			hit <= '1';
		else
			hit <= '0';
		end if;
	end if;
end process Collision;

--pipe control and display process 
Pipe_Control: process(resetsignal,pause,vert_sync_int)
--save pipe previous states
variable pipe1_en_prev : std_logic;
variable pipe2_en_prev : std_logic;
variable pipe3_en_prev : std_logic;
BEGIN
	if (resetsignal = '1') then
		pipe_reset1 <= '1';
		pipe_reset2 <= '1';
		pipe_reset3 <= '1';
	else
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
	end if;
	
END process Pipe_Control;

--ball vertical movement logic
Move_Ball: process(pause,resetsignal,vert_sync_int)
BEGIN
	if (pause = '0') and (resetsignal = '0') then
				IF (vert_sync_int'event and vert_sync_int = '1') THEN
				-- Move ball once every vertical sync
				-- Bounce off top or bottom of screen
					IF (Ball_Y_pos >= (CONV_STD_LOGIC_VECTOR(480,11) - Size)) THEN
						--not game over when it hits the bottom
						IF (mouse = '1') THEN
							Ball_Y_motion <= - CONV_STD_LOGIC_VECTOR(3,11);
						ELSE
							Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(0,11);
						END IF;
					ELSIF (Ball_Y_pos < (CONV_STD_LOGIC_VECTOR(480,11) - Size)) AND (Ball_Y_pos > Size) THEN 
						IF (mouse = '1') THEN
							Ball_Y_motion <= - CONV_STD_LOGIC_VECTOR(4,11);
						ELSE
							--add acceleration of 1 pixel per interval squared
							Ball_Y_motion <= Ball_Y_motion + CONV_STD_LOGIC_VECTOR(1,11);
							--cap downwards velocity at 6 pixels per interval
							if Ball_Y_motion >= CONV_STD_LOGIC_VECTOR(6,11) then
								Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(6,11);
							end if;
						END IF;
					ELSIF Ball_Y_pos <= Size THEN
						Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(2,11);
					END IF;
					
					-- Compute next ball Y position
					Ball_Y_pos <= Ball_Y_pos + Ball_Y_motion;
				END IF;
	elsif (pause = '1') and (resetsignal = '0') then --only pause movement
		Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(0,11);
	elsif (resetsignal = '1') then --reset and pause movement
		Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(0,11);
		Ball_Y_pos <= CONV_STD_LOGIC_VECTOR(240,11);
	end if;
END process Move_Ball;

END behavior;

