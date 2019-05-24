-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "05/24/2019 16:15:58"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	flabbybird IS
    PORT (
	horiz_sync_out : OUT std_logic;
	clk : IN std_logic;
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	bt0 : IN std_logic;
	bt1 : IN std_logic;
	bt2 : IN std_logic;
	sw : IN std_logic_vector(0 DOWNTO 0);
	vert_sync_out : OUT std_logic;
	seg0_dec : OUT std_logic;
	seg1_dec : OUT std_logic;
	blue_out : OUT std_logic_vector(3 DOWNTO 0);
	green_out : OUT std_logic_vector(3 DOWNTO 0);
	red_out : OUT std_logic_vector(3 DOWNTO 0);
	seg0 : OUT std_logic_vector(6 DOWNTO 0);
	seg1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END flabbybird;

-- Design Ports Information
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0_dec	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1_dec	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_out[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_out[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_out[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_out[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt2	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt0	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF flabbybird IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_bt0 : std_logic;
SIGNAL ww_bt1 : std_logic;
SIGNAL ww_bt2 : std_logic;
SIGNAL ww_sw : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_seg0_dec : std_logic;
SIGNAL ww_seg1_dec : std_logic;
SIGNAL ww_blue_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_green_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_red_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst4|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst18|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst18|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst19|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst19|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst17|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst17|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|RGB_Display~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst19|RGB_Display~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17|RGB_Display~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst18|RGB_Display~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17|SYNC|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst18|SYNC|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|SYNC|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst19|SYNC|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst19|Add0~4_combout\ : std_logic;
SIGNAL \inst19|Add0~6_combout\ : std_logic;
SIGNAL \inst18|Add3~1\ : std_logic;
SIGNAL \inst18|Add3~0_combout\ : std_logic;
SIGNAL \inst18|Add3~3\ : std_logic;
SIGNAL \inst18|Add3~2_combout\ : std_logic;
SIGNAL \inst18|Add3~5\ : std_logic;
SIGNAL \inst18|Add3~4_combout\ : std_logic;
SIGNAL \inst18|Add3~7\ : std_logic;
SIGNAL \inst18|Add3~6_combout\ : std_logic;
SIGNAL \inst18|Add3~9\ : std_logic;
SIGNAL \inst18|Add3~8_combout\ : std_logic;
SIGNAL \inst18|LessThan3~1_cout\ : std_logic;
SIGNAL \inst18|LessThan3~3_cout\ : std_logic;
SIGNAL \inst18|LessThan3~5_cout\ : std_logic;
SIGNAL \inst18|LessThan3~7_cout\ : std_logic;
SIGNAL \inst18|LessThan3~9_cout\ : std_logic;
SIGNAL \inst18|LessThan3~11_cout\ : std_logic;
SIGNAL \inst18|LessThan3~13_cout\ : std_logic;
SIGNAL \inst18|LessThan3~15_cout\ : std_logic;
SIGNAL \inst18|LessThan3~16_combout\ : std_logic;
SIGNAL \inst18|Add3~10_combout\ : std_logic;
SIGNAL \inst2|Add3~1\ : std_logic;
SIGNAL \inst2|Add3~0_combout\ : std_logic;
SIGNAL \inst2|Add3~3\ : std_logic;
SIGNAL \inst2|Add3~2_combout\ : std_logic;
SIGNAL \inst2|Add3~5\ : std_logic;
SIGNAL \inst2|Add3~4_combout\ : std_logic;
SIGNAL \inst2|Add3~7\ : std_logic;
SIGNAL \inst2|Add3~6_combout\ : std_logic;
SIGNAL \inst2|Add3~9\ : std_logic;
SIGNAL \inst2|Add3~8_combout\ : std_logic;
SIGNAL \inst2|LessThan3~1_cout\ : std_logic;
SIGNAL \inst2|LessThan3~3_cout\ : std_logic;
SIGNAL \inst2|LessThan3~5_cout\ : std_logic;
SIGNAL \inst2|LessThan3~7_cout\ : std_logic;
SIGNAL \inst2|LessThan3~9_cout\ : std_logic;
SIGNAL \inst2|LessThan3~11_cout\ : std_logic;
SIGNAL \inst2|LessThan3~13_cout\ : std_logic;
SIGNAL \inst2|LessThan3~15_cout\ : std_logic;
SIGNAL \inst2|LessThan3~16_combout\ : std_logic;
SIGNAL \inst2|Add3~10_combout\ : std_logic;
SIGNAL \inst19|Add3~1\ : std_logic;
SIGNAL \inst19|Add3~0_combout\ : std_logic;
SIGNAL \inst19|Add3~3\ : std_logic;
SIGNAL \inst19|Add3~2_combout\ : std_logic;
SIGNAL \inst19|Add3~5\ : std_logic;
SIGNAL \inst19|Add3~4_combout\ : std_logic;
SIGNAL \inst19|Add3~7\ : std_logic;
SIGNAL \inst19|Add3~6_combout\ : std_logic;
SIGNAL \inst19|Add3~9\ : std_logic;
SIGNAL \inst19|Add3~8_combout\ : std_logic;
SIGNAL \inst19|LessThan3~1_cout\ : std_logic;
SIGNAL \inst19|LessThan3~3_cout\ : std_logic;
SIGNAL \inst19|LessThan3~5_cout\ : std_logic;
SIGNAL \inst19|LessThan3~7_cout\ : std_logic;
SIGNAL \inst19|LessThan3~9_cout\ : std_logic;
SIGNAL \inst19|LessThan3~11_cout\ : std_logic;
SIGNAL \inst19|LessThan3~13_cout\ : std_logic;
SIGNAL \inst19|LessThan3~15_cout\ : std_logic;
SIGNAL \inst19|LessThan3~16_combout\ : std_logic;
SIGNAL \inst19|Add3~10_combout\ : std_logic;
SIGNAL \inst19|LessThan2~1_cout\ : std_logic;
SIGNAL \inst19|LessThan2~3_cout\ : std_logic;
SIGNAL \inst19|LessThan2~5_cout\ : std_logic;
SIGNAL \inst19|LessThan2~7_cout\ : std_logic;
SIGNAL \inst19|LessThan2~9_cout\ : std_logic;
SIGNAL \inst19|LessThan2~11_cout\ : std_logic;
SIGNAL \inst19|LessThan2~13_cout\ : std_logic;
SIGNAL \inst19|LessThan2~15_cout\ : std_logic;
SIGNAL \inst19|LessThan2~17_cout\ : std_logic;
SIGNAL \inst19|LessThan2~18_combout\ : std_logic;
SIGNAL \inst17|Add3~2_combout\ : std_logic;
SIGNAL \inst17|Add3~4_combout\ : std_logic;
SIGNAL \inst17|Add3~6_combout\ : std_logic;
SIGNAL \inst17|LessThan2~1_cout\ : std_logic;
SIGNAL \inst17|LessThan2~3_cout\ : std_logic;
SIGNAL \inst17|LessThan2~5_cout\ : std_logic;
SIGNAL \inst17|LessThan2~7_cout\ : std_logic;
SIGNAL \inst17|LessThan2~9_cout\ : std_logic;
SIGNAL \inst17|LessThan2~11_cout\ : std_logic;
SIGNAL \inst17|LessThan2~13_cout\ : std_logic;
SIGNAL \inst17|LessThan2~15_cout\ : std_logic;
SIGNAL \inst17|LessThan2~17_cout\ : std_logic;
SIGNAL \inst17|LessThan2~18_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[0]~10_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[2]~14_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add1~0_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add1~2_combout\ : std_logic;
SIGNAL \inst3|seconds[6]~31_combout\ : std_logic;
SIGNAL \inst3|seconds[8]~35_combout\ : std_logic;
SIGNAL \inst3|seconds[12]~43_combout\ : std_logic;
SIGNAL \inst3|seconds[14]~47_combout\ : std_logic;
SIGNAL \inst3|seconds[15]~49_combout\ : std_logic;
SIGNAL \inst3|cnt[2]~13_combout\ : std_logic;
SIGNAL \inst3|cnt[6]~22\ : std_logic;
SIGNAL \inst3|cnt[7]~23_combout\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[6]~22_combout\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[8]~27\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[9]~28_combout\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[0]~11\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[0]~10_combout\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[1]~13\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[1]~12_combout\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[2]~15\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[2]~14_combout\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[3]~17\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[3]~16_combout\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[4]~19\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[4]~18_combout\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[5]~21\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[5]~20_combout\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[6]~23\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[6]~22_combout\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[7]~25\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[7]~24_combout\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[8]~27\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[8]~26_combout\ : std_logic;
SIGNAL \inst19|Ball_Y_pos[9]~28_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[1]~10_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[2]~12_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[7]~22_combout\ : std_logic;
SIGNAL \inst8|seconds[6]~31_combout\ : std_logic;
SIGNAL \inst8|seconds[8]~35_combout\ : std_logic;
SIGNAL \inst8|seconds[15]~49_combout\ : std_logic;
SIGNAL \inst8|cnt[0]~9\ : std_logic;
SIGNAL \inst8|cnt[0]~8_combout\ : std_logic;
SIGNAL \inst8|cnt[1]~12\ : std_logic;
SIGNAL \inst8|cnt[1]~11_combout\ : std_logic;
SIGNAL \inst8|cnt[2]~14\ : std_logic;
SIGNAL \inst8|cnt[2]~13_combout\ : std_logic;
SIGNAL \inst8|cnt[3]~16\ : std_logic;
SIGNAL \inst8|cnt[3]~15_combout\ : std_logic;
SIGNAL \inst8|cnt[4]~18\ : std_logic;
SIGNAL \inst8|cnt[4]~17_combout\ : std_logic;
SIGNAL \inst8|cnt[5]~20\ : std_logic;
SIGNAL \inst8|cnt[5]~19_combout\ : std_logic;
SIGNAL \inst8|cnt[6]~22\ : std_logic;
SIGNAL \inst8|cnt[6]~21_combout\ : std_logic;
SIGNAL \inst8|cnt[7]~23_combout\ : std_logic;
SIGNAL \inst17|SYNC|vert_sync_out~q\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst1|INCNT~3_combout\ : std_logic;
SIGNAL \inst19|CHAR|Mux0~0_combout\ : std_logic;
SIGNAL \inst19|CHAR|Mux0~1_combout\ : std_logic;
SIGNAL \inst19|CHAR|Mux0~2_combout\ : std_logic;
SIGNAL \inst19|CHAR|Mux0~3_combout\ : std_logic;
SIGNAL \inst19|SYNC|blue_out~2_combout\ : std_logic;
SIGNAL \inst17|CHAR|Mux0~0_combout\ : std_logic;
SIGNAL \inst17|CHAR|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|cursor_column~6_combout\ : std_logic;
SIGNAL \inst2|SYNC|process_0~1_combout\ : std_logic;
SIGNAL \inst2|SYNC|process_0~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst17|RGB_Display~1_combout\ : std_logic;
SIGNAL \inst18|RGB_Display~0_combout\ : std_logic;
SIGNAL \inst19|Add2~2_combout\ : std_logic;
SIGNAL \inst19|Add2~5_combout\ : std_logic;
SIGNAL \inst19|Add2~6_combout\ : std_logic;
SIGNAL \inst2|RGB_Display~0_combout\ : std_logic;
SIGNAL \inst19|RGB_Display~3_combout\ : std_logic;
SIGNAL \inst19|RGB_Display~4_combout\ : std_logic;
SIGNAL \inst2|SYNC|process_0~10_combout\ : std_logic;
SIGNAL \inst1|cursor_row~5_combout\ : std_logic;
SIGNAL \inst1|cursor_row~7_combout\ : std_logic;
SIGNAL \inst1|cursor_row~8_combout\ : std_logic;
SIGNAL \inst1|cursor_row~10_combout\ : std_logic;
SIGNAL \inst1|cursor_column~10_combout\ : std_logic;
SIGNAL \inst1|cursor_column~11_combout\ : std_logic;
SIGNAL \inst1|cursor_column~13_combout\ : std_logic;
SIGNAL \inst1|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst18|LessThan19~0_combout\ : std_logic;
SIGNAL \inst18|LessThan19~1_combout\ : std_logic;
SIGNAL \inst18|LessThan19~2_combout\ : std_logic;
SIGNAL \inst18|LessThan17~0_combout\ : std_logic;
SIGNAL \inst18|LessThan17~1_combout\ : std_logic;
SIGNAL \inst18|Ball_Y_motion~3_combout\ : std_logic;
SIGNAL \inst8|Equal0~2_combout\ : std_logic;
SIGNAL \inst8|Equal1~0_combout\ : std_logic;
SIGNAL \inst8|Equal1~1_combout\ : std_logic;
SIGNAL \inst8|output~0_combout\ : std_logic;
SIGNAL \inst2|LessThan17~0_combout\ : std_logic;
SIGNAL \inst2|LessThan17~1_combout\ : std_logic;
SIGNAL \inst2|Ball_Y_motion~3_combout\ : std_logic;
SIGNAL \inst19|LessThan19~0_combout\ : std_logic;
SIGNAL \inst19|LessThan19~1_combout\ : std_logic;
SIGNAL \inst19|LessThan19~2_combout\ : std_logic;
SIGNAL \inst19|Ball_Y_motion~2_combout\ : std_logic;
SIGNAL \inst19|LessThan17~0_combout\ : std_logic;
SIGNAL \inst19|LessThan17~1_combout\ : std_logic;
SIGNAL \inst19|Ball_Y_motion~3_combout\ : std_logic;
SIGNAL \inst17|LessThan17~0_combout\ : std_logic;
SIGNAL \inst17|LessThan17~1_combout\ : std_logic;
SIGNAL \inst17|Ball_Y_motion~3_combout\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \inst8|cnt[0]~10_combout\ : std_logic;
SIGNAL \inst19|SYNC|blue_out~3_combout\ : std_logic;
SIGNAL \inst19|char_sel~8_combout\ : std_logic;
SIGNAL \inst18|Ball_Y_motion~4_combout\ : std_logic;
SIGNAL \inst19|Ball_Y_motion~4_combout\ : std_logic;
SIGNAL \inst17|Ball_Y_motion~4_combout\ : std_logic;
SIGNAL \inst1|cursor_column[9]~19_combout\ : std_logic;
SIGNAL \inst19|Ball_on~combout\ : std_logic;
SIGNAL \bt1~input_o\ : std_logic;
SIGNAL \inst19|RGB_Display~4clkctrl_outclk\ : std_logic;
SIGNAL \inst17|SYNC|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst18|SYNC|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|SYNC|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst19|SYNC|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst17|SYNC|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR3[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR3[4]~feeder_combout\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \inst1|filter[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst1|filter[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \inst1|INCNT~5_combout\ : std_logic;
SIGNAL \inst1|INCNT[3]~2_combout\ : std_logic;
SIGNAL \inst1|INCNT~4_combout\ : std_logic;
SIGNAL \inst1|INCNT~1_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst1|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst1|send_char~0_combout\ : std_logic;
SIGNAL \inst1|send_char~q\ : std_logic;
SIGNAL \inst1|output_ready~0_combout\ : std_logic;
SIGNAL \inst1|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst1|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst1|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|output_ready~feeder_combout\ : std_logic;
SIGNAL \inst1|output_ready~q\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst1|READ_CHAR~q\ : std_logic;
SIGNAL \inst1|iready_set~0_combout\ : std_logic;
SIGNAL \inst1|iready_set~q\ : std_logic;
SIGNAL \inst1|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst1|Selector6~0_combout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[0]~30_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[1]~11\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[2]~13\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[3]~14_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[3]~15\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[4]~16_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[4]~17\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[5]~18_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[5]~19\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[6]~20_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[6]~21\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[7]~23\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[8]~24_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[8]~25\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[9]~27\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[10]~28_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[9]~26_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst1|Selector6~1_combout\ : std_logic;
SIGNAL \inst1|send_data~q\ : std_logic;
SIGNAL \inst1|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst1|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst1|WideOr4~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst4|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|SYNC|Add0~1\ : std_logic;
SIGNAL \inst2|SYNC|Add0~2_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add0~3\ : std_logic;
SIGNAL \inst2|SYNC|Add0~4_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add0~5\ : std_logic;
SIGNAL \inst2|SYNC|Add0~6_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add0~7\ : std_logic;
SIGNAL \inst2|SYNC|Add0~8_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add0~9\ : std_logic;
SIGNAL \inst2|SYNC|Add0~10_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add0~13\ : std_logic;
SIGNAL \inst2|SYNC|Add0~15\ : std_logic;
SIGNAL \inst2|SYNC|Add0~16_combout\ : std_logic;
SIGNAL \inst2|SYNC|h_count~0_combout\ : std_logic;
SIGNAL \inst2|SYNC|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|SYNC|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|SYNC|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|SYNC|h_count~2_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add0~11\ : std_logic;
SIGNAL \inst2|SYNC|Add0~12_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add0~14_combout\ : std_logic;
SIGNAL \inst2|SYNC|process_0~0_combout\ : std_logic;
SIGNAL \inst2|SYNC|process_0~3_combout\ : std_logic;
SIGNAL \inst2|SYNC|horiz_sync~q\ : std_logic;
SIGNAL \inst2|SYNC|horiz_sync_out~q\ : std_logic;
SIGNAL \inst21|horiz~q\ : std_logic;
SIGNAL \inst3|seconds[0]~18_combout\ : std_logic;
SIGNAL \inst3|seconds[4]~27_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|seconds[14]~20_combout\ : std_logic;
SIGNAL \inst3|seconds[0]~19\ : std_logic;
SIGNAL \inst3|seconds[1]~21_combout\ : std_logic;
SIGNAL \inst3|seconds[1]~22\ : std_logic;
SIGNAL \inst3|seconds[2]~23_combout\ : std_logic;
SIGNAL \inst3|seconds[2]~24\ : std_logic;
SIGNAL \inst3|seconds[3]~25_combout\ : std_logic;
SIGNAL \inst3|seconds[3]~26\ : std_logic;
SIGNAL \inst3|seconds[4]~28\ : std_logic;
SIGNAL \inst3|seconds[5]~29_combout\ : std_logic;
SIGNAL \inst3|seconds[5]~30\ : std_logic;
SIGNAL \inst3|seconds[6]~32\ : std_logic;
SIGNAL \inst3|seconds[7]~33_combout\ : std_logic;
SIGNAL \inst3|seconds[7]~34\ : std_logic;
SIGNAL \inst3|seconds[8]~36\ : std_logic;
SIGNAL \inst3|seconds[9]~37_combout\ : std_logic;
SIGNAL \inst3|seconds[9]~38\ : std_logic;
SIGNAL \inst3|seconds[10]~39_combout\ : std_logic;
SIGNAL \inst3|seconds[10]~40\ : std_logic;
SIGNAL \inst3|seconds[11]~41_combout\ : std_logic;
SIGNAL \inst3|seconds[11]~42\ : std_logic;
SIGNAL \inst3|seconds[12]~44\ : std_logic;
SIGNAL \inst3|seconds[13]~45_combout\ : std_logic;
SIGNAL \inst3|seconds[13]~46\ : std_logic;
SIGNAL \inst3|seconds[14]~48\ : std_logic;
SIGNAL \inst3|seconds[15]~50\ : std_logic;
SIGNAL \inst3|seconds[16]~51_combout\ : std_logic;
SIGNAL \inst3|seconds[16]~52\ : std_logic;
SIGNAL \inst3|seconds[17]~53_combout\ : std_logic;
SIGNAL \inst3|cnt[0]~8_combout\ : std_logic;
SIGNAL \inst3|cnt[0]~9\ : std_logic;
SIGNAL \inst3|cnt[1]~11_combout\ : std_logic;
SIGNAL \inst3|cnt[1]~12\ : std_logic;
SIGNAL \inst3|cnt[2]~14\ : std_logic;
SIGNAL \inst3|cnt[3]~16\ : std_logic;
SIGNAL \inst3|cnt[4]~17_combout\ : std_logic;
SIGNAL \inst3|cnt[4]~18\ : std_logic;
SIGNAL \inst3|cnt[5]~19_combout\ : std_logic;
SIGNAL \inst3|cnt[5]~20\ : std_logic;
SIGNAL \inst3|cnt[6]~21_combout\ : std_logic;
SIGNAL \inst3|Equal1~1_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \inst3|cnt[1]~10_combout\ : std_logic;
SIGNAL \inst3|cnt[3]~15_combout\ : std_logic;
SIGNAL \inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|output~0_combout\ : std_logic;
SIGNAL \inst3|output~1_combout\ : std_logic;
SIGNAL \inst3|output~q\ : std_logic;
SIGNAL \inst22|state.s_menu~0_combout\ : std_logic;
SIGNAL \bt2~input_o\ : std_logic;
SIGNAL \inst22|state.s_menu~q\ : std_logic;
SIGNAL \inst22|state.s_regular~0_combout\ : std_logic;
SIGNAL \inst22|state.s_regular~q\ : std_logic;
SIGNAL \inst22|output_select~0_combout\ : std_logic;
SIGNAL \inst22|state.s_training~0_combout\ : std_logic;
SIGNAL \inst22|state.s_training~q\ : std_logic;
SIGNAL \inst22|output_select~1_combout\ : std_logic;
SIGNAL \inst2|SYNC|process_0~12_combout\ : std_logic;
SIGNAL \inst2|SYNC|process_0~9_combout\ : std_logic;
SIGNAL \inst2|SYNC|process_0~11_combout\ : std_logic;
SIGNAL \inst2|SYNC|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|SYNC|Equal1~1_combout\ : std_logic;
SIGNAL \inst2|SYNC|v_count[0]~1_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add1~6_combout\ : std_logic;
SIGNAL \inst2|SYNC|v_count[7]~3_combout\ : std_logic;
SIGNAL \inst2|SYNC|v_count[3]~5_combout\ : std_logic;
SIGNAL \inst2|SYNC|process_0~7_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add1~12_combout\ : std_logic;
SIGNAL \inst2|SYNC|v_count[6]~9_combout\ : std_logic;
SIGNAL \inst2|SYNC|process_0~8_combout\ : std_logic;
SIGNAL \inst2|SYNC|v_count~0_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add1~1\ : std_logic;
SIGNAL \inst2|SYNC|Add1~3\ : std_logic;
SIGNAL \inst2|SYNC|Add1~4_combout\ : std_logic;
SIGNAL \inst2|SYNC|v_count[2]~4_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add1~5\ : std_logic;
SIGNAL \inst2|SYNC|Add1~7\ : std_logic;
SIGNAL \inst2|SYNC|Add1~8_combout\ : std_logic;
SIGNAL \inst2|SYNC|v_count[4]~6_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add1~9\ : std_logic;
SIGNAL \inst2|SYNC|Add1~10_combout\ : std_logic;
SIGNAL \inst2|SYNC|v_count[5]~8_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add1~11\ : std_logic;
SIGNAL \inst2|SYNC|Add1~13\ : std_logic;
SIGNAL \inst2|SYNC|Add1~14_combout\ : std_logic;
SIGNAL \inst2|SYNC|v_count[7]~10_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add1~15\ : std_logic;
SIGNAL \inst2|SYNC|Add1~16_combout\ : std_logic;
SIGNAL \inst2|SYNC|v_count[8]~11_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add1~17\ : std_logic;
SIGNAL \inst2|SYNC|Add1~18_combout\ : std_logic;
SIGNAL \inst2|SYNC|v_count[9]~7_combout\ : std_logic;
SIGNAL \inst2|SYNC|v_count~2_combout\ : std_logic;
SIGNAL \inst2|SYNC|process_0~4_combout\ : std_logic;
SIGNAL \inst2|SYNC|process_0~5_combout\ : std_logic;
SIGNAL \inst2|SYNC|vert_sync~q\ : std_logic;
SIGNAL \inst18|SYNC|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst18|SYNC|vert_sync_out~q\ : std_logic;
SIGNAL \inst19|SYNC|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst19|SYNC|vert_sync_out~q\ : std_logic;
SIGNAL \inst21|Mux13~0_combout\ : std_logic;
SIGNAL \inst2|SYNC|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst2|SYNC|vert_sync_out~q\ : std_logic;
SIGNAL \inst21|Mux13~1_combout\ : std_logic;
SIGNAL \inst21|vert~q\ : std_logic;
SIGNAL \inst1|SHIFTIN[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[0]~0_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_COUNT[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[7]~0_combout\ : std_logic;
SIGNAL \inst1|Add3~0_combout\ : std_logic;
SIGNAL \inst1|PACKET_COUNT[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[0]~0_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[0]~1_combout\ : std_logic;
SIGNAL \inst1|left_button~feeder_combout\ : std_logic;
SIGNAL \inst1|INCNT[3]~0_combout\ : std_logic;
SIGNAL \inst1|Equal4~0_combout\ : std_logic;
SIGNAL \inst1|left_button~0_combout\ : std_logic;
SIGNAL \inst1|left_button~q\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|right_button~feeder_combout\ : std_logic;
SIGNAL \inst1|right_button~q\ : std_logic;
SIGNAL \inst2|SYNC|process_0~6_combout\ : std_logic;
SIGNAL \inst2|SYNC|video_on_h~feeder_combout\ : std_logic;
SIGNAL \inst2|SYNC|video_on_h~q\ : std_logic;
SIGNAL \inst2|SYNC|LessThan7~0_combout\ : std_logic;
SIGNAL \inst2|SYNC|LessThan7~1_combout\ : std_logic;
SIGNAL \inst2|SYNC|video_on_v~q\ : std_logic;
SIGNAL \inst2|SYNC|Add0~0_combout\ : std_logic;
SIGNAL \inst19|LessThan5~0_combout\ : std_logic;
SIGNAL \inst19|Ball_on~0_combout\ : std_logic;
SIGNAL \inst19|LessThan15~0_combout\ : std_logic;
SIGNAL \inst19|LessThan15~2_combout\ : std_logic;
SIGNAL \inst19|Ball_on~1_combout\ : std_logic;
SIGNAL \inst19|Add2~0_combout\ : std_logic;
SIGNAL \inst19|Add2~1_combout\ : std_logic;
SIGNAL \bt0~input_o\ : std_logic;
SIGNAL \inst8|seconds[0]~18_combout\ : std_logic;
SIGNAL \inst8|seconds[12]~44\ : std_logic;
SIGNAL \inst8|seconds[13]~45_combout\ : std_logic;
SIGNAL \inst8|seconds[13]~46\ : std_logic;
SIGNAL \inst8|seconds[14]~48\ : std_logic;
SIGNAL \inst8|seconds[15]~50\ : std_logic;
SIGNAL \inst8|seconds[16]~51_combout\ : std_logic;
SIGNAL \inst8|seconds[16]~52\ : std_logic;
SIGNAL \inst8|seconds[17]~53_combout\ : std_logic;
SIGNAL \inst8|seconds[4]~20_combout\ : std_logic;
SIGNAL \inst8|seconds[0]~19\ : std_logic;
SIGNAL \inst8|seconds[1]~21_combout\ : std_logic;
SIGNAL \inst8|seconds[1]~22\ : std_logic;
SIGNAL \inst8|seconds[2]~23_combout\ : std_logic;
SIGNAL \inst8|seconds[2]~24\ : std_logic;
SIGNAL \inst8|seconds[3]~25_combout\ : std_logic;
SIGNAL \inst8|seconds[3]~26\ : std_logic;
SIGNAL \inst8|seconds[4]~28\ : std_logic;
SIGNAL \inst8|seconds[5]~29_combout\ : std_logic;
SIGNAL \inst8|seconds[5]~30\ : std_logic;
SIGNAL \inst8|seconds[6]~32\ : std_logic;
SIGNAL \inst8|seconds[7]~33_combout\ : std_logic;
SIGNAL \inst8|seconds[7]~34\ : std_logic;
SIGNAL \inst8|seconds[8]~36\ : std_logic;
SIGNAL \inst8|seconds[9]~37_combout\ : std_logic;
SIGNAL \inst8|seconds[9]~38\ : std_logic;
SIGNAL \inst8|seconds[10]~39_combout\ : std_logic;
SIGNAL \inst8|seconds[10]~40\ : std_logic;
SIGNAL \inst8|seconds[11]~41_combout\ : std_logic;
SIGNAL \inst8|seconds[11]~42\ : std_logic;
SIGNAL \inst8|seconds[12]~43_combout\ : std_logic;
SIGNAL \inst8|seconds[14]~47_combout\ : std_logic;
SIGNAL \inst8|Equal0~3_combout\ : std_logic;
SIGNAL \inst8|seconds[4]~27_combout\ : std_logic;
SIGNAL \inst8|Equal0~1_combout\ : std_logic;
SIGNAL \inst8|Equal0~0_combout\ : std_logic;
SIGNAL \inst8|Equal0~4_combout\ : std_logic;
SIGNAL \inst8|output~1_combout\ : std_logic;
SIGNAL \inst8|output~q\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[0]~10_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[0]~11\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[1]~12_combout\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[3]~16_combout\ : std_logic;
SIGNAL \inst2|LessThan19~0_combout\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[5]~21\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[6]~23\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[7]~24_combout\ : std_logic;
SIGNAL \inst2|Ball_Y_motion~4_combout\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[1]~13\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[2]~14_combout\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[2]~15\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[3]~17\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[4]~19\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[5]~20_combout\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[4]~18_combout\ : std_logic;
SIGNAL \inst2|LessThan19~1_combout\ : std_logic;
SIGNAL \inst2|LessThan19~2_combout\ : std_logic;
SIGNAL \inst2|Ball_Y_motion~2_combout\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[7]~25\ : std_logic;
SIGNAL \inst2|Ball_Y_pos[8]~26_combout\ : std_logic;
SIGNAL \inst19|Add2~4_combout\ : std_logic;
SIGNAL \inst2|LessThan2~1_cout\ : std_logic;
SIGNAL \inst2|LessThan2~3_cout\ : std_logic;
SIGNAL \inst2|LessThan2~5_cout\ : std_logic;
SIGNAL \inst2|LessThan2~7_cout\ : std_logic;
SIGNAL \inst2|LessThan2~9_cout\ : std_logic;
SIGNAL \inst2|LessThan2~11_cout\ : std_logic;
SIGNAL \inst2|LessThan2~13_cout\ : std_logic;
SIGNAL \inst2|LessThan2~15_cout\ : std_logic;
SIGNAL \inst2|LessThan2~17_cout\ : std_logic;
SIGNAL \inst2|LessThan2~18_combout\ : std_logic;
SIGNAL \inst2|SYNC|Add0~17\ : std_logic;
SIGNAL \inst2|SYNC|Add0~18_combout\ : std_logic;
SIGNAL \inst2|SYNC|h_count~1_combout\ : std_logic;
SIGNAL \inst19|Add0~1_cout\ : std_logic;
SIGNAL \inst19|Add0~3_cout\ : std_logic;
SIGNAL \inst19|Add0~5\ : std_logic;
SIGNAL \inst19|Add0~7\ : std_logic;
SIGNAL \inst19|Add0~8_combout\ : std_logic;
SIGNAL \inst19|Add0~9\ : std_logic;
SIGNAL \inst19|Add0~10_combout\ : std_logic;
SIGNAL \inst17|RGB_Display~2_combout\ : std_logic;
SIGNAL \inst19|LessThan1~1_combout\ : std_logic;
SIGNAL \inst19|LessThan1~0_combout\ : std_logic;
SIGNAL \inst17|RGB_Display~3_combout\ : std_logic;
SIGNAL \inst17|RGB_Display~0_combout\ : std_logic;
SIGNAL \inst2|RGB_Display~1_combout\ : std_logic;
SIGNAL \inst2|Ball_on~combout\ : std_logic;
SIGNAL \inst19|RGB_Display~1_combout\ : std_logic;
SIGNAL \inst19|RGB_Display~2_combout\ : std_logic;
SIGNAL \inst19|row_sel~0_combout\ : std_logic;
SIGNAL \inst2|RGB_Display~1clkctrl_outclk\ : std_logic;
SIGNAL \inst19|row_sel~1_combout\ : std_logic;
SIGNAL \inst19|RGB_Display~0_combout\ : std_logic;
SIGNAL \inst19|RGB_Display~5_combout\ : std_logic;
SIGNAL \inst19|char_sel~2_combout\ : std_logic;
SIGNAL \inst19|char_sel~3_combout\ : std_logic;
SIGNAL \inst19|LessThan15~1_combout\ : std_logic;
SIGNAL \inst19|char_sel~4_combout\ : std_logic;
SIGNAL \inst19|char_sel~5_combout\ : std_logic;
SIGNAL \inst19|RGB_Display~6_combout\ : std_logic;
SIGNAL \inst19|char_sel~6_combout\ : std_logic;
SIGNAL \inst19|RGB_Display~7_combout\ : std_logic;
SIGNAL \inst19|Ball_on~2_combout\ : std_logic;
SIGNAL \inst19|char_sel~7_combout\ : std_logic;
SIGNAL \inst19|col_sel~1_combout\ : std_logic;
SIGNAL \inst19|col_sel~2_combout\ : std_logic;
SIGNAL \inst2|CHAR|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|CHAR|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|CHAR|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|CHAR|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|SYNC|blue_out~2_combout\ : std_logic;
SIGNAL \inst2|SYNC|blue_out~3_combout\ : std_logic;
SIGNAL \inst21|Mux8~0_combout\ : std_logic;
SIGNAL \inst18|Ball_Y_motion~2_combout\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[0]~10_combout\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[0]~11\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[1]~12_combout\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[1]~13\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[2]~14_combout\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[2]~15\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[3]~16_combout\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[3]~17\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[4]~18_combout\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[4]~19\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[5]~21\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[6]~23\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[7]~24_combout\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[7]~25\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[8]~27\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[9]~28_combout\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[8]~26_combout\ : std_logic;
SIGNAL \inst19|Add2~3_combout\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[6]~22_combout\ : std_logic;
SIGNAL \inst18|Ball_Y_pos[5]~20_combout\ : std_logic;
SIGNAL \inst18|LessThan2~1_cout\ : std_logic;
SIGNAL \inst18|LessThan2~3_cout\ : std_logic;
SIGNAL \inst18|LessThan2~5_cout\ : std_logic;
SIGNAL \inst18|LessThan2~7_cout\ : std_logic;
SIGNAL \inst18|LessThan2~9_cout\ : std_logic;
SIGNAL \inst18|LessThan2~11_cout\ : std_logic;
SIGNAL \inst18|LessThan2~13_cout\ : std_logic;
SIGNAL \inst18|LessThan2~15_cout\ : std_logic;
SIGNAL \inst18|LessThan2~17_cout\ : std_logic;
SIGNAL \inst18|LessThan2~18_combout\ : std_logic;
SIGNAL \inst18|RGB_Display~1_combout\ : std_logic;
SIGNAL \inst18|Ball_on~combout\ : std_logic;
SIGNAL \inst18|RGB_Display~1clkctrl_outclk\ : std_logic;
SIGNAL \inst18|CHAR|Mux0~0_combout\ : std_logic;
SIGNAL \inst18|CHAR|Mux0~1_combout\ : std_logic;
SIGNAL \inst18|CHAR|Mux0~2_combout\ : std_logic;
SIGNAL \inst18|CHAR|Mux0~3_combout\ : std_logic;
SIGNAL \inst18|SYNC|blue_out~2_combout\ : std_logic;
SIGNAL \inst18|SYNC|blue_out~3_combout\ : std_logic;
SIGNAL \inst17|Ball_on~combout\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[0]~10_combout\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[0]~11\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[1]~12_combout\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[1]~13\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[2]~14_combout\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[2]~15\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[3]~17\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[4]~18_combout\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[4]~19\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[5]~21\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[6]~23\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[7]~24_combout\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[7]~25\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[8]~26_combout\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[6]~22_combout\ : std_logic;
SIGNAL \inst17|LessThan19~1_combout\ : std_logic;
SIGNAL \inst17|LessThan19~0_combout\ : std_logic;
SIGNAL \inst17|LessThan19~2_combout\ : std_logic;
SIGNAL \inst17|Ball_Y_motion~2_combout\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[8]~27\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[9]~28_combout\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[5]~20_combout\ : std_logic;
SIGNAL \inst17|Ball_Y_pos[3]~16_combout\ : std_logic;
SIGNAL \inst17|Add3~1\ : std_logic;
SIGNAL \inst17|Add3~3\ : std_logic;
SIGNAL \inst17|Add3~5\ : std_logic;
SIGNAL \inst17|Add3~7\ : std_logic;
SIGNAL \inst17|Add3~9\ : std_logic;
SIGNAL \inst17|Add3~10_combout\ : std_logic;
SIGNAL \inst17|Add3~8_combout\ : std_logic;
SIGNAL \inst17|Add3~0_combout\ : std_logic;
SIGNAL \inst17|LessThan3~1_cout\ : std_logic;
SIGNAL \inst17|LessThan3~3_cout\ : std_logic;
SIGNAL \inst17|LessThan3~5_cout\ : std_logic;
SIGNAL \inst17|LessThan3~7_cout\ : std_logic;
SIGNAL \inst17|LessThan3~9_cout\ : std_logic;
SIGNAL \inst17|LessThan3~11_cout\ : std_logic;
SIGNAL \inst17|LessThan3~13_cout\ : std_logic;
SIGNAL \inst17|LessThan3~15_cout\ : std_logic;
SIGNAL \inst17|LessThan3~16_combout\ : std_logic;
SIGNAL \inst17|RGB_Display~4_combout\ : std_logic;
SIGNAL \inst17|RGB_Display~5_combout\ : std_logic;
SIGNAL \inst17|RGB_Display~5clkctrl_outclk\ : std_logic;
SIGNAL \inst19|row_sel~2_combout\ : std_logic;
SIGNAL \inst17|CHAR|Mux0~2_combout\ : std_logic;
SIGNAL \inst17|CHAR|Mux0~3_combout\ : std_logic;
SIGNAL \inst19|col_sel~0_combout\ : std_logic;
SIGNAL \inst17|SYNC|blue_out~2_combout\ : std_logic;
SIGNAL \inst17|SYNC|blue_out~3_combout\ : std_logic;
SIGNAL \inst21|Mux8~1_combout\ : std_logic;
SIGNAL \inst21|blue[3]~feeder_combout\ : std_logic;
SIGNAL \inst21|green[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|SYNC|video_on~0_combout\ : std_logic;
SIGNAL \inst21|red[3]~feeder_combout\ : std_logic;
SIGNAL \inst21|red[2]~feeder_combout\ : std_logic;
SIGNAL \inst21|red[1]~feeder_combout\ : std_logic;
SIGNAL \inst21|red[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR3[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR3[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR3[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|new_cursor_row[8]~27_combout\ : std_logic;
SIGNAL \inst1|new_cursor_row[9]~24_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR3[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR3[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR3[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|new_cursor_row[0]~11\ : std_logic;
SIGNAL \inst1|new_cursor_row[1]~12_combout\ : std_logic;
SIGNAL \inst1|cursor_row~9_combout\ : std_logic;
SIGNAL \inst1|cursor_row[6]~2_combout\ : std_logic;
SIGNAL \inst1|new_cursor_row[1]~13\ : std_logic;
SIGNAL \inst1|new_cursor_row[2]~15\ : std_logic;
SIGNAL \inst1|new_cursor_row[3]~17\ : std_logic;
SIGNAL \inst1|new_cursor_row[4]~18_combout\ : std_logic;
SIGNAL \inst1|new_cursor_row[2]~14_combout\ : std_logic;
SIGNAL \inst1|new_cursor_row[3]~16_combout\ : std_logic;
SIGNAL \inst1|LessThan5~0_combout\ : std_logic;
SIGNAL \inst1|new_cursor_row[5]~20_combout\ : std_logic;
SIGNAL \inst1|RECV_UART~0_combout\ : std_logic;
SIGNAL \inst1|RECV_UART~1_combout\ : std_logic;
SIGNAL \inst1|RECV_UART~2_combout\ : std_logic;
SIGNAL \inst1|cursor_row~6_combout\ : std_logic;
SIGNAL \inst1|new_cursor_row[4]~19\ : std_logic;
SIGNAL \inst1|new_cursor_row[5]~21\ : std_logic;
SIGNAL \inst1|new_cursor_row[6]~23\ : std_logic;
SIGNAL \inst1|new_cursor_row[7]~25_combout\ : std_logic;
SIGNAL \inst1|cursor_row~4_combout\ : std_logic;
SIGNAL \inst1|new_cursor_row[7]~26\ : std_logic;
SIGNAL \inst1|new_cursor_row[8]~28\ : std_logic;
SIGNAL \inst1|new_cursor_row[9]~29_combout\ : std_logic;
SIGNAL \inst1|new_cursor_row[6]~22_combout\ : std_logic;
SIGNAL \inst1|LessThan5~1_combout\ : std_logic;
SIGNAL \inst1|new_cursor_row[0]~10_combout\ : std_logic;
SIGNAL \inst1|cursor_row~0_combout\ : std_logic;
SIGNAL \inst1|Equal3~0_combout\ : std_logic;
SIGNAL \inst1|cursor_row~3_combout\ : std_logic;
SIGNAL \inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|cursor_row~1_combout\ : std_logic;
SIGNAL \inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[7]~1_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[7]~2_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[6]~23\ : std_logic;
SIGNAL \inst1|new_cursor_column[7]~25\ : std_logic;
SIGNAL \inst1|new_cursor_column[8]~26_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[8]~27\ : std_logic;
SIGNAL \inst1|new_cursor_column[9]~28_combout\ : std_logic;
SIGNAL \inst1|cursor_column~18_combout\ : std_logic;
SIGNAL \inst1|cursor_column~9_combout\ : std_logic;
SIGNAL \inst1|cursor_column~8_combout\ : std_logic;
SIGNAL \inst1|RECV_UART~3_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[7]~24_combout\ : std_logic;
SIGNAL \inst1|RECV_UART~4_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[4]~18_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[5]~20_combout\ : std_logic;
SIGNAL \inst1|RECV_UART~5_combout\ : std_logic;
SIGNAL \inst1|cursor_column~16_combout\ : std_logic;
SIGNAL \inst1|cursor_column~7_combout\ : std_logic;
SIGNAL \inst1|cursor_column[9]~20_combout\ : std_logic;
SIGNAL \inst1|cursor_column~15_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[0]~11\ : std_logic;
SIGNAL \inst1|new_cursor_column[1]~12_combout\ : std_logic;
SIGNAL \inst1|cursor_column~14_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[1]~13\ : std_logic;
SIGNAL \inst1|new_cursor_column[2]~15\ : std_logic;
SIGNAL \inst1|new_cursor_column[3]~16_combout\ : std_logic;
SIGNAL \inst1|cursor_column~12_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[3]~17\ : std_logic;
SIGNAL \inst1|new_cursor_column[4]~19\ : std_logic;
SIGNAL \inst1|new_cursor_column[5]~21\ : std_logic;
SIGNAL \inst1|new_cursor_column[6]~22_combout\ : std_logic;
SIGNAL \inst1|cursor_column~17_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst7|Mux3~0_combout\ : std_logic;
SIGNAL \inst7|Mux4~0_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~0_combout\ : std_logic;
SIGNAL \inst19|col_sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst6|ledsegment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst1|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst18|col_sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst18|char_sel\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst1|inhibit_wait_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst2|char_sel\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst19|Ball_Y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|new_cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|Ball_Y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|row_sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|PACKET_CHAR3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|PACKET_CHAR2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|col_sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst19|row_sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst8|seconds\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst18|Ball_Y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst18|Ball_Y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|new_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst2|Ball_Y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst19|char_sel\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst19|Ball_Y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst18|row_sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|SYNC|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|SYNC|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|SYNC|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|SYNC|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|SYNC|blue_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|SYNC|red_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|CHAR|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst18|SYNC|blue_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst18|CHAR|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst19|SYNC|blue_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst19|CHAR|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|seconds\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst3|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|ledsegment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst21|red\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst21|green\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst21|blue\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst17|row_sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst17|col_sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst17|char_sel\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst17|Ball_Y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst17|Ball_Y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst17|SYNC|blue_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17|CHAR|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_bt2~input_o\ : std_logic;
SIGNAL \inst8|ALT_INV_output~q\ : std_logic;
SIGNAL \inst1|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;

BEGIN

horiz_sync_out <= ww_horiz_sync_out;
ww_clk <= clk;
ww_bt0 <= bt0;
ww_bt1 <= bt1;
ww_bt2 <= bt2;
ww_sw <= sw;
vert_sync_out <= ww_vert_sync_out;
seg0_dec <= ww_seg0_dec;
seg1_dec <= ww_seg1_dec;
blue_out <= ww_blue_out;
green_out <= ww_green_out;
red_out <= ww_red_out;
seg0 <= ww_seg0;
seg1 <= ww_seg1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst4|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst4|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst4|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst4|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst4|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst4|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst4|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst4|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst4|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst4|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst4|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst18|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst18|char_sel\(4) & \inst18|char_sel\(3) & \inst18|char_sel\(2) & \inst18|char_sel\(1) & \inst18|char_sel\(0) & \inst18|row_sel\(2) & \inst18|row_sel\(1) & 
\inst18|row_sel\(0));

\inst18|CHAR|altsyncram_component|auto_generated|q_a\(0) <= \inst18|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst18|CHAR|altsyncram_component|auto_generated|q_a\(1) <= \inst18|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst18|CHAR|altsyncram_component|auto_generated|q_a\(2) <= \inst18|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst18|CHAR|altsyncram_component|auto_generated|q_a\(3) <= \inst18|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst18|CHAR|altsyncram_component|auto_generated|q_a\(4) <= \inst18|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst18|CHAR|altsyncram_component|auto_generated|q_a\(5) <= \inst18|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst18|CHAR|altsyncram_component|auto_generated|q_a\(6) <= \inst18|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst18|CHAR|altsyncram_component|auto_generated|q_a\(7) <= \inst18|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst2|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst2|char_sel\(4) & \inst2|char_sel\(3) & \inst2|char_sel\(2) & \inst2|char_sel\(1) & \inst2|char_sel\(0) & \inst2|row_sel\(2) & \inst2|row_sel\(1) & 
\inst2|row_sel\(0));

\inst2|CHAR|altsyncram_component|auto_generated|q_a\(0) <= \inst2|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst2|CHAR|altsyncram_component|auto_generated|q_a\(1) <= \inst2|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst2|CHAR|altsyncram_component|auto_generated|q_a\(2) <= \inst2|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst2|CHAR|altsyncram_component|auto_generated|q_a\(3) <= \inst2|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst2|CHAR|altsyncram_component|auto_generated|q_a\(4) <= \inst2|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst2|CHAR|altsyncram_component|auto_generated|q_a\(5) <= \inst2|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst2|CHAR|altsyncram_component|auto_generated|q_a\(6) <= \inst2|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst2|CHAR|altsyncram_component|auto_generated|q_a\(7) <= \inst2|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst19|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst19|char_sel\(4) & \inst19|char_sel\(3) & \inst19|char_sel\(2) & \inst19|char_sel\(1) & \inst19|char_sel\(0) & \inst19|row_sel\(2) & \inst19|row_sel\(1) & 
\inst19|row_sel\(0));

\inst19|CHAR|altsyncram_component|auto_generated|q_a\(0) <= \inst19|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst19|CHAR|altsyncram_component|auto_generated|q_a\(1) <= \inst19|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst19|CHAR|altsyncram_component|auto_generated|q_a\(2) <= \inst19|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst19|CHAR|altsyncram_component|auto_generated|q_a\(3) <= \inst19|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst19|CHAR|altsyncram_component|auto_generated|q_a\(4) <= \inst19|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst19|CHAR|altsyncram_component|auto_generated|q_a\(5) <= \inst19|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst19|CHAR|altsyncram_component|auto_generated|q_a\(6) <= \inst19|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst19|CHAR|altsyncram_component|auto_generated|q_a\(7) <= \inst19|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst17|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst17|char_sel\(4) & \inst17|char_sel\(3) & \inst17|char_sel\(2) & \inst17|char_sel\(1) & \inst17|char_sel\(0) & \inst17|row_sel\(2) & \inst17|row_sel\(1) & 
\inst17|row_sel\(0));

\inst17|CHAR|altsyncram_component|auto_generated|q_a\(0) <= \inst17|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst17|CHAR|altsyncram_component|auto_generated|q_a\(1) <= \inst17|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst17|CHAR|altsyncram_component|auto_generated|q_a\(2) <= \inst17|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst17|CHAR|altsyncram_component|auto_generated|q_a\(3) <= \inst17|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst17|CHAR|altsyncram_component|auto_generated|q_a\(4) <= \inst17|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst17|CHAR|altsyncram_component|auto_generated|q_a\(5) <= \inst17|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst17|CHAR|altsyncram_component|auto_generated|q_a\(6) <= \inst17|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst17|CHAR|altsyncram_component|auto_generated|q_a\(7) <= \inst17|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst2|RGB_Display~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|RGB_Display~1_combout\);

\inst1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|MOUSE_CLK_FILTER~q\);

\inst19|RGB_Display~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst19|RGB_Display~4_combout\);

\inst17|RGB_Display~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst17|RGB_Display~5_combout\);

\inst18|RGB_Display~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst18|RGB_Display~1_combout\);

\inst17|SYNC|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst17|SYNC|vert_sync_out~q\);

\inst18|SYNC|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst18|SYNC|vert_sync_out~q\);

\inst2|SYNC|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|SYNC|vert_sync_out~q\);

\inst19|SYNC|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst19|SYNC|vert_sync_out~q\);

\inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|altpll_component|auto_generated|wire_pll1_clk\(0));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\;
\ALT_INV_bt2~input_o\ <= NOT \bt2~input_o\;
\inst8|ALT_INV_output~q\ <= NOT \inst8|output~q\;
\inst1|ALT_INV_send_data~q\ <= NOT \inst1|send_data~q\;
\inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst1|mouse_state.INHIBIT_TRANS~q\;
\inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \inst1|mouse_state.WAIT_OUTPUT_READY~q\;

-- Location: M9K_X25_Y19_N0
\inst18|CHAR|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ball_training:inst18|char_rom:CHAR|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst18|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst18|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y18_N0
\inst2|CHAR|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ball:inst2|char_rom:CHAR|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst2|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst2|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y16_N0
\inst19|CHAR|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ball_over:inst19|char_rom:CHAR|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst19|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst19|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y17_N0
\inst17|CHAR|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ball_menu:inst17|char_rom:CHAR|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst17|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst17|CHAR|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X28_Y20_N7
\inst1|new_cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(0));

-- Location: FF_X28_Y20_N11
\inst1|new_cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(2));

-- Location: FF_X17_Y25_N27
\inst3|seconds[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[6]~31_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(6));

-- Location: FF_X17_Y25_N31
\inst3|seconds[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[8]~35_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(8));

-- Location: FF_X17_Y24_N7
\inst3|seconds[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[12]~43_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(12));

-- Location: FF_X17_Y24_N11
\inst3|seconds[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[14]~47_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(14));

-- Location: FF_X17_Y24_N13
\inst3|seconds[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[15]~49_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(15));

-- Location: FF_X17_Y23_N11
\inst3|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|cnt[2]~13_combout\,
	sclr => \inst3|cnt[1]~10_combout\,
	ena => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(2));

-- Location: FF_X17_Y23_N21
\inst3|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|cnt[7]~23_combout\,
	sclr => \inst3|cnt[1]~10_combout\,
	ena => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(7));

-- Location: LCCOMB_X23_Y16_N18
\inst19|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~4_combout\ = (\inst2|SYNC|pixel_column\(6) & (\inst19|Add0~3_cout\ $ (GND))) # (!\inst2|SYNC|pixel_column\(6) & (!\inst19|Add0~3_cout\ & VCC))
-- \inst19|Add0~5\ = CARRY((\inst2|SYNC|pixel_column\(6) & !\inst19|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|pixel_column\(6),
	datad => VCC,
	cin => \inst19|Add0~3_cout\,
	combout => \inst19|Add0~4_combout\,
	cout => \inst19|Add0~5\);

-- Location: LCCOMB_X23_Y16_N20
\inst19|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~6_combout\ = (\inst2|SYNC|pixel_column\(7) & (!\inst19|Add0~5\)) # (!\inst2|SYNC|pixel_column\(7) & ((\inst19|Add0~5\) # (GND)))
-- \inst19|Add0~7\ = CARRY((!\inst19|Add0~5\) # (!\inst2|SYNC|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst19|Add0~5\,
	combout => \inst19|Add0~6_combout\,
	cout => \inst19|Add0~7\);

-- Location: LCCOMB_X19_Y19_N6
\inst18|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Add3~0_combout\ = (\inst18|Ball_Y_pos\(4) & (\inst18|Ball_Y_pos\(3) $ (VCC))) # (!\inst18|Ball_Y_pos\(4) & (\inst18|Ball_Y_pos\(3) & VCC))
-- \inst18|Add3~1\ = CARRY((\inst18|Ball_Y_pos\(4) & \inst18|Ball_Y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(4),
	datab => \inst18|Ball_Y_pos\(3),
	datad => VCC,
	combout => \inst18|Add3~0_combout\,
	cout => \inst18|Add3~1\);

-- Location: LCCOMB_X19_Y19_N8
\inst18|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Add3~2_combout\ = (\inst18|Ball_Y_pos\(5) & (!\inst18|Add3~1\)) # (!\inst18|Ball_Y_pos\(5) & ((\inst18|Add3~1\) # (GND)))
-- \inst18|Add3~3\ = CARRY((!\inst18|Add3~1\) # (!\inst18|Ball_Y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst18|Add3~1\,
	combout => \inst18|Add3~2_combout\,
	cout => \inst18|Add3~3\);

-- Location: LCCOMB_X19_Y19_N10
\inst18|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Add3~4_combout\ = (\inst18|Ball_Y_pos\(6) & (\inst18|Add3~3\ $ (GND))) # (!\inst18|Ball_Y_pos\(6) & (!\inst18|Add3~3\ & VCC))
-- \inst18|Add3~5\ = CARRY((\inst18|Ball_Y_pos\(6) & !\inst18|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst18|Add3~3\,
	combout => \inst18|Add3~4_combout\,
	cout => \inst18|Add3~5\);

-- Location: LCCOMB_X19_Y19_N12
\inst18|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Add3~6_combout\ = (\inst18|Ball_Y_pos\(7) & (!\inst18|Add3~5\)) # (!\inst18|Ball_Y_pos\(7) & ((\inst18|Add3~5\) # (GND)))
-- \inst18|Add3~7\ = CARRY((!\inst18|Add3~5\) # (!\inst18|Ball_Y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst18|Add3~5\,
	combout => \inst18|Add3~6_combout\,
	cout => \inst18|Add3~7\);

-- Location: LCCOMB_X19_Y19_N14
\inst18|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Add3~8_combout\ = (\inst18|Ball_Y_pos\(8) & (\inst18|Add3~7\ $ (GND))) # (!\inst18|Ball_Y_pos\(8) & (!\inst18|Add3~7\ & VCC))
-- \inst18|Add3~9\ = CARRY((\inst18|Ball_Y_pos\(8) & !\inst18|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst18|Add3~7\,
	combout => \inst18|Add3~8_combout\,
	cout => \inst18|Add3~9\);

-- Location: LCCOMB_X20_Y16_N4
\inst18|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan3~1_cout\ = CARRY((\inst2|SYNC|pixel_row\(0) & !\inst18|Ball_Y_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(0),
	datab => \inst18|Ball_Y_pos\(0),
	datad => VCC,
	cout => \inst18|LessThan3~1_cout\);

-- Location: LCCOMB_X20_Y16_N6
\inst18|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan3~3_cout\ = CARRY((\inst18|Ball_Y_pos\(1) & ((!\inst18|LessThan3~1_cout\) # (!\inst2|SYNC|pixel_row\(1)))) # (!\inst18|Ball_Y_pos\(1) & (!\inst2|SYNC|pixel_row\(1) & !\inst18|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(1),
	datab => \inst2|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst18|LessThan3~1_cout\,
	cout => \inst18|LessThan3~3_cout\);

-- Location: LCCOMB_X20_Y16_N8
\inst18|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan3~5_cout\ = CARRY((\inst2|SYNC|pixel_row\(2) & ((!\inst18|LessThan3~3_cout\) # (!\inst18|Ball_Y_pos\(2)))) # (!\inst2|SYNC|pixel_row\(2) & (!\inst18|Ball_Y_pos\(2) & !\inst18|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(2),
	datab => \inst18|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst18|LessThan3~3_cout\,
	cout => \inst18|LessThan3~5_cout\);

-- Location: LCCOMB_X20_Y16_N10
\inst18|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan3~7_cout\ = CARRY((\inst18|Ball_Y_pos\(3) & (!\inst2|SYNC|pixel_row\(3) & !\inst18|LessThan3~5_cout\)) # (!\inst18|Ball_Y_pos\(3) & ((!\inst18|LessThan3~5_cout\) # (!\inst2|SYNC|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(3),
	datab => \inst2|SYNC|pixel_row\(3),
	datad => VCC,
	cin => \inst18|LessThan3~5_cout\,
	cout => \inst18|LessThan3~7_cout\);

-- Location: LCCOMB_X20_Y16_N12
\inst18|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan3~9_cout\ = CARRY((\inst2|SYNC|pixel_row\(4) & ((!\inst18|LessThan3~7_cout\) # (!\inst18|Add3~0_combout\))) # (!\inst2|SYNC|pixel_row\(4) & (!\inst18|Add3~0_combout\ & !\inst18|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(4),
	datab => \inst18|Add3~0_combout\,
	datad => VCC,
	cin => \inst18|LessThan3~7_cout\,
	cout => \inst18|LessThan3~9_cout\);

-- Location: LCCOMB_X20_Y16_N14
\inst18|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan3~11_cout\ = CARRY((\inst2|SYNC|pixel_row\(5) & (\inst18|Add3~2_combout\ & !\inst18|LessThan3~9_cout\)) # (!\inst2|SYNC|pixel_row\(5) & ((\inst18|Add3~2_combout\) # (!\inst18|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(5),
	datab => \inst18|Add3~2_combout\,
	datad => VCC,
	cin => \inst18|LessThan3~9_cout\,
	cout => \inst18|LessThan3~11_cout\);

-- Location: LCCOMB_X20_Y16_N16
\inst18|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan3~13_cout\ = CARRY((\inst18|Add3~4_combout\ & (\inst2|SYNC|pixel_row\(6) & !\inst18|LessThan3~11_cout\)) # (!\inst18|Add3~4_combout\ & ((\inst2|SYNC|pixel_row\(6)) # (!\inst18|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Add3~4_combout\,
	datab => \inst2|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst18|LessThan3~11_cout\,
	cout => \inst18|LessThan3~13_cout\);

-- Location: LCCOMB_X20_Y16_N18
\inst18|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan3~15_cout\ = CARRY((\inst18|Add3~6_combout\ & ((!\inst18|LessThan3~13_cout\) # (!\inst2|SYNC|pixel_row\(7)))) # (!\inst18|Add3~6_combout\ & (!\inst2|SYNC|pixel_row\(7) & !\inst18|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Add3~6_combout\,
	datab => \inst2|SYNC|pixel_row\(7),
	datad => VCC,
	cin => \inst18|LessThan3~13_cout\,
	cout => \inst18|LessThan3~15_cout\);

-- Location: LCCOMB_X20_Y16_N20
\inst18|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan3~16_combout\ = (\inst2|SYNC|pixel_row\(8) & ((!\inst18|Add3~8_combout\) # (!\inst18|LessThan3~15_cout\))) # (!\inst2|SYNC|pixel_row\(8) & (!\inst18|LessThan3~15_cout\ & !\inst18|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(8),
	datad => \inst18|Add3~8_combout\,
	cin => \inst18|LessThan3~15_cout\,
	combout => \inst18|LessThan3~16_combout\);

-- Location: LCCOMB_X19_Y19_N16
\inst18|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Add3~10_combout\ = \inst18|Add3~9\ $ (\inst18|Ball_Y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Ball_Y_pos\(9),
	cin => \inst18|Add3~9\,
	combout => \inst18|Add3~10_combout\);

-- Location: FF_X20_Y18_N25
\inst2|Ball_Y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|SYNC|vert_sync_out~q\,
	d => \inst2|Ball_Y_pos[6]~22_combout\,
	asdata => VCC,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Ball_Y_pos\(6));

-- Location: LCCOMB_X19_Y16_N0
\inst2|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add3~0_combout\ = (\inst2|Ball_Y_pos\(3) & (\inst2|Ball_Y_pos\(4) $ (VCC))) # (!\inst2|Ball_Y_pos\(3) & (\inst2|Ball_Y_pos\(4) & VCC))
-- \inst2|Add3~1\ = CARRY((\inst2|Ball_Y_pos\(3) & \inst2|Ball_Y_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(3),
	datab => \inst2|Ball_Y_pos\(4),
	datad => VCC,
	combout => \inst2|Add3~0_combout\,
	cout => \inst2|Add3~1\);

-- Location: LCCOMB_X19_Y16_N2
\inst2|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add3~2_combout\ = (\inst2|Ball_Y_pos\(5) & (!\inst2|Add3~1\)) # (!\inst2|Ball_Y_pos\(5) & ((\inst2|Add3~1\) # (GND)))
-- \inst2|Add3~3\ = CARRY((!\inst2|Add3~1\) # (!\inst2|Ball_Y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst2|Add3~1\,
	combout => \inst2|Add3~2_combout\,
	cout => \inst2|Add3~3\);

-- Location: LCCOMB_X19_Y16_N4
\inst2|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add3~4_combout\ = (\inst2|Ball_Y_pos\(6) & (\inst2|Add3~3\ $ (GND))) # (!\inst2|Ball_Y_pos\(6) & (!\inst2|Add3~3\ & VCC))
-- \inst2|Add3~5\ = CARRY((\inst2|Ball_Y_pos\(6) & !\inst2|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst2|Add3~3\,
	combout => \inst2|Add3~4_combout\,
	cout => \inst2|Add3~5\);

-- Location: LCCOMB_X19_Y16_N6
\inst2|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add3~6_combout\ = (\inst2|Ball_Y_pos\(7) & (!\inst2|Add3~5\)) # (!\inst2|Ball_Y_pos\(7) & ((\inst2|Add3~5\) # (GND)))
-- \inst2|Add3~7\ = CARRY((!\inst2|Add3~5\) # (!\inst2|Ball_Y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst2|Add3~5\,
	combout => \inst2|Add3~6_combout\,
	cout => \inst2|Add3~7\);

-- Location: LCCOMB_X19_Y16_N8
\inst2|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add3~8_combout\ = (\inst2|Ball_Y_pos\(8) & (\inst2|Add3~7\ $ (GND))) # (!\inst2|Ball_Y_pos\(8) & (!\inst2|Add3~7\ & VCC))
-- \inst2|Add3~9\ = CARRY((\inst2|Ball_Y_pos\(8) & !\inst2|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst2|Add3~7\,
	combout => \inst2|Add3~8_combout\,
	cout => \inst2|Add3~9\);

-- Location: LCCOMB_X19_Y16_N14
\inst2|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~1_cout\ = CARRY((\inst2|SYNC|pixel_row\(0) & !\inst2|Ball_Y_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(0),
	datab => \inst2|Ball_Y_pos\(0),
	datad => VCC,
	cout => \inst2|LessThan3~1_cout\);

-- Location: LCCOMB_X19_Y16_N16
\inst2|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~3_cout\ = CARRY((\inst2|Ball_Y_pos\(1) & ((!\inst2|LessThan3~1_cout\) # (!\inst2|SYNC|pixel_row\(1)))) # (!\inst2|Ball_Y_pos\(1) & (!\inst2|SYNC|pixel_row\(1) & !\inst2|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(1),
	datab => \inst2|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst2|LessThan3~1_cout\,
	cout => \inst2|LessThan3~3_cout\);

-- Location: LCCOMB_X19_Y16_N18
\inst2|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~5_cout\ = CARRY((\inst2|SYNC|pixel_row\(2) & ((!\inst2|LessThan3~3_cout\) # (!\inst2|Ball_Y_pos\(2)))) # (!\inst2|SYNC|pixel_row\(2) & (!\inst2|Ball_Y_pos\(2) & !\inst2|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(2),
	datab => \inst2|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst2|LessThan3~3_cout\,
	cout => \inst2|LessThan3~5_cout\);

-- Location: LCCOMB_X19_Y16_N20
\inst2|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~7_cout\ = CARRY((\inst2|Ball_Y_pos\(3) & (!\inst2|SYNC|pixel_row\(3) & !\inst2|LessThan3~5_cout\)) # (!\inst2|Ball_Y_pos\(3) & ((!\inst2|LessThan3~5_cout\) # (!\inst2|SYNC|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(3),
	datab => \inst2|SYNC|pixel_row\(3),
	datad => VCC,
	cin => \inst2|LessThan3~5_cout\,
	cout => \inst2|LessThan3~7_cout\);

-- Location: LCCOMB_X19_Y16_N22
\inst2|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~9_cout\ = CARRY((\inst2|SYNC|pixel_row\(4) & ((!\inst2|LessThan3~7_cout\) # (!\inst2|Add3~0_combout\))) # (!\inst2|SYNC|pixel_row\(4) & (!\inst2|Add3~0_combout\ & !\inst2|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(4),
	datab => \inst2|Add3~0_combout\,
	datad => VCC,
	cin => \inst2|LessThan3~7_cout\,
	cout => \inst2|LessThan3~9_cout\);

-- Location: LCCOMB_X19_Y16_N24
\inst2|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~11_cout\ = CARRY((\inst2|SYNC|pixel_row\(5) & (\inst2|Add3~2_combout\ & !\inst2|LessThan3~9_cout\)) # (!\inst2|SYNC|pixel_row\(5) & ((\inst2|Add3~2_combout\) # (!\inst2|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(5),
	datab => \inst2|Add3~2_combout\,
	datad => VCC,
	cin => \inst2|LessThan3~9_cout\,
	cout => \inst2|LessThan3~11_cout\);

-- Location: LCCOMB_X19_Y16_N26
\inst2|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~13_cout\ = CARRY((\inst2|SYNC|pixel_row\(6) & ((!\inst2|LessThan3~11_cout\) # (!\inst2|Add3~4_combout\))) # (!\inst2|SYNC|pixel_row\(6) & (!\inst2|Add3~4_combout\ & !\inst2|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(6),
	datab => \inst2|Add3~4_combout\,
	datad => VCC,
	cin => \inst2|LessThan3~11_cout\,
	cout => \inst2|LessThan3~13_cout\);

-- Location: LCCOMB_X19_Y16_N28
\inst2|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~15_cout\ = CARRY((\inst2|Add3~6_combout\ & ((!\inst2|LessThan3~13_cout\) # (!\inst2|SYNC|pixel_row\(7)))) # (!\inst2|Add3~6_combout\ & (!\inst2|SYNC|pixel_row\(7) & !\inst2|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add3~6_combout\,
	datab => \inst2|SYNC|pixel_row\(7),
	datad => VCC,
	cin => \inst2|LessThan3~13_cout\,
	cout => \inst2|LessThan3~15_cout\);

-- Location: LCCOMB_X19_Y16_N30
\inst2|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~16_combout\ = (\inst2|Add3~8_combout\ & (!\inst2|LessThan3~15_cout\ & \inst2|SYNC|pixel_row\(8))) # (!\inst2|Add3~8_combout\ & ((\inst2|SYNC|pixel_row\(8)) # (!\inst2|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add3~8_combout\,
	datad => \inst2|SYNC|pixel_row\(8),
	cin => \inst2|LessThan3~15_cout\,
	combout => \inst2|LessThan3~16_combout\);

-- Location: FF_X20_Y18_N31
\inst2|Ball_Y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|SYNC|vert_sync_out~q\,
	d => \inst2|Ball_Y_pos[9]~28_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Ball_Y_pos\(9));

-- Location: LCCOMB_X19_Y16_N10
\inst2|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add3~10_combout\ = \inst2|Ball_Y_pos\(9) $ (\inst2|Add3~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(9),
	cin => \inst2|Add3~9\,
	combout => \inst2|Add3~10_combout\);

-- Location: FF_X19_Y20_N17
\inst19|Ball_Y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|SYNC|vert_sync_out~q\,
	d => \inst19|Ball_Y_pos[8]~26_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Ball_Y_pos\(8));

-- Location: FF_X19_Y20_N15
\inst19|Ball_Y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|SYNC|vert_sync_out~q\,
	d => \inst19|Ball_Y_pos[7]~24_combout\,
	asdata => VCC,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Ball_Y_pos\(7));

-- Location: FF_X19_Y20_N13
\inst19|Ball_Y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|SYNC|vert_sync_out~q\,
	d => \inst19|Ball_Y_pos[6]~22_combout\,
	asdata => VCC,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Ball_Y_pos\(6));

-- Location: FF_X19_Y20_N11
\inst19|Ball_Y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|SYNC|vert_sync_out~q\,
	d => \inst19|Ball_Y_pos[5]~20_combout\,
	asdata => VCC,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Ball_Y_pos\(5));

-- Location: FF_X19_Y20_N7
\inst19|Ball_Y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|SYNC|vert_sync_out~q\,
	d => \inst19|Ball_Y_pos[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Ball_Y_pos\(3));

-- Location: FF_X19_Y20_N9
\inst19|Ball_Y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|SYNC|vert_sync_out~q\,
	d => \inst19|Ball_Y_pos[4]~18_combout\,
	asdata => VCC,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Ball_Y_pos\(4));

-- Location: LCCOMB_X20_Y17_N18
\inst19|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~0_combout\ = (\inst19|Ball_Y_pos\(4) & (\inst19|Ball_Y_pos\(3) $ (VCC))) # (!\inst19|Ball_Y_pos\(4) & (\inst19|Ball_Y_pos\(3) & VCC))
-- \inst19|Add3~1\ = CARRY((\inst19|Ball_Y_pos\(4) & \inst19|Ball_Y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(4),
	datab => \inst19|Ball_Y_pos\(3),
	datad => VCC,
	combout => \inst19|Add3~0_combout\,
	cout => \inst19|Add3~1\);

-- Location: LCCOMB_X20_Y17_N20
\inst19|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~2_combout\ = (\inst19|Ball_Y_pos\(5) & (!\inst19|Add3~1\)) # (!\inst19|Ball_Y_pos\(5) & ((\inst19|Add3~1\) # (GND)))
-- \inst19|Add3~3\ = CARRY((!\inst19|Add3~1\) # (!\inst19|Ball_Y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst19|Add3~1\,
	combout => \inst19|Add3~2_combout\,
	cout => \inst19|Add3~3\);

-- Location: LCCOMB_X20_Y17_N22
\inst19|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~4_combout\ = (\inst19|Ball_Y_pos\(6) & (\inst19|Add3~3\ $ (GND))) # (!\inst19|Ball_Y_pos\(6) & (!\inst19|Add3~3\ & VCC))
-- \inst19|Add3~5\ = CARRY((\inst19|Ball_Y_pos\(6) & !\inst19|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst19|Add3~3\,
	combout => \inst19|Add3~4_combout\,
	cout => \inst19|Add3~5\);

-- Location: LCCOMB_X20_Y17_N24
\inst19|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~6_combout\ = (\inst19|Ball_Y_pos\(7) & (!\inst19|Add3~5\)) # (!\inst19|Ball_Y_pos\(7) & ((\inst19|Add3~5\) # (GND)))
-- \inst19|Add3~7\ = CARRY((!\inst19|Add3~5\) # (!\inst19|Ball_Y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst19|Add3~5\,
	combout => \inst19|Add3~6_combout\,
	cout => \inst19|Add3~7\);

-- Location: LCCOMB_X20_Y17_N26
\inst19|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~8_combout\ = (\inst19|Ball_Y_pos\(8) & (\inst19|Add3~7\ $ (GND))) # (!\inst19|Ball_Y_pos\(8) & (!\inst19|Add3~7\ & VCC))
-- \inst19|Add3~9\ = CARRY((\inst19|Ball_Y_pos\(8) & !\inst19|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst19|Add3~7\,
	combout => \inst19|Add3~8_combout\,
	cout => \inst19|Add3~9\);

-- Location: FF_X19_Y20_N5
\inst19|Ball_Y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|SYNC|vert_sync_out~q\,
	d => \inst19|Ball_Y_pos[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Ball_Y_pos\(2));

-- Location: FF_X19_Y20_N3
\inst19|Ball_Y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|SYNC|vert_sync_out~q\,
	d => \inst19|Ball_Y_pos[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Ball_Y_pos\(1));

-- Location: FF_X19_Y20_N1
\inst19|Ball_Y_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|SYNC|vert_sync_out~q\,
	d => \inst19|Ball_Y_pos[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Ball_Y_pos\(0));

-- Location: LCCOMB_X20_Y17_N0
\inst19|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan3~1_cout\ = CARRY((!\inst19|Ball_Y_pos\(0) & \inst2|SYNC|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(0),
	datab => \inst2|SYNC|pixel_row\(0),
	datad => VCC,
	cout => \inst19|LessThan3~1_cout\);

-- Location: LCCOMB_X20_Y17_N2
\inst19|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan3~3_cout\ = CARRY((\inst19|Ball_Y_pos\(1) & ((!\inst19|LessThan3~1_cout\) # (!\inst2|SYNC|pixel_row\(1)))) # (!\inst19|Ball_Y_pos\(1) & (!\inst2|SYNC|pixel_row\(1) & !\inst19|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(1),
	datab => \inst2|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst19|LessThan3~1_cout\,
	cout => \inst19|LessThan3~3_cout\);

-- Location: LCCOMB_X20_Y17_N4
\inst19|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan3~5_cout\ = CARRY((\inst2|SYNC|pixel_row\(2) & ((!\inst19|LessThan3~3_cout\) # (!\inst19|Ball_Y_pos\(2)))) # (!\inst2|SYNC|pixel_row\(2) & (!\inst19|Ball_Y_pos\(2) & !\inst19|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(2),
	datab => \inst19|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst19|LessThan3~3_cout\,
	cout => \inst19|LessThan3~5_cout\);

-- Location: LCCOMB_X20_Y17_N6
\inst19|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan3~7_cout\ = CARRY((\inst2|SYNC|pixel_row\(3) & (!\inst19|Ball_Y_pos\(3) & !\inst19|LessThan3~5_cout\)) # (!\inst2|SYNC|pixel_row\(3) & ((!\inst19|LessThan3~5_cout\) # (!\inst19|Ball_Y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(3),
	datab => \inst19|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst19|LessThan3~5_cout\,
	cout => \inst19|LessThan3~7_cout\);

-- Location: LCCOMB_X20_Y17_N8
\inst19|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan3~9_cout\ = CARRY((\inst19|Add3~0_combout\ & (\inst2|SYNC|pixel_row\(4) & !\inst19|LessThan3~7_cout\)) # (!\inst19|Add3~0_combout\ & ((\inst2|SYNC|pixel_row\(4)) # (!\inst19|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~0_combout\,
	datab => \inst2|SYNC|pixel_row\(4),
	datad => VCC,
	cin => \inst19|LessThan3~7_cout\,
	cout => \inst19|LessThan3~9_cout\);

-- Location: LCCOMB_X20_Y17_N10
\inst19|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan3~11_cout\ = CARRY((\inst2|SYNC|pixel_row\(5) & (\inst19|Add3~2_combout\ & !\inst19|LessThan3~9_cout\)) # (!\inst2|SYNC|pixel_row\(5) & ((\inst19|Add3~2_combout\) # (!\inst19|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(5),
	datab => \inst19|Add3~2_combout\,
	datad => VCC,
	cin => \inst19|LessThan3~9_cout\,
	cout => \inst19|LessThan3~11_cout\);

-- Location: LCCOMB_X20_Y17_N12
\inst19|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan3~13_cout\ = CARRY((\inst19|Add3~4_combout\ & (\inst2|SYNC|pixel_row\(6) & !\inst19|LessThan3~11_cout\)) # (!\inst19|Add3~4_combout\ & ((\inst2|SYNC|pixel_row\(6)) # (!\inst19|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~4_combout\,
	datab => \inst2|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst19|LessThan3~11_cout\,
	cout => \inst19|LessThan3~13_cout\);

-- Location: LCCOMB_X20_Y17_N14
\inst19|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan3~15_cout\ = CARRY((\inst2|SYNC|pixel_row\(7) & (\inst19|Add3~6_combout\ & !\inst19|LessThan3~13_cout\)) # (!\inst2|SYNC|pixel_row\(7) & ((\inst19|Add3~6_combout\) # (!\inst19|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(7),
	datab => \inst19|Add3~6_combout\,
	datad => VCC,
	cin => \inst19|LessThan3~13_cout\,
	cout => \inst19|LessThan3~15_cout\);

-- Location: LCCOMB_X20_Y17_N16
\inst19|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan3~16_combout\ = (\inst19|Add3~8_combout\ & (!\inst19|LessThan3~15_cout\ & \inst2|SYNC|pixel_row\(8))) # (!\inst19|Add3~8_combout\ & ((\inst2|SYNC|pixel_row\(8)) # (!\inst19|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add3~8_combout\,
	datad => \inst2|SYNC|pixel_row\(8),
	cin => \inst19|LessThan3~15_cout\,
	combout => \inst19|LessThan3~16_combout\);

-- Location: FF_X19_Y20_N19
\inst19|Ball_Y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|SYNC|vert_sync_out~q\,
	d => \inst19|Ball_Y_pos[9]~28_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Ball_Y_pos\(9));

-- Location: LCCOMB_X20_Y17_N28
\inst19|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add3~10_combout\ = \inst19|Add3~9\ $ (\inst19|Ball_Y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst19|Ball_Y_pos\(9),
	cin => \inst19|Add3~9\,
	combout => \inst19|Add3~10_combout\);

-- Location: LCCOMB_X20_Y20_N0
\inst19|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~1_cout\ = CARRY((!\inst2|SYNC|pixel_row\(0) & \inst19|Ball_Y_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(0),
	datab => \inst19|Ball_Y_pos\(0),
	datad => VCC,
	cout => \inst19|LessThan2~1_cout\);

-- Location: LCCOMB_X20_Y20_N2
\inst19|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~3_cout\ = CARRY((\inst19|Ball_Y_pos\(1) & (\inst2|SYNC|pixel_row\(1) & !\inst19|LessThan2~1_cout\)) # (!\inst19|Ball_Y_pos\(1) & ((\inst2|SYNC|pixel_row\(1)) # (!\inst19|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(1),
	datab => \inst2|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst19|LessThan2~1_cout\,
	cout => \inst19|LessThan2~3_cout\);

-- Location: LCCOMB_X20_Y20_N4
\inst19|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~5_cout\ = CARRY((\inst2|SYNC|pixel_row\(2) & (\inst19|Ball_Y_pos\(2) & !\inst19|LessThan2~3_cout\)) # (!\inst2|SYNC|pixel_row\(2) & ((\inst19|Ball_Y_pos\(2)) # (!\inst19|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(2),
	datab => \inst19|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst19|LessThan2~3_cout\,
	cout => \inst19|LessThan2~5_cout\);

-- Location: LCCOMB_X20_Y20_N6
\inst19|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~7_cout\ = CARRY((\inst2|SYNC|pixel_row\(3) & (!\inst19|Ball_Y_pos\(3) & !\inst19|LessThan2~5_cout\)) # (!\inst2|SYNC|pixel_row\(3) & ((!\inst19|LessThan2~5_cout\) # (!\inst19|Ball_Y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(3),
	datab => \inst19|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst19|LessThan2~5_cout\,
	cout => \inst19|LessThan2~7_cout\);

-- Location: LCCOMB_X20_Y20_N8
\inst19|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~9_cout\ = CARRY((\inst19|Ball_Y_pos\(4) & ((!\inst19|LessThan2~7_cout\) # (!\inst19|Add2~6_combout\))) # (!\inst19|Ball_Y_pos\(4) & (!\inst19|Add2~6_combout\ & !\inst19|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(4),
	datab => \inst19|Add2~6_combout\,
	datad => VCC,
	cin => \inst19|LessThan2~7_cout\,
	cout => \inst19|LessThan2~9_cout\);

-- Location: LCCOMB_X20_Y20_N10
\inst19|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~11_cout\ = CARRY((\inst19|Ball_Y_pos\(5) & (\inst19|Add2~5_combout\ & !\inst19|LessThan2~9_cout\)) # (!\inst19|Ball_Y_pos\(5) & ((\inst19|Add2~5_combout\) # (!\inst19|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(5),
	datab => \inst19|Add2~5_combout\,
	datad => VCC,
	cin => \inst19|LessThan2~9_cout\,
	cout => \inst19|LessThan2~11_cout\);

-- Location: LCCOMB_X20_Y20_N12
\inst19|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~13_cout\ = CARRY((\inst19|Add2~4_combout\ & (\inst19|Ball_Y_pos\(6) & !\inst19|LessThan2~11_cout\)) # (!\inst19|Add2~4_combout\ & ((\inst19|Ball_Y_pos\(6)) # (!\inst19|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~4_combout\,
	datab => \inst19|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst19|LessThan2~11_cout\,
	cout => \inst19|LessThan2~13_cout\);

-- Location: LCCOMB_X20_Y20_N14
\inst19|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~15_cout\ = CARRY((\inst19|Add2~3_combout\ & ((!\inst19|LessThan2~13_cout\) # (!\inst19|Ball_Y_pos\(7)))) # (!\inst19|Add2~3_combout\ & (!\inst19|Ball_Y_pos\(7) & !\inst19|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~3_combout\,
	datab => \inst19|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst19|LessThan2~13_cout\,
	cout => \inst19|LessThan2~15_cout\);

-- Location: LCCOMB_X20_Y20_N16
\inst19|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~17_cout\ = CARRY((\inst19|Add2~2_combout\ & (\inst19|Ball_Y_pos\(8) & !\inst19|LessThan2~15_cout\)) # (!\inst19|Add2~2_combout\ & ((\inst19|Ball_Y_pos\(8)) # (!\inst19|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~2_combout\,
	datab => \inst19|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst19|LessThan2~15_cout\,
	cout => \inst19|LessThan2~17_cout\);

-- Location: LCCOMB_X20_Y20_N18
\inst19|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan2~18_combout\ = (\inst19|Ball_Y_pos\(9) & ((\inst19|LessThan2~17_cout\) # (!\inst19|Add2~1_combout\))) # (!\inst19|Ball_Y_pos\(9) & (\inst19|LessThan2~17_cout\ & !\inst19|Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Ball_Y_pos\(9),
	datad => \inst19|Add2~1_combout\,
	cin => \inst19|LessThan2~17_cout\,
	combout => \inst19|LessThan2~18_combout\);

-- Location: LCCOMB_X22_Y18_N22
\inst17|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Add3~2_combout\ = (\inst17|Ball_Y_pos\(5) & (!\inst17|Add3~1\)) # (!\inst17|Ball_Y_pos\(5) & ((\inst17|Add3~1\) # (GND)))
-- \inst17|Add3~3\ = CARRY((!\inst17|Add3~1\) # (!\inst17|Ball_Y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst17|Add3~1\,
	combout => \inst17|Add3~2_combout\,
	cout => \inst17|Add3~3\);

-- Location: LCCOMB_X22_Y18_N24
\inst17|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Add3~4_combout\ = (\inst17|Ball_Y_pos\(6) & (\inst17|Add3~3\ $ (GND))) # (!\inst17|Ball_Y_pos\(6) & (!\inst17|Add3~3\ & VCC))
-- \inst17|Add3~5\ = CARRY((\inst17|Ball_Y_pos\(6) & !\inst17|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst17|Add3~3\,
	combout => \inst17|Add3~4_combout\,
	cout => \inst17|Add3~5\);

-- Location: LCCOMB_X22_Y18_N26
\inst17|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Add3~6_combout\ = (\inst17|Ball_Y_pos\(7) & (!\inst17|Add3~5\)) # (!\inst17|Ball_Y_pos\(7) & ((\inst17|Add3~5\) # (GND)))
-- \inst17|Add3~7\ = CARRY((!\inst17|Add3~5\) # (!\inst17|Ball_Y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst17|Add3~5\,
	combout => \inst17|Add3~6_combout\,
	cout => \inst17|Add3~7\);

-- Location: LCCOMB_X21_Y16_N6
\inst17|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan2~1_cout\ = CARRY((\inst17|Ball_Y_pos\(0) & !\inst2|SYNC|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(0),
	datab => \inst2|SYNC|pixel_row\(0),
	datad => VCC,
	cout => \inst17|LessThan2~1_cout\);

-- Location: LCCOMB_X21_Y16_N8
\inst17|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan2~3_cout\ = CARRY((\inst2|SYNC|pixel_row\(1) & ((!\inst17|LessThan2~1_cout\) # (!\inst17|Ball_Y_pos\(1)))) # (!\inst2|SYNC|pixel_row\(1) & (!\inst17|Ball_Y_pos\(1) & !\inst17|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(1),
	datab => \inst17|Ball_Y_pos\(1),
	datad => VCC,
	cin => \inst17|LessThan2~1_cout\,
	cout => \inst17|LessThan2~3_cout\);

-- Location: LCCOMB_X21_Y16_N10
\inst17|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan2~5_cout\ = CARRY((\inst2|SYNC|pixel_row\(2) & (\inst17|Ball_Y_pos\(2) & !\inst17|LessThan2~3_cout\)) # (!\inst2|SYNC|pixel_row\(2) & ((\inst17|Ball_Y_pos\(2)) # (!\inst17|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(2),
	datab => \inst17|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst17|LessThan2~3_cout\,
	cout => \inst17|LessThan2~5_cout\);

-- Location: LCCOMB_X21_Y16_N12
\inst17|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan2~7_cout\ = CARRY((\inst2|SYNC|pixel_row\(3) & (!\inst17|Ball_Y_pos\(3) & !\inst17|LessThan2~5_cout\)) # (!\inst2|SYNC|pixel_row\(3) & ((!\inst17|LessThan2~5_cout\) # (!\inst17|Ball_Y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(3),
	datab => \inst17|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst17|LessThan2~5_cout\,
	cout => \inst17|LessThan2~7_cout\);

-- Location: LCCOMB_X21_Y16_N14
\inst17|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan2~9_cout\ = CARRY((\inst19|Add2~6_combout\ & (\inst17|Ball_Y_pos\(4) & !\inst17|LessThan2~7_cout\)) # (!\inst19|Add2~6_combout\ & ((\inst17|Ball_Y_pos\(4)) # (!\inst17|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~6_combout\,
	datab => \inst17|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst17|LessThan2~7_cout\,
	cout => \inst17|LessThan2~9_cout\);

-- Location: LCCOMB_X21_Y16_N16
\inst17|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan2~11_cout\ = CARRY((\inst19|Add2~5_combout\ & ((!\inst17|LessThan2~9_cout\) # (!\inst17|Ball_Y_pos\(5)))) # (!\inst19|Add2~5_combout\ & (!\inst17|Ball_Y_pos\(5) & !\inst17|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~5_combout\,
	datab => \inst17|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst17|LessThan2~9_cout\,
	cout => \inst17|LessThan2~11_cout\);

-- Location: LCCOMB_X21_Y16_N18
\inst17|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan2~13_cout\ = CARRY((\inst17|Ball_Y_pos\(6) & ((!\inst17|LessThan2~11_cout\) # (!\inst19|Add2~4_combout\))) # (!\inst17|Ball_Y_pos\(6) & (!\inst19|Add2~4_combout\ & !\inst17|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(6),
	datab => \inst19|Add2~4_combout\,
	datad => VCC,
	cin => \inst17|LessThan2~11_cout\,
	cout => \inst17|LessThan2~13_cout\);

-- Location: LCCOMB_X21_Y16_N20
\inst17|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan2~15_cout\ = CARRY((\inst17|Ball_Y_pos\(7) & (\inst19|Add2~3_combout\ & !\inst17|LessThan2~13_cout\)) # (!\inst17|Ball_Y_pos\(7) & ((\inst19|Add2~3_combout\) # (!\inst17|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(7),
	datab => \inst19|Add2~3_combout\,
	datad => VCC,
	cin => \inst17|LessThan2~13_cout\,
	cout => \inst17|LessThan2~15_cout\);

-- Location: LCCOMB_X21_Y16_N22
\inst17|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan2~17_cout\ = CARRY((\inst19|Add2~2_combout\ & (\inst17|Ball_Y_pos\(8) & !\inst17|LessThan2~15_cout\)) # (!\inst19|Add2~2_combout\ & ((\inst17|Ball_Y_pos\(8)) # (!\inst17|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~2_combout\,
	datab => \inst17|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst17|LessThan2~15_cout\,
	cout => \inst17|LessThan2~17_cout\);

-- Location: LCCOMB_X21_Y16_N24
\inst17|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan2~18_combout\ = (\inst17|Ball_Y_pos\(9) & ((\inst17|LessThan2~17_cout\) # (!\inst19|Add2~1_combout\))) # (!\inst17|Ball_Y_pos\(9) & (\inst17|LessThan2~17_cout\ & !\inst19|Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Ball_Y_pos\(9),
	datad => \inst19|Add2~1_combout\,
	cin => \inst17|LessThan2~17_cout\,
	combout => \inst17|LessThan2~18_combout\);

-- Location: LCCOMB_X28_Y20_N6
\inst1|new_cursor_column[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[0]~10_combout\ = (\inst1|PACKET_CHAR2\(0) & (\inst1|cursor_column\(0) $ (VCC))) # (!\inst1|PACKET_CHAR2\(0) & (\inst1|cursor_column\(0) & VCC))
-- \inst1|new_cursor_column[0]~11\ = CARRY((\inst1|PACKET_CHAR2\(0) & \inst1|cursor_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(0),
	datab => \inst1|cursor_column\(0),
	datad => VCC,
	combout => \inst1|new_cursor_column[0]~10_combout\,
	cout => \inst1|new_cursor_column[0]~11\);

-- Location: LCCOMB_X28_Y20_N10
\inst1|new_cursor_column[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[2]~14_combout\ = ((\inst1|cursor_column\(2) $ (\inst1|PACKET_CHAR2\(2) $ (!\inst1|new_cursor_column[1]~13\)))) # (GND)
-- \inst1|new_cursor_column[2]~15\ = CARRY((\inst1|cursor_column\(2) & ((\inst1|PACKET_CHAR2\(2)) # (!\inst1|new_cursor_column[1]~13\))) # (!\inst1|cursor_column\(2) & (\inst1|PACKET_CHAR2\(2) & !\inst1|new_cursor_column[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(2),
	datab => \inst1|PACKET_CHAR2\(2),
	datad => VCC,
	cin => \inst1|new_cursor_column[1]~13\,
	combout => \inst1|new_cursor_column[2]~14_combout\,
	cout => \inst1|new_cursor_column[2]~15\);

-- Location: LCCOMB_X21_Y15_N12
\inst2|SYNC|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add1~0_combout\ = \inst2|SYNC|v_count\(0) $ (VCC)
-- \inst2|SYNC|Add1~1\ = CARRY(\inst2|SYNC|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|v_count\(0),
	datad => VCC,
	combout => \inst2|SYNC|Add1~0_combout\,
	cout => \inst2|SYNC|Add1~1\);

-- Location: LCCOMB_X21_Y15_N14
\inst2|SYNC|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add1~2_combout\ = (\inst2|SYNC|v_count\(1) & (!\inst2|SYNC|Add1~1\)) # (!\inst2|SYNC|v_count\(1) & ((\inst2|SYNC|Add1~1\) # (GND)))
-- \inst2|SYNC|Add1~3\ = CARRY((!\inst2|SYNC|Add1~1\) # (!\inst2|SYNC|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|v_count\(1),
	datad => VCC,
	cin => \inst2|SYNC|Add1~1\,
	combout => \inst2|SYNC|Add1~2_combout\,
	cout => \inst2|SYNC|Add1~3\);

-- Location: LCCOMB_X17_Y25_N26
\inst3|seconds[6]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[6]~31_combout\ = (\inst3|seconds\(6) & (\inst3|seconds[5]~30\ $ (GND))) # (!\inst3|seconds\(6) & (!\inst3|seconds[5]~30\ & VCC))
-- \inst3|seconds[6]~32\ = CARRY((\inst3|seconds\(6) & !\inst3|seconds[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seconds\(6),
	datad => VCC,
	cin => \inst3|seconds[5]~30\,
	combout => \inst3|seconds[6]~31_combout\,
	cout => \inst3|seconds[6]~32\);

-- Location: LCCOMB_X17_Y25_N30
\inst3|seconds[8]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[8]~35_combout\ = (\inst3|seconds\(8) & (\inst3|seconds[7]~34\ $ (GND))) # (!\inst3|seconds\(8) & (!\inst3|seconds[7]~34\ & VCC))
-- \inst3|seconds[8]~36\ = CARRY((\inst3|seconds\(8) & !\inst3|seconds[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seconds\(8),
	datad => VCC,
	cin => \inst3|seconds[7]~34\,
	combout => \inst3|seconds[8]~35_combout\,
	cout => \inst3|seconds[8]~36\);

-- Location: LCCOMB_X17_Y24_N6
\inst3|seconds[12]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[12]~43_combout\ = (\inst3|seconds\(12) & (\inst3|seconds[11]~42\ $ (GND))) # (!\inst3|seconds\(12) & (!\inst3|seconds[11]~42\ & VCC))
-- \inst3|seconds[12]~44\ = CARRY((\inst3|seconds\(12) & !\inst3|seconds[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seconds\(12),
	datad => VCC,
	cin => \inst3|seconds[11]~42\,
	combout => \inst3|seconds[12]~43_combout\,
	cout => \inst3|seconds[12]~44\);

-- Location: LCCOMB_X17_Y24_N10
\inst3|seconds[14]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[14]~47_combout\ = (\inst3|seconds\(14) & (\inst3|seconds[13]~46\ $ (GND))) # (!\inst3|seconds\(14) & (!\inst3|seconds[13]~46\ & VCC))
-- \inst3|seconds[14]~48\ = CARRY((\inst3|seconds\(14) & !\inst3|seconds[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seconds\(14),
	datad => VCC,
	cin => \inst3|seconds[13]~46\,
	combout => \inst3|seconds[14]~47_combout\,
	cout => \inst3|seconds[14]~48\);

-- Location: LCCOMB_X17_Y24_N12
\inst3|seconds[15]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[15]~49_combout\ = (\inst3|seconds\(15) & (!\inst3|seconds[14]~48\)) # (!\inst3|seconds\(15) & ((\inst3|seconds[14]~48\) # (GND)))
-- \inst3|seconds[15]~50\ = CARRY((!\inst3|seconds[14]~48\) # (!\inst3|seconds\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seconds\(15),
	datad => VCC,
	cin => \inst3|seconds[14]~48\,
	combout => \inst3|seconds[15]~49_combout\,
	cout => \inst3|seconds[15]~50\);

-- Location: LCCOMB_X17_Y23_N10
\inst3|cnt[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|cnt[2]~13_combout\ = (\inst3|cnt\(2) & (\inst3|cnt[1]~12\ $ (GND))) # (!\inst3|cnt\(2) & (!\inst3|cnt[1]~12\ & VCC))
-- \inst3|cnt[2]~14\ = CARRY((\inst3|cnt\(2) & !\inst3|cnt[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(2),
	datad => VCC,
	cin => \inst3|cnt[1]~12\,
	combout => \inst3|cnt[2]~13_combout\,
	cout => \inst3|cnt[2]~14\);

-- Location: LCCOMB_X17_Y23_N18
\inst3|cnt[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|cnt[6]~21_combout\ = (\inst3|cnt\(6) & (\inst3|cnt[5]~20\ $ (GND))) # (!\inst3|cnt\(6) & (!\inst3|cnt[5]~20\ & VCC))
-- \inst3|cnt[6]~22\ = CARRY((\inst3|cnt\(6) & !\inst3|cnt[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(6),
	datad => VCC,
	cin => \inst3|cnt[5]~20\,
	combout => \inst3|cnt[6]~21_combout\,
	cout => \inst3|cnt[6]~22\);

-- Location: LCCOMB_X17_Y23_N20
\inst3|cnt[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|cnt[7]~23_combout\ = \inst3|cnt[6]~22\ $ (\inst3|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|cnt\(7),
	cin => \inst3|cnt[6]~22\,
	combout => \inst3|cnt[7]~23_combout\);

-- Location: FF_X19_Y19_N1
\inst18|Ball_Y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst18|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst18|Ball_Y_motion~3_combout\,
	sclr => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Ball_Y_motion\(2));

-- Location: FF_X19_Y19_N3
\inst18|Ball_Y_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst18|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst18|Ball_Y_motion~4_combout\,
	sclr => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Ball_Y_motion\(1));

-- Location: FF_X19_Y18_N27
\inst2|Ball_Y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst2|Ball_Y_motion~3_combout\,
	sclr => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Ball_Y_motion\(2));

-- Location: LCCOMB_X20_Y18_N24
\inst2|Ball_Y_pos[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Ball_Y_pos[6]~22_combout\ = ((\inst2|Ball_Y_pos\(6) $ (\inst2|Ball_Y_motion\(0) $ (!\inst2|Ball_Y_pos[5]~21\)))) # (GND)
-- \inst2|Ball_Y_pos[6]~23\ = CARRY((\inst2|Ball_Y_pos\(6) & ((\inst2|Ball_Y_motion\(0)) # (!\inst2|Ball_Y_pos[5]~21\))) # (!\inst2|Ball_Y_pos\(6) & (\inst2|Ball_Y_motion\(0) & !\inst2|Ball_Y_pos[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(6),
	datab => \inst2|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst2|Ball_Y_pos[5]~21\,
	combout => \inst2|Ball_Y_pos[6]~22_combout\,
	cout => \inst2|Ball_Y_pos[6]~23\);

-- Location: LCCOMB_X20_Y18_N28
\inst2|Ball_Y_pos[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Ball_Y_pos[8]~26_combout\ = ((\inst2|Ball_Y_pos\(8) $ (\inst2|Ball_Y_motion\(0) $ (!\inst2|Ball_Y_pos[7]~25\)))) # (GND)
-- \inst2|Ball_Y_pos[8]~27\ = CARRY((\inst2|Ball_Y_pos\(8) & ((\inst2|Ball_Y_motion\(0)) # (!\inst2|Ball_Y_pos[7]~25\))) # (!\inst2|Ball_Y_pos\(8) & (\inst2|Ball_Y_motion\(0) & !\inst2|Ball_Y_pos[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(8),
	datab => \inst2|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst2|Ball_Y_pos[7]~25\,
	combout => \inst2|Ball_Y_pos[8]~26_combout\,
	cout => \inst2|Ball_Y_pos[8]~27\);

-- Location: LCCOMB_X20_Y18_N30
\inst2|Ball_Y_pos[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Ball_Y_pos[9]~28_combout\ = \inst2|Ball_Y_pos\(9) $ (\inst2|Ball_Y_pos[8]~27\ $ (\inst2|Ball_Y_motion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(9),
	datad => \inst2|Ball_Y_motion\(0),
	cin => \inst2|Ball_Y_pos[8]~27\,
	combout => \inst2|Ball_Y_pos[9]~28_combout\);

-- Location: FF_X20_Y20_N21
\inst19|Ball_Y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst19|Ball_Y_motion~3_combout\,
	sclr => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Ball_Y_motion\(2));

-- Location: FF_X20_Y20_N31
\inst19|Ball_Y_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst19|Ball_Y_motion~4_combout\,
	sclr => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Ball_Y_motion\(1));

-- Location: LCCOMB_X19_Y20_N0
\inst19|Ball_Y_pos[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_Y_pos[0]~10_combout\ = (\inst19|Ball_Y_motion\(0) & (\inst19|Ball_Y_pos\(0) $ (VCC))) # (!\inst19|Ball_Y_motion\(0) & (\inst19|Ball_Y_pos\(0) & VCC))
-- \inst19|Ball_Y_pos[0]~11\ = CARRY((\inst19|Ball_Y_motion\(0) & \inst19|Ball_Y_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_motion\(0),
	datab => \inst19|Ball_Y_pos\(0),
	datad => VCC,
	combout => \inst19|Ball_Y_pos[0]~10_combout\,
	cout => \inst19|Ball_Y_pos[0]~11\);

-- Location: LCCOMB_X19_Y20_N2
\inst19|Ball_Y_pos[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_Y_pos[1]~12_combout\ = (\inst19|Ball_Y_motion\(1) & ((\inst19|Ball_Y_pos\(1) & (\inst19|Ball_Y_pos[0]~11\ & VCC)) # (!\inst19|Ball_Y_pos\(1) & (!\inst19|Ball_Y_pos[0]~11\)))) # (!\inst19|Ball_Y_motion\(1) & ((\inst19|Ball_Y_pos\(1) & 
-- (!\inst19|Ball_Y_pos[0]~11\)) # (!\inst19|Ball_Y_pos\(1) & ((\inst19|Ball_Y_pos[0]~11\) # (GND)))))
-- \inst19|Ball_Y_pos[1]~13\ = CARRY((\inst19|Ball_Y_motion\(1) & (!\inst19|Ball_Y_pos\(1) & !\inst19|Ball_Y_pos[0]~11\)) # (!\inst19|Ball_Y_motion\(1) & ((!\inst19|Ball_Y_pos[0]~11\) # (!\inst19|Ball_Y_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_motion\(1),
	datab => \inst19|Ball_Y_pos\(1),
	datad => VCC,
	cin => \inst19|Ball_Y_pos[0]~11\,
	combout => \inst19|Ball_Y_pos[1]~12_combout\,
	cout => \inst19|Ball_Y_pos[1]~13\);

-- Location: LCCOMB_X19_Y20_N4
\inst19|Ball_Y_pos[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_Y_pos[2]~14_combout\ = ((\inst19|Ball_Y_motion\(2) $ (\inst19|Ball_Y_pos\(2) $ (!\inst19|Ball_Y_pos[1]~13\)))) # (GND)
-- \inst19|Ball_Y_pos[2]~15\ = CARRY((\inst19|Ball_Y_motion\(2) & ((\inst19|Ball_Y_pos\(2)) # (!\inst19|Ball_Y_pos[1]~13\))) # (!\inst19|Ball_Y_motion\(2) & (\inst19|Ball_Y_pos\(2) & !\inst19|Ball_Y_pos[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_motion\(2),
	datab => \inst19|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst19|Ball_Y_pos[1]~13\,
	combout => \inst19|Ball_Y_pos[2]~14_combout\,
	cout => \inst19|Ball_Y_pos[2]~15\);

-- Location: LCCOMB_X19_Y20_N6
\inst19|Ball_Y_pos[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_Y_pos[3]~16_combout\ = (\inst19|Ball_Y_pos\(3) & ((\inst19|Ball_Y_motion\(0) & (\inst19|Ball_Y_pos[2]~15\ & VCC)) # (!\inst19|Ball_Y_motion\(0) & (!\inst19|Ball_Y_pos[2]~15\)))) # (!\inst19|Ball_Y_pos\(3) & ((\inst19|Ball_Y_motion\(0) & 
-- (!\inst19|Ball_Y_pos[2]~15\)) # (!\inst19|Ball_Y_motion\(0) & ((\inst19|Ball_Y_pos[2]~15\) # (GND)))))
-- \inst19|Ball_Y_pos[3]~17\ = CARRY((\inst19|Ball_Y_pos\(3) & (!\inst19|Ball_Y_motion\(0) & !\inst19|Ball_Y_pos[2]~15\)) # (!\inst19|Ball_Y_pos\(3) & ((!\inst19|Ball_Y_pos[2]~15\) # (!\inst19|Ball_Y_motion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(3),
	datab => \inst19|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst19|Ball_Y_pos[2]~15\,
	combout => \inst19|Ball_Y_pos[3]~16_combout\,
	cout => \inst19|Ball_Y_pos[3]~17\);

-- Location: LCCOMB_X19_Y20_N8
\inst19|Ball_Y_pos[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_Y_pos[4]~18_combout\ = ((\inst19|Ball_Y_pos\(4) $ (\inst19|Ball_Y_motion\(0) $ (!\inst19|Ball_Y_pos[3]~17\)))) # (GND)
-- \inst19|Ball_Y_pos[4]~19\ = CARRY((\inst19|Ball_Y_pos\(4) & ((\inst19|Ball_Y_motion\(0)) # (!\inst19|Ball_Y_pos[3]~17\))) # (!\inst19|Ball_Y_pos\(4) & (\inst19|Ball_Y_motion\(0) & !\inst19|Ball_Y_pos[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(4),
	datab => \inst19|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst19|Ball_Y_pos[3]~17\,
	combout => \inst19|Ball_Y_pos[4]~18_combout\,
	cout => \inst19|Ball_Y_pos[4]~19\);

-- Location: LCCOMB_X19_Y20_N10
\inst19|Ball_Y_pos[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_Y_pos[5]~20_combout\ = (\inst19|Ball_Y_pos\(5) & ((\inst19|Ball_Y_motion\(0) & (\inst19|Ball_Y_pos[4]~19\ & VCC)) # (!\inst19|Ball_Y_motion\(0) & (!\inst19|Ball_Y_pos[4]~19\)))) # (!\inst19|Ball_Y_pos\(5) & ((\inst19|Ball_Y_motion\(0) & 
-- (!\inst19|Ball_Y_pos[4]~19\)) # (!\inst19|Ball_Y_motion\(0) & ((\inst19|Ball_Y_pos[4]~19\) # (GND)))))
-- \inst19|Ball_Y_pos[5]~21\ = CARRY((\inst19|Ball_Y_pos\(5) & (!\inst19|Ball_Y_motion\(0) & !\inst19|Ball_Y_pos[4]~19\)) # (!\inst19|Ball_Y_pos\(5) & ((!\inst19|Ball_Y_pos[4]~19\) # (!\inst19|Ball_Y_motion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(5),
	datab => \inst19|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst19|Ball_Y_pos[4]~19\,
	combout => \inst19|Ball_Y_pos[5]~20_combout\,
	cout => \inst19|Ball_Y_pos[5]~21\);

-- Location: LCCOMB_X19_Y20_N12
\inst19|Ball_Y_pos[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_Y_pos[6]~22_combout\ = ((\inst19|Ball_Y_pos\(6) $ (\inst19|Ball_Y_motion\(0) $ (!\inst19|Ball_Y_pos[5]~21\)))) # (GND)
-- \inst19|Ball_Y_pos[6]~23\ = CARRY((\inst19|Ball_Y_pos\(6) & ((\inst19|Ball_Y_motion\(0)) # (!\inst19|Ball_Y_pos[5]~21\))) # (!\inst19|Ball_Y_pos\(6) & (\inst19|Ball_Y_motion\(0) & !\inst19|Ball_Y_pos[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(6),
	datab => \inst19|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst19|Ball_Y_pos[5]~21\,
	combout => \inst19|Ball_Y_pos[6]~22_combout\,
	cout => \inst19|Ball_Y_pos[6]~23\);

-- Location: LCCOMB_X19_Y20_N14
\inst19|Ball_Y_pos[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_Y_pos[7]~24_combout\ = (\inst19|Ball_Y_pos\(7) & ((\inst19|Ball_Y_motion\(0) & (\inst19|Ball_Y_pos[6]~23\ & VCC)) # (!\inst19|Ball_Y_motion\(0) & (!\inst19|Ball_Y_pos[6]~23\)))) # (!\inst19|Ball_Y_pos\(7) & ((\inst19|Ball_Y_motion\(0) & 
-- (!\inst19|Ball_Y_pos[6]~23\)) # (!\inst19|Ball_Y_motion\(0) & ((\inst19|Ball_Y_pos[6]~23\) # (GND)))))
-- \inst19|Ball_Y_pos[7]~25\ = CARRY((\inst19|Ball_Y_pos\(7) & (!\inst19|Ball_Y_motion\(0) & !\inst19|Ball_Y_pos[6]~23\)) # (!\inst19|Ball_Y_pos\(7) & ((!\inst19|Ball_Y_pos[6]~23\) # (!\inst19|Ball_Y_motion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(7),
	datab => \inst19|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst19|Ball_Y_pos[6]~23\,
	combout => \inst19|Ball_Y_pos[7]~24_combout\,
	cout => \inst19|Ball_Y_pos[7]~25\);

-- Location: LCCOMB_X19_Y20_N16
\inst19|Ball_Y_pos[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_Y_pos[8]~26_combout\ = ((\inst19|Ball_Y_pos\(8) $ (\inst19|Ball_Y_motion\(0) $ (!\inst19|Ball_Y_pos[7]~25\)))) # (GND)
-- \inst19|Ball_Y_pos[8]~27\ = CARRY((\inst19|Ball_Y_pos\(8) & ((\inst19|Ball_Y_motion\(0)) # (!\inst19|Ball_Y_pos[7]~25\))) # (!\inst19|Ball_Y_pos\(8) & (\inst19|Ball_Y_motion\(0) & !\inst19|Ball_Y_pos[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(8),
	datab => \inst19|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst19|Ball_Y_pos[7]~25\,
	combout => \inst19|Ball_Y_pos[8]~26_combout\,
	cout => \inst19|Ball_Y_pos[8]~27\);

-- Location: LCCOMB_X19_Y20_N18
\inst19|Ball_Y_pos[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_Y_pos[9]~28_combout\ = \inst19|Ball_Y_pos\(9) $ (\inst19|Ball_Y_pos[8]~27\ $ (\inst19|Ball_Y_motion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Ball_Y_pos\(9),
	datad => \inst19|Ball_Y_motion\(0),
	cin => \inst19|Ball_Y_pos[8]~27\,
	combout => \inst19|Ball_Y_pos[9]~28_combout\);

-- Location: FF_X23_Y18_N21
\inst17|Ball_Y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst17|Ball_Y_motion~3_combout\,
	sclr => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Ball_Y_motion\(2));

-- Location: FF_X23_Y18_N3
\inst17|Ball_Y_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst17|Ball_Y_motion~4_combout\,
	sclr => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Ball_Y_motion\(1));

-- Location: FF_X33_Y16_N23
\inst1|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[7]~22_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(7));

-- Location: FF_X33_Y16_N13
\inst1|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[2]~12_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(2));

-- Location: FF_X33_Y16_N11
\inst1|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[1]~10_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(1));

-- Location: LCCOMB_X33_Y16_N10
\inst1|inhibit_wait_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[1]~10_combout\ = (\inst1|inhibit_wait_count\(1) & (\inst1|inhibit_wait_count\(0) $ (VCC))) # (!\inst1|inhibit_wait_count\(1) & (\inst1|inhibit_wait_count\(0) & VCC))
-- \inst1|inhibit_wait_count[1]~11\ = CARRY((\inst1|inhibit_wait_count\(1) & \inst1|inhibit_wait_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(1),
	datab => \inst1|inhibit_wait_count\(0),
	datad => VCC,
	combout => \inst1|inhibit_wait_count[1]~10_combout\,
	cout => \inst1|inhibit_wait_count[1]~11\);

-- Location: LCCOMB_X33_Y16_N12
\inst1|inhibit_wait_count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[2]~12_combout\ = (\inst1|inhibit_wait_count\(2) & (!\inst1|inhibit_wait_count[1]~11\)) # (!\inst1|inhibit_wait_count\(2) & ((\inst1|inhibit_wait_count[1]~11\) # (GND)))
-- \inst1|inhibit_wait_count[2]~13\ = CARRY((!\inst1|inhibit_wait_count[1]~11\) # (!\inst1|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(2),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[1]~11\,
	combout => \inst1|inhibit_wait_count[2]~12_combout\,
	cout => \inst1|inhibit_wait_count[2]~13\);

-- Location: LCCOMB_X33_Y16_N22
\inst1|inhibit_wait_count[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[7]~22_combout\ = (\inst1|inhibit_wait_count\(7) & (\inst1|inhibit_wait_count[6]~21\ $ (GND))) # (!\inst1|inhibit_wait_count\(7) & (!\inst1|inhibit_wait_count[6]~21\ & VCC))
-- \inst1|inhibit_wait_count[7]~23\ = CARRY((\inst1|inhibit_wait_count\(7) & !\inst1|inhibit_wait_count[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(7),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[6]~21\,
	combout => \inst1|inhibit_wait_count[7]~22_combout\,
	cout => \inst1|inhibit_wait_count[7]~23\);

-- Location: FF_X20_Y22_N27
\inst8|seconds[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[6]~31_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(6));

-- Location: FF_X20_Y22_N31
\inst8|seconds[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[8]~35_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(8));

-- Location: FF_X20_Y21_N13
\inst8|seconds[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[15]~49_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(15));

-- Location: FF_X20_Y23_N15
\inst8|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|cnt[0]~8_combout\,
	sclr => \inst8|cnt[0]~10_combout\,
	ena => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|cnt\(0));

-- Location: FF_X20_Y23_N17
\inst8|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|cnt[1]~11_combout\,
	sclr => \inst8|cnt[0]~10_combout\,
	ena => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|cnt\(1));

-- Location: FF_X20_Y23_N21
\inst8|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|cnt[3]~15_combout\,
	sclr => \inst8|cnt[0]~10_combout\,
	ena => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|cnt\(3));

-- Location: FF_X20_Y23_N19
\inst8|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|cnt[2]~13_combout\,
	sclr => \inst8|cnt[0]~10_combout\,
	ena => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|cnt\(2));

-- Location: FF_X20_Y23_N25
\inst8|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|cnt[5]~19_combout\,
	sclr => \inst8|cnt[0]~10_combout\,
	ena => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|cnt\(5));

-- Location: FF_X20_Y23_N27
\inst8|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|cnt[6]~21_combout\,
	sclr => \inst8|cnt[0]~10_combout\,
	ena => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|cnt\(6));

-- Location: FF_X20_Y23_N29
\inst8|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|cnt[7]~23_combout\,
	sclr => \inst8|cnt[0]~10_combout\,
	ena => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|cnt\(7));

-- Location: FF_X20_Y23_N23
\inst8|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|cnt[4]~17_combout\,
	sclr => \inst8|cnt[0]~10_combout\,
	ena => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|cnt\(4));

-- Location: LCCOMB_X20_Y22_N26
\inst8|seconds[6]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[6]~31_combout\ = (\inst8|seconds\(6) & (\inst8|seconds[5]~30\ $ (GND))) # (!\inst8|seconds\(6) & (!\inst8|seconds[5]~30\ & VCC))
-- \inst8|seconds[6]~32\ = CARRY((\inst8|seconds\(6) & !\inst8|seconds[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(6),
	datad => VCC,
	cin => \inst8|seconds[5]~30\,
	combout => \inst8|seconds[6]~31_combout\,
	cout => \inst8|seconds[6]~32\);

-- Location: LCCOMB_X20_Y22_N30
\inst8|seconds[8]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[8]~35_combout\ = (\inst8|seconds\(8) & (\inst8|seconds[7]~34\ $ (GND))) # (!\inst8|seconds\(8) & (!\inst8|seconds[7]~34\ & VCC))
-- \inst8|seconds[8]~36\ = CARRY((\inst8|seconds\(8) & !\inst8|seconds[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(8),
	datad => VCC,
	cin => \inst8|seconds[7]~34\,
	combout => \inst8|seconds[8]~35_combout\,
	cout => \inst8|seconds[8]~36\);

-- Location: LCCOMB_X20_Y21_N12
\inst8|seconds[15]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[15]~49_combout\ = (\inst8|seconds\(15) & (!\inst8|seconds[14]~48\)) # (!\inst8|seconds\(15) & ((\inst8|seconds[14]~48\) # (GND)))
-- \inst8|seconds[15]~50\ = CARRY((!\inst8|seconds[14]~48\) # (!\inst8|seconds\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(15),
	datad => VCC,
	cin => \inst8|seconds[14]~48\,
	combout => \inst8|seconds[15]~49_combout\,
	cout => \inst8|seconds[15]~50\);

-- Location: LCCOMB_X20_Y23_N14
\inst8|cnt[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[0]~8_combout\ = \inst8|cnt\(0) $ (VCC)
-- \inst8|cnt[0]~9\ = CARRY(\inst8|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|cnt\(0),
	datad => VCC,
	combout => \inst8|cnt[0]~8_combout\,
	cout => \inst8|cnt[0]~9\);

-- Location: LCCOMB_X20_Y23_N16
\inst8|cnt[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[1]~11_combout\ = (\inst8|cnt\(1) & (!\inst8|cnt[0]~9\)) # (!\inst8|cnt\(1) & ((\inst8|cnt[0]~9\) # (GND)))
-- \inst8|cnt[1]~12\ = CARRY((!\inst8|cnt[0]~9\) # (!\inst8|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|cnt\(1),
	datad => VCC,
	cin => \inst8|cnt[0]~9\,
	combout => \inst8|cnt[1]~11_combout\,
	cout => \inst8|cnt[1]~12\);

-- Location: LCCOMB_X20_Y23_N18
\inst8|cnt[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[2]~13_combout\ = (\inst8|cnt\(2) & (\inst8|cnt[1]~12\ $ (GND))) # (!\inst8|cnt\(2) & (!\inst8|cnt[1]~12\ & VCC))
-- \inst8|cnt[2]~14\ = CARRY((\inst8|cnt\(2) & !\inst8|cnt[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|cnt\(2),
	datad => VCC,
	cin => \inst8|cnt[1]~12\,
	combout => \inst8|cnt[2]~13_combout\,
	cout => \inst8|cnt[2]~14\);

-- Location: LCCOMB_X20_Y23_N20
\inst8|cnt[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[3]~15_combout\ = (\inst8|cnt\(3) & (!\inst8|cnt[2]~14\)) # (!\inst8|cnt\(3) & ((\inst8|cnt[2]~14\) # (GND)))
-- \inst8|cnt[3]~16\ = CARRY((!\inst8|cnt[2]~14\) # (!\inst8|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|cnt\(3),
	datad => VCC,
	cin => \inst8|cnt[2]~14\,
	combout => \inst8|cnt[3]~15_combout\,
	cout => \inst8|cnt[3]~16\);

-- Location: LCCOMB_X20_Y23_N22
\inst8|cnt[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[4]~17_combout\ = (\inst8|cnt\(4) & (\inst8|cnt[3]~16\ $ (GND))) # (!\inst8|cnt\(4) & (!\inst8|cnt[3]~16\ & VCC))
-- \inst8|cnt[4]~18\ = CARRY((\inst8|cnt\(4) & !\inst8|cnt[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|cnt\(4),
	datad => VCC,
	cin => \inst8|cnt[3]~16\,
	combout => \inst8|cnt[4]~17_combout\,
	cout => \inst8|cnt[4]~18\);

-- Location: LCCOMB_X20_Y23_N24
\inst8|cnt[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[5]~19_combout\ = (\inst8|cnt\(5) & (!\inst8|cnt[4]~18\)) # (!\inst8|cnt\(5) & ((\inst8|cnt[4]~18\) # (GND)))
-- \inst8|cnt[5]~20\ = CARRY((!\inst8|cnt[4]~18\) # (!\inst8|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|cnt\(5),
	datad => VCC,
	cin => \inst8|cnt[4]~18\,
	combout => \inst8|cnt[5]~19_combout\,
	cout => \inst8|cnt[5]~20\);

-- Location: LCCOMB_X20_Y23_N26
\inst8|cnt[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[6]~21_combout\ = (\inst8|cnt\(6) & (\inst8|cnt[5]~20\ $ (GND))) # (!\inst8|cnt\(6) & (!\inst8|cnt[5]~20\ & VCC))
-- \inst8|cnt[6]~22\ = CARRY((\inst8|cnt\(6) & !\inst8|cnt[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|cnt\(6),
	datad => VCC,
	cin => \inst8|cnt[5]~20\,
	combout => \inst8|cnt[6]~21_combout\,
	cout => \inst8|cnt[6]~22\);

-- Location: LCCOMB_X20_Y23_N28
\inst8|cnt[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[7]~23_combout\ = \inst8|cnt[6]~22\ $ (\inst8|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|cnt\(7),
	cin => \inst8|cnt[6]~22\,
	combout => \inst8|cnt[7]~23_combout\);

-- Location: FF_X19_Y22_N27
\inst17|SYNC|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|SYNC|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|SYNC|vert_sync_out~q\);

-- Location: FF_X31_Y20_N27
\inst1|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~3_combout\,
	ena => \inst1|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(1));

-- Location: FF_X22_Y17_N15
\inst19|SYNC|blue_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst19|SYNC|blue_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|SYNC|blue_out\(3));

-- Location: FF_X40_Y14_N17
\inst1|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(7));

-- Location: LCCOMB_X40_Y14_N16
\inst1|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~0_combout\ = (\inst1|filter\(2) & (\inst1|filter\(7) & \inst1|filter\(4))) # (!\inst1|filter\(2) & ((\inst1|filter\(7)) # (\inst1|filter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|filter\(2),
	datac => \inst1|filter\(7),
	datad => \inst1|filter\(4),
	combout => \inst1|MOUSE_CLK_FILTER~0_combout\);

-- Location: LCCOMB_X31_Y20_N26
\inst1|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~3_combout\ = (!\inst1|INCNT\(3) & (\inst1|INCNT\(1) $ (\inst1|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|INCNT\(3),
	datac => \inst1|INCNT\(1),
	datad => \inst1|INCNT\(0),
	combout => \inst1|INCNT~3_combout\);

-- Location: LCCOMB_X22_Y17_N26
\inst19|CHAR|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|CHAR|Mux0~0_combout\ = (\inst19|col_sel\(0) & ((\inst19|CHAR|altsyncram_component|auto_generated|q_a\(6)) # ((\inst19|col_sel\(1))))) # (!\inst19|col_sel\(0) & (((\inst19|CHAR|altsyncram_component|auto_generated|q_a\(7) & !\inst19|col_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|CHAR|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst19|CHAR|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst19|col_sel\(0),
	datad => \inst19|col_sel\(1),
	combout => \inst19|CHAR|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y17_N16
\inst19|CHAR|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|CHAR|Mux0~1_combout\ = (\inst19|CHAR|Mux0~0_combout\ & (((\inst19|CHAR|altsyncram_component|auto_generated|q_a\(4)) # (!\inst19|col_sel\(1))))) # (!\inst19|CHAR|Mux0~0_combout\ & (\inst19|CHAR|altsyncram_component|auto_generated|q_a\(5) & 
-- ((\inst19|col_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|CHAR|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst19|CHAR|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst19|CHAR|Mux0~0_combout\,
	datad => \inst19|col_sel\(1),
	combout => \inst19|CHAR|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y17_N2
\inst19|CHAR|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|CHAR|Mux0~2_combout\ = (\inst19|col_sel\(0) & (((\inst19|col_sel\(1))))) # (!\inst19|col_sel\(0) & ((\inst19|col_sel\(1) & ((\inst19|CHAR|altsyncram_component|auto_generated|q_a\(1)))) # (!\inst19|col_sel\(1) & 
-- (\inst19|CHAR|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|CHAR|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst19|CHAR|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst19|col_sel\(0),
	datad => \inst19|col_sel\(1),
	combout => \inst19|CHAR|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y17_N8
\inst19|CHAR|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|CHAR|Mux0~3_combout\ = (\inst19|col_sel\(0) & ((\inst19|CHAR|Mux0~2_combout\ & (\inst19|CHAR|altsyncram_component|auto_generated|q_a\(0))) # (!\inst19|CHAR|Mux0~2_combout\ & ((\inst19|CHAR|altsyncram_component|auto_generated|q_a\(2)))))) # 
-- (!\inst19|col_sel\(0) & (((\inst19|CHAR|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|CHAR|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst19|CHAR|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst19|col_sel\(0),
	datad => \inst19|CHAR|Mux0~2_combout\,
	combout => \inst19|CHAR|Mux0~3_combout\);

-- Location: LCCOMB_X22_Y17_N18
\inst19|SYNC|blue_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|SYNC|blue_out~2_combout\ = (!\inst19|Ball_on~combout\ & ((\inst19|col_sel\(2) & (!\inst19|CHAR|Mux0~3_combout\)) # (!\inst19|col_sel\(2) & ((!\inst19|CHAR|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|col_sel\(2),
	datab => \inst19|Ball_on~combout\,
	datac => \inst19|CHAR|Mux0~3_combout\,
	datad => \inst19|CHAR|Mux0~1_combout\,
	combout => \inst19|SYNC|blue_out~2_combout\);

-- Location: LCCOMB_X23_Y17_N24
\inst17|CHAR|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|CHAR|Mux0~0_combout\ = (\inst17|col_sel\(0) & ((\inst17|CHAR|altsyncram_component|auto_generated|q_a\(6)) # ((\inst17|col_sel\(1))))) # (!\inst17|col_sel\(0) & (((\inst17|CHAR|altsyncram_component|auto_generated|q_a\(7) & !\inst17|col_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|CHAR|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst17|CHAR|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst17|col_sel\(0),
	datad => \inst17|col_sel\(1),
	combout => \inst17|CHAR|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y17_N26
\inst17|CHAR|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|CHAR|Mux0~1_combout\ = (\inst17|col_sel\(1) & ((\inst17|CHAR|Mux0~0_combout\ & ((\inst17|CHAR|altsyncram_component|auto_generated|q_a\(4)))) # (!\inst17|CHAR|Mux0~0_combout\ & (\inst17|CHAR|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (!\inst17|col_sel\(1) & (((\inst17|CHAR|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|col_sel\(1),
	datab => \inst17|CHAR|altsyncram_component|auto_generated|q_a\(5),
	datac => \inst17|CHAR|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst17|CHAR|Mux0~0_combout\,
	combout => \inst17|CHAR|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y20_N4
\inst1|cursor_column~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~6_combout\ = (\inst1|new_cursor_column\(9)) # ((\inst1|new_cursor_column\(8) & ((\inst1|new_cursor_column\(0)) # (\inst1|new_cursor_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(0),
	datab => \inst1|new_cursor_column\(9),
	datac => \inst1|new_cursor_column\(8),
	datad => \inst1|new_cursor_column\(7),
	combout => \inst1|cursor_column~6_combout\);

-- Location: LCCOMB_X28_Y16_N6
\inst2|SYNC|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|process_0~1_combout\ = (\inst2|SYNC|h_count\(3)) # ((\inst2|SYNC|h_count\(0) & (!\inst2|SYNC|h_count\(5) & \inst2|SYNC|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|h_count\(0),
	datab => \inst2|SYNC|h_count\(5),
	datac => \inst2|SYNC|h_count\(1),
	datad => \inst2|SYNC|h_count\(3),
	combout => \inst2|SYNC|process_0~1_combout\);

-- Location: LCCOMB_X27_Y16_N12
\inst2|SYNC|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|process_0~2_combout\ = (\inst2|SYNC|h_count\(4) & ((\inst2|SYNC|h_count\(2)) # (\inst2|SYNC|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|h_count\(4),
	datab => \inst2|SYNC|h_count\(2),
	datad => \inst2|SYNC|process_0~1_combout\,
	combout => \inst2|SYNC|process_0~2_combout\);

-- Location: LCCOMB_X17_Y24_N20
\inst3|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = (((\inst3|seconds\(13)) # (!\inst3|seconds\(14))) # (!\inst3|seconds\(12))) # (!\inst3|seconds\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seconds\(15),
	datab => \inst3|seconds\(12),
	datac => \inst3|seconds\(13),
	datad => \inst3|seconds\(14),
	combout => \inst3|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y16_N30
\inst17|RGB_Display~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|RGB_Display~1_combout\ = (\inst19|Add0~4_combout\ & (((!\inst2|SYNC|pixel_column\(8)) # (!\inst2|SYNC|pixel_column\(7))))) # (!\inst19|Add0~4_combout\ & (\inst19|Add0~6_combout\ & ((!\inst2|SYNC|pixel_column\(8)) # 
-- (!\inst2|SYNC|pixel_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~4_combout\,
	datab => \inst19|Add0~6_combout\,
	datac => \inst2|SYNC|pixel_column\(7),
	datad => \inst2|SYNC|pixel_column\(8),
	combout => \inst17|RGB_Display~1_combout\);

-- Location: LCCOMB_X21_Y19_N22
\inst18|RGB_Display~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|RGB_Display~0_combout\ = (!\inst18|Add3~10_combout\ & !\inst18|LessThan3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Add3~10_combout\,
	datad => \inst18|LessThan3~16_combout\,
	combout => \inst18|RGB_Display~0_combout\);

-- Location: LCCOMB_X20_Y16_N2
\inst19|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~2_combout\ = \inst2|SYNC|pixel_row\(8) $ (((\inst2|SYNC|pixel_row\(7) & \inst19|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(8),
	datac => \inst2|SYNC|pixel_row\(7),
	datad => \inst19|Add2~0_combout\,
	combout => \inst19|Add2~2_combout\);

-- Location: LCCOMB_X20_Y16_N0
\inst19|Add2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~5_combout\ = \inst2|SYNC|pixel_row\(5) $ (((\inst2|SYNC|pixel_row\(3) & \inst2|SYNC|pixel_row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(5),
	datab => \inst2|SYNC|pixel_row\(3),
	datad => \inst2|SYNC|pixel_row\(4),
	combout => \inst19|Add2~5_combout\);

-- Location: LCCOMB_X20_Y16_N30
\inst19|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~6_combout\ = \inst2|SYNC|pixel_row\(4) $ (\inst2|SYNC|pixel_row\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(4),
	datab => \inst2|SYNC|pixel_row\(3),
	combout => \inst19|Add2~6_combout\);

-- Location: LCCOMB_X19_Y16_N12
\inst2|RGB_Display~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|RGB_Display~0_combout\ = (!\inst2|LessThan3~16_combout\ & !\inst2|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~16_combout\,
	datad => \inst2|Add3~10_combout\,
	combout => \inst2|RGB_Display~0_combout\);

-- Location: LCCOMB_X20_Y17_N30
\inst19|RGB_Display~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|RGB_Display~3_combout\ = (!\inst19|Add3~10_combout\ & !\inst19|LessThan3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add3~10_combout\,
	datad => \inst19|LessThan3~16_combout\,
	combout => \inst19|RGB_Display~3_combout\);

-- Location: LCCOMB_X22_Y16_N14
\inst19|RGB_Display~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|RGB_Display~4_combout\ = (\inst19|RGB_Display~3_combout\ & (!\inst19|LessThan2~18_combout\ & (\inst17|RGB_Display~0_combout\ & \inst17|RGB_Display~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|RGB_Display~3_combout\,
	datab => \inst19|LessThan2~18_combout\,
	datac => \inst17|RGB_Display~0_combout\,
	datad => \inst17|RGB_Display~3_combout\,
	combout => \inst19|RGB_Display~4_combout\);

-- Location: FF_X29_Y20_N17
\inst1|cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_row~5_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_row\(5));

-- Location: FF_X32_Y20_N3
\inst1|PACKET_CHAR3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR3[4]~feeder_combout\,
	ena => \inst1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR3\(4));

-- Location: FF_X29_Y20_N9
\inst1|cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_row~7_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_row\(3));

-- Location: FF_X29_Y20_N15
\inst1|cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_row~8_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_row\(2));

-- Location: FF_X32_Y20_N9
\inst1|PACKET_CHAR3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR3[1]~feeder_combout\,
	ena => \inst1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR3\(1));

-- Location: FF_X29_Y20_N3
\inst1|cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_row~10_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_row\(0));

-- Location: FF_X29_Y20_N21
\inst1|PACKET_CHAR2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[6]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(6));

-- Location: FF_X27_Y20_N3
\inst1|cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~10_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(5));

-- Location: FF_X27_Y20_N17
\inst1|cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~11_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(4));

-- Location: FF_X29_Y20_N31
\inst1|PACKET_CHAR2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[3]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(3));

-- Location: FF_X27_Y20_N13
\inst1|cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~13_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(2));

-- Location: FF_X29_Y20_N7
\inst1|PACKET_CHAR2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[1]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(1));

-- Location: FF_X29_Y20_N5
\inst1|PACKET_CHAR2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[0]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(0));

-- Location: LCCOMB_X27_Y16_N24
\inst2|SYNC|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|process_0~10_combout\ = (\inst2|SYNC|h_count\(4) & \inst2|SYNC|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|h_count\(4),
	datac => \inst2|SYNC|h_count\(5),
	combout => \inst2|SYNC|process_0~10_combout\);

-- Location: FF_X19_Y20_N23
\inst19|Ball_Y_motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst19|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst19|Ball_Y_motion~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Ball_Y_motion\(0));

-- Location: LCCOMB_X29_Y20_N16
\inst1|cursor_row~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_row~5_combout\ = ((!\inst1|RECV_UART~2_combout\ & ((\inst1|new_cursor_row\(5)) # (!\inst1|cursor_row~0_combout\)))) # (!\inst1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|new_cursor_row\(5),
	datac => \inst1|cursor_row~0_combout\,
	datad => \inst1|RECV_UART~2_combout\,
	combout => \inst1|cursor_row~5_combout\);

-- Location: LCCOMB_X29_Y20_N8
\inst1|cursor_row~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_row~7_combout\ = (\inst1|Equal3~0_combout\ & (!\inst1|RECV_UART~2_combout\ & (\inst1|cursor_row~0_combout\ & \inst1|new_cursor_row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|RECV_UART~2_combout\,
	datac => \inst1|cursor_row~0_combout\,
	datad => \inst1|new_cursor_row\(3),
	combout => \inst1|cursor_row~7_combout\);

-- Location: LCCOMB_X29_Y20_N14
\inst1|cursor_row~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_row~8_combout\ = (\inst1|Equal3~0_combout\ & (\inst1|new_cursor_row\(2) & (\inst1|cursor_row~0_combout\ & !\inst1|RECV_UART~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|new_cursor_row\(2),
	datac => \inst1|cursor_row~0_combout\,
	datad => \inst1|RECV_UART~2_combout\,
	combout => \inst1|cursor_row~8_combout\);

-- Location: LCCOMB_X29_Y20_N2
\inst1|cursor_row~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_row~10_combout\ = (\inst1|Equal3~0_combout\ & (\inst1|new_cursor_row\(0) & (\inst1|cursor_row~0_combout\ & !\inst1|RECV_UART~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|new_cursor_row\(0),
	datac => \inst1|cursor_row~0_combout\,
	datad => \inst1|RECV_UART~2_combout\,
	combout => \inst1|cursor_row~10_combout\);

-- Location: LCCOMB_X27_Y20_N2
\inst1|cursor_column~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~10_combout\ = (\inst1|new_cursor_column\(5) & \inst1|cursor_column[9]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(5),
	datac => \inst1|cursor_column[9]~20_combout\,
	combout => \inst1|cursor_column~10_combout\);

-- Location: LCCOMB_X27_Y20_N16
\inst1|cursor_column~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~11_combout\ = (\inst1|new_cursor_column\(4) & \inst1|cursor_column[9]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(4),
	datac => \inst1|cursor_column[9]~20_combout\,
	combout => \inst1|cursor_column~11_combout\);

-- Location: LCCOMB_X27_Y20_N12
\inst1|cursor_column~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~13_combout\ = (\inst1|new_cursor_column\(2) & \inst1|cursor_column[9]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(2),
	datac => \inst1|cursor_column[9]~20_combout\,
	combout => \inst1|cursor_column~13_combout\);

-- Location: FF_X33_Y20_N13
\inst1|mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.WAIT_CMD_ACK~q\);

-- Location: LCCOMB_X20_Y19_N8
\inst18|LessThan19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan19~0_combout\ = (\inst18|Ball_Y_pos\(3) & ((\inst18|Ball_Y_pos\(0)) # ((\inst18|Ball_Y_pos\(2)) # (\inst18|Ball_Y_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(0),
	datab => \inst18|Ball_Y_pos\(2),
	datac => \inst18|Ball_Y_pos\(1),
	datad => \inst18|Ball_Y_pos\(3),
	combout => \inst18|LessThan19~0_combout\);

-- Location: LCCOMB_X19_Y19_N24
\inst18|LessThan19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan19~1_combout\ = (\inst18|Ball_Y_pos\(5)) # ((\inst18|Ball_Y_pos\(4)) # ((\inst18|Ball_Y_pos\(6)) # (\inst18|Ball_Y_pos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(5),
	datab => \inst18|Ball_Y_pos\(4),
	datac => \inst18|Ball_Y_pos\(6),
	datad => \inst18|Ball_Y_pos\(8),
	combout => \inst18|LessThan19~1_combout\);

-- Location: LCCOMB_X19_Y19_N26
\inst18|LessThan19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan19~2_combout\ = (\inst18|LessThan19~0_combout\) # ((\inst18|Ball_Y_pos\(7)) # (\inst18|LessThan19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LessThan19~0_combout\,
	datac => \inst18|Ball_Y_pos\(7),
	datad => \inst18|LessThan19~1_combout\,
	combout => \inst18|LessThan19~2_combout\);

-- Location: LCCOMB_X19_Y19_N4
\inst18|LessThan17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan17~0_combout\ = ((!\inst18|Ball_Y_pos\(5) & ((!\inst18|Ball_Y_pos\(3)) # (!\inst18|Ball_Y_pos\(4))))) # (!\inst18|Ball_Y_pos\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(4),
	datab => \inst18|Ball_Y_pos\(3),
	datac => \inst18|Ball_Y_pos\(5),
	datad => \inst18|Ball_Y_pos\(8),
	combout => \inst18|LessThan17~0_combout\);

-- Location: LCCOMB_X19_Y19_N22
\inst18|LessThan17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan17~1_combout\ = (!\inst18|Ball_Y_pos\(9) & (((\inst18|LessThan17~0_combout\) # (!\inst18|Ball_Y_pos\(7))) # (!\inst18|Ball_Y_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(6),
	datab => \inst18|Ball_Y_pos\(9),
	datac => \inst18|Ball_Y_pos\(7),
	datad => \inst18|LessThan17~0_combout\,
	combout => \inst18|LessThan17~1_combout\);

-- Location: LCCOMB_X19_Y19_N0
\inst18|Ball_Y_motion~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Ball_Y_motion~3_combout\ = (\inst18|LessThan17~1_combout\ & (\inst18|LessThan19~2_combout\)) # (!\inst18|LessThan17~1_combout\ & ((\inst1|left_button~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LessThan19~2_combout\,
	datab => \inst18|LessThan17~1_combout\,
	datad => \inst1|left_button~q\,
	combout => \inst18|Ball_Y_motion~3_combout\);

-- Location: LCCOMB_X20_Y21_N26
\inst8|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal0~2_combout\ = (\inst8|seconds\(8)) # ((\inst8|seconds\(10)) # ((\inst8|seconds\(11)) # (\inst8|seconds\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(8),
	datab => \inst8|seconds\(10),
	datac => \inst8|seconds\(11),
	datad => \inst8|seconds\(9),
	combout => \inst8|Equal0~2_combout\);

-- Location: LCCOMB_X20_Y23_N12
\inst8|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal1~0_combout\ = (\inst8|cnt\(1)) # ((\inst8|cnt\(3)) # ((\inst8|cnt\(0)) # (!\inst8|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|cnt\(1),
	datab => \inst8|cnt\(3),
	datac => \inst8|cnt\(0),
	datad => \inst8|cnt\(2),
	combout => \inst8|Equal1~0_combout\);

-- Location: LCCOMB_X20_Y23_N10
\inst8|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal1~1_combout\ = (\inst8|cnt\(6)) # ((\inst8|cnt\(5)) # ((\inst8|cnt\(7)) # (!\inst8|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|cnt\(6),
	datab => \inst8|cnt\(5),
	datac => \inst8|cnt\(4),
	datad => \inst8|cnt\(7),
	combout => \inst8|Equal1~1_combout\);

-- Location: LCCOMB_X20_Y21_N20
\inst8|output~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|output~0_combout\ = (!\inst8|Equal1~0_combout\ & (\inst8|seconds\(17) & (\inst8|seconds\(16) & !\inst8|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal1~0_combout\,
	datab => \inst8|seconds\(17),
	datac => \inst8|seconds\(16),
	datad => \inst8|Equal1~1_combout\,
	combout => \inst8|output~0_combout\);

-- Location: LCCOMB_X20_Y18_N10
\inst2|LessThan17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan17~0_combout\ = ((!\inst2|Ball_Y_pos\(5) & ((!\inst2|Ball_Y_pos\(4)) # (!\inst2|Ball_Y_pos\(3))))) # (!\inst2|Ball_Y_pos\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(3),
	datab => \inst2|Ball_Y_pos\(4),
	datac => \inst2|Ball_Y_pos\(5),
	datad => \inst2|Ball_Y_pos\(8),
	combout => \inst2|LessThan17~0_combout\);

-- Location: LCCOMB_X19_Y18_N20
\inst2|LessThan17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan17~1_combout\ = (!\inst2|Ball_Y_pos\(9) & (((\inst2|LessThan17~0_combout\) # (!\inst2|Ball_Y_pos\(6))) # (!\inst2|Ball_Y_pos\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(9),
	datab => \inst2|Ball_Y_pos\(7),
	datac => \inst2|LessThan17~0_combout\,
	datad => \inst2|Ball_Y_pos\(6),
	combout => \inst2|LessThan17~1_combout\);

-- Location: LCCOMB_X19_Y18_N26
\inst2|Ball_Y_motion~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Ball_Y_motion~3_combout\ = (\inst2|LessThan17~1_combout\ & (\inst2|LessThan19~2_combout\)) # (!\inst2|LessThan17~1_combout\ & ((\inst1|left_button~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan17~1_combout\,
	datac => \inst2|LessThan19~2_combout\,
	datad => \inst1|left_button~q\,
	combout => \inst2|Ball_Y_motion~3_combout\);

-- Location: LCCOMB_X19_Y20_N30
\inst19|LessThan19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan19~0_combout\ = (\inst19|Ball_Y_pos\(3) & ((\inst19|Ball_Y_pos\(2)) # ((\inst19|Ball_Y_pos\(0)) # (\inst19|Ball_Y_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(2),
	datab => \inst19|Ball_Y_pos\(0),
	datac => \inst19|Ball_Y_pos\(1),
	datad => \inst19|Ball_Y_pos\(3),
	combout => \inst19|LessThan19~0_combout\);

-- Location: LCCOMB_X19_Y20_N26
\inst19|LessThan19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan19~1_combout\ = (\inst19|Ball_Y_pos\(4)) # ((\inst19|Ball_Y_pos\(6)) # ((\inst19|Ball_Y_pos\(8)) # (\inst19|Ball_Y_pos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(4),
	datab => \inst19|Ball_Y_pos\(6),
	datac => \inst19|Ball_Y_pos\(8),
	datad => \inst19|Ball_Y_pos\(5),
	combout => \inst19|LessThan19~1_combout\);

-- Location: LCCOMB_X19_Y20_N20
\inst19|LessThan19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan19~2_combout\ = (\inst19|LessThan19~0_combout\) # ((\inst19|Ball_Y_pos\(7)) # (\inst19|LessThan19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan19~0_combout\,
	datab => \inst19|Ball_Y_pos\(7),
	datac => \inst19|LessThan19~1_combout\,
	combout => \inst19|LessThan19~2_combout\);

-- Location: LCCOMB_X19_Y20_N22
\inst19|Ball_Y_motion~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_Y_motion~2_combout\ = (\inst8|output~q\ & (\inst1|left_button~q\ & ((\inst19|Ball_Y_pos\(9)) # (\inst19|LessThan19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(9),
	datab => \inst8|output~q\,
	datac => \inst19|LessThan19~2_combout\,
	datad => \inst1|left_button~q\,
	combout => \inst19|Ball_Y_motion~2_combout\);

-- Location: LCCOMB_X19_Y20_N28
\inst19|LessThan17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan17~0_combout\ = ((!\inst19|Ball_Y_pos\(5) & ((!\inst19|Ball_Y_pos\(4)) # (!\inst19|Ball_Y_pos\(3))))) # (!\inst19|Ball_Y_pos\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(3),
	datab => \inst19|Ball_Y_pos\(4),
	datac => \inst19|Ball_Y_pos\(8),
	datad => \inst19|Ball_Y_pos\(5),
	combout => \inst19|LessThan17~0_combout\);

-- Location: LCCOMB_X19_Y20_N24
\inst19|LessThan17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan17~1_combout\ = (!\inst19|Ball_Y_pos\(9) & (((\inst19|LessThan17~0_combout\) # (!\inst19|Ball_Y_pos\(6))) # (!\inst19|Ball_Y_pos\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_Y_pos\(7),
	datab => \inst19|Ball_Y_pos\(6),
	datac => \inst19|Ball_Y_pos\(9),
	datad => \inst19|LessThan17~0_combout\,
	combout => \inst19|LessThan17~1_combout\);

-- Location: LCCOMB_X20_Y20_N20
\inst19|Ball_Y_motion~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_Y_motion~3_combout\ = (\inst19|LessThan17~1_combout\ & (\inst19|LessThan19~2_combout\)) # (!\inst19|LessThan17~1_combout\ & ((\inst1|left_button~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan19~2_combout\,
	datab => \inst19|LessThan17~1_combout\,
	datad => \inst1|left_button~q\,
	combout => \inst19|Ball_Y_motion~3_combout\);

-- Location: LCCOMB_X21_Y18_N30
\inst17|LessThan17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan17~0_combout\ = ((!\inst17|Ball_Y_pos\(5) & ((!\inst17|Ball_Y_pos\(3)) # (!\inst17|Ball_Y_pos\(4))))) # (!\inst17|Ball_Y_pos\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(5),
	datab => \inst17|Ball_Y_pos\(8),
	datac => \inst17|Ball_Y_pos\(4),
	datad => \inst17|Ball_Y_pos\(3),
	combout => \inst17|LessThan17~0_combout\);

-- Location: LCCOMB_X21_Y18_N20
\inst17|LessThan17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan17~1_combout\ = (!\inst17|Ball_Y_pos\(9) & (((\inst17|LessThan17~0_combout\) # (!\inst17|Ball_Y_pos\(7))) # (!\inst17|Ball_Y_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(6),
	datab => \inst17|Ball_Y_pos\(9),
	datac => \inst17|LessThan17~0_combout\,
	datad => \inst17|Ball_Y_pos\(7),
	combout => \inst17|LessThan17~1_combout\);

-- Location: LCCOMB_X23_Y18_N20
\inst17|Ball_Y_motion~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Ball_Y_motion~3_combout\ = (\inst17|LessThan17~1_combout\ & ((\inst17|LessThan19~2_combout\))) # (!\inst17|LessThan17~1_combout\ & (\inst1|left_button~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LessThan17~1_combout\,
	datab => \inst1|left_button~q\,
	datac => \inst17|LessThan19~2_combout\,
	combout => \inst17|Ball_Y_motion~3_combout\);

-- Location: LCCOMB_X33_Y20_N12
\inst1|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector4~0_combout\ = (\inst1|output_ready~q\ & ((\inst1|mouse_state.WAIT_OUTPUT_READY~q\) # ((\inst1|mouse_state.WAIT_CMD_ACK~q\ & !\inst1|iready_set~q\)))) # (!\inst1|output_ready~q\ & (((\inst1|mouse_state.WAIT_CMD_ACK~q\ & 
-- !\inst1|iready_set~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output_ready~q\,
	datab => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst1|mouse_state.WAIT_CMD_ACK~q\,
	datad => \inst1|iready_set~q\,
	combout => \inst1|Selector4~0_combout\);

-- Location: LCCOMB_X20_Y23_N4
\inst8|cnt[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[0]~10_combout\ = ((!\inst8|Equal1~1_combout\ & !\inst8|Equal1~0_combout\)) # (!\bt0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal1~1_combout\,
	datab => \bt0~input_o\,
	datad => \inst8|Equal1~0_combout\,
	combout => \inst8|cnt[0]~10_combout\);

-- Location: LCCOMB_X22_Y17_N14
\inst19|SYNC|blue_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|SYNC|blue_out~3_combout\ = (\inst2|SYNC|video_on_h~q\ & (\inst2|SYNC|video_on_v~q\ & \inst19|SYNC|blue_out~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|video_on_h~q\,
	datac => \inst2|SYNC|video_on_v~q\,
	datad => \inst19|SYNC|blue_out~2_combout\,
	combout => \inst19|SYNC|blue_out~3_combout\);

-- Location: LCCOMB_X23_Y16_N10
\inst19|char_sel~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|char_sel~8_combout\ = (!\inst19|LessThan15~0_combout\ & (!\inst2|SYNC|pixel_row\(8) & (!\inst19|LessThan15~1_combout\ & !\inst19|Ball_on~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan15~0_combout\,
	datab => \inst2|SYNC|pixel_row\(8),
	datac => \inst19|LessThan15~1_combout\,
	datad => \inst19|Ball_on~0_combout\,
	combout => \inst19|char_sel~8_combout\);

-- Location: LCCOMB_X19_Y19_N2
\inst18|Ball_Y_motion~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Ball_Y_motion~4_combout\ = (!\inst18|Ball_Y_pos\(7) & (\inst18|LessThan17~1_combout\ & (!\inst18|LessThan19~1_combout\ & !\inst18|LessThan19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(7),
	datab => \inst18|LessThan17~1_combout\,
	datac => \inst18|LessThan19~1_combout\,
	datad => \inst18|LessThan19~0_combout\,
	combout => \inst18|Ball_Y_motion~4_combout\);

-- Location: LCCOMB_X20_Y20_N30
\inst19|Ball_Y_motion~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_Y_motion~4_combout\ = (!\inst19|LessThan19~1_combout\ & (\inst19|LessThan17~1_combout\ & (!\inst19|Ball_Y_pos\(7) & !\inst19|LessThan19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan19~1_combout\,
	datab => \inst19|LessThan17~1_combout\,
	datac => \inst19|Ball_Y_pos\(7),
	datad => \inst19|LessThan19~0_combout\,
	combout => \inst19|Ball_Y_motion~4_combout\);

-- Location: LCCOMB_X23_Y18_N2
\inst17|Ball_Y_motion~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Ball_Y_motion~4_combout\ = (\inst17|LessThan17~1_combout\ & (!\inst17|Ball_Y_pos\(7) & (!\inst17|LessThan19~1_combout\ & !\inst17|LessThan19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LessThan17~1_combout\,
	datab => \inst17|Ball_Y_pos\(7),
	datac => \inst17|LessThan19~1_combout\,
	datad => \inst17|LessThan19~0_combout\,
	combout => \inst17|Ball_Y_motion~4_combout\);

-- Location: LCCOMB_X28_Y20_N2
\inst1|cursor_column[9]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column[9]~19_combout\ = ((!\inst1|new_cursor_column\(0) & (\inst1|RECV_UART~4_combout\ & \inst1|RECV_UART~5_combout\))) # (!\inst1|new_cursor_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(0),
	datab => \inst1|new_cursor_column\(7),
	datac => \inst1|RECV_UART~4_combout\,
	datad => \inst1|RECV_UART~5_combout\,
	combout => \inst1|cursor_column[9]~19_combout\);

-- Location: LCCOMB_X22_Y19_N22
\inst18|col_sel[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|col_sel\(2) = (GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & (\inst18|col_sel\(2))) # (!GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & ((\inst19|col_sel~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|col_sel\(2),
	datac => \inst19|col_sel~0_combout\,
	datad => \inst18|RGB_Display~1clkctrl_outclk\,
	combout => \inst18|col_sel\(2));

-- Location: LCCOMB_X21_Y19_N24
\inst2|col_sel[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|col_sel\(2) = (GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & ((\inst2|col_sel\(2)))) # (!GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & (\inst19|col_sel~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|col_sel~0_combout\,
	datab => \inst2|col_sel\(2),
	datad => \inst2|RGB_Display~1clkctrl_outclk\,
	combout => \inst2|col_sel\(2));

-- Location: LCCOMB_X21_Y19_N30
\inst19|col_sel[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|col_sel\(2) = (GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & (\inst19|col_sel\(2))) # (!GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & ((\inst19|col_sel~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|col_sel\(2),
	datab => \inst19|col_sel~0_combout\,
	datac => \inst19|RGB_Display~4clkctrl_outclk\,
	combout => \inst19|col_sel\(2));

-- Location: LCCOMB_X22_Y17_N20
\inst19|col_sel[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|col_sel\(1) = (GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & ((\inst19|col_sel\(1)))) # (!GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & (\inst19|col_sel~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|col_sel~1_combout\,
	datac => \inst19|col_sel\(1),
	datad => \inst19|RGB_Display~4clkctrl_outclk\,
	combout => \inst19|col_sel\(1));

-- Location: LCCOMB_X22_Y17_N30
\inst19|col_sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|col_sel\(0) = (GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & (\inst19|col_sel\(0))) # (!GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & ((\inst19|col_sel~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|col_sel\(0),
	datac => \inst19|col_sel~2_combout\,
	datad => \inst19|RGB_Display~4clkctrl_outclk\,
	combout => \inst19|col_sel\(0));

-- Location: LCCOMB_X22_Y16_N16
\inst19|Ball_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_on~combout\ = (\inst19|RGB_Display~4_combout\) # ((\inst19|Ball_on~1_combout\ & \inst19|Ball_on~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_on~1_combout\,
	datac => \inst19|RGB_Display~4_combout\,
	datad => \inst19|Ball_on~combout\,
	combout => \inst19|Ball_on~combout\);

-- Location: LCCOMB_X24_Y17_N26
\inst19|row_sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|row_sel\(0) = (GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & (\inst19|row_sel\(0))) # (!GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & ((\inst19|row_sel~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|row_sel\(0),
	datac => \inst19|row_sel~0_combout\,
	datad => \inst19|RGB_Display~4clkctrl_outclk\,
	combout => \inst19|row_sel\(0));

-- Location: LCCOMB_X24_Y16_N8
\inst19|row_sel[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|row_sel\(1) = (GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & (\inst19|row_sel\(1))) # (!GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & ((\inst19|row_sel~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|row_sel\(1),
	datab => \inst19|row_sel~1_combout\,
	datad => \inst19|RGB_Display~4clkctrl_outclk\,
	combout => \inst19|row_sel\(1));

-- Location: LCCOMB_X24_Y17_N0
\inst19|row_sel[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|row_sel\(2) = (GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & (\inst19|row_sel\(2))) # (!GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & ((\inst19|row_sel~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|row_sel\(2),
	datac => \inst19|row_sel~2_combout\,
	datad => \inst19|RGB_Display~4clkctrl_outclk\,
	combout => \inst19|row_sel\(2));

-- Location: LCCOMB_X24_Y17_N30
\inst19|char_sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|char_sel\(0) = (GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & (\inst19|char_sel\(0))) # (!GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & ((\inst19|char_sel~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|char_sel\(0),
	datac => \inst19|RGB_Display~4clkctrl_outclk\,
	datad => \inst19|char_sel~2_combout\,
	combout => \inst19|char_sel\(0));

-- Location: LCCOMB_X22_Y16_N30
\inst19|char_sel[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|char_sel\(1) = (GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & ((\inst19|char_sel\(1)))) # (!GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & (\inst19|char_sel~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|char_sel~8_combout\,
	datac => \inst19|char_sel\(1),
	datad => \inst19|RGB_Display~4clkctrl_outclk\,
	combout => \inst19|char_sel\(1));

-- Location: LCCOMB_X24_Y17_N24
\inst19|char_sel[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|char_sel\(2) = (GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & (\inst19|char_sel\(2))) # (!GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & ((\inst19|char_sel~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|char_sel\(2),
	datac => \inst19|RGB_Display~4clkctrl_outclk\,
	datad => \inst19|char_sel~5_combout\,
	combout => \inst19|char_sel\(2));

-- Location: LCCOMB_X24_Y17_N22
\inst19|char_sel[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|char_sel\(3) = (GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & (\inst19|char_sel\(3))) # (!GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & ((!\inst19|char_sel~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|char_sel\(3),
	datac => \inst19|char_sel~6_combout\,
	datad => \inst19|RGB_Display~4clkctrl_outclk\,
	combout => \inst19|char_sel\(3));

-- Location: LCCOMB_X26_Y16_N26
\inst19|char_sel[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|char_sel\(4) = (GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & ((\inst19|char_sel\(4)))) # (!GLOBAL(\inst19|RGB_Display~4clkctrl_outclk\) & (!\inst19|char_sel~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|char_sel~7_combout\,
	datac => \inst19|char_sel\(4),
	datad => \inst19|RGB_Display~4clkctrl_outclk\,
	combout => \inst19|char_sel\(4));

-- Location: IOIBUF_X0_Y23_N15
\bt1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt1,
	o => \bt1~input_o\);

-- Location: CLKCTRL_G19
\inst19|RGB_Display~4clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst19|RGB_Display~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst19|RGB_Display~4clkctrl_outclk\);

-- Location: CLKCTRL_G11
\inst17|SYNC|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst17|SYNC|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst17|SYNC|vert_sync_out~clkctrl_outclk\);

-- Location: CLKCTRL_G13
\inst18|SYNC|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst18|SYNC|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst18|SYNC|vert_sync_out~clkctrl_outclk\);

-- Location: CLKCTRL_G10
\inst2|SYNC|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|SYNC|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|SYNC|vert_sync_out~clkctrl_outclk\);

-- Location: CLKCTRL_G14
\inst19|SYNC|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst19|SYNC|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst19|SYNC|vert_sync_out~clkctrl_outclk\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y22_N26
\inst17|SYNC|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|SYNC|vert_sync_out~feeder_combout\ = \inst2|SYNC|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SYNC|vert_sync~q\,
	combout => \inst17|SYNC|vert_sync_out~feeder_combout\);

-- Location: LCCOMB_X29_Y20_N4
\inst1|PACKET_CHAR2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[0]~feeder_combout\ = \inst1|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(0),
	combout => \inst1|PACKET_CHAR2[0]~feeder_combout\);

-- Location: LCCOMB_X29_Y20_N6
\inst1|PACKET_CHAR2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[1]~feeder_combout\ = \inst1|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTIN\(1),
	combout => \inst1|PACKET_CHAR2[1]~feeder_combout\);

-- Location: LCCOMB_X32_Y20_N8
\inst1|PACKET_CHAR3[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR3[1]~feeder_combout\ = \inst1|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(1),
	combout => \inst1|PACKET_CHAR3[1]~feeder_combout\);

-- Location: LCCOMB_X29_Y20_N30
\inst1|PACKET_CHAR2[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[3]~feeder_combout\ = \inst1|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(3),
	combout => \inst1|PACKET_CHAR2[3]~feeder_combout\);

-- Location: LCCOMB_X29_Y20_N20
\inst1|PACKET_CHAR2[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[6]~feeder_combout\ = \inst1|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(6),
	combout => \inst1|PACKET_CHAR2[6]~feeder_combout\);

-- Location: LCCOMB_X32_Y20_N2
\inst1|PACKET_CHAR3[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR3[4]~feeder_combout\ = \inst1|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(4),
	combout => \inst1|PACKET_CHAR3[4]~feeder_combout\);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|horiz~q\,
	devoe => ww_devoe,
	o => ww_horiz_sync_out);

-- Location: IOOBUF_X41_Y18_N23
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|vert~q\,
	devoe => ww_devoe,
	o => ww_vert_sync_out);

-- Location: IOOBUF_X23_Y29_N9
\seg0_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|left_button~q\,
	devoe => ww_devoe,
	o => ww_seg0_dec);

-- Location: IOOBUF_X26_Y29_N30
\seg1_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|right_button~q\,
	devoe => ww_devoe,
	o => ww_seg1_dec);

-- Location: IOOBUF_X41_Y21_N9
\blue_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|blue\(3),
	devoe => ww_devoe,
	o => ww_blue_out(3));

-- Location: IOOBUF_X41_Y19_N2
\blue_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_blue_out(2));

-- Location: IOOBUF_X41_Y19_N9
\blue_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_blue_out(1));

-- Location: IOOBUF_X41_Y19_N16
\blue_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_blue_out(0));

-- Location: IOOBUF_X41_Y20_N23
\green_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|green\(3),
	devoe => ww_devoe,
	o => ww_green_out(3));

-- Location: IOOBUF_X41_Y21_N16
\green_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_green_out(2));

-- Location: IOOBUF_X41_Y24_N23
\green_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_green_out(1));

-- Location: IOOBUF_X41_Y20_N2
\green_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_green_out(0));

-- Location: IOOBUF_X41_Y21_N23
\red_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|red\(3),
	devoe => ww_devoe,
	o => ww_red_out(3));

-- Location: IOOBUF_X41_Y22_N2
\red_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|red\(2),
	devoe => ww_devoe,
	o => ww_red_out(2));

-- Location: IOOBUF_X41_Y25_N2
\red_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|red\(1),
	devoe => ww_devoe,
	o => ww_red_out(1));

-- Location: IOOBUF_X41_Y23_N23
\red_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|red\(0),
	devoe => ww_devoe,
	o => ww_red_out(0));

-- Location: IOOBUF_X26_Y29_N16
\seg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ledsegment\(6),
	devoe => ww_devoe,
	o => ww_seg0(6));

-- Location: IOOBUF_X28_Y29_N23
\seg0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ledsegment\(5),
	devoe => ww_devoe,
	o => ww_seg0(5));

-- Location: IOOBUF_X26_Y29_N9
\seg0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ledsegment\(4),
	devoe => ww_devoe,
	o => ww_seg0(4));

-- Location: IOOBUF_X28_Y29_N30
\seg0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ledsegment\(3),
	devoe => ww_devoe,
	o => ww_seg0(3));

-- Location: IOOBUF_X26_Y29_N2
\seg0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ledsegment\(2),
	devoe => ww_devoe,
	o => ww_seg0(2));

-- Location: IOOBUF_X21_Y29_N30
\seg0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ledsegment\(1),
	devoe => ww_devoe,
	o => ww_seg0(1));

-- Location: IOOBUF_X21_Y29_N23
\seg0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ledsegment\(0),
	devoe => ww_devoe,
	o => ww_seg0(0));

-- Location: IOOBUF_X26_Y29_N23
\seg1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ledsegment\(6),
	devoe => ww_devoe,
	o => ww_seg1(6));

-- Location: IOOBUF_X28_Y29_N16
\seg1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ledsegment\(5),
	devoe => ww_devoe,
	o => ww_seg1(5));

-- Location: IOOBUF_X23_Y29_N30
\seg1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ledsegment\(4),
	devoe => ww_devoe,
	o => ww_seg1(4));

-- Location: IOOBUF_X23_Y29_N23
\seg1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ledsegment\(3),
	devoe => ww_devoe,
	o => ww_seg1(3));

-- Location: IOOBUF_X23_Y29_N2
\seg1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ledsegment\(2),
	devoe => ww_devoe,
	o => ww_seg1(2));

-- Location: IOOBUF_X21_Y29_N9
\seg1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ledsegment\(1),
	devoe => ww_devoe,
	o => ww_seg1(1));

-- Location: IOOBUF_X21_Y29_N2
\seg1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ledsegment\(0),
	devoe => ww_devoe,
	o => ww_seg1(0));

-- Location: IOOBUF_X41_Y12_N23
\mouse_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MOUSE_DATA_BUF~q\,
	oe => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => mouse_data);

-- Location: IOOBUF_X41_Y11_N2
\mouse_clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|mouse_state.INHIBIT_TRANS~q\,
	oe => \inst1|WideOr4~combout\,
	devoe => ww_devoe,
	o => mouse_clk);

-- Location: IOIBUF_X41_Y11_N1
\mouse_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_clk,
	o => \mouse_clk~input_o\);

-- Location: LCCOMB_X40_Y14_N14
\inst1|filter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[0]~feeder_combout\ = \mouse_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_clk~input_o\,
	combout => \inst1|filter[0]~feeder_combout\);

-- Location: FF_X40_Y14_N15
\inst1|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|filter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(0));

-- Location: FF_X40_Y14_N31
\inst1|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|filter\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(1));

-- Location: LCCOMB_X40_Y14_N26
\inst1|filter[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[2]~feeder_combout\ = \inst1|filter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(1),
	combout => \inst1|filter[2]~feeder_combout\);

-- Location: FF_X40_Y14_N27
\inst1|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|filter[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(2));

-- Location: LCCOMB_X40_Y14_N22
\inst1|filter[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[3]~feeder_combout\ = \inst1|filter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(2),
	combout => \inst1|filter[3]~feeder_combout\);

-- Location: FF_X40_Y14_N23
\inst1|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|filter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(3));

-- Location: LCCOMB_X40_Y14_N18
\inst1|filter[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[4]~feeder_combout\ = \inst1|filter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(3),
	combout => \inst1|filter[4]~feeder_combout\);

-- Location: FF_X40_Y14_N19
\inst1|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|filter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(4));

-- Location: LCCOMB_X40_Y14_N20
\inst1|filter[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[5]~feeder_combout\ = \inst1|filter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(4),
	combout => \inst1|filter[5]~feeder_combout\);

-- Location: FF_X40_Y14_N21
\inst1|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|filter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(5));

-- Location: LCCOMB_X40_Y14_N8
\inst1|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~1_combout\ = (\inst1|filter\(2) & ((\inst1|MOUSE_CLK_FILTER~q\) # ((\inst1|filter\(3) & \inst1|filter\(5))))) # (!\inst1|filter\(2) & (\inst1|MOUSE_CLK_FILTER~q\ & ((\inst1|filter\(3)) # (\inst1|filter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|filter\(2),
	datab => \inst1|filter\(3),
	datac => \inst1|filter\(5),
	datad => \inst1|MOUSE_CLK_FILTER~q\,
	combout => \inst1|MOUSE_CLK_FILTER~1_combout\);

-- Location: LCCOMB_X40_Y14_N24
\inst1|filter[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[6]~feeder_combout\ = \inst1|filter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(5),
	combout => \inst1|filter[6]~feeder_combout\);

-- Location: FF_X40_Y14_N25
\inst1|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|filter[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(6));

-- Location: LCCOMB_X40_Y14_N28
\inst1|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~2_combout\ = (\inst1|filter\(1) & ((\inst1|MOUSE_CLK_FILTER~q\) # ((\inst1|filter\(0) & \inst1|filter\(6))))) # (!\inst1|filter\(1) & (\inst1|MOUSE_CLK_FILTER~q\ & ((\inst1|filter\(0)) # (\inst1|filter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|filter\(1),
	datab => \inst1|filter\(0),
	datac => \inst1|filter\(6),
	datad => \inst1|MOUSE_CLK_FILTER~q\,
	combout => \inst1|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X40_Y14_N10
\inst1|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~3_combout\ = (\inst1|MOUSE_CLK_FILTER~0_combout\ & ((\inst1|MOUSE_CLK_FILTER~q\) # ((\inst1|MOUSE_CLK_FILTER~1_combout\ & \inst1|MOUSE_CLK_FILTER~2_combout\)))) # (!\inst1|MOUSE_CLK_FILTER~0_combout\ & (\inst1|MOUSE_CLK_FILTER~q\ & 
-- ((\inst1|MOUSE_CLK_FILTER~1_combout\) # (\inst1|MOUSE_CLK_FILTER~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|MOUSE_CLK_FILTER~0_combout\,
	datab => \inst1|MOUSE_CLK_FILTER~1_combout\,
	datac => \inst1|MOUSE_CLK_FILTER~q\,
	datad => \inst1|MOUSE_CLK_FILTER~2_combout\,
	combout => \inst1|MOUSE_CLK_FILTER~3_combout\);

-- Location: FF_X40_Y14_N11
\inst1|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|MOUSE_CLK_FILTER~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G7
\inst1|MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y16_N28
\inst1|SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|SHIFTOUT[9]~feeder_combout\);

-- Location: IOIBUF_X41_Y12_N22
\mouse_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_data,
	o => \mouse_data~input_o\);

-- Location: LCCOMB_X31_Y20_N14
\inst1|INCNT~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~5_combout\ = (\inst1|INCNT\(1) & (\inst1|INCNT\(0) & (!\inst1|INCNT\(3) & \inst1|INCNT\(2)))) # (!\inst1|INCNT\(1) & (!\inst1|INCNT\(0) & (\inst1|INCNT\(3) & !\inst1|INCNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(1),
	datab => \inst1|INCNT\(0),
	datac => \inst1|INCNT\(3),
	datad => \inst1|INCNT\(2),
	combout => \inst1|INCNT~5_combout\);

-- Location: LCCOMB_X31_Y20_N0
\inst1|INCNT[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT[3]~2_combout\ = (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & \inst1|READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst1|READ_CHAR~q\,
	combout => \inst1|INCNT[3]~2_combout\);

-- Location: FF_X31_Y20_N15
\inst1|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~5_combout\,
	ena => \inst1|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(3));

-- Location: LCCOMB_X31_Y20_N28
\inst1|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~4_combout\ = (!\inst1|INCNT\(0) & (((!\inst1|INCNT\(1) & !\inst1|INCNT\(2))) # (!\inst1|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(1),
	datab => \inst1|INCNT\(2),
	datac => \inst1|INCNT\(0),
	datad => \inst1|INCNT\(3),
	combout => \inst1|INCNT~4_combout\);

-- Location: FF_X31_Y20_N29
\inst1|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~4_combout\,
	ena => \inst1|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(0));

-- Location: LCCOMB_X31_Y20_N20
\inst1|INCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~1_combout\ = (!\inst1|INCNT\(3) & (\inst1|INCNT\(2) $ (((\inst1|INCNT\(1) & \inst1|INCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(1),
	datab => \inst1|INCNT\(0),
	datac => \inst1|INCNT\(2),
	datad => \inst1|INCNT\(3),
	combout => \inst1|INCNT~1_combout\);

-- Location: FF_X31_Y20_N21
\inst1|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~1_combout\,
	ena => \inst1|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(2));

-- Location: LCCOMB_X31_Y20_N4
\inst1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = ((!\inst1|INCNT\(1) & (!\inst1|INCNT\(2) & !\inst1|INCNT\(0)))) # (!\inst1|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(1),
	datab => \inst1|INCNT\(2),
	datac => \inst1|INCNT\(3),
	datad => \inst1|INCNT\(0),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y20_N8
\inst1|READ_CHAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|READ_CHAR~0_combout\ = (\inst1|READ_CHAR~q\ & ((\inst1|LessThan1~0_combout\))) # (!\inst1|READ_CHAR~q\ & (!\mouse_data~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse_data~input_o\,
	datac => \inst1|READ_CHAR~q\,
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|READ_CHAR~0_combout\);

-- Location: LCCOMB_X32_Y16_N12
\inst1|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|OUTCNT~3_combout\ = (!\inst1|OUTCNT\(0) & (((!\inst1|OUTCNT\(2) & !\inst1|OUTCNT\(1))) # (!\inst1|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(2),
	datab => \inst1|OUTCNT\(1),
	datac => \inst1|OUTCNT\(0),
	datad => \inst1|OUTCNT\(3),
	combout => \inst1|OUTCNT~3_combout\);

-- Location: LCCOMB_X31_Y16_N14
\inst1|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|send_char~0_combout\ = (\inst1|send_char~q\) # ((\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & \inst1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst1|send_char~q\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|send_char~0_combout\);

-- Location: FF_X31_Y16_N15
\inst1|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|send_char~0_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|send_char~q\);

-- Location: LCCOMB_X32_Y16_N30
\inst1|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|output_ready~0_combout\ = (\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst1|send_char~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst1|send_char~q\,
	combout => \inst1|output_ready~0_combout\);

-- Location: FF_X32_Y16_N13
\inst1|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|OUTCNT~3_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTCNT\(0));

-- Location: LCCOMB_X32_Y16_N18
\inst1|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|OUTCNT~2_combout\ = (\inst1|OUTCNT\(3) & (!\inst1|OUTCNT\(2) & (!\inst1|OUTCNT\(1) & \inst1|OUTCNT\(0)))) # (!\inst1|OUTCNT\(3) & ((\inst1|OUTCNT\(1) $ (\inst1|OUTCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(2),
	datab => \inst1|OUTCNT\(3),
	datac => \inst1|OUTCNT\(1),
	datad => \inst1|OUTCNT\(0),
	combout => \inst1|OUTCNT~2_combout\);

-- Location: FF_X32_Y16_N19
\inst1|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|OUTCNT~2_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTCNT\(1));

-- Location: LCCOMB_X32_Y16_N22
\inst1|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|OUTCNT~0_combout\ = (\inst1|OUTCNT\(2) & (\inst1|OUTCNT\(1) & (!\inst1|OUTCNT\(3) & \inst1|OUTCNT\(0)))) # (!\inst1|OUTCNT\(2) & (!\inst1|OUTCNT\(1) & (\inst1|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(2),
	datab => \inst1|OUTCNT\(1),
	datac => \inst1|OUTCNT\(3),
	datad => \inst1|OUTCNT\(0),
	combout => \inst1|OUTCNT~0_combout\);

-- Location: FF_X32_Y16_N23
\inst1|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|OUTCNT~0_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTCNT\(3));

-- Location: LCCOMB_X32_Y16_N8
\inst1|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|OUTCNT~1_combout\ = (!\inst1|OUTCNT\(3) & (\inst1|OUTCNT\(2) $ (((\inst1|OUTCNT\(1) & \inst1|OUTCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(1),
	datab => \inst1|OUTCNT\(3),
	datac => \inst1|OUTCNT\(2),
	datad => \inst1|OUTCNT\(0),
	combout => \inst1|OUTCNT~1_combout\);

-- Location: FF_X32_Y16_N9
\inst1|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|OUTCNT~1_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTCNT\(2));

-- Location: LCCOMB_X32_Y16_N24
\inst1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (\inst1|OUTCNT\(3) & ((\inst1|OUTCNT\(2)) # (\inst1|OUTCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(3),
	datab => \inst1|OUTCNT\(2),
	datad => \inst1|OUTCNT\(1),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y16_N26
\inst1|output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|output_ready~feeder_combout\ = \inst1|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|output_ready~feeder_combout\);

-- Location: FF_X32_Y16_N27
\inst1|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|output_ready~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|output_ready~q\);

-- Location: LCCOMB_X31_Y20_N8
\inst1|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (\inst1|mouse_state.LOAD_COMMAND2~q\) # ((\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst1|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst1|output_ready~q\,
	combout => \inst1|Selector3~0_combout\);

-- Location: FF_X31_Y20_N9
\inst1|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: FF_X30_Y20_N9
\inst1|READ_CHAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|READ_CHAR~0_combout\,
	ena => \inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|READ_CHAR~q\);

-- Location: LCCOMB_X33_Y20_N10
\inst1|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|iready_set~0_combout\ = (\inst1|READ_CHAR~q\ & (((!\inst1|LessThan1~0_combout\)))) # (!\inst1|READ_CHAR~q\ & (\mouse_data~input_o\ & (\inst1|iready_set~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datab => \inst1|READ_CHAR~q\,
	datac => \inst1|iready_set~q\,
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|iready_set~0_combout\);

-- Location: FF_X33_Y20_N11
\inst1|iready_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|iready_set~0_combout\,
	ena => \inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iready_set~q\);

-- Location: LCCOMB_X33_Y20_N28
\inst1|mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|mouse_state.INPUT_PACKETS~0_combout\ = (\inst1|mouse_state.INPUT_PACKETS~q\) # ((\inst1|mouse_state.WAIT_CMD_ACK~q\ & \inst1|iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.WAIT_CMD_ACK~q\,
	datac => \inst1|mouse_state.INPUT_PACKETS~q\,
	datad => \inst1|iready_set~q\,
	combout => \inst1|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: FF_X33_Y20_N29
\inst1|mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|mouse_state.INPUT_PACKETS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.INPUT_PACKETS~q\);

-- Location: LCCOMB_X32_Y16_N14
\inst1|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~0_combout\ = (\inst1|send_data~q\ & ((\inst1|mouse_state.INPUT_PACKETS~q\) # (!\inst1|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.INHIBIT_TRANS~q\,
	datab => \inst1|send_data~q\,
	datad => \inst1|mouse_state.INPUT_PACKETS~q\,
	combout => \inst1|Selector6~0_combout\);

-- Location: LCCOMB_X33_Y16_N4
\inst1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = (\inst1|mouse_state.INHIBIT_TRANS~q\) # ((\inst1|inhibit_wait_count\(9) & \inst1|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(9),
	datac => \inst1|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst1|inhibit_wait_count\(10),
	combout => \inst1|Selector0~0_combout\);

-- Location: FF_X33_Y16_N5
\inst1|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.INHIBIT_TRANS~q\);

-- Location: LCCOMB_X33_Y16_N0
\inst1|inhibit_wait_count[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[0]~30_combout\ = \inst1|inhibit_wait_count\(0) $ (!\inst1|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inhibit_wait_count\(0),
	datad => \inst1|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst1|inhibit_wait_count[0]~30_combout\);

-- Location: FF_X33_Y16_N1
\inst1|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(0));

-- Location: LCCOMB_X33_Y16_N14
\inst1|inhibit_wait_count[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[3]~14_combout\ = (\inst1|inhibit_wait_count\(3) & (\inst1|inhibit_wait_count[2]~13\ $ (GND))) # (!\inst1|inhibit_wait_count\(3) & (!\inst1|inhibit_wait_count[2]~13\ & VCC))
-- \inst1|inhibit_wait_count[3]~15\ = CARRY((\inst1|inhibit_wait_count\(3) & !\inst1|inhibit_wait_count[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(3),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[2]~13\,
	combout => \inst1|inhibit_wait_count[3]~14_combout\,
	cout => \inst1|inhibit_wait_count[3]~15\);

-- Location: FF_X33_Y16_N15
\inst1|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[3]~14_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(3));

-- Location: LCCOMB_X33_Y16_N16
\inst1|inhibit_wait_count[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[4]~16_combout\ = (\inst1|inhibit_wait_count\(4) & (!\inst1|inhibit_wait_count[3]~15\)) # (!\inst1|inhibit_wait_count\(4) & ((\inst1|inhibit_wait_count[3]~15\) # (GND)))
-- \inst1|inhibit_wait_count[4]~17\ = CARRY((!\inst1|inhibit_wait_count[3]~15\) # (!\inst1|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(4),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[3]~15\,
	combout => \inst1|inhibit_wait_count[4]~16_combout\,
	cout => \inst1|inhibit_wait_count[4]~17\);

-- Location: FF_X33_Y16_N17
\inst1|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[4]~16_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(4));

-- Location: LCCOMB_X33_Y16_N18
\inst1|inhibit_wait_count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[5]~18_combout\ = (\inst1|inhibit_wait_count\(5) & (\inst1|inhibit_wait_count[4]~17\ $ (GND))) # (!\inst1|inhibit_wait_count\(5) & (!\inst1|inhibit_wait_count[4]~17\ & VCC))
-- \inst1|inhibit_wait_count[5]~19\ = CARRY((\inst1|inhibit_wait_count\(5) & !\inst1|inhibit_wait_count[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[4]~17\,
	combout => \inst1|inhibit_wait_count[5]~18_combout\,
	cout => \inst1|inhibit_wait_count[5]~19\);

-- Location: FF_X33_Y16_N19
\inst1|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[5]~18_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(5));

-- Location: LCCOMB_X33_Y16_N20
\inst1|inhibit_wait_count[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[6]~20_combout\ = (\inst1|inhibit_wait_count\(6) & (!\inst1|inhibit_wait_count[5]~19\)) # (!\inst1|inhibit_wait_count\(6) & ((\inst1|inhibit_wait_count[5]~19\) # (GND)))
-- \inst1|inhibit_wait_count[6]~21\ = CARRY((!\inst1|inhibit_wait_count[5]~19\) # (!\inst1|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(6),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[5]~19\,
	combout => \inst1|inhibit_wait_count[6]~20_combout\,
	cout => \inst1|inhibit_wait_count[6]~21\);

-- Location: FF_X33_Y16_N21
\inst1|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[6]~20_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(6));

-- Location: LCCOMB_X33_Y16_N24
\inst1|inhibit_wait_count[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[8]~24_combout\ = (\inst1|inhibit_wait_count\(8) & (!\inst1|inhibit_wait_count[7]~23\)) # (!\inst1|inhibit_wait_count\(8) & ((\inst1|inhibit_wait_count[7]~23\) # (GND)))
-- \inst1|inhibit_wait_count[8]~25\ = CARRY((!\inst1|inhibit_wait_count[7]~23\) # (!\inst1|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(8),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[7]~23\,
	combout => \inst1|inhibit_wait_count[8]~24_combout\,
	cout => \inst1|inhibit_wait_count[8]~25\);

-- Location: FF_X33_Y16_N25
\inst1|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[8]~24_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(8));

-- Location: LCCOMB_X33_Y16_N26
\inst1|inhibit_wait_count[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[9]~26_combout\ = (\inst1|inhibit_wait_count\(9) & (\inst1|inhibit_wait_count[8]~25\ $ (GND))) # (!\inst1|inhibit_wait_count\(9) & (!\inst1|inhibit_wait_count[8]~25\ & VCC))
-- \inst1|inhibit_wait_count[9]~27\ = CARRY((\inst1|inhibit_wait_count\(9) & !\inst1|inhibit_wait_count[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(9),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[8]~25\,
	combout => \inst1|inhibit_wait_count[9]~26_combout\,
	cout => \inst1|inhibit_wait_count[9]~27\);

-- Location: LCCOMB_X33_Y16_N28
\inst1|inhibit_wait_count[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[10]~28_combout\ = \inst1|inhibit_wait_count[9]~27\ $ (\inst1|inhibit_wait_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inhibit_wait_count\(10),
	cin => \inst1|inhibit_wait_count[9]~27\,
	combout => \inst1|inhibit_wait_count[10]~28_combout\);

-- Location: FF_X33_Y16_N29
\inst1|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[10]~28_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(10));

-- Location: FF_X33_Y16_N27
\inst1|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[9]~26_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(9));

-- Location: LCCOMB_X33_Y16_N30
\inst1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = (\inst1|inhibit_wait_count\(10) & (\inst1|inhibit_wait_count\(9) & !\inst1|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(10),
	datac => \inst1|inhibit_wait_count\(9),
	datad => \inst1|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst1|Selector1~0_combout\);

-- Location: FF_X33_Y16_N31
\inst1|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.LOAD_COMMAND~q\);

-- Location: LCCOMB_X32_Y16_N28
\inst1|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~1_combout\ = (\inst1|mouse_state.LOAD_COMMAND2~q\) # ((\inst1|Selector6~0_combout\) # (\inst1|mouse_state.LOAD_COMMAND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.LOAD_COMMAND2~q\,
	datab => \inst1|Selector6~0_combout\,
	datac => \inst1|mouse_state.LOAD_COMMAND~q\,
	combout => \inst1|Selector6~1_combout\);

-- Location: FF_X32_Y16_N29
\inst1|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|send_data~q\);

-- Location: LCCOMB_X31_Y16_N4
\inst1|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_DATA_BUF~0_combout\ = (\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst1|send_char~q\ & !\inst1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst1|send_char~q\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X31_Y16_N29
\inst1|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[9]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(9));

-- Location: LCCOMB_X31_Y16_N30
\inst1|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[8]~3_combout\ = !\inst1|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(9),
	combout => \inst1|SHIFTOUT[8]~3_combout\);

-- Location: FF_X31_Y16_N31
\inst1|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[8]~3_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(8));

-- Location: LCCOMB_X31_Y16_N16
\inst1|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[7]~feeder_combout\ = \inst1|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTOUT\(8),
	combout => \inst1|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X31_Y16_N17
\inst1|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[7]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(7));

-- Location: LCCOMB_X31_Y16_N26
\inst1|SHIFTOUT[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[6]~feeder_combout\ = \inst1|SHIFTOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(7),
	combout => \inst1|SHIFTOUT[6]~feeder_combout\);

-- Location: FF_X31_Y16_N27
\inst1|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[6]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(6));

-- Location: LCCOMB_X31_Y16_N24
\inst1|SHIFTOUT[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[5]~feeder_combout\ = \inst1|SHIFTOUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTOUT\(6),
	combout => \inst1|SHIFTOUT[5]~feeder_combout\);

-- Location: FF_X31_Y16_N25
\inst1|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[5]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(5));

-- Location: LCCOMB_X31_Y16_N18
\inst1|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[4]~2_combout\ = !\inst1|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(5),
	combout => \inst1|SHIFTOUT[4]~2_combout\);

-- Location: FF_X31_Y16_N19
\inst1|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[4]~2_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(4));

-- Location: LCCOMB_X31_Y16_N20
\inst1|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[3]~1_combout\ = !\inst1|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(4),
	combout => \inst1|SHIFTOUT[3]~1_combout\);

-- Location: FF_X31_Y16_N21
\inst1|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[3]~1_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(3));

-- Location: LCCOMB_X31_Y16_N22
\inst1|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[2]~0_combout\ = !\inst1|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(3),
	combout => \inst1|SHIFTOUT[2]~0_combout\);

-- Location: FF_X31_Y16_N23
\inst1|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[2]~0_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(2));

-- Location: LCCOMB_X31_Y16_N8
\inst1|SHIFTOUT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[1]~feeder_combout\ = \inst1|SHIFTOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTOUT\(2),
	combout => \inst1|SHIFTOUT[1]~feeder_combout\);

-- Location: FF_X31_Y16_N9
\inst1|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[1]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(1));

-- Location: FF_X31_Y16_N5
\inst1|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|SHIFTOUT\(1),
	clrn => \inst1|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|MOUSE_DATA_BUF~q\);

-- Location: FF_X32_Y16_N25
\inst1|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|mouse_state.LOAD_COMMAND~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X32_Y16_N16
\inst1|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr4~combout\ = (\inst1|mouse_state.LOAD_COMMAND~q\) # ((\inst1|mouse_state.LOAD_COMMAND2~q\) # (!\inst1|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.LOAD_COMMAND~q\,
	datac => \inst1|mouse_state.LOAD_COMMAND2~q\,
	datad => \inst1|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst1|WideOr4~combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_2
\inst4|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5052,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst4|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst4|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst4|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst4|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y16_N12
\inst2|SYNC|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add0~0_combout\ = \inst2|SYNC|h_count\(0) $ (VCC)
-- \inst2|SYNC|Add0~1\ = CARRY(\inst2|SYNC|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|h_count\(0),
	datad => VCC,
	combout => \inst2|SYNC|Add0~0_combout\,
	cout => \inst2|SYNC|Add0~1\);

-- Location: LCCOMB_X28_Y16_N14
\inst2|SYNC|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add0~2_combout\ = (\inst2|SYNC|h_count\(1) & (!\inst2|SYNC|Add0~1\)) # (!\inst2|SYNC|h_count\(1) & ((\inst2|SYNC|Add0~1\) # (GND)))
-- \inst2|SYNC|Add0~3\ = CARRY((!\inst2|SYNC|Add0~1\) # (!\inst2|SYNC|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|h_count\(1),
	datad => VCC,
	cin => \inst2|SYNC|Add0~1\,
	combout => \inst2|SYNC|Add0~2_combout\,
	cout => \inst2|SYNC|Add0~3\);

-- Location: FF_X28_Y16_N15
\inst2|SYNC|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|h_count\(1));

-- Location: LCCOMB_X28_Y16_N16
\inst2|SYNC|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add0~4_combout\ = (\inst2|SYNC|h_count\(2) & (\inst2|SYNC|Add0~3\ $ (GND))) # (!\inst2|SYNC|h_count\(2) & (!\inst2|SYNC|Add0~3\ & VCC))
-- \inst2|SYNC|Add0~5\ = CARRY((\inst2|SYNC|h_count\(2) & !\inst2|SYNC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|h_count\(2),
	datad => VCC,
	cin => \inst2|SYNC|Add0~3\,
	combout => \inst2|SYNC|Add0~4_combout\,
	cout => \inst2|SYNC|Add0~5\);

-- Location: FF_X28_Y16_N17
\inst2|SYNC|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|h_count\(2));

-- Location: LCCOMB_X28_Y16_N18
\inst2|SYNC|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add0~6_combout\ = (\inst2|SYNC|h_count\(3) & (!\inst2|SYNC|Add0~5\)) # (!\inst2|SYNC|h_count\(3) & ((\inst2|SYNC|Add0~5\) # (GND)))
-- \inst2|SYNC|Add0~7\ = CARRY((!\inst2|SYNC|Add0~5\) # (!\inst2|SYNC|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|h_count\(3),
	datad => VCC,
	cin => \inst2|SYNC|Add0~5\,
	combout => \inst2|SYNC|Add0~6_combout\,
	cout => \inst2|SYNC|Add0~7\);

-- Location: FF_X28_Y16_N19
\inst2|SYNC|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|h_count\(3));

-- Location: LCCOMB_X28_Y16_N20
\inst2|SYNC|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add0~8_combout\ = (\inst2|SYNC|h_count\(4) & (\inst2|SYNC|Add0~7\ $ (GND))) # (!\inst2|SYNC|h_count\(4) & (!\inst2|SYNC|Add0~7\ & VCC))
-- \inst2|SYNC|Add0~9\ = CARRY((\inst2|SYNC|h_count\(4) & !\inst2|SYNC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|h_count\(4),
	datad => VCC,
	cin => \inst2|SYNC|Add0~7\,
	combout => \inst2|SYNC|Add0~8_combout\,
	cout => \inst2|SYNC|Add0~9\);

-- Location: FF_X28_Y16_N21
\inst2|SYNC|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|h_count\(4));

-- Location: LCCOMB_X28_Y16_N22
\inst2|SYNC|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add0~10_combout\ = (\inst2|SYNC|h_count\(5) & (!\inst2|SYNC|Add0~9\)) # (!\inst2|SYNC|h_count\(5) & ((\inst2|SYNC|Add0~9\) # (GND)))
-- \inst2|SYNC|Add0~11\ = CARRY((!\inst2|SYNC|Add0~9\) # (!\inst2|SYNC|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|h_count\(5),
	datad => VCC,
	cin => \inst2|SYNC|Add0~9\,
	combout => \inst2|SYNC|Add0~10_combout\,
	cout => \inst2|SYNC|Add0~11\);

-- Location: LCCOMB_X28_Y16_N24
\inst2|SYNC|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add0~12_combout\ = (\inst2|SYNC|h_count\(6) & (\inst2|SYNC|Add0~11\ $ (GND))) # (!\inst2|SYNC|h_count\(6) & (!\inst2|SYNC|Add0~11\ & VCC))
-- \inst2|SYNC|Add0~13\ = CARRY((\inst2|SYNC|h_count\(6) & !\inst2|SYNC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|h_count\(6),
	datad => VCC,
	cin => \inst2|SYNC|Add0~11\,
	combout => \inst2|SYNC|Add0~12_combout\,
	cout => \inst2|SYNC|Add0~13\);

-- Location: LCCOMB_X28_Y16_N26
\inst2|SYNC|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add0~14_combout\ = (\inst2|SYNC|h_count\(7) & (!\inst2|SYNC|Add0~13\)) # (!\inst2|SYNC|h_count\(7) & ((\inst2|SYNC|Add0~13\) # (GND)))
-- \inst2|SYNC|Add0~15\ = CARRY((!\inst2|SYNC|Add0~13\) # (!\inst2|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|h_count\(7),
	datad => VCC,
	cin => \inst2|SYNC|Add0~13\,
	combout => \inst2|SYNC|Add0~14_combout\,
	cout => \inst2|SYNC|Add0~15\);

-- Location: LCCOMB_X28_Y16_N28
\inst2|SYNC|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add0~16_combout\ = (\inst2|SYNC|h_count\(8) & (\inst2|SYNC|Add0~15\ $ (GND))) # (!\inst2|SYNC|h_count\(8) & (!\inst2|SYNC|Add0~15\ & VCC))
-- \inst2|SYNC|Add0~17\ = CARRY((\inst2|SYNC|h_count\(8) & !\inst2|SYNC|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|h_count\(8),
	datad => VCC,
	cin => \inst2|SYNC|Add0~15\,
	combout => \inst2|SYNC|Add0~16_combout\,
	cout => \inst2|SYNC|Add0~17\);

-- Location: LCCOMB_X28_Y16_N8
\inst2|SYNC|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|h_count~0_combout\ = (!\inst2|SYNC|Equal0~2_combout\ & \inst2|SYNC|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|Equal0~2_combout\,
	datad => \inst2|SYNC|Add0~16_combout\,
	combout => \inst2|SYNC|h_count~0_combout\);

-- Location: FF_X28_Y16_N9
\inst2|SYNC|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|h_count\(8));

-- Location: LCCOMB_X27_Y16_N4
\inst2|SYNC|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Equal0~1_combout\ = (!\inst2|SYNC|h_count\(7) & (\inst2|SYNC|h_count\(8) & (!\inst2|SYNC|h_count\(5) & \inst2|SYNC|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|h_count\(7),
	datab => \inst2|SYNC|h_count\(8),
	datac => \inst2|SYNC|h_count\(5),
	datad => \inst2|SYNC|h_count\(2),
	combout => \inst2|SYNC|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y16_N4
\inst2|SYNC|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Equal0~0_combout\ = (\inst2|SYNC|h_count\(0) & (\inst2|SYNC|h_count\(4) & (\inst2|SYNC|h_count\(1) & \inst2|SYNC|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|h_count\(0),
	datab => \inst2|SYNC|h_count\(4),
	datac => \inst2|SYNC|h_count\(1),
	datad => \inst2|SYNC|h_count\(3),
	combout => \inst2|SYNC|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y16_N14
\inst2|SYNC|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Equal0~2_combout\ = (\inst2|SYNC|h_count\(9) & (!\inst2|SYNC|h_count\(6) & (\inst2|SYNC|Equal0~1_combout\ & \inst2|SYNC|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|h_count\(9),
	datab => \inst2|SYNC|h_count\(6),
	datac => \inst2|SYNC|Equal0~1_combout\,
	datad => \inst2|SYNC|Equal0~0_combout\,
	combout => \inst2|SYNC|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y16_N0
\inst2|SYNC|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|h_count~2_combout\ = (\inst2|SYNC|Add0~10_combout\ & !\inst2|SYNC|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|SYNC|Add0~10_combout\,
	datad => \inst2|SYNC|Equal0~2_combout\,
	combout => \inst2|SYNC|h_count~2_combout\);

-- Location: FF_X28_Y16_N1
\inst2|SYNC|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|h_count\(5));

-- Location: FF_X28_Y16_N25
\inst2|SYNC|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|h_count\(6));

-- Location: FF_X28_Y16_N27
\inst2|SYNC|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|h_count\(7));

-- Location: LCCOMB_X27_Y16_N2
\inst2|SYNC|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|process_0~0_combout\ = (\inst2|SYNC|h_count\(9) & (!\inst2|SYNC|h_count\(8) & \inst2|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|h_count\(9),
	datac => \inst2|SYNC|h_count\(8),
	datad => \inst2|SYNC|h_count\(7),
	combout => \inst2|SYNC|process_0~0_combout\);

-- Location: LCCOMB_X27_Y16_N8
\inst2|SYNC|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|process_0~3_combout\ = ((\inst2|SYNC|process_0~2_combout\ & (\inst2|SYNC|h_count\(6) & \inst2|SYNC|h_count\(5))) # (!\inst2|SYNC|process_0~2_combout\ & (!\inst2|SYNC|h_count\(6) & !\inst2|SYNC|h_count\(5)))) # 
-- (!\inst2|SYNC|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|process_0~2_combout\,
	datab => \inst2|SYNC|h_count\(6),
	datac => \inst2|SYNC|h_count\(5),
	datad => \inst2|SYNC|process_0~0_combout\,
	combout => \inst2|SYNC|process_0~3_combout\);

-- Location: FF_X27_Y16_N9
\inst2|SYNC|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|horiz_sync~q\);

-- Location: FF_X22_Y18_N3
\inst2|SYNC|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|horiz_sync_out~q\);

-- Location: FF_X22_Y18_N7
\inst21|horiz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|horiz_sync_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|horiz~q\);

-- Location: LCCOMB_X17_Y25_N14
\inst3|seconds[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[0]~18_combout\ = \inst3|seconds\(0) $ (VCC)
-- \inst3|seconds[0]~19\ = CARRY(\inst3|seconds\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|seconds\(0),
	datad => VCC,
	combout => \inst3|seconds[0]~18_combout\,
	cout => \inst3|seconds[0]~19\);

-- Location: LCCOMB_X17_Y25_N22
\inst3|seconds[4]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[4]~27_combout\ = (\inst3|seconds\(4) & (\inst3|seconds[3]~26\ $ (GND))) # (!\inst3|seconds\(4) & (!\inst3|seconds[3]~26\ & VCC))
-- \inst3|seconds[4]~28\ = CARRY((\inst3|seconds\(4) & !\inst3|seconds[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seconds\(4),
	datad => VCC,
	cin => \inst3|seconds[3]~26\,
	combout => \inst3|seconds[4]~27_combout\,
	cout => \inst3|seconds[4]~28\);

-- Location: FF_X17_Y25_N23
\inst3|seconds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[4]~27_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(4));

-- Location: LCCOMB_X17_Y25_N2
\inst3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (\inst3|seconds\(6)) # (((\inst3|seconds\(5)) # (!\inst3|seconds\(4))) # (!\inst3|seconds\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seconds\(6),
	datab => \inst3|seconds\(7),
	datac => \inst3|seconds\(4),
	datad => \inst3|seconds\(5),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y24_N26
\inst3|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (\inst3|seconds\(8)) # ((\inst3|seconds\(10)) # ((\inst3|seconds\(11)) # (\inst3|seconds\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seconds\(8),
	datab => \inst3|seconds\(10),
	datac => \inst3|seconds\(11),
	datad => \inst3|seconds\(9),
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y25_N0
\inst3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (\inst3|seconds\(3)) # ((\inst3|seconds\(1)) # ((\inst3|seconds\(0)) # (\inst3|seconds\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seconds\(3),
	datab => \inst3|seconds\(1),
	datac => \inst3|seconds\(0),
	datad => \inst3|seconds\(2),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y25_N4
\inst3|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~4_combout\ = (\inst3|Equal0~3_combout\) # ((\inst3|Equal0~1_combout\) # ((\inst3|Equal0~2_combout\) # (\inst3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~3_combout\,
	datab => \inst3|Equal0~1_combout\,
	datac => \inst3|Equal0~2_combout\,
	datad => \inst3|Equal0~0_combout\,
	combout => \inst3|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y23_N24
\inst3|seconds[14]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[14]~20_combout\ = ((\inst3|seconds\(17) & (\inst3|seconds\(16) & !\inst3|Equal0~4_combout\))) # (!\sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \inst3|seconds\(17),
	datac => \inst3|seconds\(16),
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|seconds[14]~20_combout\);

-- Location: FF_X17_Y25_N15
\inst3|seconds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[0]~18_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(0));

-- Location: LCCOMB_X17_Y25_N16
\inst3|seconds[1]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[1]~21_combout\ = (\inst3|seconds\(1) & (!\inst3|seconds[0]~19\)) # (!\inst3|seconds\(1) & ((\inst3|seconds[0]~19\) # (GND)))
-- \inst3|seconds[1]~22\ = CARRY((!\inst3|seconds[0]~19\) # (!\inst3|seconds\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|seconds\(1),
	datad => VCC,
	cin => \inst3|seconds[0]~19\,
	combout => \inst3|seconds[1]~21_combout\,
	cout => \inst3|seconds[1]~22\);

-- Location: FF_X17_Y25_N17
\inst3|seconds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[1]~21_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(1));

-- Location: LCCOMB_X17_Y25_N18
\inst3|seconds[2]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[2]~23_combout\ = (\inst3|seconds\(2) & (\inst3|seconds[1]~22\ $ (GND))) # (!\inst3|seconds\(2) & (!\inst3|seconds[1]~22\ & VCC))
-- \inst3|seconds[2]~24\ = CARRY((\inst3|seconds\(2) & !\inst3|seconds[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|seconds\(2),
	datad => VCC,
	cin => \inst3|seconds[1]~22\,
	combout => \inst3|seconds[2]~23_combout\,
	cout => \inst3|seconds[2]~24\);

-- Location: FF_X17_Y25_N19
\inst3|seconds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[2]~23_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(2));

-- Location: LCCOMB_X17_Y25_N20
\inst3|seconds[3]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[3]~25_combout\ = (\inst3|seconds\(3) & (!\inst3|seconds[2]~24\)) # (!\inst3|seconds\(3) & ((\inst3|seconds[2]~24\) # (GND)))
-- \inst3|seconds[3]~26\ = CARRY((!\inst3|seconds[2]~24\) # (!\inst3|seconds\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|seconds\(3),
	datad => VCC,
	cin => \inst3|seconds[2]~24\,
	combout => \inst3|seconds[3]~25_combout\,
	cout => \inst3|seconds[3]~26\);

-- Location: FF_X17_Y25_N21
\inst3|seconds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[3]~25_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(3));

-- Location: LCCOMB_X17_Y25_N24
\inst3|seconds[5]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[5]~29_combout\ = (\inst3|seconds\(5) & (!\inst3|seconds[4]~28\)) # (!\inst3|seconds\(5) & ((\inst3|seconds[4]~28\) # (GND)))
-- \inst3|seconds[5]~30\ = CARRY((!\inst3|seconds[4]~28\) # (!\inst3|seconds\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|seconds\(5),
	datad => VCC,
	cin => \inst3|seconds[4]~28\,
	combout => \inst3|seconds[5]~29_combout\,
	cout => \inst3|seconds[5]~30\);

-- Location: FF_X17_Y25_N25
\inst3|seconds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[5]~29_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(5));

-- Location: LCCOMB_X17_Y25_N28
\inst3|seconds[7]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[7]~33_combout\ = (\inst3|seconds\(7) & (!\inst3|seconds[6]~32\)) # (!\inst3|seconds\(7) & ((\inst3|seconds[6]~32\) # (GND)))
-- \inst3|seconds[7]~34\ = CARRY((!\inst3|seconds[6]~32\) # (!\inst3|seconds\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|seconds\(7),
	datad => VCC,
	cin => \inst3|seconds[6]~32\,
	combout => \inst3|seconds[7]~33_combout\,
	cout => \inst3|seconds[7]~34\);

-- Location: FF_X17_Y25_N29
\inst3|seconds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[7]~33_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(7));

-- Location: LCCOMB_X17_Y24_N0
\inst3|seconds[9]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[9]~37_combout\ = (\inst3|seconds\(9) & (!\inst3|seconds[8]~36\)) # (!\inst3|seconds\(9) & ((\inst3|seconds[8]~36\) # (GND)))
-- \inst3|seconds[9]~38\ = CARRY((!\inst3|seconds[8]~36\) # (!\inst3|seconds\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|seconds\(9),
	datad => VCC,
	cin => \inst3|seconds[8]~36\,
	combout => \inst3|seconds[9]~37_combout\,
	cout => \inst3|seconds[9]~38\);

-- Location: FF_X17_Y24_N1
\inst3|seconds[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[9]~37_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(9));

-- Location: LCCOMB_X17_Y24_N2
\inst3|seconds[10]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[10]~39_combout\ = (\inst3|seconds\(10) & (\inst3|seconds[9]~38\ $ (GND))) # (!\inst3|seconds\(10) & (!\inst3|seconds[9]~38\ & VCC))
-- \inst3|seconds[10]~40\ = CARRY((\inst3|seconds\(10) & !\inst3|seconds[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|seconds\(10),
	datad => VCC,
	cin => \inst3|seconds[9]~38\,
	combout => \inst3|seconds[10]~39_combout\,
	cout => \inst3|seconds[10]~40\);

-- Location: FF_X17_Y24_N3
\inst3|seconds[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[10]~39_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(10));

-- Location: LCCOMB_X17_Y24_N4
\inst3|seconds[11]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[11]~41_combout\ = (\inst3|seconds\(11) & (!\inst3|seconds[10]~40\)) # (!\inst3|seconds\(11) & ((\inst3|seconds[10]~40\) # (GND)))
-- \inst3|seconds[11]~42\ = CARRY((!\inst3|seconds[10]~40\) # (!\inst3|seconds\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|seconds\(11),
	datad => VCC,
	cin => \inst3|seconds[10]~40\,
	combout => \inst3|seconds[11]~41_combout\,
	cout => \inst3|seconds[11]~42\);

-- Location: FF_X17_Y24_N5
\inst3|seconds[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[11]~41_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(11));

-- Location: LCCOMB_X17_Y24_N8
\inst3|seconds[13]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[13]~45_combout\ = (\inst3|seconds\(13) & (!\inst3|seconds[12]~44\)) # (!\inst3|seconds\(13) & ((\inst3|seconds[12]~44\) # (GND)))
-- \inst3|seconds[13]~46\ = CARRY((!\inst3|seconds[12]~44\) # (!\inst3|seconds\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|seconds\(13),
	datad => VCC,
	cin => \inst3|seconds[12]~44\,
	combout => \inst3|seconds[13]~45_combout\,
	cout => \inst3|seconds[13]~46\);

-- Location: FF_X17_Y24_N9
\inst3|seconds[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[13]~45_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(13));

-- Location: LCCOMB_X17_Y24_N14
\inst3|seconds[16]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[16]~51_combout\ = (\inst3|seconds\(16) & (\inst3|seconds[15]~50\ $ (GND))) # (!\inst3|seconds\(16) & (!\inst3|seconds[15]~50\ & VCC))
-- \inst3|seconds[16]~52\ = CARRY((\inst3|seconds\(16) & !\inst3|seconds[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|seconds\(16),
	datad => VCC,
	cin => \inst3|seconds[15]~50\,
	combout => \inst3|seconds[16]~51_combout\,
	cout => \inst3|seconds[16]~52\);

-- Location: FF_X17_Y24_N15
\inst3|seconds[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[16]~51_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(16));

-- Location: LCCOMB_X17_Y24_N16
\inst3|seconds[17]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|seconds[17]~53_combout\ = \inst3|seconds[16]~52\ $ (\inst3|seconds\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|seconds\(17),
	cin => \inst3|seconds[16]~52\,
	combout => \inst3|seconds[17]~53_combout\);

-- Location: FF_X17_Y24_N17
\inst3|seconds[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|seconds[17]~53_combout\,
	sclr => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|seconds\(17));

-- Location: LCCOMB_X17_Y23_N6
\inst3|cnt[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|cnt[0]~8_combout\ = \inst3|cnt\(0) $ (VCC)
-- \inst3|cnt[0]~9\ = CARRY(\inst3|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(0),
	datad => VCC,
	combout => \inst3|cnt[0]~8_combout\,
	cout => \inst3|cnt[0]~9\);

-- Location: LCCOMB_X17_Y23_N8
\inst3|cnt[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|cnt[1]~11_combout\ = (\inst3|cnt\(1) & (!\inst3|cnt[0]~9\)) # (!\inst3|cnt\(1) & ((\inst3|cnt[0]~9\) # (GND)))
-- \inst3|cnt[1]~12\ = CARRY((!\inst3|cnt[0]~9\) # (!\inst3|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(1),
	datad => VCC,
	cin => \inst3|cnt[0]~9\,
	combout => \inst3|cnt[1]~11_combout\,
	cout => \inst3|cnt[1]~12\);

-- Location: FF_X17_Y23_N9
\inst3|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|cnt[1]~11_combout\,
	sclr => \inst3|cnt[1]~10_combout\,
	ena => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(1));

-- Location: LCCOMB_X17_Y23_N12
\inst3|cnt[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|cnt[3]~15_combout\ = (\inst3|cnt\(3) & (!\inst3|cnt[2]~14\)) # (!\inst3|cnt\(3) & ((\inst3|cnt[2]~14\) # (GND)))
-- \inst3|cnt[3]~16\ = CARRY((!\inst3|cnt[2]~14\) # (!\inst3|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(3),
	datad => VCC,
	cin => \inst3|cnt[2]~14\,
	combout => \inst3|cnt[3]~15_combout\,
	cout => \inst3|cnt[3]~16\);

-- Location: LCCOMB_X17_Y23_N14
\inst3|cnt[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|cnt[4]~17_combout\ = (\inst3|cnt\(4) & (\inst3|cnt[3]~16\ $ (GND))) # (!\inst3|cnt\(4) & (!\inst3|cnt[3]~16\ & VCC))
-- \inst3|cnt[4]~18\ = CARRY((\inst3|cnt\(4) & !\inst3|cnt[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(4),
	datad => VCC,
	cin => \inst3|cnt[3]~16\,
	combout => \inst3|cnt[4]~17_combout\,
	cout => \inst3|cnt[4]~18\);

-- Location: FF_X17_Y23_N15
\inst3|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|cnt[4]~17_combout\,
	sclr => \inst3|cnt[1]~10_combout\,
	ena => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(4));

-- Location: LCCOMB_X17_Y23_N16
\inst3|cnt[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|cnt[5]~19_combout\ = (\inst3|cnt\(5) & (!\inst3|cnt[4]~18\)) # (!\inst3|cnt\(5) & ((\inst3|cnt[4]~18\) # (GND)))
-- \inst3|cnt[5]~20\ = CARRY((!\inst3|cnt[4]~18\) # (!\inst3|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(5),
	datad => VCC,
	cin => \inst3|cnt[4]~18\,
	combout => \inst3|cnt[5]~19_combout\,
	cout => \inst3|cnt[5]~20\);

-- Location: FF_X17_Y23_N17
\inst3|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|cnt[5]~19_combout\,
	sclr => \inst3|cnt[1]~10_combout\,
	ena => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(5));

-- Location: FF_X17_Y23_N19
\inst3|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|cnt[6]~21_combout\,
	sclr => \inst3|cnt[1]~10_combout\,
	ena => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(6));

-- Location: LCCOMB_X17_Y23_N28
\inst3|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~1_combout\ = (\inst3|cnt\(7)) # ((\inst3|cnt\(6)) # ((\inst3|cnt\(5)) # (!\inst3|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(7),
	datab => \inst3|cnt\(6),
	datac => \inst3|cnt\(4),
	datad => \inst3|cnt\(5),
	combout => \inst3|Equal1~1_combout\);

-- Location: IOIBUF_X0_Y24_N1
\sw[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X17_Y23_N26
\inst3|cnt[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|cnt[1]~10_combout\ = ((!\inst3|Equal1~0_combout\ & !\inst3|Equal1~1_combout\)) # (!\sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~0_combout\,
	datab => \inst3|Equal1~1_combout\,
	datac => \sw[0]~input_o\,
	combout => \inst3|cnt[1]~10_combout\);

-- Location: FF_X17_Y23_N7
\inst3|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|cnt[0]~8_combout\,
	sclr => \inst3|cnt[1]~10_combout\,
	ena => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(0));

-- Location: FF_X17_Y23_N13
\inst3|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|cnt[3]~15_combout\,
	sclr => \inst3|cnt[1]~10_combout\,
	ena => \inst3|seconds[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(3));

-- Location: LCCOMB_X17_Y23_N22
\inst3|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~0_combout\ = ((\inst3|cnt\(0)) # ((\inst3|cnt\(1)) # (\inst3|cnt\(3)))) # (!\inst3|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(2),
	datab => \inst3|cnt\(0),
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(3),
	combout => \inst3|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y23_N2
\inst3|output~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|output~0_combout\ = (\inst3|seconds\(16) & (\inst3|seconds\(17) & (!\inst3|Equal1~0_combout\ & !\inst3|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seconds\(16),
	datab => \inst3|seconds\(17),
	datac => \inst3|Equal1~0_combout\,
	datad => \inst3|Equal1~1_combout\,
	combout => \inst3|output~0_combout\);

-- Location: LCCOMB_X17_Y23_N0
\inst3|output~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|output~1_combout\ = (\sw[0]~input_o\ & ((\inst3|output~q\) # ((\inst3|output~0_combout\ & !\inst3|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \inst3|output~0_combout\,
	datac => \inst3|output~q\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|output~1_combout\);

-- Location: FF_X17_Y23_N1
\inst3|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|output~q\);

-- Location: LCCOMB_X21_Y17_N10
\inst22|state.s_menu~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|state.s_menu~0_combout\ = (\bt1~input_o\) # (\inst22|state.s_menu~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt1~input_o\,
	datac => \inst22|state.s_menu~q\,
	combout => \inst22|state.s_menu~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\bt2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt2,
	o => \bt2~input_o\);

-- Location: FF_X21_Y17_N11
\inst22|state.s_menu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst22|state.s_menu~0_combout\,
	clrn => \ALT_INV_bt2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|state.s_menu~q\);

-- Location: LCCOMB_X21_Y17_N12
\inst22|state.s_regular~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|state.s_regular~0_combout\ = (\inst22|state.s_regular~q\) # ((\bt1~input_o\ & (\inst3|output~q\ & !\inst22|state.s_menu~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt1~input_o\,
	datab => \inst3|output~q\,
	datac => \inst22|state.s_regular~q\,
	datad => \inst22|state.s_menu~q\,
	combout => \inst22|state.s_regular~0_combout\);

-- Location: FF_X21_Y17_N13
\inst22|state.s_regular\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst22|state.s_regular~0_combout\,
	clrn => \ALT_INV_bt2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|state.s_regular~q\);

-- Location: LCCOMB_X21_Y17_N0
\inst22|output_select~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|output_select~0_combout\ = (\inst22|state.s_regular~q\) # (!\inst22|state.s_menu~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|state.s_menu~q\,
	datad => \inst22|state.s_regular~q\,
	combout => \inst22|output_select~0_combout\);

-- Location: LCCOMB_X21_Y17_N2
\inst22|state.s_training~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|state.s_training~0_combout\ = (\inst22|state.s_training~q\) # ((\bt1~input_o\ & (!\inst3|output~q\ & !\inst22|state.s_menu~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt1~input_o\,
	datab => \inst3|output~q\,
	datac => \inst22|state.s_training~q\,
	datad => \inst22|state.s_menu~q\,
	combout => \inst22|state.s_training~0_combout\);

-- Location: FF_X21_Y17_N3
\inst22|state.s_training\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst22|state.s_training~0_combout\,
	clrn => \ALT_INV_bt2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|state.s_training~q\);

-- Location: LCCOMB_X21_Y17_N24
\inst22|output_select~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|output_select~1_combout\ = (\inst22|state.s_training~q\) # (!\inst22|state.s_menu~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|state.s_menu~q\,
	datad => \inst22|state.s_training~q\,
	combout => \inst22|output_select~1_combout\);

-- Location: LCCOMB_X27_Y16_N16
\inst2|SYNC|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|process_0~12_combout\ = (((!\inst2|SYNC|h_count\(8) & !\inst2|SYNC|h_count\(7))) # (!\inst2|SYNC|v_count\(9))) # (!\inst2|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|h_count\(9),
	datab => \inst2|SYNC|v_count\(9),
	datac => \inst2|SYNC|h_count\(8),
	datad => \inst2|SYNC|h_count\(7),
	combout => \inst2|SYNC|process_0~12_combout\);

-- Location: LCCOMB_X28_Y16_N10
\inst2|SYNC|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|process_0~9_combout\ = ((!\inst2|SYNC|h_count\(2) & ((!\inst2|SYNC|h_count\(1)) # (!\inst2|SYNC|h_count\(0))))) # (!\inst2|SYNC|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|h_count\(0),
	datab => \inst2|SYNC|h_count\(2),
	datac => \inst2|SYNC|h_count\(1),
	datad => \inst2|SYNC|h_count\(3),
	combout => \inst2|SYNC|process_0~9_combout\);

-- Location: LCCOMB_X27_Y16_N30
\inst2|SYNC|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|process_0~11_combout\ = (!\inst2|SYNC|h_count\(8) & (!\inst2|SYNC|h_count\(6) & ((\inst2|SYNC|process_0~9_combout\) # (!\inst2|SYNC|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|process_0~10_combout\,
	datab => \inst2|SYNC|h_count\(8),
	datac => \inst2|SYNC|process_0~9_combout\,
	datad => \inst2|SYNC|h_count\(6),
	combout => \inst2|SYNC|process_0~11_combout\);

-- Location: LCCOMB_X27_Y16_N22
\inst2|SYNC|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Equal1~0_combout\ = ((\inst2|SYNC|h_count\(8)) # ((\inst2|SYNC|h_count\(2)) # (!\inst2|SYNC|h_count\(5)))) # (!\inst2|SYNC|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|h_count\(7),
	datab => \inst2|SYNC|h_count\(8),
	datac => \inst2|SYNC|h_count\(5),
	datad => \inst2|SYNC|h_count\(2),
	combout => \inst2|SYNC|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y16_N28
\inst2|SYNC|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Equal1~1_combout\ = ((\inst2|SYNC|h_count\(6)) # ((\inst2|SYNC|Equal1~0_combout\) # (!\inst2|SYNC|Equal0~0_combout\))) # (!\inst2|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|h_count\(9),
	datab => \inst2|SYNC|h_count\(6),
	datac => \inst2|SYNC|Equal1~0_combout\,
	datad => \inst2|SYNC|Equal0~0_combout\,
	combout => \inst2|SYNC|Equal1~1_combout\);

-- Location: LCCOMB_X22_Y15_N4
\inst2|SYNC|v_count[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|v_count[0]~1_combout\ = ((!\inst2|SYNC|process_0~8_combout\ & (!\inst2|SYNC|process_0~12_combout\ & !\inst2|SYNC|process_0~11_combout\))) # (!\inst2|SYNC|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|process_0~8_combout\,
	datab => \inst2|SYNC|process_0~12_combout\,
	datac => \inst2|SYNC|process_0~11_combout\,
	datad => \inst2|SYNC|Equal1~1_combout\,
	combout => \inst2|SYNC|v_count[0]~1_combout\);

-- Location: LCCOMB_X21_Y15_N18
\inst2|SYNC|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add1~6_combout\ = (\inst2|SYNC|v_count\(3) & (!\inst2|SYNC|Add1~5\)) # (!\inst2|SYNC|v_count\(3) & ((\inst2|SYNC|Add1~5\) # (GND)))
-- \inst2|SYNC|Add1~7\ = CARRY((!\inst2|SYNC|Add1~5\) # (!\inst2|SYNC|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|v_count\(3),
	datad => VCC,
	cin => \inst2|SYNC|Add1~5\,
	combout => \inst2|SYNC|Add1~6_combout\,
	cout => \inst2|SYNC|Add1~7\);

-- Location: LCCOMB_X22_Y15_N6
\inst2|SYNC|v_count[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|v_count[7]~3_combout\ = (!\inst2|SYNC|Equal1~1_combout\ & ((\inst2|SYNC|process_0~8_combout\) # ((\inst2|SYNC|process_0~12_combout\) # (\inst2|SYNC|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|process_0~8_combout\,
	datab => \inst2|SYNC|process_0~12_combout\,
	datac => \inst2|SYNC|process_0~11_combout\,
	datad => \inst2|SYNC|Equal1~1_combout\,
	combout => \inst2|SYNC|v_count[7]~3_combout\);

-- Location: LCCOMB_X21_Y15_N6
\inst2|SYNC|v_count[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|v_count[3]~5_combout\ = (\inst2|SYNC|v_count[0]~1_combout\ & (\inst2|SYNC|Add1~6_combout\ & ((\inst2|SYNC|v_count[7]~3_combout\)))) # (!\inst2|SYNC|v_count[0]~1_combout\ & ((\inst2|SYNC|v_count\(3)) # ((\inst2|SYNC|Add1~6_combout\ & 
-- \inst2|SYNC|v_count[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|v_count[0]~1_combout\,
	datab => \inst2|SYNC|Add1~6_combout\,
	datac => \inst2|SYNC|v_count\(3),
	datad => \inst2|SYNC|v_count[7]~3_combout\,
	combout => \inst2|SYNC|v_count[3]~5_combout\);

-- Location: FF_X21_Y15_N7
\inst2|SYNC|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|v_count[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|v_count\(3));

-- Location: LCCOMB_X22_Y15_N28
\inst2|SYNC|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|process_0~7_combout\ = (!\inst2|SYNC|v_count\(5) & (!\inst2|SYNC|v_count\(4) & ((!\inst2|SYNC|v_count\(2)) # (!\inst2|SYNC|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|v_count\(5),
	datab => \inst2|SYNC|v_count\(3),
	datac => \inst2|SYNC|v_count\(2),
	datad => \inst2|SYNC|v_count\(4),
	combout => \inst2|SYNC|process_0~7_combout\);

-- Location: LCCOMB_X21_Y15_N24
\inst2|SYNC|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add1~12_combout\ = (\inst2|SYNC|v_count\(6) & (\inst2|SYNC|Add1~11\ $ (GND))) # (!\inst2|SYNC|v_count\(6) & (!\inst2|SYNC|Add1~11\ & VCC))
-- \inst2|SYNC|Add1~13\ = CARRY((\inst2|SYNC|v_count\(6) & !\inst2|SYNC|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|v_count\(6),
	datad => VCC,
	cin => \inst2|SYNC|Add1~11\,
	combout => \inst2|SYNC|Add1~12_combout\,
	cout => \inst2|SYNC|Add1~13\);

-- Location: LCCOMB_X21_Y15_N10
\inst2|SYNC|v_count[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|v_count[6]~9_combout\ = (\inst2|SYNC|v_count[0]~1_combout\ & (\inst2|SYNC|Add1~12_combout\ & ((\inst2|SYNC|v_count[7]~3_combout\)))) # (!\inst2|SYNC|v_count[0]~1_combout\ & ((\inst2|SYNC|v_count\(6)) # ((\inst2|SYNC|Add1~12_combout\ & 
-- \inst2|SYNC|v_count[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|v_count[0]~1_combout\,
	datab => \inst2|SYNC|Add1~12_combout\,
	datac => \inst2|SYNC|v_count\(6),
	datad => \inst2|SYNC|v_count[7]~3_combout\,
	combout => \inst2|SYNC|v_count[6]~9_combout\);

-- Location: FF_X21_Y15_N11
\inst2|SYNC|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|v_count[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|v_count\(6));

-- Location: LCCOMB_X22_Y15_N10
\inst2|SYNC|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|process_0~8_combout\ = (!\inst2|SYNC|v_count\(8) & (\inst2|SYNC|process_0~7_combout\ & (!\inst2|SYNC|v_count\(7) & !\inst2|SYNC|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|v_count\(8),
	datab => \inst2|SYNC|process_0~7_combout\,
	datac => \inst2|SYNC|v_count\(7),
	datad => \inst2|SYNC|v_count\(6),
	combout => \inst2|SYNC|process_0~8_combout\);

-- Location: LCCOMB_X22_Y15_N18
\inst2|SYNC|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|v_count~0_combout\ = (\inst2|SYNC|Add1~0_combout\ & ((\inst2|SYNC|process_0~11_combout\) # ((\inst2|SYNC|process_0~12_combout\) # (\inst2|SYNC|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|Add1~0_combout\,
	datab => \inst2|SYNC|process_0~11_combout\,
	datac => \inst2|SYNC|process_0~12_combout\,
	datad => \inst2|SYNC|process_0~8_combout\,
	combout => \inst2|SYNC|v_count~0_combout\);

-- Location: FF_X22_Y15_N19
\inst2|SYNC|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|v_count~0_combout\,
	ena => \inst2|SYNC|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|v_count\(0));

-- Location: LCCOMB_X21_Y15_N16
\inst2|SYNC|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add1~4_combout\ = (\inst2|SYNC|v_count\(2) & (\inst2|SYNC|Add1~3\ $ (GND))) # (!\inst2|SYNC|v_count\(2) & (!\inst2|SYNC|Add1~3\ & VCC))
-- \inst2|SYNC|Add1~5\ = CARRY((\inst2|SYNC|v_count\(2) & !\inst2|SYNC|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|v_count\(2),
	datad => VCC,
	cin => \inst2|SYNC|Add1~3\,
	combout => \inst2|SYNC|Add1~4_combout\,
	cout => \inst2|SYNC|Add1~5\);

-- Location: LCCOMB_X21_Y15_N0
\inst2|SYNC|v_count[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|v_count[2]~4_combout\ = (\inst2|SYNC|v_count[0]~1_combout\ & (\inst2|SYNC|Add1~4_combout\ & ((\inst2|SYNC|v_count[7]~3_combout\)))) # (!\inst2|SYNC|v_count[0]~1_combout\ & ((\inst2|SYNC|v_count\(2)) # ((\inst2|SYNC|Add1~4_combout\ & 
-- \inst2|SYNC|v_count[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|v_count[0]~1_combout\,
	datab => \inst2|SYNC|Add1~4_combout\,
	datac => \inst2|SYNC|v_count\(2),
	datad => \inst2|SYNC|v_count[7]~3_combout\,
	combout => \inst2|SYNC|v_count[2]~4_combout\);

-- Location: FF_X21_Y15_N1
\inst2|SYNC|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|v_count[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|v_count\(2));

-- Location: LCCOMB_X21_Y15_N20
\inst2|SYNC|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add1~8_combout\ = (\inst2|SYNC|v_count\(4) & (\inst2|SYNC|Add1~7\ $ (GND))) # (!\inst2|SYNC|v_count\(4) & (!\inst2|SYNC|Add1~7\ & VCC))
-- \inst2|SYNC|Add1~9\ = CARRY((\inst2|SYNC|v_count\(4) & !\inst2|SYNC|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|v_count\(4),
	datad => VCC,
	cin => \inst2|SYNC|Add1~7\,
	combout => \inst2|SYNC|Add1~8_combout\,
	cout => \inst2|SYNC|Add1~9\);

-- Location: LCCOMB_X21_Y15_N8
\inst2|SYNC|v_count[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|v_count[4]~6_combout\ = (\inst2|SYNC|v_count[0]~1_combout\ & (\inst2|SYNC|Add1~8_combout\ & ((\inst2|SYNC|v_count[7]~3_combout\)))) # (!\inst2|SYNC|v_count[0]~1_combout\ & ((\inst2|SYNC|v_count\(4)) # ((\inst2|SYNC|Add1~8_combout\ & 
-- \inst2|SYNC|v_count[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|v_count[0]~1_combout\,
	datab => \inst2|SYNC|Add1~8_combout\,
	datac => \inst2|SYNC|v_count\(4),
	datad => \inst2|SYNC|v_count[7]~3_combout\,
	combout => \inst2|SYNC|v_count[4]~6_combout\);

-- Location: FF_X21_Y15_N9
\inst2|SYNC|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|v_count[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|v_count\(4));

-- Location: LCCOMB_X21_Y15_N22
\inst2|SYNC|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add1~10_combout\ = (\inst2|SYNC|v_count\(5) & (!\inst2|SYNC|Add1~9\)) # (!\inst2|SYNC|v_count\(5) & ((\inst2|SYNC|Add1~9\) # (GND)))
-- \inst2|SYNC|Add1~11\ = CARRY((!\inst2|SYNC|Add1~9\) # (!\inst2|SYNC|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|v_count\(5),
	datad => VCC,
	cin => \inst2|SYNC|Add1~9\,
	combout => \inst2|SYNC|Add1~10_combout\,
	cout => \inst2|SYNC|Add1~11\);

-- Location: LCCOMB_X22_Y15_N22
\inst2|SYNC|v_count[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|v_count[5]~8_combout\ = (\inst2|SYNC|v_count[7]~3_combout\ & ((\inst2|SYNC|Add1~10_combout\) # ((!\inst2|SYNC|v_count[0]~1_combout\ & \inst2|SYNC|v_count\(5))))) # (!\inst2|SYNC|v_count[7]~3_combout\ & (!\inst2|SYNC|v_count[0]~1_combout\ & 
-- (\inst2|SYNC|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|v_count[7]~3_combout\,
	datab => \inst2|SYNC|v_count[0]~1_combout\,
	datac => \inst2|SYNC|v_count\(5),
	datad => \inst2|SYNC|Add1~10_combout\,
	combout => \inst2|SYNC|v_count[5]~8_combout\);

-- Location: FF_X22_Y15_N23
\inst2|SYNC|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|v_count[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|v_count\(5));

-- Location: LCCOMB_X21_Y15_N26
\inst2|SYNC|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add1~14_combout\ = (\inst2|SYNC|v_count\(7) & (!\inst2|SYNC|Add1~13\)) # (!\inst2|SYNC|v_count\(7) & ((\inst2|SYNC|Add1~13\) # (GND)))
-- \inst2|SYNC|Add1~15\ = CARRY((!\inst2|SYNC|Add1~13\) # (!\inst2|SYNC|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|v_count\(7),
	datad => VCC,
	cin => \inst2|SYNC|Add1~13\,
	combout => \inst2|SYNC|Add1~14_combout\,
	cout => \inst2|SYNC|Add1~15\);

-- Location: LCCOMB_X21_Y15_N4
\inst2|SYNC|v_count[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|v_count[7]~10_combout\ = (\inst2|SYNC|v_count[0]~1_combout\ & (\inst2|SYNC|Add1~14_combout\ & ((\inst2|SYNC|v_count[7]~3_combout\)))) # (!\inst2|SYNC|v_count[0]~1_combout\ & ((\inst2|SYNC|v_count\(7)) # ((\inst2|SYNC|Add1~14_combout\ & 
-- \inst2|SYNC|v_count[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|v_count[0]~1_combout\,
	datab => \inst2|SYNC|Add1~14_combout\,
	datac => \inst2|SYNC|v_count\(7),
	datad => \inst2|SYNC|v_count[7]~3_combout\,
	combout => \inst2|SYNC|v_count[7]~10_combout\);

-- Location: FF_X21_Y15_N5
\inst2|SYNC|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|v_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|v_count\(7));

-- Location: LCCOMB_X21_Y15_N28
\inst2|SYNC|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add1~16_combout\ = (\inst2|SYNC|v_count\(8) & (\inst2|SYNC|Add1~15\ $ (GND))) # (!\inst2|SYNC|v_count\(8) & (!\inst2|SYNC|Add1~15\ & VCC))
-- \inst2|SYNC|Add1~17\ = CARRY((\inst2|SYNC|v_count\(8) & !\inst2|SYNC|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|v_count\(8),
	datad => VCC,
	cin => \inst2|SYNC|Add1~15\,
	combout => \inst2|SYNC|Add1~16_combout\,
	cout => \inst2|SYNC|Add1~17\);

-- Location: LCCOMB_X21_Y15_N2
\inst2|SYNC|v_count[8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|v_count[8]~11_combout\ = (\inst2|SYNC|v_count[0]~1_combout\ & (\inst2|SYNC|Add1~16_combout\ & ((\inst2|SYNC|v_count[7]~3_combout\)))) # (!\inst2|SYNC|v_count[0]~1_combout\ & ((\inst2|SYNC|v_count\(8)) # ((\inst2|SYNC|Add1~16_combout\ & 
-- \inst2|SYNC|v_count[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|v_count[0]~1_combout\,
	datab => \inst2|SYNC|Add1~16_combout\,
	datac => \inst2|SYNC|v_count\(8),
	datad => \inst2|SYNC|v_count[7]~3_combout\,
	combout => \inst2|SYNC|v_count[8]~11_combout\);

-- Location: FF_X21_Y15_N3
\inst2|SYNC|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|v_count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|v_count\(8));

-- Location: LCCOMB_X21_Y15_N30
\inst2|SYNC|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add1~18_combout\ = \inst2|SYNC|Add1~17\ $ (\inst2|SYNC|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SYNC|v_count\(9),
	cin => \inst2|SYNC|Add1~17\,
	combout => \inst2|SYNC|Add1~18_combout\);

-- Location: LCCOMB_X22_Y15_N24
\inst2|SYNC|v_count[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|v_count[9]~7_combout\ = (\inst2|SYNC|v_count[7]~3_combout\ & ((\inst2|SYNC|Add1~18_combout\) # ((!\inst2|SYNC|v_count[0]~1_combout\ & \inst2|SYNC|v_count\(9))))) # (!\inst2|SYNC|v_count[7]~3_combout\ & (!\inst2|SYNC|v_count[0]~1_combout\ & 
-- (\inst2|SYNC|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|v_count[7]~3_combout\,
	datab => \inst2|SYNC|v_count[0]~1_combout\,
	datac => \inst2|SYNC|v_count\(9),
	datad => \inst2|SYNC|Add1~18_combout\,
	combout => \inst2|SYNC|v_count[9]~7_combout\);

-- Location: FF_X22_Y15_N25
\inst2|SYNC|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|v_count[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|v_count\(9));

-- Location: LCCOMB_X22_Y15_N20
\inst2|SYNC|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|v_count~2_combout\ = (\inst2|SYNC|Add1~2_combout\ & ((\inst2|SYNC|process_0~11_combout\) # ((\inst2|SYNC|process_0~12_combout\) # (\inst2|SYNC|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|Add1~2_combout\,
	datab => \inst2|SYNC|process_0~11_combout\,
	datac => \inst2|SYNC|process_0~12_combout\,
	datad => \inst2|SYNC|process_0~8_combout\,
	combout => \inst2|SYNC|v_count~2_combout\);

-- Location: FF_X22_Y15_N21
\inst2|SYNC|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|v_count~2_combout\,
	ena => \inst2|SYNC|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|v_count\(1));

-- Location: LCCOMB_X22_Y15_N26
\inst2|SYNC|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|process_0~4_combout\ = ((\inst2|SYNC|v_count\(0) $ (!\inst2|SYNC|v_count\(1))) # (!\inst2|SYNC|v_count\(3))) # (!\inst2|SYNC|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|v_count\(2),
	datab => \inst2|SYNC|v_count\(0),
	datac => \inst2|SYNC|v_count\(3),
	datad => \inst2|SYNC|v_count\(1),
	combout => \inst2|SYNC|process_0~4_combout\);

-- Location: LCCOMB_X22_Y15_N8
\inst2|SYNC|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|process_0~5_combout\ = ((\inst2|SYNC|v_count\(9)) # ((\inst2|SYNC|process_0~4_combout\) # (\inst2|SYNC|v_count\(4)))) # (!\inst2|SYNC|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|LessThan7~0_combout\,
	datab => \inst2|SYNC|v_count\(9),
	datac => \inst2|SYNC|process_0~4_combout\,
	datad => \inst2|SYNC|v_count\(4),
	combout => \inst2|SYNC|process_0~5_combout\);

-- Location: FF_X22_Y15_N9
\inst2|SYNC|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|vert_sync~q\);

-- Location: LCCOMB_X19_Y22_N30
\inst18|SYNC|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|SYNC|vert_sync_out~feeder_combout\ = \inst2|SYNC|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SYNC|vert_sync~q\,
	combout => \inst18|SYNC|vert_sync_out~feeder_combout\);

-- Location: FF_X19_Y22_N31
\inst18|SYNC|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst18|SYNC|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|SYNC|vert_sync_out~q\);

-- Location: LCCOMB_X19_Y22_N28
\inst19|SYNC|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|SYNC|vert_sync_out~feeder_combout\ = \inst2|SYNC|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SYNC|vert_sync~q\,
	combout => \inst19|SYNC|vert_sync_out~feeder_combout\);

-- Location: FF_X19_Y22_N29
\inst19|SYNC|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst19|SYNC|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|SYNC|vert_sync_out~q\);

-- Location: LCCOMB_X19_Y22_N22
\inst21|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|Mux13~0_combout\ = (\inst22|output_select~0_combout\ & (\inst22|output_select~1_combout\)) # (!\inst22|output_select~0_combout\ & ((\inst22|output_select~1_combout\ & (\inst18|SYNC|vert_sync_out~q\)) # (!\inst22|output_select~1_combout\ & 
-- ((\inst19|SYNC|vert_sync_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|output_select~0_combout\,
	datab => \inst22|output_select~1_combout\,
	datac => \inst18|SYNC|vert_sync_out~q\,
	datad => \inst19|SYNC|vert_sync_out~q\,
	combout => \inst21|Mux13~0_combout\);

-- Location: LCCOMB_X19_Y22_N24
\inst2|SYNC|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|vert_sync_out~feeder_combout\ = \inst2|SYNC|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SYNC|vert_sync~q\,
	combout => \inst2|SYNC|vert_sync_out~feeder_combout\);

-- Location: FF_X19_Y22_N25
\inst2|SYNC|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|vert_sync_out~q\);

-- Location: LCCOMB_X19_Y22_N20
\inst21|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|Mux13~1_combout\ = (\inst22|output_select~0_combout\ & ((\inst21|Mux13~0_combout\ & (\inst17|SYNC|vert_sync_out~q\)) # (!\inst21|Mux13~0_combout\ & ((\inst2|SYNC|vert_sync_out~q\))))) # (!\inst22|output_select~0_combout\ & 
-- (((\inst21|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|SYNC|vert_sync_out~q\,
	datab => \inst22|output_select~0_combout\,
	datac => \inst21|Mux13~0_combout\,
	datad => \inst2|SYNC|vert_sync_out~q\,
	combout => \inst21|Mux13~1_combout\);

-- Location: FF_X19_Y22_N21
\inst21|vert\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst21|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|vert~q\);

-- Location: LCCOMB_X30_Y19_N24
\inst1|SHIFTIN[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[8]~feeder_combout\ = \mouse_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_data~input_o\,
	combout => \inst1|SHIFTIN[8]~feeder_combout\);

-- Location: LCCOMB_X30_Y19_N16
\inst1|SHIFTIN[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[0]~0_combout\ = (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst1|READ_CHAR~q\ & \inst1|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst1|READ_CHAR~q\,
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|SHIFTIN[0]~0_combout\);

-- Location: FF_X30_Y19_N25
\inst1|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[8]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(8));

-- Location: LCCOMB_X30_Y19_N6
\inst1|SHIFTIN[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[7]~feeder_combout\ = \inst1|SHIFTIN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(8),
	combout => \inst1|SHIFTIN[7]~feeder_combout\);

-- Location: FF_X30_Y19_N7
\inst1|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[7]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(7));

-- Location: LCCOMB_X30_Y19_N12
\inst1|SHIFTIN[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[6]~feeder_combout\ = \inst1|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(7),
	combout => \inst1|SHIFTIN[6]~feeder_combout\);

-- Location: FF_X30_Y19_N13
\inst1|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[6]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(6));

-- Location: FF_X30_Y19_N27
\inst1|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|SHIFTIN\(6),
	sload => VCC,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(5));

-- Location: FF_X30_Y19_N21
\inst1|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|SHIFTIN\(5),
	sload => VCC,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(4));

-- Location: LCCOMB_X30_Y19_N2
\inst1|SHIFTIN[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[3]~feeder_combout\ = \inst1|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(4),
	combout => \inst1|SHIFTIN[3]~feeder_combout\);

-- Location: FF_X30_Y19_N3
\inst1|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[3]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(3));

-- Location: LCCOMB_X30_Y19_N28
\inst1|SHIFTIN[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[2]~feeder_combout\ = \inst1|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(3),
	combout => \inst1|SHIFTIN[2]~feeder_combout\);

-- Location: FF_X30_Y19_N29
\inst1|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[2]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(2));

-- Location: LCCOMB_X30_Y19_N18
\inst1|SHIFTIN[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[1]~feeder_combout\ = \inst1|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(2),
	combout => \inst1|SHIFTIN[1]~feeder_combout\);

-- Location: FF_X30_Y19_N19
\inst1|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[1]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(1));

-- Location: FF_X30_Y19_N17
\inst1|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|SHIFTIN\(1),
	sload => VCC,
	ena => \inst1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(0));

-- Location: LCCOMB_X32_Y20_N26
\inst1|PACKET_CHAR1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR1[0]~feeder_combout\ = \inst1|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(0),
	combout => \inst1|PACKET_CHAR1[0]~feeder_combout\);

-- Location: LCCOMB_X27_Y20_N14
\inst1|PACKET_COUNT[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_COUNT[0]~feeder_combout\ = \inst1|PACKET_CHAR1[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PACKET_CHAR1[0]~0_combout\,
	combout => \inst1|PACKET_COUNT[0]~feeder_combout\);

-- Location: LCCOMB_X31_Y20_N22
\inst1|PACKET_CHAR2[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[7]~0_combout\ = (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst1|LessThan1~0_combout\ & \inst1|READ_CHAR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|READ_CHAR~q\,
	combout => \inst1|PACKET_CHAR2[7]~0_combout\);

-- Location: FF_X27_Y20_N15
\inst1|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_COUNT[0]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_COUNT\(0));

-- Location: LCCOMB_X27_Y20_N0
\inst1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~0_combout\ = \inst1|PACKET_COUNT\(0) $ (\inst1|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PACKET_COUNT\(0),
	datad => \inst1|PACKET_COUNT\(1),
	combout => \inst1|Add3~0_combout\);

-- Location: LCCOMB_X27_Y20_N20
\inst1|PACKET_COUNT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_COUNT[1]~feeder_combout\ = \inst1|Add3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add3~0_combout\,
	combout => \inst1|PACKET_COUNT[1]~feeder_combout\);

-- Location: FF_X27_Y20_N21
\inst1|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_COUNT[1]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_COUNT\(1));

-- Location: LCCOMB_X27_Y20_N10
\inst1|PACKET_CHAR1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR1[0]~0_combout\ = (\inst1|PACKET_COUNT\(1)) # (!\inst1|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PACKET_COUNT\(0),
	datad => \inst1|PACKET_COUNT\(1),
	combout => \inst1|PACKET_CHAR1[0]~0_combout\);

-- Location: LCCOMB_X31_Y20_N16
\inst1|PACKET_CHAR1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR1[0]~1_combout\ = (\inst1|READ_CHAR~q\ & (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst1|LessThan1~0_combout\ & !\inst1|PACKET_CHAR1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|READ_CHAR~q\,
	datab => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|PACKET_CHAR1[0]~0_combout\,
	combout => \inst1|PACKET_CHAR1[0]~1_combout\);

-- Location: FF_X32_Y20_N27
\inst1|PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR1[0]~feeder_combout\,
	ena => \inst1|PACKET_CHAR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR1\(0));

-- Location: LCCOMB_X23_Y18_N8
\inst1|left_button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|left_button~feeder_combout\ = \inst1|PACKET_CHAR1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PACKET_CHAR1\(0),
	combout => \inst1|left_button~feeder_combout\);

-- Location: LCCOMB_X31_Y20_N18
\inst1|INCNT[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT[3]~0_combout\ = (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & ((\mouse_data~input_o\) # (\inst1|READ_CHAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse_data~input_o\,
	datac => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst1|READ_CHAR~q\,
	combout => \inst1|INCNT[3]~0_combout\);

-- Location: LCCOMB_X27_Y20_N8
\inst1|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal4~0_combout\ = (!\inst1|PACKET_COUNT\(1)) # (!\inst1|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PACKET_COUNT\(0),
	datad => \inst1|PACKET_COUNT\(1),
	combout => \inst1|Equal4~0_combout\);

-- Location: LCCOMB_X31_Y20_N2
\inst1|left_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|left_button~0_combout\ = (\inst1|READ_CHAR~q\ & (\inst1|INCNT[3]~0_combout\ & (!\inst1|LessThan1~0_combout\ & !\inst1|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|READ_CHAR~q\,
	datab => \inst1|INCNT[3]~0_combout\,
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|Equal4~0_combout\,
	combout => \inst1|left_button~0_combout\);

-- Location: FF_X23_Y18_N9
\inst1|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|left_button~feeder_combout\,
	ena => \inst1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|left_button~q\);

-- Location: LCCOMB_X32_Y20_N24
\inst1|PACKET_CHAR1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR1[1]~feeder_combout\ = \inst1|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(1),
	combout => \inst1|PACKET_CHAR1[1]~feeder_combout\);

-- Location: FF_X32_Y20_N25
\inst1|PACKET_CHAR1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR1[1]~feeder_combout\,
	ena => \inst1|PACKET_CHAR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR1\(1));

-- Location: LCCOMB_X32_Y20_N12
\inst1|right_button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|right_button~feeder_combout\ = \inst1|PACKET_CHAR1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PACKET_CHAR1\(1),
	combout => \inst1|right_button~feeder_combout\);

-- Location: FF_X32_Y20_N13
\inst1|right_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|right_button~feeder_combout\,
	ena => \inst1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|right_button~q\);

-- Location: LCCOMB_X27_Y16_N10
\inst2|SYNC|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|process_0~6_combout\ = ((!\inst2|SYNC|h_count\(8) & !\inst2|SYNC|h_count\(7))) # (!\inst2|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|h_count\(9),
	datac => \inst2|SYNC|h_count\(8),
	datad => \inst2|SYNC|h_count\(7),
	combout => \inst2|SYNC|process_0~6_combout\);

-- Location: LCCOMB_X26_Y16_N24
\inst2|SYNC|video_on_h~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|video_on_h~feeder_combout\ = \inst2|SYNC|process_0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SYNC|process_0~6_combout\,
	combout => \inst2|SYNC|video_on_h~feeder_combout\);

-- Location: FF_X26_Y16_N25
\inst2|SYNC|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|video_on_h~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|video_on_h~q\);

-- Location: LCCOMB_X22_Y15_N12
\inst2|SYNC|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|LessThan7~0_combout\ = (\inst2|SYNC|v_count\(6) & (\inst2|SYNC|v_count\(7) & (\inst2|SYNC|v_count\(5) & \inst2|SYNC|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|v_count\(6),
	datab => \inst2|SYNC|v_count\(7),
	datac => \inst2|SYNC|v_count\(5),
	datad => \inst2|SYNC|v_count\(8),
	combout => \inst2|SYNC|LessThan7~0_combout\);

-- Location: LCCOMB_X22_Y15_N2
\inst2|SYNC|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|LessThan7~1_combout\ = (!\inst2|SYNC|v_count\(9) & !\inst2|SYNC|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|v_count\(9),
	datad => \inst2|SYNC|LessThan7~0_combout\,
	combout => \inst2|SYNC|LessThan7~1_combout\);

-- Location: FF_X21_Y15_N13
\inst2|SYNC|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|LessThan7~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|video_on_v~q\);

-- Location: FF_X23_Y16_N9
\inst2|SYNC|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|h_count\(2),
	sload => VCC,
	ena => \inst2|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_column\(2));

-- Location: FF_X28_Y16_N13
\inst2|SYNC|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|h_count\(0));

-- Location: FF_X23_Y16_N27
\inst2|SYNC|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|h_count\(0),
	sload => VCC,
	ena => \inst2|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_column\(0));

-- Location: FF_X23_Y16_N3
\inst2|SYNC|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|h_count\(1),
	sload => VCC,
	ena => \inst2|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_column\(1));

-- Location: LCCOMB_X23_Y16_N26
\inst19|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan5~0_combout\ = (\inst2|SYNC|pixel_column\(3) & (\inst2|SYNC|pixel_column\(2) & (\inst2|SYNC|pixel_column\(0) & \inst2|SYNC|pixel_column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_column\(3),
	datab => \inst2|SYNC|pixel_column\(2),
	datac => \inst2|SYNC|pixel_column\(0),
	datad => \inst2|SYNC|pixel_column\(1),
	combout => \inst19|LessThan5~0_combout\);

-- Location: FF_X23_Y16_N7
\inst2|SYNC|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|h_count\(5),
	sload => VCC,
	ena => \inst2|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_column\(5));

-- Location: FF_X24_Y16_N19
\inst2|SYNC|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|h_count\(4),
	sload => VCC,
	ena => \inst2|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_column\(4));

-- Location: LCCOMB_X23_Y16_N6
\inst19|Ball_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_on~0_combout\ = ((\inst19|LessThan5~0_combout\ & (\inst2|SYNC|pixel_column\(5) & \inst2|SYNC|pixel_column\(4)))) # (!\inst19|RGB_Display~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|RGB_Display~0_combout\,
	datab => \inst19|LessThan5~0_combout\,
	datac => \inst2|SYNC|pixel_column\(5),
	datad => \inst2|SYNC|pixel_column\(4),
	combout => \inst19|Ball_on~0_combout\);

-- Location: FF_X20_Y16_N31
\inst2|SYNC|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|v_count\(8),
	sload => VCC,
	ena => \inst2|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_row\(8));

-- Location: FF_X21_Y16_N27
\inst2|SYNC|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|v_count\(1),
	sload => VCC,
	ena => \inst2|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_row\(1));

-- Location: FF_X19_Y16_N13
\inst2|SYNC|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|v_count\(2),
	sload => VCC,
	ena => \inst2|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_row\(2));

-- Location: FF_X20_Y16_N29
\inst2|SYNC|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|v_count\(3),
	sload => VCC,
	ena => \inst2|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_row\(3));

-- Location: LCCOMB_X23_Y16_N28
\inst19|LessThan15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan15~0_combout\ = (\inst2|SYNC|pixel_row\(0) & (\inst2|SYNC|pixel_row\(1) & (\inst2|SYNC|pixel_row\(2) & \inst2|SYNC|pixel_row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(0),
	datab => \inst2|SYNC|pixel_row\(1),
	datac => \inst2|SYNC|pixel_row\(2),
	datad => \inst2|SYNC|pixel_row\(3),
	combout => \inst19|LessThan15~0_combout\);

-- Location: LCCOMB_X23_Y16_N12
\inst19|LessThan15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan15~2_combout\ = (\inst19|LessThan15~1_combout\) # ((\inst2|SYNC|pixel_row\(8)) # (\inst19|LessThan15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan15~1_combout\,
	datab => \inst2|SYNC|pixel_row\(8),
	datad => \inst19|LessThan15~0_combout\,
	combout => \inst19|LessThan15~2_combout\);

-- Location: LCCOMB_X23_Y17_N12
\inst19|Ball_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_on~1_combout\ = (!\inst19|LessThan15~2_combout\ & ((!\inst19|Ball_on~0_combout\) # (!\inst19|RGB_Display~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|RGB_Display~2_combout\,
	datab => \inst19|Ball_on~0_combout\,
	datad => \inst19|LessThan15~2_combout\,
	combout => \inst19|Ball_on~1_combout\);

-- Location: FF_X20_Y16_N3
\inst2|SYNC|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|v_count\(7),
	sload => VCC,
	ena => \inst2|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_row\(7));

-- Location: FF_X20_Y16_N25
\inst2|SYNC|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|v_count\(6),
	sload => VCC,
	ena => \inst2|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_row\(6));

-- Location: FF_X20_Y16_N23
\inst2|SYNC|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|v_count\(4),
	sload => VCC,
	ena => \inst2|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_row\(4));

-- Location: LCCOMB_X20_Y16_N22
\inst19|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~0_combout\ = (\inst2|SYNC|pixel_row\(5) & (\inst2|SYNC|pixel_row\(6) & (\inst2|SYNC|pixel_row\(4) & \inst2|SYNC|pixel_row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(5),
	datab => \inst2|SYNC|pixel_row\(6),
	datac => \inst2|SYNC|pixel_row\(4),
	datad => \inst2|SYNC|pixel_row\(3),
	combout => \inst19|Add2~0_combout\);

-- Location: LCCOMB_X20_Y16_N24
\inst19|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~1_combout\ = (\inst2|SYNC|pixel_row\(8) & (\inst2|SYNC|pixel_row\(7) & \inst19|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(8),
	datab => \inst2|SYNC|pixel_row\(7),
	datad => \inst19|Add2~0_combout\,
	combout => \inst19|Add2~1_combout\);

-- Location: IOIBUF_X0_Y21_N8
\bt0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt0,
	o => \bt0~input_o\);

-- Location: LCCOMB_X20_Y22_N14
\inst8|seconds[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[0]~18_combout\ = \inst8|seconds\(0) $ (VCC)
-- \inst8|seconds[0]~19\ = CARRY(\inst8|seconds\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(0),
	datad => VCC,
	combout => \inst8|seconds[0]~18_combout\,
	cout => \inst8|seconds[0]~19\);

-- Location: LCCOMB_X20_Y21_N6
\inst8|seconds[12]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[12]~43_combout\ = (\inst8|seconds\(12) & (\inst8|seconds[11]~42\ $ (GND))) # (!\inst8|seconds\(12) & (!\inst8|seconds[11]~42\ & VCC))
-- \inst8|seconds[12]~44\ = CARRY((\inst8|seconds\(12) & !\inst8|seconds[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(12),
	datad => VCC,
	cin => \inst8|seconds[11]~42\,
	combout => \inst8|seconds[12]~43_combout\,
	cout => \inst8|seconds[12]~44\);

-- Location: LCCOMB_X20_Y21_N8
\inst8|seconds[13]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[13]~45_combout\ = (\inst8|seconds\(13) & (!\inst8|seconds[12]~44\)) # (!\inst8|seconds\(13) & ((\inst8|seconds[12]~44\) # (GND)))
-- \inst8|seconds[13]~46\ = CARRY((!\inst8|seconds[12]~44\) # (!\inst8|seconds\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(13),
	datad => VCC,
	cin => \inst8|seconds[12]~44\,
	combout => \inst8|seconds[13]~45_combout\,
	cout => \inst8|seconds[13]~46\);

-- Location: FF_X20_Y21_N9
\inst8|seconds[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[13]~45_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(13));

-- Location: LCCOMB_X20_Y21_N10
\inst8|seconds[14]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[14]~47_combout\ = (\inst8|seconds\(14) & (\inst8|seconds[13]~46\ $ (GND))) # (!\inst8|seconds\(14) & (!\inst8|seconds[13]~46\ & VCC))
-- \inst8|seconds[14]~48\ = CARRY((\inst8|seconds\(14) & !\inst8|seconds[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(14),
	datad => VCC,
	cin => \inst8|seconds[13]~46\,
	combout => \inst8|seconds[14]~47_combout\,
	cout => \inst8|seconds[14]~48\);

-- Location: LCCOMB_X20_Y21_N14
\inst8|seconds[16]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[16]~51_combout\ = (\inst8|seconds\(16) & (\inst8|seconds[15]~50\ $ (GND))) # (!\inst8|seconds\(16) & (!\inst8|seconds[15]~50\ & VCC))
-- \inst8|seconds[16]~52\ = CARRY((\inst8|seconds\(16) & !\inst8|seconds[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(16),
	datad => VCC,
	cin => \inst8|seconds[15]~50\,
	combout => \inst8|seconds[16]~51_combout\,
	cout => \inst8|seconds[16]~52\);

-- Location: FF_X20_Y21_N15
\inst8|seconds[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[16]~51_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(16));

-- Location: LCCOMB_X20_Y21_N16
\inst8|seconds[17]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[17]~53_combout\ = \inst8|seconds[16]~52\ $ (\inst8|seconds\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|seconds\(17),
	cin => \inst8|seconds[16]~52\,
	combout => \inst8|seconds[17]~53_combout\);

-- Location: FF_X20_Y21_N17
\inst8|seconds[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[17]~53_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(17));

-- Location: LCCOMB_X20_Y21_N22
\inst8|seconds[4]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[4]~20_combout\ = ((\inst8|seconds\(17) & (\inst8|seconds\(16) & !\inst8|Equal0~4_combout\))) # (!\bt0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt0~input_o\,
	datab => \inst8|seconds\(17),
	datac => \inst8|seconds\(16),
	datad => \inst8|Equal0~4_combout\,
	combout => \inst8|seconds[4]~20_combout\);

-- Location: FF_X20_Y22_N15
\inst8|seconds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[0]~18_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(0));

-- Location: LCCOMB_X20_Y22_N16
\inst8|seconds[1]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[1]~21_combout\ = (\inst8|seconds\(1) & (!\inst8|seconds[0]~19\)) # (!\inst8|seconds\(1) & ((\inst8|seconds[0]~19\) # (GND)))
-- \inst8|seconds[1]~22\ = CARRY((!\inst8|seconds[0]~19\) # (!\inst8|seconds\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(1),
	datad => VCC,
	cin => \inst8|seconds[0]~19\,
	combout => \inst8|seconds[1]~21_combout\,
	cout => \inst8|seconds[1]~22\);

-- Location: FF_X20_Y22_N17
\inst8|seconds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[1]~21_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(1));

-- Location: LCCOMB_X20_Y22_N18
\inst8|seconds[2]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[2]~23_combout\ = (\inst8|seconds\(2) & (\inst8|seconds[1]~22\ $ (GND))) # (!\inst8|seconds\(2) & (!\inst8|seconds[1]~22\ & VCC))
-- \inst8|seconds[2]~24\ = CARRY((\inst8|seconds\(2) & !\inst8|seconds[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(2),
	datad => VCC,
	cin => \inst8|seconds[1]~22\,
	combout => \inst8|seconds[2]~23_combout\,
	cout => \inst8|seconds[2]~24\);

-- Location: FF_X20_Y22_N19
\inst8|seconds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[2]~23_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(2));

-- Location: LCCOMB_X20_Y22_N20
\inst8|seconds[3]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[3]~25_combout\ = (\inst8|seconds\(3) & (!\inst8|seconds[2]~24\)) # (!\inst8|seconds\(3) & ((\inst8|seconds[2]~24\) # (GND)))
-- \inst8|seconds[3]~26\ = CARRY((!\inst8|seconds[2]~24\) # (!\inst8|seconds\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(3),
	datad => VCC,
	cin => \inst8|seconds[2]~24\,
	combout => \inst8|seconds[3]~25_combout\,
	cout => \inst8|seconds[3]~26\);

-- Location: FF_X20_Y22_N21
\inst8|seconds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[3]~25_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(3));

-- Location: LCCOMB_X20_Y22_N22
\inst8|seconds[4]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[4]~27_combout\ = (\inst8|seconds\(4) & (\inst8|seconds[3]~26\ $ (GND))) # (!\inst8|seconds\(4) & (!\inst8|seconds[3]~26\ & VCC))
-- \inst8|seconds[4]~28\ = CARRY((\inst8|seconds\(4) & !\inst8|seconds[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(4),
	datad => VCC,
	cin => \inst8|seconds[3]~26\,
	combout => \inst8|seconds[4]~27_combout\,
	cout => \inst8|seconds[4]~28\);

-- Location: LCCOMB_X20_Y22_N24
\inst8|seconds[5]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[5]~29_combout\ = (\inst8|seconds\(5) & (!\inst8|seconds[4]~28\)) # (!\inst8|seconds\(5) & ((\inst8|seconds[4]~28\) # (GND)))
-- \inst8|seconds[5]~30\ = CARRY((!\inst8|seconds[4]~28\) # (!\inst8|seconds\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(5),
	datad => VCC,
	cin => \inst8|seconds[4]~28\,
	combout => \inst8|seconds[5]~29_combout\,
	cout => \inst8|seconds[5]~30\);

-- Location: FF_X20_Y22_N25
\inst8|seconds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[5]~29_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(5));

-- Location: LCCOMB_X20_Y22_N28
\inst8|seconds[7]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[7]~33_combout\ = (\inst8|seconds\(7) & (!\inst8|seconds[6]~32\)) # (!\inst8|seconds\(7) & ((\inst8|seconds[6]~32\) # (GND)))
-- \inst8|seconds[7]~34\ = CARRY((!\inst8|seconds[6]~32\) # (!\inst8|seconds\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(7),
	datad => VCC,
	cin => \inst8|seconds[6]~32\,
	combout => \inst8|seconds[7]~33_combout\,
	cout => \inst8|seconds[7]~34\);

-- Location: FF_X20_Y22_N29
\inst8|seconds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[7]~33_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(7));

-- Location: LCCOMB_X20_Y21_N0
\inst8|seconds[9]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[9]~37_combout\ = (\inst8|seconds\(9) & (!\inst8|seconds[8]~36\)) # (!\inst8|seconds\(9) & ((\inst8|seconds[8]~36\) # (GND)))
-- \inst8|seconds[9]~38\ = CARRY((!\inst8|seconds[8]~36\) # (!\inst8|seconds\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(9),
	datad => VCC,
	cin => \inst8|seconds[8]~36\,
	combout => \inst8|seconds[9]~37_combout\,
	cout => \inst8|seconds[9]~38\);

-- Location: FF_X20_Y21_N1
\inst8|seconds[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[9]~37_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(9));

-- Location: LCCOMB_X20_Y21_N2
\inst8|seconds[10]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[10]~39_combout\ = (\inst8|seconds\(10) & (\inst8|seconds[9]~38\ $ (GND))) # (!\inst8|seconds\(10) & (!\inst8|seconds[9]~38\ & VCC))
-- \inst8|seconds[10]~40\ = CARRY((\inst8|seconds\(10) & !\inst8|seconds[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(10),
	datad => VCC,
	cin => \inst8|seconds[9]~38\,
	combout => \inst8|seconds[10]~39_combout\,
	cout => \inst8|seconds[10]~40\);

-- Location: FF_X20_Y21_N3
\inst8|seconds[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[10]~39_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(10));

-- Location: LCCOMB_X20_Y21_N4
\inst8|seconds[11]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[11]~41_combout\ = (\inst8|seconds\(11) & (!\inst8|seconds[10]~40\)) # (!\inst8|seconds\(11) & ((\inst8|seconds[10]~40\) # (GND)))
-- \inst8|seconds[11]~42\ = CARRY((!\inst8|seconds[10]~40\) # (!\inst8|seconds\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(11),
	datad => VCC,
	cin => \inst8|seconds[10]~40\,
	combout => \inst8|seconds[11]~41_combout\,
	cout => \inst8|seconds[11]~42\);

-- Location: FF_X20_Y21_N5
\inst8|seconds[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[11]~41_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(11));

-- Location: FF_X20_Y21_N7
\inst8|seconds[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[12]~43_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(12));

-- Location: FF_X20_Y21_N11
\inst8|seconds[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[14]~47_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(14));

-- Location: LCCOMB_X20_Y21_N24
\inst8|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal0~3_combout\ = (((\inst8|seconds\(13)) # (!\inst8|seconds\(14))) # (!\inst8|seconds\(12))) # (!\inst8|seconds\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(15),
	datab => \inst8|seconds\(12),
	datac => \inst8|seconds\(13),
	datad => \inst8|seconds\(14),
	combout => \inst8|Equal0~3_combout\);

-- Location: FF_X20_Y22_N23
\inst8|seconds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|seconds[4]~27_combout\,
	sclr => \inst8|seconds[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(4));

-- Location: LCCOMB_X20_Y22_N6
\inst8|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal0~1_combout\ = (\inst8|seconds\(6)) # (((\inst8|seconds\(5)) # (!\inst8|seconds\(4))) # (!\inst8|seconds\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(6),
	datab => \inst8|seconds\(7),
	datac => \inst8|seconds\(4),
	datad => \inst8|seconds\(5),
	combout => \inst8|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y22_N12
\inst8|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal0~0_combout\ = (\inst8|seconds\(3)) # ((\inst8|seconds\(2)) # ((\inst8|seconds\(0)) # (\inst8|seconds\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(3),
	datab => \inst8|seconds\(2),
	datac => \inst8|seconds\(0),
	datad => \inst8|seconds\(1),
	combout => \inst8|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y21_N18
\inst8|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal0~4_combout\ = (\inst8|Equal0~2_combout\) # ((\inst8|Equal0~3_combout\) # ((\inst8|Equal0~1_combout\) # (\inst8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal0~2_combout\,
	datab => \inst8|Equal0~3_combout\,
	datac => \inst8|Equal0~1_combout\,
	datad => \inst8|Equal0~0_combout\,
	combout => \inst8|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y18_N0
\inst8|output~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|output~1_combout\ = (\bt0~input_o\ & ((\inst8|output~q\) # ((\inst8|output~0_combout\ & !\inst8|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|output~0_combout\,
	datab => \bt0~input_o\,
	datac => \inst8|output~q\,
	datad => \inst8|Equal0~4_combout\,
	combout => \inst8|output~1_combout\);

-- Location: FF_X20_Y18_N1
\inst8|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|output~q\);

-- Location: LCCOMB_X20_Y18_N12
\inst2|Ball_Y_pos[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Ball_Y_pos[0]~10_combout\ = (\inst2|Ball_Y_pos\(0) & (\inst2|Ball_Y_motion\(0) $ (VCC))) # (!\inst2|Ball_Y_pos\(0) & (\inst2|Ball_Y_motion\(0) & VCC))
-- \inst2|Ball_Y_pos[0]~11\ = CARRY((\inst2|Ball_Y_pos\(0) & \inst2|Ball_Y_motion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(0),
	datab => \inst2|Ball_Y_motion\(0),
	datad => VCC,
	combout => \inst2|Ball_Y_pos[0]~10_combout\,
	cout => \inst2|Ball_Y_pos[0]~11\);

-- Location: LCCOMB_X20_Y19_N30
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X20_Y18_N13
\inst2|Ball_Y_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|SYNC|vert_sync_out~q\,
	d => \inst2|Ball_Y_pos[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Ball_Y_pos\(0));

-- Location: LCCOMB_X20_Y18_N14
\inst2|Ball_Y_pos[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Ball_Y_pos[1]~12_combout\ = (\inst2|Ball_Y_pos\(1) & ((\inst2|Ball_Y_motion\(1) & (\inst2|Ball_Y_pos[0]~11\ & VCC)) # (!\inst2|Ball_Y_motion\(1) & (!\inst2|Ball_Y_pos[0]~11\)))) # (!\inst2|Ball_Y_pos\(1) & ((\inst2|Ball_Y_motion\(1) & 
-- (!\inst2|Ball_Y_pos[0]~11\)) # (!\inst2|Ball_Y_motion\(1) & ((\inst2|Ball_Y_pos[0]~11\) # (GND)))))
-- \inst2|Ball_Y_pos[1]~13\ = CARRY((\inst2|Ball_Y_pos\(1) & (!\inst2|Ball_Y_motion\(1) & !\inst2|Ball_Y_pos[0]~11\)) # (!\inst2|Ball_Y_pos\(1) & ((!\inst2|Ball_Y_pos[0]~11\) # (!\inst2|Ball_Y_motion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(1),
	datab => \inst2|Ball_Y_motion\(1),
	datad => VCC,
	cin => \inst2|Ball_Y_pos[0]~11\,
	combout => \inst2|Ball_Y_pos[1]~12_combout\,
	cout => \inst2|Ball_Y_pos[1]~13\);

-- Location: FF_X20_Y18_N15
\inst2|Ball_Y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|SYNC|vert_sync_out~q\,
	d => \inst2|Ball_Y_pos[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Ball_Y_pos\(1));

-- Location: LCCOMB_X20_Y18_N18
\inst2|Ball_Y_pos[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Ball_Y_pos[3]~16_combout\ = (\inst2|Ball_Y_pos\(3) & ((\inst2|Ball_Y_motion\(0) & (\inst2|Ball_Y_pos[2]~15\ & VCC)) # (!\inst2|Ball_Y_motion\(0) & (!\inst2|Ball_Y_pos[2]~15\)))) # (!\inst2|Ball_Y_pos\(3) & ((\inst2|Ball_Y_motion\(0) & 
-- (!\inst2|Ball_Y_pos[2]~15\)) # (!\inst2|Ball_Y_motion\(0) & ((\inst2|Ball_Y_pos[2]~15\) # (GND)))))
-- \inst2|Ball_Y_pos[3]~17\ = CARRY((\inst2|Ball_Y_pos\(3) & (!\inst2|Ball_Y_motion\(0) & !\inst2|Ball_Y_pos[2]~15\)) # (!\inst2|Ball_Y_pos\(3) & ((!\inst2|Ball_Y_pos[2]~15\) # (!\inst2|Ball_Y_motion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(3),
	datab => \inst2|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst2|Ball_Y_pos[2]~15\,
	combout => \inst2|Ball_Y_pos[3]~16_combout\,
	cout => \inst2|Ball_Y_pos[3]~17\);

-- Location: FF_X20_Y18_N19
\inst2|Ball_Y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|SYNC|vert_sync_out~q\,
	d => \inst2|Ball_Y_pos[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Ball_Y_pos\(3));

-- Location: LCCOMB_X19_Y18_N30
\inst2|LessThan19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan19~0_combout\ = (\inst2|Ball_Y_pos\(3) & ((\inst2|Ball_Y_pos\(2)) # ((\inst2|Ball_Y_pos\(0)) # (\inst2|Ball_Y_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(2),
	datab => \inst2|Ball_Y_pos\(0),
	datac => \inst2|Ball_Y_pos\(1),
	datad => \inst2|Ball_Y_pos\(3),
	combout => \inst2|LessThan19~0_combout\);

-- Location: LCCOMB_X20_Y18_N22
\inst2|Ball_Y_pos[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Ball_Y_pos[5]~20_combout\ = (\inst2|Ball_Y_pos\(5) & ((\inst2|Ball_Y_motion\(0) & (\inst2|Ball_Y_pos[4]~19\ & VCC)) # (!\inst2|Ball_Y_motion\(0) & (!\inst2|Ball_Y_pos[4]~19\)))) # (!\inst2|Ball_Y_pos\(5) & ((\inst2|Ball_Y_motion\(0) & 
-- (!\inst2|Ball_Y_pos[4]~19\)) # (!\inst2|Ball_Y_motion\(0) & ((\inst2|Ball_Y_pos[4]~19\) # (GND)))))
-- \inst2|Ball_Y_pos[5]~21\ = CARRY((\inst2|Ball_Y_pos\(5) & (!\inst2|Ball_Y_motion\(0) & !\inst2|Ball_Y_pos[4]~19\)) # (!\inst2|Ball_Y_pos\(5) & ((!\inst2|Ball_Y_pos[4]~19\) # (!\inst2|Ball_Y_motion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(5),
	datab => \inst2|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst2|Ball_Y_pos[4]~19\,
	combout => \inst2|Ball_Y_pos[5]~20_combout\,
	cout => \inst2|Ball_Y_pos[5]~21\);

-- Location: LCCOMB_X20_Y18_N26
\inst2|Ball_Y_pos[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Ball_Y_pos[7]~24_combout\ = (\inst2|Ball_Y_pos\(7) & ((\inst2|Ball_Y_motion\(0) & (\inst2|Ball_Y_pos[6]~23\ & VCC)) # (!\inst2|Ball_Y_motion\(0) & (!\inst2|Ball_Y_pos[6]~23\)))) # (!\inst2|Ball_Y_pos\(7) & ((\inst2|Ball_Y_motion\(0) & 
-- (!\inst2|Ball_Y_pos[6]~23\)) # (!\inst2|Ball_Y_motion\(0) & ((\inst2|Ball_Y_pos[6]~23\) # (GND)))))
-- \inst2|Ball_Y_pos[7]~25\ = CARRY((\inst2|Ball_Y_pos\(7) & (!\inst2|Ball_Y_motion\(0) & !\inst2|Ball_Y_pos[6]~23\)) # (!\inst2|Ball_Y_pos\(7) & ((!\inst2|Ball_Y_pos[6]~23\) # (!\inst2|Ball_Y_motion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(7),
	datab => \inst2|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst2|Ball_Y_pos[6]~23\,
	combout => \inst2|Ball_Y_pos[7]~24_combout\,
	cout => \inst2|Ball_Y_pos[7]~25\);

-- Location: FF_X20_Y18_N27
\inst2|Ball_Y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|SYNC|vert_sync_out~q\,
	d => \inst2|Ball_Y_pos[7]~24_combout\,
	asdata => VCC,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Ball_Y_pos\(7));

-- Location: LCCOMB_X19_Y18_N28
\inst2|Ball_Y_motion~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Ball_Y_motion~4_combout\ = (\inst2|LessThan17~1_combout\ & (!\inst2|LessThan19~1_combout\ & (!\inst2|LessThan19~0_combout\ & !\inst2|Ball_Y_pos\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan17~1_combout\,
	datab => \inst2|LessThan19~1_combout\,
	datac => \inst2|LessThan19~0_combout\,
	datad => \inst2|Ball_Y_pos\(7),
	combout => \inst2|Ball_Y_motion~4_combout\);

-- Location: FF_X19_Y18_N29
\inst2|Ball_Y_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst2|Ball_Y_motion~4_combout\,
	sclr => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Ball_Y_motion\(1));

-- Location: LCCOMB_X20_Y18_N16
\inst2|Ball_Y_pos[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Ball_Y_pos[2]~14_combout\ = ((\inst2|Ball_Y_motion\(2) $ (\inst2|Ball_Y_pos\(2) $ (!\inst2|Ball_Y_pos[1]~13\)))) # (GND)
-- \inst2|Ball_Y_pos[2]~15\ = CARRY((\inst2|Ball_Y_motion\(2) & ((\inst2|Ball_Y_pos\(2)) # (!\inst2|Ball_Y_pos[1]~13\))) # (!\inst2|Ball_Y_motion\(2) & (\inst2|Ball_Y_pos\(2) & !\inst2|Ball_Y_pos[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_motion\(2),
	datab => \inst2|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst2|Ball_Y_pos[1]~13\,
	combout => \inst2|Ball_Y_pos[2]~14_combout\,
	cout => \inst2|Ball_Y_pos[2]~15\);

-- Location: FF_X20_Y18_N17
\inst2|Ball_Y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|SYNC|vert_sync_out~q\,
	d => \inst2|Ball_Y_pos[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Ball_Y_pos\(2));

-- Location: LCCOMB_X20_Y18_N20
\inst2|Ball_Y_pos[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Ball_Y_pos[4]~18_combout\ = ((\inst2|Ball_Y_pos\(4) $ (\inst2|Ball_Y_motion\(0) $ (!\inst2|Ball_Y_pos[3]~17\)))) # (GND)
-- \inst2|Ball_Y_pos[4]~19\ = CARRY((\inst2|Ball_Y_pos\(4) & ((\inst2|Ball_Y_motion\(0)) # (!\inst2|Ball_Y_pos[3]~17\))) # (!\inst2|Ball_Y_pos\(4) & (\inst2|Ball_Y_motion\(0) & !\inst2|Ball_Y_pos[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(4),
	datab => \inst2|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst2|Ball_Y_pos[3]~17\,
	combout => \inst2|Ball_Y_pos[4]~18_combout\,
	cout => \inst2|Ball_Y_pos[4]~19\);

-- Location: FF_X20_Y18_N23
\inst2|Ball_Y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|SYNC|vert_sync_out~q\,
	d => \inst2|Ball_Y_pos[5]~20_combout\,
	asdata => VCC,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Ball_Y_pos\(5));

-- Location: FF_X20_Y18_N21
\inst2|Ball_Y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|SYNC|vert_sync_out~q\,
	d => \inst2|Ball_Y_pos[4]~18_combout\,
	asdata => VCC,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Ball_Y_pos\(4));

-- Location: LCCOMB_X20_Y18_N8
\inst2|LessThan19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan19~1_combout\ = (\inst2|Ball_Y_pos\(6)) # ((\inst2|Ball_Y_pos\(5)) # ((\inst2|Ball_Y_pos\(8)) # (\inst2|Ball_Y_pos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(6),
	datab => \inst2|Ball_Y_pos\(5),
	datac => \inst2|Ball_Y_pos\(8),
	datad => \inst2|Ball_Y_pos\(4),
	combout => \inst2|LessThan19~1_combout\);

-- Location: LCCOMB_X19_Y18_N22
\inst2|LessThan19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan19~2_combout\ = (\inst2|LessThan19~1_combout\) # ((\inst2|Ball_Y_pos\(7)) # (\inst2|LessThan19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LessThan19~1_combout\,
	datac => \inst2|Ball_Y_pos\(7),
	datad => \inst2|LessThan19~0_combout\,
	combout => \inst2|LessThan19~2_combout\);

-- Location: LCCOMB_X19_Y18_N24
\inst2|Ball_Y_motion~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Ball_Y_motion~2_combout\ = (\inst8|output~q\ & (\inst1|left_button~q\ & ((\inst2|Ball_Y_pos\(9)) # (\inst2|LessThan19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(9),
	datab => \inst8|output~q\,
	datac => \inst2|LessThan19~2_combout\,
	datad => \inst1|left_button~q\,
	combout => \inst2|Ball_Y_motion~2_combout\);

-- Location: FF_X19_Y18_N25
\inst2|Ball_Y_motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst2|Ball_Y_motion~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Ball_Y_motion\(0));

-- Location: FF_X20_Y18_N29
\inst2|Ball_Y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|SYNC|vert_sync_out~q\,
	d => \inst2|Ball_Y_pos[8]~26_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Ball_Y_pos\(8));

-- Location: LCCOMB_X20_Y16_N28
\inst19|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~4_combout\ = \inst2|SYNC|pixel_row\(6) $ (((\inst2|SYNC|pixel_row\(5) & (\inst2|SYNC|pixel_row\(4) & \inst2|SYNC|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(5),
	datab => \inst2|SYNC|pixel_row\(4),
	datac => \inst2|SYNC|pixel_row\(3),
	datad => \inst2|SYNC|pixel_row\(6),
	combout => \inst19|Add2~4_combout\);

-- Location: LCCOMB_X19_Y18_N0
\inst2|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~1_cout\ = CARRY((!\inst2|SYNC|pixel_row\(0) & \inst2|Ball_Y_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(0),
	datab => \inst2|Ball_Y_pos\(0),
	datad => VCC,
	cout => \inst2|LessThan2~1_cout\);

-- Location: LCCOMB_X19_Y18_N2
\inst2|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~3_cout\ = CARRY((\inst2|Ball_Y_pos\(1) & (\inst2|SYNC|pixel_row\(1) & !\inst2|LessThan2~1_cout\)) # (!\inst2|Ball_Y_pos\(1) & ((\inst2|SYNC|pixel_row\(1)) # (!\inst2|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(1),
	datab => \inst2|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst2|LessThan2~1_cout\,
	cout => \inst2|LessThan2~3_cout\);

-- Location: LCCOMB_X19_Y18_N4
\inst2|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~5_cout\ = CARRY((\inst2|SYNC|pixel_row\(2) & (\inst2|Ball_Y_pos\(2) & !\inst2|LessThan2~3_cout\)) # (!\inst2|SYNC|pixel_row\(2) & ((\inst2|Ball_Y_pos\(2)) # (!\inst2|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(2),
	datab => \inst2|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst2|LessThan2~3_cout\,
	cout => \inst2|LessThan2~5_cout\);

-- Location: LCCOMB_X19_Y18_N6
\inst2|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~7_cout\ = CARRY((\inst2|SYNC|pixel_row\(3) & (!\inst2|Ball_Y_pos\(3) & !\inst2|LessThan2~5_cout\)) # (!\inst2|SYNC|pixel_row\(3) & ((!\inst2|LessThan2~5_cout\) # (!\inst2|Ball_Y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(3),
	datab => \inst2|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst2|LessThan2~5_cout\,
	cout => \inst2|LessThan2~7_cout\);

-- Location: LCCOMB_X19_Y18_N8
\inst2|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~9_cout\ = CARRY((\inst19|Add2~6_combout\ & (\inst2|Ball_Y_pos\(4) & !\inst2|LessThan2~7_cout\)) # (!\inst19|Add2~6_combout\ & ((\inst2|Ball_Y_pos\(4)) # (!\inst2|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~6_combout\,
	datab => \inst2|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst2|LessThan2~7_cout\,
	cout => \inst2|LessThan2~9_cout\);

-- Location: LCCOMB_X19_Y18_N10
\inst2|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~11_cout\ = CARRY((\inst19|Add2~5_combout\ & ((!\inst2|LessThan2~9_cout\) # (!\inst2|Ball_Y_pos\(5)))) # (!\inst19|Add2~5_combout\ & (!\inst2|Ball_Y_pos\(5) & !\inst2|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~5_combout\,
	datab => \inst2|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst2|LessThan2~9_cout\,
	cout => \inst2|LessThan2~11_cout\);

-- Location: LCCOMB_X19_Y18_N12
\inst2|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~13_cout\ = CARRY((\inst2|Ball_Y_pos\(6) & ((!\inst2|LessThan2~11_cout\) # (!\inst19|Add2~4_combout\))) # (!\inst2|Ball_Y_pos\(6) & (!\inst19|Add2~4_combout\ & !\inst2|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(6),
	datab => \inst19|Add2~4_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~11_cout\,
	cout => \inst2|LessThan2~13_cout\);

-- Location: LCCOMB_X19_Y18_N14
\inst2|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~15_cout\ = CARRY((\inst19|Add2~3_combout\ & ((!\inst2|LessThan2~13_cout\) # (!\inst2|Ball_Y_pos\(7)))) # (!\inst19|Add2~3_combout\ & (!\inst2|Ball_Y_pos\(7) & !\inst2|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~3_combout\,
	datab => \inst2|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst2|LessThan2~13_cout\,
	cout => \inst2|LessThan2~15_cout\);

-- Location: LCCOMB_X19_Y18_N16
\inst2|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~17_cout\ = CARRY((\inst19|Add2~2_combout\ & (\inst2|Ball_Y_pos\(8) & !\inst2|LessThan2~15_cout\)) # (!\inst19|Add2~2_combout\ & ((\inst2|Ball_Y_pos\(8)) # (!\inst2|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~2_combout\,
	datab => \inst2|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst2|LessThan2~15_cout\,
	cout => \inst2|LessThan2~17_cout\);

-- Location: LCCOMB_X19_Y18_N18
\inst2|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~18_combout\ = (\inst2|Ball_Y_pos\(9) & ((\inst2|LessThan2~17_cout\) # (!\inst19|Add2~1_combout\))) # (!\inst2|Ball_Y_pos\(9) & (!\inst19|Add2~1_combout\ & \inst2|LessThan2~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Ball_Y_pos\(9),
	datab => \inst19|Add2~1_combout\,
	cin => \inst2|LessThan2~17_cout\,
	combout => \inst2|LessThan2~18_combout\);

-- Location: LCCOMB_X28_Y16_N30
\inst2|SYNC|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|Add0~18_combout\ = \inst2|SYNC|Add0~17\ $ (\inst2|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SYNC|h_count\(9),
	cin => \inst2|SYNC|Add0~17\,
	combout => \inst2|SYNC|Add0~18_combout\);

-- Location: LCCOMB_X28_Y16_N2
\inst2|SYNC|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|h_count~1_combout\ = (\inst2|SYNC|Add0~18_combout\ & !\inst2|SYNC|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|SYNC|Add0~18_combout\,
	datad => \inst2|SYNC|Equal0~2_combout\,
	combout => \inst2|SYNC|h_count~1_combout\);

-- Location: FF_X28_Y16_N3
\inst2|SYNC|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|h_count\(9));

-- Location: FF_X24_Y16_N25
\inst2|SYNC|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|h_count\(9),
	sload => VCC,
	ena => \inst2|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_column\(9));

-- Location: FF_X24_Y16_N23
\inst2|SYNC|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|h_count\(8),
	sload => VCC,
	ena => \inst2|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_column\(8));

-- Location: FF_X24_Y16_N9
\inst2|SYNC|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|h_count\(6),
	sload => VCC,
	ena => \inst2|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_column\(6));

-- Location: LCCOMB_X23_Y16_N14
\inst19|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~1_cout\ = CARRY((\inst2|SYNC|pixel_column\(3) & \inst2|SYNC|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_column\(3),
	datab => \inst2|SYNC|pixel_column\(4),
	datad => VCC,
	cout => \inst19|Add0~1_cout\);

-- Location: LCCOMB_X23_Y16_N16
\inst19|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~3_cout\ = CARRY((!\inst19|Add0~1_cout\) # (!\inst2|SYNC|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_column\(5),
	datad => VCC,
	cin => \inst19|Add0~1_cout\,
	cout => \inst19|Add0~3_cout\);

-- Location: LCCOMB_X23_Y16_N22
\inst19|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~8_combout\ = (\inst2|SYNC|pixel_column\(8) & (\inst19|Add0~7\ $ (GND))) # (!\inst2|SYNC|pixel_column\(8) & (!\inst19|Add0~7\ & VCC))
-- \inst19|Add0~9\ = CARRY((\inst2|SYNC|pixel_column\(8) & !\inst19|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst19|Add0~7\,
	combout => \inst19|Add0~8_combout\,
	cout => \inst19|Add0~9\);

-- Location: LCCOMB_X23_Y16_N24
\inst19|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add0~10_combout\ = \inst19|Add0~9\ $ (\inst2|SYNC|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SYNC|pixel_column\(9),
	cin => \inst19|Add0~9\,
	combout => \inst19|Add0~10_combout\);

-- Location: LCCOMB_X22_Y16_N28
\inst17|RGB_Display~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|RGB_Display~2_combout\ = (!\inst2|SYNC|pixel_column\(9) & (\inst19|Add0~8_combout\ & !\inst19|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|pixel_column\(9),
	datac => \inst19|Add0~8_combout\,
	datad => \inst19|Add0~10_combout\,
	combout => \inst17|RGB_Display~2_combout\);

-- Location: FF_X23_Y16_N13
\inst2|SYNC|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|h_count\(3),
	sload => VCC,
	ena => \inst2|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_column\(3));

-- Location: LCCOMB_X23_Y16_N8
\inst19|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~1_combout\ = (\inst2|SYNC|pixel_column\(3) & ((\inst2|SYNC|pixel_column\(0)) # ((\inst2|SYNC|pixel_column\(1)) # (\inst2|SYNC|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_column\(0),
	datab => \inst2|SYNC|pixel_column\(1),
	datac => \inst2|SYNC|pixel_column\(2),
	datad => \inst2|SYNC|pixel_column\(3),
	combout => \inst19|LessThan1~1_combout\);

-- Location: LCCOMB_X22_Y16_N24
\inst19|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~0_combout\ = (\inst2|SYNC|pixel_column\(6) & \inst2|SYNC|pixel_column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|SYNC|pixel_column\(6),
	datad => \inst2|SYNC|pixel_column\(8),
	combout => \inst19|LessThan1~0_combout\);

-- Location: LCCOMB_X22_Y16_N20
\inst17|RGB_Display~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|RGB_Display~3_combout\ = (\inst17|RGB_Display~1_combout\ & (\inst17|RGB_Display~2_combout\ & ((!\inst19|LessThan1~0_combout\) # (!\inst19|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|RGB_Display~1_combout\,
	datab => \inst17|RGB_Display~2_combout\,
	datac => \inst19|LessThan1~1_combout\,
	datad => \inst19|LessThan1~0_combout\,
	combout => \inst17|RGB_Display~3_combout\);

-- Location: LCCOMB_X22_Y16_N4
\inst17|RGB_Display~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|RGB_Display~0_combout\ = (!\inst19|Add2~1_combout\ & (((!\inst2|SYNC|pixel_column\(4) & !\inst2|SYNC|pixel_column\(5))) # (!\inst19|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~1_combout\,
	datab => \inst19|LessThan1~0_combout\,
	datac => \inst2|SYNC|pixel_column\(4),
	datad => \inst2|SYNC|pixel_column\(5),
	combout => \inst17|RGB_Display~0_combout\);

-- Location: LCCOMB_X21_Y16_N0
\inst2|RGB_Display~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|RGB_Display~1_combout\ = (\inst2|RGB_Display~0_combout\ & (!\inst2|LessThan2~18_combout\ & (\inst17|RGB_Display~3_combout\ & \inst17|RGB_Display~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|RGB_Display~0_combout\,
	datab => \inst2|LessThan2~18_combout\,
	datac => \inst17|RGB_Display~3_combout\,
	datad => \inst17|RGB_Display~0_combout\,
	combout => \inst2|RGB_Display~1_combout\);

-- Location: LCCOMB_X22_Y19_N30
\inst2|Ball_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Ball_on~combout\ = (\inst2|RGB_Display~1_combout\) # ((\inst19|Ball_on~1_combout\ & \inst2|Ball_on~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Ball_on~1_combout\,
	datac => \inst2|RGB_Display~1_combout\,
	datad => \inst2|Ball_on~combout\,
	combout => \inst2|Ball_on~combout\);

-- Location: FF_X23_Y16_N31
\inst2|SYNC|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|h_count\(7),
	sload => VCC,
	ena => \inst2|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_column\(7));

-- Location: LCCOMB_X24_Y16_N12
\inst19|RGB_Display~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|RGB_Display~1_combout\ = (\inst2|SYNC|pixel_column\(5) & ((\inst2|SYNC|pixel_column\(6)) # ((!\inst2|SYNC|pixel_column\(4)) # (!\inst19|LessThan5~0_combout\)))) # (!\inst2|SYNC|pixel_column\(5) & (((\inst19|LessThan5~0_combout\) # 
-- (\inst2|SYNC|pixel_column\(4))) # (!\inst2|SYNC|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_column\(5),
	datab => \inst2|SYNC|pixel_column\(6),
	datac => \inst19|LessThan5~0_combout\,
	datad => \inst2|SYNC|pixel_column\(4),
	combout => \inst19|RGB_Display~1_combout\);

-- Location: LCCOMB_X24_Y16_N22
\inst19|RGB_Display~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|RGB_Display~2_combout\ = (\inst2|SYNC|pixel_column\(9)) # ((\inst2|SYNC|pixel_column\(7)) # ((\inst2|SYNC|pixel_column\(8)) # (\inst19|RGB_Display~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_column\(9),
	datab => \inst2|SYNC|pixel_column\(7),
	datac => \inst2|SYNC|pixel_column\(8),
	datad => \inst19|RGB_Display~1_combout\,
	combout => \inst19|RGB_Display~2_combout\);

-- Location: LCCOMB_X24_Y17_N16
\inst19|row_sel~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|row_sel~0_combout\ = (\inst2|SYNC|pixel_row\(1) & (!\inst19|LessThan15~2_combout\ & ((!\inst19|RGB_Display~2_combout\) # (!\inst19|Ball_on~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(1),
	datab => \inst19|Ball_on~0_combout\,
	datac => \inst19|RGB_Display~2_combout\,
	datad => \inst19|LessThan15~2_combout\,
	combout => \inst19|row_sel~0_combout\);

-- Location: CLKCTRL_G18
\inst2|RGB_Display~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|RGB_Display~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|RGB_Display~1clkctrl_outclk\);

-- Location: LCCOMB_X24_Y18_N4
\inst2|row_sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|row_sel\(0) = (GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & (\inst2|row_sel\(0))) # (!GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & ((\inst19|row_sel~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|row_sel\(0),
	datac => \inst19|row_sel~0_combout\,
	datad => \inst2|RGB_Display~1clkctrl_outclk\,
	combout => \inst2|row_sel\(0));

-- Location: LCCOMB_X23_Y16_N4
\inst19|row_sel~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|row_sel~1_combout\ = (\inst2|SYNC|pixel_row\(2) & (!\inst19|LessThan15~2_combout\ & ((!\inst19|Ball_on~0_combout\) # (!\inst19|RGB_Display~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(2),
	datab => \inst19|LessThan15~2_combout\,
	datac => \inst19|RGB_Display~2_combout\,
	datad => \inst19|Ball_on~0_combout\,
	combout => \inst19|row_sel~1_combout\);

-- Location: LCCOMB_X24_Y18_N6
\inst2|row_sel[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|row_sel\(1) = (GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & (\inst2|row_sel\(1))) # (!GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & ((\inst19|row_sel~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|row_sel\(1),
	datab => \inst19|row_sel~1_combout\,
	datad => \inst2|RGB_Display~1clkctrl_outclk\,
	combout => \inst2|row_sel\(1));

-- Location: LCCOMB_X24_Y18_N8
\inst2|row_sel[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|row_sel\(2) = (GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & ((\inst2|row_sel\(2)))) # (!GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & (\inst19|row_sel~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|row_sel~2_combout\,
	datac => \inst2|row_sel\(2),
	datad => \inst2|RGB_Display~1clkctrl_outclk\,
	combout => \inst2|row_sel\(2));

-- Location: LCCOMB_X24_Y16_N24
\inst19|RGB_Display~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|RGB_Display~0_combout\ = (!\inst2|SYNC|pixel_column\(8) & (!\inst2|SYNC|pixel_column\(6) & (!\inst2|SYNC|pixel_column\(9) & !\inst2|SYNC|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_column\(8),
	datab => \inst2|SYNC|pixel_column\(6),
	datac => \inst2|SYNC|pixel_column\(9),
	datad => \inst2|SYNC|pixel_column\(7),
	combout => \inst19|RGB_Display~0_combout\);

-- Location: LCCOMB_X24_Y16_N16
\inst19|RGB_Display~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|RGB_Display~5_combout\ = ((\inst2|SYNC|pixel_column\(4) $ (!\inst19|LessThan5~0_combout\)) # (!\inst19|RGB_Display~0_combout\)) # (!\inst2|SYNC|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_column\(5),
	datab => \inst19|RGB_Display~0_combout\,
	datac => \inst2|SYNC|pixel_column\(4),
	datad => \inst19|LessThan5~0_combout\,
	combout => \inst19|RGB_Display~5_combout\);

-- Location: LCCOMB_X24_Y16_N2
\inst19|char_sel~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|char_sel~2_combout\ = (!\inst19|LessThan15~2_combout\ & (((\inst19|RGB_Display~5_combout\ & !\inst19|RGB_Display~2_combout\)) # (!\inst19|Ball_on~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Ball_on~2_combout\,
	datab => \inst19|LessThan15~2_combout\,
	datac => \inst19|RGB_Display~5_combout\,
	datad => \inst19|RGB_Display~2_combout\,
	combout => \inst19|char_sel~2_combout\);

-- Location: LCCOMB_X24_Y18_N10
\inst2|char_sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|char_sel\(0) = (GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & (\inst2|char_sel\(0))) # (!GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & ((\inst19|char_sel~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|char_sel\(0),
	datab => \inst19|char_sel~2_combout\,
	datad => \inst2|RGB_Display~1clkctrl_outclk\,
	combout => \inst2|char_sel\(0));

-- Location: LCCOMB_X24_Y18_N16
\inst2|char_sel[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|char_sel\(1) = (GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & ((\inst2|char_sel\(1)))) # (!GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & (\inst19|char_sel~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|char_sel~8_combout\,
	datac => \inst2|char_sel\(1),
	datad => \inst2|RGB_Display~1clkctrl_outclk\,
	combout => \inst2|char_sel\(1));

-- Location: LCCOMB_X24_Y16_N14
\inst19|char_sel~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|char_sel~3_combout\ = (\inst2|SYNC|pixel_column\(5)) # (((\inst2|SYNC|pixel_column\(4) & \inst19|LessThan5~0_combout\)) # (!\inst19|RGB_Display~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_column\(5),
	datab => \inst19|RGB_Display~0_combout\,
	datac => \inst2|SYNC|pixel_column\(4),
	datad => \inst19|LessThan5~0_combout\,
	combout => \inst19|char_sel~3_combout\);

-- Location: FF_X20_Y16_N27
\inst2|SYNC|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|v_count\(5),
	sload => VCC,
	ena => \inst2|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_row\(5));

-- Location: LCCOMB_X20_Y16_N26
\inst19|LessThan15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|LessThan15~1_combout\ = (\inst2|SYNC|pixel_row\(4)) # ((\inst2|SYNC|pixel_row\(7)) # ((\inst2|SYNC|pixel_row\(5)) # (\inst2|SYNC|pixel_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(4),
	datab => \inst2|SYNC|pixel_row\(7),
	datac => \inst2|SYNC|pixel_row\(5),
	datad => \inst2|SYNC|pixel_row\(6),
	combout => \inst19|LessThan15~1_combout\);

-- Location: LCCOMB_X24_Y16_N26
\inst19|char_sel~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|char_sel~4_combout\ = (!\inst2|SYNC|pixel_row\(8) & (!\inst19|LessThan15~0_combout\ & (\inst19|char_sel~3_combout\ & !\inst19|LessThan15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(8),
	datab => \inst19|LessThan15~0_combout\,
	datac => \inst19|char_sel~3_combout\,
	datad => \inst19|LessThan15~1_combout\,
	combout => \inst19|char_sel~4_combout\);

-- Location: LCCOMB_X24_Y16_N28
\inst19|char_sel~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|char_sel~5_combout\ = (\inst19|char_sel~4_combout\ & (((\inst19|RGB_Display~5_combout\ & !\inst19|RGB_Display~2_combout\)) # (!\inst19|RGB_Display~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|RGB_Display~6_combout\,
	datab => \inst19|RGB_Display~5_combout\,
	datac => \inst19|char_sel~4_combout\,
	datad => \inst19|RGB_Display~2_combout\,
	combout => \inst19|char_sel~5_combout\);

-- Location: LCCOMB_X24_Y18_N2
\inst2|char_sel[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|char_sel\(2) = (GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & (\inst2|char_sel\(2))) # (!GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & ((\inst19|char_sel~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|char_sel\(2),
	datac => \inst19|char_sel~5_combout\,
	datad => \inst2|RGB_Display~1clkctrl_outclk\,
	combout => \inst2|char_sel\(2));

-- Location: LCCOMB_X24_Y16_N18
\inst19|RGB_Display~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|RGB_Display~6_combout\ = ((\inst19|LessThan5~0_combout\ & ((\inst2|SYNC|pixel_column\(5)) # (!\inst2|SYNC|pixel_column\(4)))) # (!\inst19|LessThan5~0_combout\ & ((\inst2|SYNC|pixel_column\(4)) # (!\inst2|SYNC|pixel_column\(5))))) # 
-- (!\inst19|RGB_Display~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan5~0_combout\,
	datab => \inst19|RGB_Display~0_combout\,
	datac => \inst2|SYNC|pixel_column\(4),
	datad => \inst2|SYNC|pixel_column\(5),
	combout => \inst19|RGB_Display~6_combout\);

-- Location: LCCOMB_X24_Y16_N10
\inst19|char_sel~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|char_sel~6_combout\ = ((\inst19|RGB_Display~6_combout\) # (\inst19|LessThan15~2_combout\)) # (!\inst19|char_sel~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|char_sel~3_combout\,
	datac => \inst19|RGB_Display~6_combout\,
	datad => \inst19|LessThan15~2_combout\,
	combout => \inst19|char_sel~6_combout\);

-- Location: LCCOMB_X24_Y18_N12
\inst2|char_sel[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|char_sel\(3) = (GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & (\inst2|char_sel\(3))) # (!GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & ((!\inst19|char_sel~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|char_sel\(3),
	datab => \inst19|char_sel~6_combout\,
	datad => \inst2|RGB_Display~1clkctrl_outclk\,
	combout => \inst2|char_sel\(3));

-- Location: LCCOMB_X26_Y16_N18
\inst19|RGB_Display~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|RGB_Display~7_combout\ = (\inst19|LessThan5~0_combout\) # ((\inst2|SYNC|pixel_column\(4)) # ((\inst2|SYNC|pixel_column\(5)) # (!\inst19|RGB_Display~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan5~0_combout\,
	datab => \inst2|SYNC|pixel_column\(4),
	datac => \inst2|SYNC|pixel_column\(5),
	datad => \inst19|RGB_Display~0_combout\,
	combout => \inst19|RGB_Display~7_combout\);

-- Location: LCCOMB_X24_Y16_N6
\inst19|Ball_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Ball_on~2_combout\ = ((\inst2|SYNC|pixel_column\(5) & ((\inst2|SYNC|pixel_column\(4)) # (\inst19|LessThan5~0_combout\)))) # (!\inst19|RGB_Display~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_column\(5),
	datab => \inst19|RGB_Display~0_combout\,
	datac => \inst2|SYNC|pixel_column\(4),
	datad => \inst19|LessThan5~0_combout\,
	combout => \inst19|Ball_on~2_combout\);

-- Location: LCCOMB_X26_Y16_N28
\inst19|char_sel~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|char_sel~7_combout\ = (\inst19|LessThan15~2_combout\) # ((\inst19|Ball_on~2_combout\ & (\inst19|RGB_Display~5_combout\)) # (!\inst19|Ball_on~2_combout\ & ((\inst19|RGB_Display~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|RGB_Display~5_combout\,
	datab => \inst19|RGB_Display~7_combout\,
	datac => \inst19|LessThan15~2_combout\,
	datad => \inst19|Ball_on~2_combout\,
	combout => \inst19|char_sel~7_combout\);

-- Location: LCCOMB_X26_Y18_N28
\inst2|char_sel[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|char_sel\(4) = (GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & (\inst2|char_sel\(4))) # (!GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & ((!\inst19|char_sel~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|char_sel\(4),
	datac => \inst19|char_sel~7_combout\,
	datad => \inst2|RGB_Display~1clkctrl_outclk\,
	combout => \inst2|char_sel\(4));

-- Location: LCCOMB_X23_Y17_N22
\inst19|col_sel~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|col_sel~1_combout\ = (!\inst19|LessThan15~2_combout\ & (\inst2|SYNC|pixel_column\(2) & ((!\inst19|RGB_Display~2_combout\) # (!\inst19|Ball_on~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan15~2_combout\,
	datab => \inst2|SYNC|pixel_column\(2),
	datac => \inst19|Ball_on~0_combout\,
	datad => \inst19|RGB_Display~2_combout\,
	combout => \inst19|col_sel~1_combout\);

-- Location: LCCOMB_X22_Y17_N4
\inst2|col_sel[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|col_sel\(1) = (GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & (\inst2|col_sel\(1))) # (!GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & ((\inst19|col_sel~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|col_sel\(1),
	datac => \inst19|col_sel~1_combout\,
	datad => \inst2|RGB_Display~1clkctrl_outclk\,
	combout => \inst2|col_sel\(1));

-- Location: LCCOMB_X23_Y16_N2
\inst19|col_sel~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|col_sel~2_combout\ = (!\inst19|LessThan15~2_combout\ & (\inst2|SYNC|pixel_column\(1) & ((!\inst19|Ball_on~0_combout\) # (!\inst19|RGB_Display~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|RGB_Display~2_combout\,
	datab => \inst19|LessThan15~2_combout\,
	datac => \inst2|SYNC|pixel_column\(1),
	datad => \inst19|Ball_on~0_combout\,
	combout => \inst19|col_sel~2_combout\);

-- Location: LCCOMB_X22_Y17_N6
\inst2|col_sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|col_sel\(0) = (GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & ((\inst2|col_sel\(0)))) # (!GLOBAL(\inst2|RGB_Display~1clkctrl_outclk\) & (\inst19|col_sel~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|col_sel~2_combout\,
	datac => \inst2|col_sel\(0),
	datad => \inst2|RGB_Display~1clkctrl_outclk\,
	combout => \inst2|col_sel\(0));

-- Location: LCCOMB_X22_Y17_N28
\inst2|CHAR|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|CHAR|Mux0~0_combout\ = (\inst2|col_sel\(1) & (((\inst2|col_sel\(0))))) # (!\inst2|col_sel\(1) & ((\inst2|col_sel\(0) & (\inst2|CHAR|altsyncram_component|auto_generated|q_a\(6))) # (!\inst2|col_sel\(0) & 
-- ((\inst2|CHAR|altsyncram_component|auto_generated|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst2|CHAR|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst2|col_sel\(1),
	datad => \inst2|col_sel\(0),
	combout => \inst2|CHAR|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y17_N22
\inst2|CHAR|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|CHAR|Mux0~1_combout\ = (\inst2|col_sel\(1) & ((\inst2|CHAR|Mux0~0_combout\ & ((\inst2|CHAR|altsyncram_component|auto_generated|q_a\(4)))) # (!\inst2|CHAR|Mux0~0_combout\ & (\inst2|CHAR|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (!\inst2|col_sel\(1) & (((\inst2|CHAR|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst2|CHAR|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst2|col_sel\(1),
	datad => \inst2|CHAR|Mux0~0_combout\,
	combout => \inst2|CHAR|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y17_N24
\inst2|CHAR|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|CHAR|Mux0~2_combout\ = (\inst2|col_sel\(1) & ((\inst2|CHAR|altsyncram_component|auto_generated|q_a\(1)) # ((\inst2|col_sel\(0))))) # (!\inst2|col_sel\(1) & (((\inst2|CHAR|altsyncram_component|auto_generated|q_a\(3) & !\inst2|col_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst2|CHAR|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst2|col_sel\(1),
	datad => \inst2|col_sel\(0),
	combout => \inst2|CHAR|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y17_N10
\inst2|CHAR|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|CHAR|Mux0~3_combout\ = (\inst2|col_sel\(0) & ((\inst2|CHAR|Mux0~2_combout\ & ((\inst2|CHAR|altsyncram_component|auto_generated|q_a\(0)))) # (!\inst2|CHAR|Mux0~2_combout\ & (\inst2|CHAR|altsyncram_component|auto_generated|q_a\(2))))) # 
-- (!\inst2|col_sel\(0) & (((\inst2|CHAR|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst2|CHAR|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst2|col_sel\(0),
	datad => \inst2|CHAR|Mux0~2_combout\,
	combout => \inst2|CHAR|Mux0~3_combout\);

-- Location: LCCOMB_X22_Y17_N12
\inst2|SYNC|blue_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|blue_out~2_combout\ = (!\inst2|Ball_on~combout\ & ((\inst2|col_sel\(2) & ((!\inst2|CHAR|Mux0~3_combout\))) # (!\inst2|col_sel\(2) & (!\inst2|CHAR|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|col_sel\(2),
	datab => \inst2|Ball_on~combout\,
	datac => \inst2|CHAR|Mux0~1_combout\,
	datad => \inst2|CHAR|Mux0~3_combout\,
	combout => \inst2|SYNC|blue_out~2_combout\);

-- Location: LCCOMB_X22_Y17_N0
\inst2|SYNC|blue_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|blue_out~3_combout\ = (\inst2|SYNC|video_on_h~q\ & (\inst2|SYNC|video_on_v~q\ & \inst2|SYNC|blue_out~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|video_on_h~q\,
	datac => \inst2|SYNC|video_on_v~q\,
	datad => \inst2|SYNC|blue_out~2_combout\,
	combout => \inst2|SYNC|blue_out~3_combout\);

-- Location: FF_X22_Y17_N1
\inst2|SYNC|blue_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|blue_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|blue_out\(3));

-- Location: LCCOMB_X21_Y17_N22
\inst21|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|Mux8~0_combout\ = (\inst22|output_select~0_combout\ & (((\inst2|SYNC|blue_out\(3)) # (\inst22|output_select~1_combout\)))) # (!\inst22|output_select~0_combout\ & (\inst19|SYNC|blue_out\(3) & ((!\inst22|output_select~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|SYNC|blue_out\(3),
	datab => \inst22|output_select~0_combout\,
	datac => \inst2|SYNC|blue_out\(3),
	datad => \inst22|output_select~1_combout\,
	combout => \inst21|Mux8~0_combout\);

-- Location: LCCOMB_X20_Y19_N6
\inst18|Ball_Y_motion~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Ball_Y_motion~2_combout\ = (\inst8|output~q\ & (\inst1|left_button~q\ & ((\inst18|LessThan19~2_combout\) # (\inst18|Ball_Y_pos\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LessThan19~2_combout\,
	datab => \inst8|output~q\,
	datac => \inst18|Ball_Y_pos\(9),
	datad => \inst1|left_button~q\,
	combout => \inst18|Ball_Y_motion~2_combout\);

-- Location: FF_X20_Y19_N7
\inst18|Ball_Y_motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst18|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst18|Ball_Y_motion~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Ball_Y_motion\(0));

-- Location: LCCOMB_X20_Y19_N10
\inst18|Ball_Y_pos[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Ball_Y_pos[0]~10_combout\ = (\inst18|Ball_Y_motion\(0) & (\inst18|Ball_Y_pos\(0) $ (VCC))) # (!\inst18|Ball_Y_motion\(0) & (\inst18|Ball_Y_pos\(0) & VCC))
-- \inst18|Ball_Y_pos[0]~11\ = CARRY((\inst18|Ball_Y_motion\(0) & \inst18|Ball_Y_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_motion\(0),
	datab => \inst18|Ball_Y_pos\(0),
	datad => VCC,
	combout => \inst18|Ball_Y_pos[0]~10_combout\,
	cout => \inst18|Ball_Y_pos[0]~11\);

-- Location: FF_X20_Y19_N11
\inst18|Ball_Y_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst18|SYNC|vert_sync_out~q\,
	d => \inst18|Ball_Y_pos[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Ball_Y_pos\(0));

-- Location: LCCOMB_X20_Y19_N12
\inst18|Ball_Y_pos[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Ball_Y_pos[1]~12_combout\ = (\inst18|Ball_Y_motion\(1) & ((\inst18|Ball_Y_pos\(1) & (\inst18|Ball_Y_pos[0]~11\ & VCC)) # (!\inst18|Ball_Y_pos\(1) & (!\inst18|Ball_Y_pos[0]~11\)))) # (!\inst18|Ball_Y_motion\(1) & ((\inst18|Ball_Y_pos\(1) & 
-- (!\inst18|Ball_Y_pos[0]~11\)) # (!\inst18|Ball_Y_pos\(1) & ((\inst18|Ball_Y_pos[0]~11\) # (GND)))))
-- \inst18|Ball_Y_pos[1]~13\ = CARRY((\inst18|Ball_Y_motion\(1) & (!\inst18|Ball_Y_pos\(1) & !\inst18|Ball_Y_pos[0]~11\)) # (!\inst18|Ball_Y_motion\(1) & ((!\inst18|Ball_Y_pos[0]~11\) # (!\inst18|Ball_Y_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_motion\(1),
	datab => \inst18|Ball_Y_pos\(1),
	datad => VCC,
	cin => \inst18|Ball_Y_pos[0]~11\,
	combout => \inst18|Ball_Y_pos[1]~12_combout\,
	cout => \inst18|Ball_Y_pos[1]~13\);

-- Location: FF_X20_Y19_N13
\inst18|Ball_Y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst18|SYNC|vert_sync_out~q\,
	d => \inst18|Ball_Y_pos[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Ball_Y_pos\(1));

-- Location: LCCOMB_X20_Y19_N14
\inst18|Ball_Y_pos[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Ball_Y_pos[2]~14_combout\ = ((\inst18|Ball_Y_motion\(2) $ (\inst18|Ball_Y_pos\(2) $ (!\inst18|Ball_Y_pos[1]~13\)))) # (GND)
-- \inst18|Ball_Y_pos[2]~15\ = CARRY((\inst18|Ball_Y_motion\(2) & ((\inst18|Ball_Y_pos\(2)) # (!\inst18|Ball_Y_pos[1]~13\))) # (!\inst18|Ball_Y_motion\(2) & (\inst18|Ball_Y_pos\(2) & !\inst18|Ball_Y_pos[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_motion\(2),
	datab => \inst18|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst18|Ball_Y_pos[1]~13\,
	combout => \inst18|Ball_Y_pos[2]~14_combout\,
	cout => \inst18|Ball_Y_pos[2]~15\);

-- Location: FF_X20_Y19_N15
\inst18|Ball_Y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst18|SYNC|vert_sync_out~q\,
	d => \inst18|Ball_Y_pos[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Ball_Y_pos\(2));

-- Location: LCCOMB_X20_Y19_N16
\inst18|Ball_Y_pos[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Ball_Y_pos[3]~16_combout\ = (\inst18|Ball_Y_motion\(0) & ((\inst18|Ball_Y_pos\(3) & (\inst18|Ball_Y_pos[2]~15\ & VCC)) # (!\inst18|Ball_Y_pos\(3) & (!\inst18|Ball_Y_pos[2]~15\)))) # (!\inst18|Ball_Y_motion\(0) & ((\inst18|Ball_Y_pos\(3) & 
-- (!\inst18|Ball_Y_pos[2]~15\)) # (!\inst18|Ball_Y_pos\(3) & ((\inst18|Ball_Y_pos[2]~15\) # (GND)))))
-- \inst18|Ball_Y_pos[3]~17\ = CARRY((\inst18|Ball_Y_motion\(0) & (!\inst18|Ball_Y_pos\(3) & !\inst18|Ball_Y_pos[2]~15\)) # (!\inst18|Ball_Y_motion\(0) & ((!\inst18|Ball_Y_pos[2]~15\) # (!\inst18|Ball_Y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_motion\(0),
	datab => \inst18|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst18|Ball_Y_pos[2]~15\,
	combout => \inst18|Ball_Y_pos[3]~16_combout\,
	cout => \inst18|Ball_Y_pos[3]~17\);

-- Location: FF_X20_Y19_N17
\inst18|Ball_Y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst18|SYNC|vert_sync_out~q\,
	d => \inst18|Ball_Y_pos[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Ball_Y_pos\(3));

-- Location: LCCOMB_X20_Y19_N18
\inst18|Ball_Y_pos[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Ball_Y_pos[4]~18_combout\ = ((\inst18|Ball_Y_motion\(0) $ (\inst18|Ball_Y_pos\(4) $ (!\inst18|Ball_Y_pos[3]~17\)))) # (GND)
-- \inst18|Ball_Y_pos[4]~19\ = CARRY((\inst18|Ball_Y_motion\(0) & ((\inst18|Ball_Y_pos\(4)) # (!\inst18|Ball_Y_pos[3]~17\))) # (!\inst18|Ball_Y_motion\(0) & (\inst18|Ball_Y_pos\(4) & !\inst18|Ball_Y_pos[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_motion\(0),
	datab => \inst18|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst18|Ball_Y_pos[3]~17\,
	combout => \inst18|Ball_Y_pos[4]~18_combout\,
	cout => \inst18|Ball_Y_pos[4]~19\);

-- Location: FF_X20_Y19_N19
\inst18|Ball_Y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst18|SYNC|vert_sync_out~q\,
	d => \inst18|Ball_Y_pos[4]~18_combout\,
	asdata => VCC,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Ball_Y_pos\(4));

-- Location: LCCOMB_X20_Y19_N20
\inst18|Ball_Y_pos[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Ball_Y_pos[5]~20_combout\ = (\inst18|Ball_Y_pos\(5) & ((\inst18|Ball_Y_motion\(0) & (\inst18|Ball_Y_pos[4]~19\ & VCC)) # (!\inst18|Ball_Y_motion\(0) & (!\inst18|Ball_Y_pos[4]~19\)))) # (!\inst18|Ball_Y_pos\(5) & ((\inst18|Ball_Y_motion\(0) & 
-- (!\inst18|Ball_Y_pos[4]~19\)) # (!\inst18|Ball_Y_motion\(0) & ((\inst18|Ball_Y_pos[4]~19\) # (GND)))))
-- \inst18|Ball_Y_pos[5]~21\ = CARRY((\inst18|Ball_Y_pos\(5) & (!\inst18|Ball_Y_motion\(0) & !\inst18|Ball_Y_pos[4]~19\)) # (!\inst18|Ball_Y_pos\(5) & ((!\inst18|Ball_Y_pos[4]~19\) # (!\inst18|Ball_Y_motion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(5),
	datab => \inst18|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst18|Ball_Y_pos[4]~19\,
	combout => \inst18|Ball_Y_pos[5]~20_combout\,
	cout => \inst18|Ball_Y_pos[5]~21\);

-- Location: LCCOMB_X20_Y19_N22
\inst18|Ball_Y_pos[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Ball_Y_pos[6]~22_combout\ = ((\inst18|Ball_Y_pos\(6) $ (\inst18|Ball_Y_motion\(0) $ (!\inst18|Ball_Y_pos[5]~21\)))) # (GND)
-- \inst18|Ball_Y_pos[6]~23\ = CARRY((\inst18|Ball_Y_pos\(6) & ((\inst18|Ball_Y_motion\(0)) # (!\inst18|Ball_Y_pos[5]~21\))) # (!\inst18|Ball_Y_pos\(6) & (\inst18|Ball_Y_motion\(0) & !\inst18|Ball_Y_pos[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(6),
	datab => \inst18|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst18|Ball_Y_pos[5]~21\,
	combout => \inst18|Ball_Y_pos[6]~22_combout\,
	cout => \inst18|Ball_Y_pos[6]~23\);

-- Location: LCCOMB_X20_Y19_N24
\inst18|Ball_Y_pos[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Ball_Y_pos[7]~24_combout\ = (\inst18|Ball_Y_motion\(0) & ((\inst18|Ball_Y_pos\(7) & (\inst18|Ball_Y_pos[6]~23\ & VCC)) # (!\inst18|Ball_Y_pos\(7) & (!\inst18|Ball_Y_pos[6]~23\)))) # (!\inst18|Ball_Y_motion\(0) & ((\inst18|Ball_Y_pos\(7) & 
-- (!\inst18|Ball_Y_pos[6]~23\)) # (!\inst18|Ball_Y_pos\(7) & ((\inst18|Ball_Y_pos[6]~23\) # (GND)))))
-- \inst18|Ball_Y_pos[7]~25\ = CARRY((\inst18|Ball_Y_motion\(0) & (!\inst18|Ball_Y_pos\(7) & !\inst18|Ball_Y_pos[6]~23\)) # (!\inst18|Ball_Y_motion\(0) & ((!\inst18|Ball_Y_pos[6]~23\) # (!\inst18|Ball_Y_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_motion\(0),
	datab => \inst18|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst18|Ball_Y_pos[6]~23\,
	combout => \inst18|Ball_Y_pos[7]~24_combout\,
	cout => \inst18|Ball_Y_pos[7]~25\);

-- Location: FF_X20_Y19_N25
\inst18|Ball_Y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst18|SYNC|vert_sync_out~q\,
	d => \inst18|Ball_Y_pos[7]~24_combout\,
	asdata => VCC,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Ball_Y_pos\(7));

-- Location: LCCOMB_X20_Y19_N26
\inst18|Ball_Y_pos[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Ball_Y_pos[8]~26_combout\ = ((\inst18|Ball_Y_pos\(8) $ (\inst18|Ball_Y_motion\(0) $ (!\inst18|Ball_Y_pos[7]~25\)))) # (GND)
-- \inst18|Ball_Y_pos[8]~27\ = CARRY((\inst18|Ball_Y_pos\(8) & ((\inst18|Ball_Y_motion\(0)) # (!\inst18|Ball_Y_pos[7]~25\))) # (!\inst18|Ball_Y_pos\(8) & (\inst18|Ball_Y_motion\(0) & !\inst18|Ball_Y_pos[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(8),
	datab => \inst18|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst18|Ball_Y_pos[7]~25\,
	combout => \inst18|Ball_Y_pos[8]~26_combout\,
	cout => \inst18|Ball_Y_pos[8]~27\);

-- Location: LCCOMB_X20_Y19_N28
\inst18|Ball_Y_pos[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Ball_Y_pos[9]~28_combout\ = \inst18|Ball_Y_pos\(9) $ (\inst18|Ball_Y_motion\(0) $ (\inst18|Ball_Y_pos[8]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(9),
	datab => \inst18|Ball_Y_motion\(0),
	cin => \inst18|Ball_Y_pos[8]~27\,
	combout => \inst18|Ball_Y_pos[9]~28_combout\);

-- Location: FF_X20_Y19_N29
\inst18|Ball_Y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst18|SYNC|vert_sync_out~q\,
	d => \inst18|Ball_Y_pos[9]~28_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Ball_Y_pos\(9));

-- Location: FF_X20_Y19_N27
\inst18|Ball_Y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst18|SYNC|vert_sync_out~q\,
	d => \inst18|Ball_Y_pos[8]~26_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Ball_Y_pos\(8));

-- Location: LCCOMB_X21_Y16_N4
\inst19|Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Add2~3_combout\ = \inst2|SYNC|pixel_row\(7) $ (\inst19|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|SYNC|pixel_row\(7),
	datad => \inst19|Add2~0_combout\,
	combout => \inst19|Add2~3_combout\);

-- Location: FF_X20_Y19_N23
\inst18|Ball_Y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst18|SYNC|vert_sync_out~q\,
	d => \inst18|Ball_Y_pos[6]~22_combout\,
	asdata => VCC,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Ball_Y_pos\(6));

-- Location: FF_X20_Y19_N21
\inst18|Ball_Y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst18|SYNC|vert_sync_out~q\,
	d => \inst18|Ball_Y_pos[5]~20_combout\,
	asdata => VCC,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Ball_Y_pos\(5));

-- Location: FF_X20_Y16_N1
\inst2|SYNC|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|SYNC|v_count\(0),
	sload => VCC,
	ena => \inst2|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|pixel_row\(0));

-- Location: LCCOMB_X21_Y19_N0
\inst18|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan2~1_cout\ = CARRY((\inst18|Ball_Y_pos\(0) & !\inst2|SYNC|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(0),
	datab => \inst2|SYNC|pixel_row\(0),
	datad => VCC,
	cout => \inst18|LessThan2~1_cout\);

-- Location: LCCOMB_X21_Y19_N2
\inst18|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan2~3_cout\ = CARRY((\inst18|Ball_Y_pos\(1) & (\inst2|SYNC|pixel_row\(1) & !\inst18|LessThan2~1_cout\)) # (!\inst18|Ball_Y_pos\(1) & ((\inst2|SYNC|pixel_row\(1)) # (!\inst18|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(1),
	datab => \inst2|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst18|LessThan2~1_cout\,
	cout => \inst18|LessThan2~3_cout\);

-- Location: LCCOMB_X21_Y19_N4
\inst18|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan2~5_cout\ = CARRY((\inst18|Ball_Y_pos\(2) & ((!\inst18|LessThan2~3_cout\) # (!\inst2|SYNC|pixel_row\(2)))) # (!\inst18|Ball_Y_pos\(2) & (!\inst2|SYNC|pixel_row\(2) & !\inst18|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(2),
	datab => \inst2|SYNC|pixel_row\(2),
	datad => VCC,
	cin => \inst18|LessThan2~3_cout\,
	cout => \inst18|LessThan2~5_cout\);

-- Location: LCCOMB_X21_Y19_N6
\inst18|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan2~7_cout\ = CARRY((\inst2|SYNC|pixel_row\(3) & (!\inst18|Ball_Y_pos\(3) & !\inst18|LessThan2~5_cout\)) # (!\inst2|SYNC|pixel_row\(3) & ((!\inst18|LessThan2~5_cout\) # (!\inst18|Ball_Y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(3),
	datab => \inst18|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst18|LessThan2~5_cout\,
	cout => \inst18|LessThan2~7_cout\);

-- Location: LCCOMB_X21_Y19_N8
\inst18|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan2~9_cout\ = CARRY((\inst19|Add2~6_combout\ & (\inst18|Ball_Y_pos\(4) & !\inst18|LessThan2~7_cout\)) # (!\inst19|Add2~6_combout\ & ((\inst18|Ball_Y_pos\(4)) # (!\inst18|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~6_combout\,
	datab => \inst18|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst18|LessThan2~7_cout\,
	cout => \inst18|LessThan2~9_cout\);

-- Location: LCCOMB_X21_Y19_N10
\inst18|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan2~11_cout\ = CARRY((\inst19|Add2~5_combout\ & ((!\inst18|LessThan2~9_cout\) # (!\inst18|Ball_Y_pos\(5)))) # (!\inst19|Add2~5_combout\ & (!\inst18|Ball_Y_pos\(5) & !\inst18|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~5_combout\,
	datab => \inst18|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst18|LessThan2~9_cout\,
	cout => \inst18|LessThan2~11_cout\);

-- Location: LCCOMB_X21_Y19_N12
\inst18|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan2~13_cout\ = CARRY((\inst19|Add2~4_combout\ & (\inst18|Ball_Y_pos\(6) & !\inst18|LessThan2~11_cout\)) # (!\inst19|Add2~4_combout\ & ((\inst18|Ball_Y_pos\(6)) # (!\inst18|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~4_combout\,
	datab => \inst18|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst18|LessThan2~11_cout\,
	cout => \inst18|LessThan2~13_cout\);

-- Location: LCCOMB_X21_Y19_N14
\inst18|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan2~15_cout\ = CARRY((\inst18|Ball_Y_pos\(7) & (\inst19|Add2~3_combout\ & !\inst18|LessThan2~13_cout\)) # (!\inst18|Ball_Y_pos\(7) & ((\inst19|Add2~3_combout\) # (!\inst18|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Ball_Y_pos\(7),
	datab => \inst19|Add2~3_combout\,
	datad => VCC,
	cin => \inst18|LessThan2~13_cout\,
	cout => \inst18|LessThan2~15_cout\);

-- Location: LCCOMB_X21_Y19_N16
\inst18|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan2~17_cout\ = CARRY((\inst19|Add2~2_combout\ & (\inst18|Ball_Y_pos\(8) & !\inst18|LessThan2~15_cout\)) # (!\inst19|Add2~2_combout\ & ((\inst18|Ball_Y_pos\(8)) # (!\inst18|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add2~2_combout\,
	datab => \inst18|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst18|LessThan2~15_cout\,
	cout => \inst18|LessThan2~17_cout\);

-- Location: LCCOMB_X21_Y19_N18
\inst18|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|LessThan2~18_combout\ = (\inst19|Add2~1_combout\ & (\inst18|LessThan2~17_cout\ & \inst18|Ball_Y_pos\(9))) # (!\inst19|Add2~1_combout\ & ((\inst18|LessThan2~17_cout\) # (\inst18|Ball_Y_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add2~1_combout\,
	datad => \inst18|Ball_Y_pos\(9),
	cin => \inst18|LessThan2~17_cout\,
	combout => \inst18|LessThan2~18_combout\);

-- Location: LCCOMB_X21_Y19_N28
\inst18|RGB_Display~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|RGB_Display~1_combout\ = (\inst18|RGB_Display~0_combout\ & (!\inst18|LessThan2~18_combout\ & (\inst17|RGB_Display~3_combout\ & \inst17|RGB_Display~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|RGB_Display~0_combout\,
	datab => \inst18|LessThan2~18_combout\,
	datac => \inst17|RGB_Display~3_combout\,
	datad => \inst17|RGB_Display~0_combout\,
	combout => \inst18|RGB_Display~1_combout\);

-- Location: LCCOMB_X22_Y19_N28
\inst18|Ball_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Ball_on~combout\ = (\inst18|RGB_Display~1_combout\) # ((\inst19|Ball_on~1_combout\ & \inst18|Ball_on~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|RGB_Display~1_combout\,
	datac => \inst19|Ball_on~1_combout\,
	datad => \inst18|Ball_on~combout\,
	combout => \inst18|Ball_on~combout\);

-- Location: CLKCTRL_G12
\inst18|RGB_Display~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst18|RGB_Display~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst18|RGB_Display~1clkctrl_outclk\);

-- Location: LCCOMB_X24_Y19_N4
\inst18|row_sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|row_sel\(0) = (GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & ((\inst18|row_sel\(0)))) # (!GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & (\inst19|row_sel~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|row_sel~0_combout\,
	datac => \inst18|row_sel\(0),
	datad => \inst18|RGB_Display~1clkctrl_outclk\,
	combout => \inst18|row_sel\(0));

-- Location: LCCOMB_X24_Y19_N2
\inst18|row_sel[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|row_sel\(1) = (GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & (\inst18|row_sel\(1))) # (!GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & ((\inst19|row_sel~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|row_sel\(1),
	datac => \inst19|row_sel~1_combout\,
	datad => \inst18|RGB_Display~1clkctrl_outclk\,
	combout => \inst18|row_sel\(1));

-- Location: LCCOMB_X24_Y19_N16
\inst18|row_sel[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|row_sel\(2) = (GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & ((\inst18|row_sel\(2)))) # (!GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & (\inst19|row_sel~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|row_sel~2_combout\,
	datab => \inst18|row_sel\(2),
	datad => \inst18|RGB_Display~1clkctrl_outclk\,
	combout => \inst18|row_sel\(2));

-- Location: LCCOMB_X24_Y19_N22
\inst18|char_sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|char_sel\(0) = (GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & (\inst18|char_sel\(0))) # (!GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & ((\inst19|char_sel~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|char_sel\(0),
	datac => \inst19|char_sel~2_combout\,
	datad => \inst18|RGB_Display~1clkctrl_outclk\,
	combout => \inst18|char_sel\(0));

-- Location: LCCOMB_X24_Y19_N20
\inst18|char_sel[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|char_sel\(1) = (GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & ((\inst18|char_sel\(1)))) # (!GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & (\inst19|char_sel~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|char_sel~8_combout\,
	datab => \inst18|char_sel\(1),
	datad => \inst18|RGB_Display~1clkctrl_outclk\,
	combout => \inst18|char_sel\(1));

-- Location: LCCOMB_X24_Y19_N26
\inst18|char_sel[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|char_sel\(2) = (GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & ((\inst18|char_sel\(2)))) # (!GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & (\inst19|char_sel~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|char_sel~5_combout\,
	datac => \inst18|char_sel\(2),
	datad => \inst18|RGB_Display~1clkctrl_outclk\,
	combout => \inst18|char_sel\(2));

-- Location: LCCOMB_X24_Y19_N12
\inst18|char_sel[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|char_sel\(3) = (GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & ((\inst18|char_sel\(3)))) # (!GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & (!\inst19|char_sel~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|char_sel~6_combout\,
	datac => \inst18|char_sel\(3),
	datad => \inst18|RGB_Display~1clkctrl_outclk\,
	combout => \inst18|char_sel\(3));

-- Location: LCCOMB_X26_Y19_N0
\inst18|char_sel[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|char_sel\(4) = (GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & ((\inst18|char_sel\(4)))) # (!GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & (!\inst19|char_sel~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|char_sel~7_combout\,
	datac => \inst18|RGB_Display~1clkctrl_outclk\,
	datad => \inst18|char_sel\(4),
	combout => \inst18|char_sel\(4));

-- Location: LCCOMB_X22_Y19_N12
\inst18|col_sel[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|col_sel\(1) = (GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & (\inst18|col_sel\(1))) # (!GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & ((\inst19|col_sel~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|col_sel\(1),
	datab => \inst19|col_sel~1_combout\,
	datad => \inst18|RGB_Display~1clkctrl_outclk\,
	combout => \inst18|col_sel\(1));

-- Location: LCCOMB_X22_Y19_N6
\inst18|col_sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|col_sel\(0) = (GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & ((\inst18|col_sel\(0)))) # (!GLOBAL(\inst18|RGB_Display~1clkctrl_outclk\) & (\inst19|col_sel~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|col_sel~2_combout\,
	datab => \inst18|col_sel\(0),
	datad => \inst18|RGB_Display~1clkctrl_outclk\,
	combout => \inst18|col_sel\(0));

-- Location: LCCOMB_X22_Y19_N16
\inst18|CHAR|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|CHAR|Mux0~0_combout\ = (\inst18|col_sel\(1) & (((\inst18|col_sel\(0))))) # (!\inst18|col_sel\(1) & ((\inst18|col_sel\(0) & ((\inst18|CHAR|altsyncram_component|auto_generated|q_a\(6)))) # (!\inst18|col_sel\(0) & 
-- (\inst18|CHAR|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|col_sel\(1),
	datab => \inst18|CHAR|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst18|CHAR|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst18|col_sel\(0),
	combout => \inst18|CHAR|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y19_N26
\inst18|CHAR|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|CHAR|Mux0~1_combout\ = (\inst18|col_sel\(1) & ((\inst18|CHAR|Mux0~0_combout\ & ((\inst18|CHAR|altsyncram_component|auto_generated|q_a\(4)))) # (!\inst18|CHAR|Mux0~0_combout\ & (\inst18|CHAR|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (!\inst18|col_sel\(1) & (((\inst18|CHAR|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|CHAR|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst18|CHAR|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst18|col_sel\(1),
	datad => \inst18|CHAR|Mux0~0_combout\,
	combout => \inst18|CHAR|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y19_N24
\inst18|CHAR|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|CHAR|Mux0~2_combout\ = (\inst18|col_sel\(0) & (((\inst18|col_sel\(1))))) # (!\inst18|col_sel\(0) & ((\inst18|col_sel\(1) & (\inst18|CHAR|altsyncram_component|auto_generated|q_a\(1))) # (!\inst18|col_sel\(1) & 
-- ((\inst18|CHAR|altsyncram_component|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|CHAR|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst18|CHAR|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst18|col_sel\(0),
	datad => \inst18|col_sel\(1),
	combout => \inst18|CHAR|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y19_N10
\inst18|CHAR|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|CHAR|Mux0~3_combout\ = (\inst18|col_sel\(0) & ((\inst18|CHAR|Mux0~2_combout\ & (\inst18|CHAR|altsyncram_component|auto_generated|q_a\(0))) # (!\inst18|CHAR|Mux0~2_combout\ & ((\inst18|CHAR|altsyncram_component|auto_generated|q_a\(2)))))) # 
-- (!\inst18|col_sel\(0) & (((\inst18|CHAR|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|CHAR|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst18|CHAR|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst18|col_sel\(0),
	datad => \inst18|CHAR|Mux0~2_combout\,
	combout => \inst18|CHAR|Mux0~3_combout\);

-- Location: LCCOMB_X22_Y19_N20
\inst18|SYNC|blue_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|SYNC|blue_out~2_combout\ = (!\inst18|Ball_on~combout\ & ((\inst18|col_sel\(2) & ((!\inst18|CHAR|Mux0~3_combout\))) # (!\inst18|col_sel\(2) & (!\inst18|CHAR|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|col_sel\(2),
	datab => \inst18|Ball_on~combout\,
	datac => \inst18|CHAR|Mux0~1_combout\,
	datad => \inst18|CHAR|Mux0~3_combout\,
	combout => \inst18|SYNC|blue_out~2_combout\);

-- Location: LCCOMB_X22_Y19_N8
\inst18|SYNC|blue_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|SYNC|blue_out~3_combout\ = (\inst2|SYNC|video_on_h~q\ & (\inst2|SYNC|video_on_v~q\ & \inst18|SYNC|blue_out~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|video_on_h~q\,
	datac => \inst2|SYNC|video_on_v~q\,
	datad => \inst18|SYNC|blue_out~2_combout\,
	combout => \inst18|SYNC|blue_out~3_combout\);

-- Location: FF_X22_Y19_N9
\inst18|SYNC|blue_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst18|SYNC|blue_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|SYNC|blue_out\(3));

-- Location: LCCOMB_X23_Y17_N6
\inst17|Ball_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Ball_on~combout\ = (\inst17|RGB_Display~5_combout\) # ((\inst19|Ball_on~1_combout\ & \inst17|Ball_on~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|RGB_Display~5_combout\,
	datac => \inst19|Ball_on~1_combout\,
	datad => \inst17|Ball_on~combout\,
	combout => \inst17|Ball_on~combout\);

-- Location: LCCOMB_X24_Y17_N12
\inst17|row_sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|row_sel\(0) = (GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & (\inst17|row_sel\(0))) # (!GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & ((\inst19|row_sel~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|RGB_Display~5clkctrl_outclk\,
	datac => \inst17|row_sel\(0),
	datad => \inst19|row_sel~0_combout\,
	combout => \inst17|row_sel\(0));

-- Location: LCCOMB_X21_Y18_N0
\inst17|Ball_Y_pos[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Ball_Y_pos[0]~10_combout\ = (\inst17|Ball_Y_motion\(0) & (\inst17|Ball_Y_pos\(0) $ (VCC))) # (!\inst17|Ball_Y_motion\(0) & (\inst17|Ball_Y_pos\(0) & VCC))
-- \inst17|Ball_Y_pos[0]~11\ = CARRY((\inst17|Ball_Y_motion\(0) & \inst17|Ball_Y_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_motion\(0),
	datab => \inst17|Ball_Y_pos\(0),
	datad => VCC,
	combout => \inst17|Ball_Y_pos[0]~10_combout\,
	cout => \inst17|Ball_Y_pos[0]~11\);

-- Location: FF_X21_Y18_N1
\inst17|Ball_Y_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|SYNC|vert_sync_out~q\,
	d => \inst17|Ball_Y_pos[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Ball_Y_pos\(0));

-- Location: LCCOMB_X21_Y18_N2
\inst17|Ball_Y_pos[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Ball_Y_pos[1]~12_combout\ = (\inst17|Ball_Y_motion\(1) & ((\inst17|Ball_Y_pos\(1) & (\inst17|Ball_Y_pos[0]~11\ & VCC)) # (!\inst17|Ball_Y_pos\(1) & (!\inst17|Ball_Y_pos[0]~11\)))) # (!\inst17|Ball_Y_motion\(1) & ((\inst17|Ball_Y_pos\(1) & 
-- (!\inst17|Ball_Y_pos[0]~11\)) # (!\inst17|Ball_Y_pos\(1) & ((\inst17|Ball_Y_pos[0]~11\) # (GND)))))
-- \inst17|Ball_Y_pos[1]~13\ = CARRY((\inst17|Ball_Y_motion\(1) & (!\inst17|Ball_Y_pos\(1) & !\inst17|Ball_Y_pos[0]~11\)) # (!\inst17|Ball_Y_motion\(1) & ((!\inst17|Ball_Y_pos[0]~11\) # (!\inst17|Ball_Y_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_motion\(1),
	datab => \inst17|Ball_Y_pos\(1),
	datad => VCC,
	cin => \inst17|Ball_Y_pos[0]~11\,
	combout => \inst17|Ball_Y_pos[1]~12_combout\,
	cout => \inst17|Ball_Y_pos[1]~13\);

-- Location: FF_X21_Y18_N3
\inst17|Ball_Y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|SYNC|vert_sync_out~q\,
	d => \inst17|Ball_Y_pos[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Ball_Y_pos\(1));

-- Location: LCCOMB_X21_Y18_N4
\inst17|Ball_Y_pos[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Ball_Y_pos[2]~14_combout\ = ((\inst17|Ball_Y_motion\(2) $ (\inst17|Ball_Y_pos\(2) $ (!\inst17|Ball_Y_pos[1]~13\)))) # (GND)
-- \inst17|Ball_Y_pos[2]~15\ = CARRY((\inst17|Ball_Y_motion\(2) & ((\inst17|Ball_Y_pos\(2)) # (!\inst17|Ball_Y_pos[1]~13\))) # (!\inst17|Ball_Y_motion\(2) & (\inst17|Ball_Y_pos\(2) & !\inst17|Ball_Y_pos[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_motion\(2),
	datab => \inst17|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst17|Ball_Y_pos[1]~13\,
	combout => \inst17|Ball_Y_pos[2]~14_combout\,
	cout => \inst17|Ball_Y_pos[2]~15\);

-- Location: FF_X21_Y18_N5
\inst17|Ball_Y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|SYNC|vert_sync_out~q\,
	d => \inst17|Ball_Y_pos[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Ball_Y_pos\(2));

-- Location: LCCOMB_X21_Y18_N6
\inst17|Ball_Y_pos[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Ball_Y_pos[3]~16_combout\ = (\inst17|Ball_Y_pos\(3) & ((\inst17|Ball_Y_motion\(0) & (\inst17|Ball_Y_pos[2]~15\ & VCC)) # (!\inst17|Ball_Y_motion\(0) & (!\inst17|Ball_Y_pos[2]~15\)))) # (!\inst17|Ball_Y_pos\(3) & ((\inst17|Ball_Y_motion\(0) & 
-- (!\inst17|Ball_Y_pos[2]~15\)) # (!\inst17|Ball_Y_motion\(0) & ((\inst17|Ball_Y_pos[2]~15\) # (GND)))))
-- \inst17|Ball_Y_pos[3]~17\ = CARRY((\inst17|Ball_Y_pos\(3) & (!\inst17|Ball_Y_motion\(0) & !\inst17|Ball_Y_pos[2]~15\)) # (!\inst17|Ball_Y_pos\(3) & ((!\inst17|Ball_Y_pos[2]~15\) # (!\inst17|Ball_Y_motion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(3),
	datab => \inst17|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst17|Ball_Y_pos[2]~15\,
	combout => \inst17|Ball_Y_pos[3]~16_combout\,
	cout => \inst17|Ball_Y_pos[3]~17\);

-- Location: LCCOMB_X21_Y18_N8
\inst17|Ball_Y_pos[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Ball_Y_pos[4]~18_combout\ = ((\inst17|Ball_Y_motion\(0) $ (\inst17|Ball_Y_pos\(4) $ (!\inst17|Ball_Y_pos[3]~17\)))) # (GND)
-- \inst17|Ball_Y_pos[4]~19\ = CARRY((\inst17|Ball_Y_motion\(0) & ((\inst17|Ball_Y_pos\(4)) # (!\inst17|Ball_Y_pos[3]~17\))) # (!\inst17|Ball_Y_motion\(0) & (\inst17|Ball_Y_pos\(4) & !\inst17|Ball_Y_pos[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_motion\(0),
	datab => \inst17|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst17|Ball_Y_pos[3]~17\,
	combout => \inst17|Ball_Y_pos[4]~18_combout\,
	cout => \inst17|Ball_Y_pos[4]~19\);

-- Location: FF_X21_Y18_N9
\inst17|Ball_Y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|SYNC|vert_sync_out~q\,
	d => \inst17|Ball_Y_pos[4]~18_combout\,
	asdata => VCC,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Ball_Y_pos\(4));

-- Location: LCCOMB_X21_Y18_N10
\inst17|Ball_Y_pos[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Ball_Y_pos[5]~20_combout\ = (\inst17|Ball_Y_pos\(5) & ((\inst17|Ball_Y_motion\(0) & (\inst17|Ball_Y_pos[4]~19\ & VCC)) # (!\inst17|Ball_Y_motion\(0) & (!\inst17|Ball_Y_pos[4]~19\)))) # (!\inst17|Ball_Y_pos\(5) & ((\inst17|Ball_Y_motion\(0) & 
-- (!\inst17|Ball_Y_pos[4]~19\)) # (!\inst17|Ball_Y_motion\(0) & ((\inst17|Ball_Y_pos[4]~19\) # (GND)))))
-- \inst17|Ball_Y_pos[5]~21\ = CARRY((\inst17|Ball_Y_pos\(5) & (!\inst17|Ball_Y_motion\(0) & !\inst17|Ball_Y_pos[4]~19\)) # (!\inst17|Ball_Y_pos\(5) & ((!\inst17|Ball_Y_pos[4]~19\) # (!\inst17|Ball_Y_motion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(5),
	datab => \inst17|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst17|Ball_Y_pos[4]~19\,
	combout => \inst17|Ball_Y_pos[5]~20_combout\,
	cout => \inst17|Ball_Y_pos[5]~21\);

-- Location: LCCOMB_X21_Y18_N12
\inst17|Ball_Y_pos[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Ball_Y_pos[6]~22_combout\ = ((\inst17|Ball_Y_pos\(6) $ (\inst17|Ball_Y_motion\(0) $ (!\inst17|Ball_Y_pos[5]~21\)))) # (GND)
-- \inst17|Ball_Y_pos[6]~23\ = CARRY((\inst17|Ball_Y_pos\(6) & ((\inst17|Ball_Y_motion\(0)) # (!\inst17|Ball_Y_pos[5]~21\))) # (!\inst17|Ball_Y_pos\(6) & (\inst17|Ball_Y_motion\(0) & !\inst17|Ball_Y_pos[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(6),
	datab => \inst17|Ball_Y_motion\(0),
	datad => VCC,
	cin => \inst17|Ball_Y_pos[5]~21\,
	combout => \inst17|Ball_Y_pos[6]~22_combout\,
	cout => \inst17|Ball_Y_pos[6]~23\);

-- Location: LCCOMB_X21_Y18_N14
\inst17|Ball_Y_pos[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Ball_Y_pos[7]~24_combout\ = (\inst17|Ball_Y_motion\(0) & ((\inst17|Ball_Y_pos\(7) & (\inst17|Ball_Y_pos[6]~23\ & VCC)) # (!\inst17|Ball_Y_pos\(7) & (!\inst17|Ball_Y_pos[6]~23\)))) # (!\inst17|Ball_Y_motion\(0) & ((\inst17|Ball_Y_pos\(7) & 
-- (!\inst17|Ball_Y_pos[6]~23\)) # (!\inst17|Ball_Y_pos\(7) & ((\inst17|Ball_Y_pos[6]~23\) # (GND)))))
-- \inst17|Ball_Y_pos[7]~25\ = CARRY((\inst17|Ball_Y_motion\(0) & (!\inst17|Ball_Y_pos\(7) & !\inst17|Ball_Y_pos[6]~23\)) # (!\inst17|Ball_Y_motion\(0) & ((!\inst17|Ball_Y_pos[6]~23\) # (!\inst17|Ball_Y_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_motion\(0),
	datab => \inst17|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst17|Ball_Y_pos[6]~23\,
	combout => \inst17|Ball_Y_pos[7]~24_combout\,
	cout => \inst17|Ball_Y_pos[7]~25\);

-- Location: FF_X21_Y18_N15
\inst17|Ball_Y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|SYNC|vert_sync_out~q\,
	d => \inst17|Ball_Y_pos[7]~24_combout\,
	asdata => VCC,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Ball_Y_pos\(7));

-- Location: LCCOMB_X21_Y18_N16
\inst17|Ball_Y_pos[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Ball_Y_pos[8]~26_combout\ = ((\inst17|Ball_Y_motion\(0) $ (\inst17|Ball_Y_pos\(8) $ (!\inst17|Ball_Y_pos[7]~25\)))) # (GND)
-- \inst17|Ball_Y_pos[8]~27\ = CARRY((\inst17|Ball_Y_motion\(0) & ((\inst17|Ball_Y_pos\(8)) # (!\inst17|Ball_Y_pos[7]~25\))) # (!\inst17|Ball_Y_motion\(0) & (\inst17|Ball_Y_pos\(8) & !\inst17|Ball_Y_pos[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_motion\(0),
	datab => \inst17|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst17|Ball_Y_pos[7]~25\,
	combout => \inst17|Ball_Y_pos[8]~26_combout\,
	cout => \inst17|Ball_Y_pos[8]~27\);

-- Location: FF_X21_Y18_N17
\inst17|Ball_Y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|SYNC|vert_sync_out~q\,
	d => \inst17|Ball_Y_pos[8]~26_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Ball_Y_pos\(8));

-- Location: FF_X21_Y18_N13
\inst17|Ball_Y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|SYNC|vert_sync_out~q\,
	d => \inst17|Ball_Y_pos[6]~22_combout\,
	asdata => VCC,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Ball_Y_pos\(6));

-- Location: LCCOMB_X21_Y18_N26
\inst17|LessThan19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan19~1_combout\ = (\inst17|Ball_Y_pos\(5)) # ((\inst17|Ball_Y_pos\(8)) # ((\inst17|Ball_Y_pos\(6)) # (\inst17|Ball_Y_pos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(5),
	datab => \inst17|Ball_Y_pos\(8),
	datac => \inst17|Ball_Y_pos\(6),
	datad => \inst17|Ball_Y_pos\(4),
	combout => \inst17|LessThan19~1_combout\);

-- Location: LCCOMB_X21_Y18_N28
\inst17|LessThan19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan19~0_combout\ = (\inst17|Ball_Y_pos\(3) & ((\inst17|Ball_Y_pos\(0)) # ((\inst17|Ball_Y_pos\(1)) # (\inst17|Ball_Y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(3),
	datab => \inst17|Ball_Y_pos\(0),
	datac => \inst17|Ball_Y_pos\(1),
	datad => \inst17|Ball_Y_pos\(2),
	combout => \inst17|LessThan19~0_combout\);

-- Location: LCCOMB_X21_Y18_N24
\inst17|LessThan19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan19~2_combout\ = (\inst17|Ball_Y_pos\(7)) # ((\inst17|LessThan19~1_combout\) # (\inst17|LessThan19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Ball_Y_pos\(7),
	datac => \inst17|LessThan19~1_combout\,
	datad => \inst17|LessThan19~0_combout\,
	combout => \inst17|LessThan19~2_combout\);

-- Location: LCCOMB_X21_Y18_N22
\inst17|Ball_Y_motion~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Ball_Y_motion~2_combout\ = (\inst8|output~q\ & (\inst1|left_button~q\ & ((\inst17|Ball_Y_pos\(9)) # (\inst17|LessThan19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(9),
	datab => \inst17|LessThan19~2_combout\,
	datac => \inst8|output~q\,
	datad => \inst1|left_button~q\,
	combout => \inst17|Ball_Y_motion~2_combout\);

-- Location: FF_X21_Y18_N23
\inst17|Ball_Y_motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst17|Ball_Y_motion~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Ball_Y_motion\(0));

-- Location: LCCOMB_X21_Y18_N18
\inst17|Ball_Y_pos[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Ball_Y_pos[9]~28_combout\ = \inst17|Ball_Y_pos\(9) $ (\inst17|Ball_Y_pos[8]~27\ $ (\inst17|Ball_Y_motion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Ball_Y_pos\(9),
	datad => \inst17|Ball_Y_motion\(0),
	cin => \inst17|Ball_Y_pos[8]~27\,
	combout => \inst17|Ball_Y_pos[9]~28_combout\);

-- Location: FF_X21_Y18_N19
\inst17|Ball_Y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|SYNC|vert_sync_out~q\,
	d => \inst17|Ball_Y_pos[9]~28_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Ball_Y_pos\(9));

-- Location: FF_X21_Y18_N11
\inst17|Ball_Y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|SYNC|vert_sync_out~q\,
	d => \inst17|Ball_Y_pos[5]~20_combout\,
	asdata => VCC,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Ball_Y_pos\(5));

-- Location: FF_X21_Y18_N7
\inst17|Ball_Y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|SYNC|vert_sync_out~q\,
	d => \inst17|Ball_Y_pos[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \inst8|ALT_INV_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Ball_Y_pos\(3));

-- Location: LCCOMB_X22_Y18_N20
\inst17|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Add3~0_combout\ = (\inst17|Ball_Y_pos\(4) & (\inst17|Ball_Y_pos\(3) $ (VCC))) # (!\inst17|Ball_Y_pos\(4) & (\inst17|Ball_Y_pos\(3) & VCC))
-- \inst17|Add3~1\ = CARRY((\inst17|Ball_Y_pos\(4) & \inst17|Ball_Y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(4),
	datab => \inst17|Ball_Y_pos\(3),
	datad => VCC,
	combout => \inst17|Add3~0_combout\,
	cout => \inst17|Add3~1\);

-- Location: LCCOMB_X22_Y18_N28
\inst17|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Add3~8_combout\ = (\inst17|Ball_Y_pos\(8) & (\inst17|Add3~7\ $ (GND))) # (!\inst17|Ball_Y_pos\(8) & (!\inst17|Add3~7\ & VCC))
-- \inst17|Add3~9\ = CARRY((\inst17|Ball_Y_pos\(8) & !\inst17|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst17|Add3~7\,
	combout => \inst17|Add3~8_combout\,
	cout => \inst17|Add3~9\);

-- Location: LCCOMB_X22_Y18_N30
\inst17|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Add3~10_combout\ = \inst17|Add3~9\ $ (\inst17|Ball_Y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst17|Ball_Y_pos\(9),
	cin => \inst17|Add3~9\,
	combout => \inst17|Add3~10_combout\);

-- Location: LCCOMB_X22_Y18_N0
\inst17|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~1_cout\ = CARRY((!\inst17|Ball_Y_pos\(0) & \inst2|SYNC|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(0),
	datab => \inst2|SYNC|pixel_row\(0),
	datad => VCC,
	cout => \inst17|LessThan3~1_cout\);

-- Location: LCCOMB_X22_Y18_N2
\inst17|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~3_cout\ = CARRY((\inst17|Ball_Y_pos\(1) & ((!\inst17|LessThan3~1_cout\) # (!\inst2|SYNC|pixel_row\(1)))) # (!\inst17|Ball_Y_pos\(1) & (!\inst2|SYNC|pixel_row\(1) & !\inst17|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Ball_Y_pos\(1),
	datab => \inst2|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst17|LessThan3~1_cout\,
	cout => \inst17|LessThan3~3_cout\);

-- Location: LCCOMB_X22_Y18_N4
\inst17|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~5_cout\ = CARRY((\inst2|SYNC|pixel_row\(2) & ((!\inst17|LessThan3~3_cout\) # (!\inst17|Ball_Y_pos\(2)))) # (!\inst2|SYNC|pixel_row\(2) & (!\inst17|Ball_Y_pos\(2) & !\inst17|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(2),
	datab => \inst17|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst17|LessThan3~3_cout\,
	cout => \inst17|LessThan3~5_cout\);

-- Location: LCCOMB_X22_Y18_N6
\inst17|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~7_cout\ = CARRY((\inst2|SYNC|pixel_row\(3) & (!\inst17|Ball_Y_pos\(3) & !\inst17|LessThan3~5_cout\)) # (!\inst2|SYNC|pixel_row\(3) & ((!\inst17|LessThan3~5_cout\) # (!\inst17|Ball_Y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(3),
	datab => \inst17|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst17|LessThan3~5_cout\,
	cout => \inst17|LessThan3~7_cout\);

-- Location: LCCOMB_X22_Y18_N8
\inst17|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~9_cout\ = CARRY((\inst2|SYNC|pixel_row\(4) & ((!\inst17|LessThan3~7_cout\) # (!\inst17|Add3~0_combout\))) # (!\inst2|SYNC|pixel_row\(4) & (!\inst17|Add3~0_combout\ & !\inst17|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(4),
	datab => \inst17|Add3~0_combout\,
	datad => VCC,
	cin => \inst17|LessThan3~7_cout\,
	cout => \inst17|LessThan3~9_cout\);

-- Location: LCCOMB_X22_Y18_N10
\inst17|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~11_cout\ = CARRY((\inst17|Add3~2_combout\ & ((!\inst17|LessThan3~9_cout\) # (!\inst2|SYNC|pixel_row\(5)))) # (!\inst17|Add3~2_combout\ & (!\inst2|SYNC|pixel_row\(5) & !\inst17|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Add3~2_combout\,
	datab => \inst2|SYNC|pixel_row\(5),
	datad => VCC,
	cin => \inst17|LessThan3~9_cout\,
	cout => \inst17|LessThan3~11_cout\);

-- Location: LCCOMB_X22_Y18_N12
\inst17|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~13_cout\ = CARRY((\inst17|Add3~4_combout\ & (\inst2|SYNC|pixel_row\(6) & !\inst17|LessThan3~11_cout\)) # (!\inst17|Add3~4_combout\ & ((\inst2|SYNC|pixel_row\(6)) # (!\inst17|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Add3~4_combout\,
	datab => \inst2|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst17|LessThan3~11_cout\,
	cout => \inst17|LessThan3~13_cout\);

-- Location: LCCOMB_X22_Y18_N14
\inst17|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~15_cout\ = CARRY((\inst17|Add3~6_combout\ & ((!\inst17|LessThan3~13_cout\) # (!\inst2|SYNC|pixel_row\(7)))) # (!\inst17|Add3~6_combout\ & (!\inst2|SYNC|pixel_row\(7) & !\inst17|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Add3~6_combout\,
	datab => \inst2|SYNC|pixel_row\(7),
	datad => VCC,
	cin => \inst17|LessThan3~13_cout\,
	cout => \inst17|LessThan3~15_cout\);

-- Location: LCCOMB_X22_Y18_N16
\inst17|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~16_combout\ = (\inst2|SYNC|pixel_row\(8) & ((!\inst17|Add3~8_combout\) # (!\inst17|LessThan3~15_cout\))) # (!\inst2|SYNC|pixel_row\(8) & (!\inst17|LessThan3~15_cout\ & !\inst17|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|SYNC|pixel_row\(8),
	datad => \inst17|Add3~8_combout\,
	cin => \inst17|LessThan3~15_cout\,
	combout => \inst17|LessThan3~16_combout\);

-- Location: LCCOMB_X22_Y18_N18
\inst17|RGB_Display~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|RGB_Display~4_combout\ = (!\inst17|Add3~10_combout\ & !\inst17|LessThan3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Add3~10_combout\,
	datad => \inst17|LessThan3~16_combout\,
	combout => \inst17|RGB_Display~4_combout\);

-- Location: LCCOMB_X22_Y16_N22
\inst17|RGB_Display~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|RGB_Display~5_combout\ = (!\inst17|LessThan2~18_combout\ & (\inst17|RGB_Display~3_combout\ & (\inst17|RGB_Display~0_combout\ & \inst17|RGB_Display~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LessThan2~18_combout\,
	datab => \inst17|RGB_Display~3_combout\,
	datac => \inst17|RGB_Display~0_combout\,
	datad => \inst17|RGB_Display~4_combout\,
	combout => \inst17|RGB_Display~5_combout\);

-- Location: CLKCTRL_G4
\inst17|RGB_Display~5clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst17|RGB_Display~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst17|RGB_Display~5clkctrl_outclk\);

-- Location: LCCOMB_X24_Y17_N6
\inst17|row_sel[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|row_sel\(1) = (GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & (\inst17|row_sel\(1))) # (!GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & ((\inst19|row_sel~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|row_sel\(1),
	datac => \inst19|row_sel~1_combout\,
	datad => \inst17|RGB_Display~5clkctrl_outclk\,
	combout => \inst17|row_sel\(1));

-- Location: LCCOMB_X23_Y16_N0
\inst19|row_sel~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|row_sel~2_combout\ = (\inst2|SYNC|pixel_row\(3) & (!\inst19|LessThan15~2_combout\ & ((!\inst19|Ball_on~0_combout\) # (!\inst19|RGB_Display~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|pixel_row\(3),
	datab => \inst19|LessThan15~2_combout\,
	datac => \inst19|RGB_Display~2_combout\,
	datad => \inst19|Ball_on~0_combout\,
	combout => \inst19|row_sel~2_combout\);

-- Location: LCCOMB_X24_Y16_N30
\inst17|row_sel[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|row_sel\(2) = (GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & (\inst17|row_sel\(2))) # (!GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & ((\inst19|row_sel~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|row_sel\(2),
	datac => \inst17|RGB_Display~5clkctrl_outclk\,
	datad => \inst19|row_sel~2_combout\,
	combout => \inst17|row_sel\(2));

-- Location: LCCOMB_X24_Y16_N4
\inst17|char_sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|char_sel\(0) = (GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & (\inst17|char_sel\(0))) # (!GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & ((\inst19|char_sel~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|char_sel\(0),
	datab => \inst19|char_sel~2_combout\,
	datac => \inst17|RGB_Display~5clkctrl_outclk\,
	combout => \inst17|char_sel\(0));

-- Location: LCCOMB_X24_Y17_N8
\inst17|char_sel[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|char_sel\(1) = (GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & ((\inst17|char_sel\(1)))) # (!GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & (\inst19|char_sel~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|char_sel~8_combout\,
	datac => \inst17|char_sel\(1),
	datad => \inst17|RGB_Display~5clkctrl_outclk\,
	combout => \inst17|char_sel\(1));

-- Location: LCCOMB_X24_Y16_N20
\inst17|char_sel[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|char_sel\(2) = (GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & ((\inst17|char_sel\(2)))) # (!GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & (\inst19|char_sel~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|char_sel~5_combout\,
	datac => \inst17|RGB_Display~5clkctrl_outclk\,
	datad => \inst17|char_sel\(2),
	combout => \inst17|char_sel\(2));

-- Location: LCCOMB_X24_Y16_N0
\inst17|char_sel[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|char_sel\(3) = (GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & ((\inst17|char_sel\(3)))) # (!GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & (!\inst19|char_sel~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|char_sel~6_combout\,
	datac => \inst17|RGB_Display~5clkctrl_outclk\,
	datad => \inst17|char_sel\(3),
	combout => \inst17|char_sel\(3));

-- Location: LCCOMB_X26_Y16_N20
\inst17|char_sel[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|char_sel\(4) = (GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & ((\inst17|char_sel\(4)))) # (!GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & (!\inst19|char_sel~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|char_sel~7_combout\,
	datac => \inst17|char_sel\(4),
	datad => \inst17|RGB_Display~5clkctrl_outclk\,
	combout => \inst17|char_sel\(4));

-- Location: LCCOMB_X23_Y17_N4
\inst17|col_sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|col_sel\(0) = (GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & ((\inst17|col_sel\(0)))) # (!GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & (\inst19|col_sel~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|col_sel~2_combout\,
	datab => \inst17|col_sel\(0),
	datad => \inst17|RGB_Display~5clkctrl_outclk\,
	combout => \inst17|col_sel\(0));

-- Location: LCCOMB_X23_Y17_N10
\inst17|col_sel[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|col_sel\(1) = (GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & (\inst17|col_sel\(1))) # (!GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & ((\inst19|col_sel~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|col_sel\(1),
	datac => \inst19|col_sel~1_combout\,
	datad => \inst17|RGB_Display~5clkctrl_outclk\,
	combout => \inst17|col_sel\(1));

-- Location: LCCOMB_X23_Y17_N20
\inst17|CHAR|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|CHAR|Mux0~2_combout\ = (\inst17|col_sel\(0) & (((\inst17|col_sel\(1))))) # (!\inst17|col_sel\(0) & ((\inst17|col_sel\(1) & ((\inst17|CHAR|altsyncram_component|auto_generated|q_a\(1)))) # (!\inst17|col_sel\(1) & 
-- (\inst17|CHAR|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|CHAR|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst17|CHAR|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst17|col_sel\(0),
	datad => \inst17|col_sel\(1),
	combout => \inst17|CHAR|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y17_N30
\inst17|CHAR|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|CHAR|Mux0~3_combout\ = (\inst17|col_sel\(0) & ((\inst17|CHAR|Mux0~2_combout\ & (\inst17|CHAR|altsyncram_component|auto_generated|q_a\(0))) # (!\inst17|CHAR|Mux0~2_combout\ & ((\inst17|CHAR|altsyncram_component|auto_generated|q_a\(2)))))) # 
-- (!\inst17|col_sel\(0) & (((\inst17|CHAR|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|CHAR|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst17|CHAR|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst17|col_sel\(0),
	datad => \inst17|CHAR|Mux0~2_combout\,
	combout => \inst17|CHAR|Mux0~3_combout\);

-- Location: LCCOMB_X21_Y19_N20
\inst19|col_sel~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|col_sel~0_combout\ = (!\inst19|LessThan15~2_combout\ & (\inst2|SYNC|pixel_column\(3) & ((!\inst19|RGB_Display~2_combout\) # (!\inst19|Ball_on~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan15~2_combout\,
	datab => \inst19|Ball_on~0_combout\,
	datac => \inst2|SYNC|pixel_column\(3),
	datad => \inst19|RGB_Display~2_combout\,
	combout => \inst19|col_sel~0_combout\);

-- Location: LCCOMB_X21_Y19_N26
\inst17|col_sel[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|col_sel\(2) = (GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & (\inst17|col_sel\(2))) # (!GLOBAL(\inst17|RGB_Display~5clkctrl_outclk\) & ((\inst19|col_sel~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|col_sel\(2),
	datab => \inst19|col_sel~0_combout\,
	datac => \inst17|RGB_Display~5clkctrl_outclk\,
	combout => \inst17|col_sel\(2));

-- Location: LCCOMB_X23_Y17_N16
\inst17|SYNC|blue_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|SYNC|blue_out~2_combout\ = (!\inst17|Ball_on~combout\ & ((\inst17|col_sel\(2) & ((!\inst17|CHAR|Mux0~3_combout\))) # (!\inst17|col_sel\(2) & (!\inst17|CHAR|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|CHAR|Mux0~1_combout\,
	datab => \inst17|Ball_on~combout\,
	datac => \inst17|CHAR|Mux0~3_combout\,
	datad => \inst17|col_sel\(2),
	combout => \inst17|SYNC|blue_out~2_combout\);

-- Location: LCCOMB_X23_Y17_N8
\inst17|SYNC|blue_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|SYNC|blue_out~3_combout\ = (\inst2|SYNC|video_on_v~q\ & (\inst2|SYNC|video_on_h~q\ & \inst17|SYNC|blue_out~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|video_on_v~q\,
	datac => \inst2|SYNC|video_on_h~q\,
	datad => \inst17|SYNC|blue_out~2_combout\,
	combout => \inst17|SYNC|blue_out~3_combout\);

-- Location: FF_X23_Y17_N9
\inst17|SYNC|blue_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|SYNC|blue_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|SYNC|blue_out\(3));

-- Location: LCCOMB_X22_Y19_N14
\inst21|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|Mux8~1_combout\ = (\inst22|output_select~1_combout\ & ((\inst21|Mux8~0_combout\ & ((\inst17|SYNC|blue_out\(3)))) # (!\inst21|Mux8~0_combout\ & (\inst18|SYNC|blue_out\(3))))) # (!\inst22|output_select~1_combout\ & (\inst21|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|output_select~1_combout\,
	datab => \inst21|Mux8~0_combout\,
	datac => \inst18|SYNC|blue_out\(3),
	datad => \inst17|SYNC|blue_out\(3),
	combout => \inst21|Mux8~1_combout\);

-- Location: LCCOMB_X37_Y19_N24
\inst21|blue[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|blue[3]~feeder_combout\ = \inst21|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst21|Mux8~1_combout\,
	combout => \inst21|blue[3]~feeder_combout\);

-- Location: FF_X37_Y19_N25
\inst21|blue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst21|blue[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|blue\(3));

-- Location: LCCOMB_X37_Y19_N6
\inst21|green[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|green[3]~feeder_combout\ = \inst21|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst21|Mux8~1_combout\,
	combout => \inst21|green[3]~feeder_combout\);

-- Location: FF_X37_Y19_N7
\inst21|green[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst21|green[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|green\(3));

-- Location: LCCOMB_X23_Y17_N14
\inst2|SYNC|video_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SYNC|video_on~0_combout\ = (\inst2|SYNC|video_on_v~q\ & \inst2|SYNC|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNC|video_on_v~q\,
	datac => \inst2|SYNC|video_on_h~q\,
	combout => \inst2|SYNC|video_on~0_combout\);

-- Location: FF_X23_Y17_N15
\inst2|SYNC|red_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|SYNC|video_on~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNC|red_out\(3));

-- Location: LCCOMB_X28_Y18_N16
\inst21|red[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|red[3]~feeder_combout\ = \inst2|SYNC|red_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SYNC|red_out\(3),
	combout => \inst21|red[3]~feeder_combout\);

-- Location: FF_X28_Y18_N17
\inst21|red[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst21|red[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|red\(3));

-- Location: LCCOMB_X26_Y20_N24
\inst21|red[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|red[2]~feeder_combout\ = \inst2|SYNC|red_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SYNC|red_out\(3),
	combout => \inst21|red[2]~feeder_combout\);

-- Location: FF_X26_Y20_N25
\inst21|red[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst21|red[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|red\(2));

-- Location: LCCOMB_X29_Y22_N4
\inst21|red[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|red[1]~feeder_combout\ = \inst2|SYNC|red_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SYNC|red_out\(3),
	combout => \inst21|red[1]~feeder_combout\);

-- Location: FF_X29_Y22_N5
\inst21|red[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst21|red[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|red\(1));

-- Location: LCCOMB_X29_Y22_N2
\inst21|red[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|red[0]~feeder_combout\ = \inst2|SYNC|red_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SYNC|red_out\(3),
	combout => \inst21|red[0]~feeder_combout\);

-- Location: FF_X29_Y22_N3
\inst21|red[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst21|red[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|red\(0));

-- Location: LCCOMB_X32_Y20_N20
\inst1|PACKET_CHAR3[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR3[7]~feeder_combout\ = \inst1|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(7),
	combout => \inst1|PACKET_CHAR3[7]~feeder_combout\);

-- Location: FF_X32_Y20_N21
\inst1|PACKET_CHAR3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR3[7]~feeder_combout\,
	ena => \inst1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR3\(7));

-- Location: LCCOMB_X32_Y20_N18
\inst1|PACKET_CHAR3[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR3[6]~feeder_combout\ = \inst1|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTIN\(6),
	combout => \inst1|PACKET_CHAR3[6]~feeder_combout\);

-- Location: FF_X32_Y20_N19
\inst1|PACKET_CHAR3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR3[6]~feeder_combout\,
	ena => \inst1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR3\(6));

-- Location: LCCOMB_X32_Y20_N28
\inst1|PACKET_CHAR3[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR3[5]~feeder_combout\ = \inst1|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(5),
	combout => \inst1|PACKET_CHAR3[5]~feeder_combout\);

-- Location: FF_X32_Y20_N29
\inst1|PACKET_CHAR3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR3[5]~feeder_combout\,
	ena => \inst1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR3\(5));

-- Location: LCCOMB_X30_Y20_N26
\inst1|new_cursor_row[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_row[8]~27_combout\ = ((\inst1|PACKET_CHAR3\(7) $ (\inst1|cursor_row\(8) $ (\inst1|new_cursor_row[7]~26\)))) # (GND)
-- \inst1|new_cursor_row[8]~28\ = CARRY((\inst1|PACKET_CHAR3\(7) & (\inst1|cursor_row\(8) & !\inst1|new_cursor_row[7]~26\)) # (!\inst1|PACKET_CHAR3\(7) & ((\inst1|cursor_row\(8)) # (!\inst1|new_cursor_row[7]~26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR3\(7),
	datab => \inst1|cursor_row\(8),
	datad => VCC,
	cin => \inst1|new_cursor_row[7]~26\,
	combout => \inst1|new_cursor_row[8]~27_combout\,
	cout => \inst1|new_cursor_row[8]~28\);

-- Location: LCCOMB_X31_Y20_N30
\inst1|new_cursor_row[9]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_row[9]~24_combout\ = (\inst1|READ_CHAR~q\ & (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst1|LessThan1~0_combout\ & !\inst1|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|READ_CHAR~q\,
	datab => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|Add3~0_combout\,
	combout => \inst1|new_cursor_row[9]~24_combout\);

-- Location: FF_X30_Y20_N27
\inst1|new_cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_row[8]~27_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_row\(8));

-- Location: LCCOMB_X32_Y20_N0
\inst1|PACKET_CHAR3[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR3[3]~feeder_combout\ = \inst1|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(3),
	combout => \inst1|PACKET_CHAR3[3]~feeder_combout\);

-- Location: FF_X32_Y20_N1
\inst1|PACKET_CHAR3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR3[3]~feeder_combout\,
	ena => \inst1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR3\(3));

-- Location: LCCOMB_X32_Y20_N22
\inst1|PACKET_CHAR3[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR3[2]~feeder_combout\ = \inst1|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(2),
	combout => \inst1|PACKET_CHAR3[2]~feeder_combout\);

-- Location: FF_X32_Y20_N23
\inst1|PACKET_CHAR3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR3[2]~feeder_combout\,
	ena => \inst1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR3\(2));

-- Location: LCCOMB_X32_Y20_N14
\inst1|PACKET_CHAR3[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR3[0]~feeder_combout\ = \inst1|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(0),
	combout => \inst1|PACKET_CHAR3[0]~feeder_combout\);

-- Location: FF_X32_Y20_N15
\inst1|PACKET_CHAR3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR3[0]~feeder_combout\,
	ena => \inst1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR3\(0));

-- Location: LCCOMB_X30_Y20_N10
\inst1|new_cursor_row[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_row[0]~10_combout\ = (\inst1|cursor_row\(0) & ((GND) # (!\inst1|PACKET_CHAR3\(0)))) # (!\inst1|cursor_row\(0) & (\inst1|PACKET_CHAR3\(0) $ (GND)))
-- \inst1|new_cursor_row[0]~11\ = CARRY((\inst1|cursor_row\(0)) # (!\inst1|PACKET_CHAR3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_row\(0),
	datab => \inst1|PACKET_CHAR3\(0),
	datad => VCC,
	combout => \inst1|new_cursor_row[0]~10_combout\,
	cout => \inst1|new_cursor_row[0]~11\);

-- Location: LCCOMB_X30_Y20_N12
\inst1|new_cursor_row[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_row[1]~12_combout\ = (\inst1|PACKET_CHAR3\(1) & ((\inst1|cursor_row\(1) & (!\inst1|new_cursor_row[0]~11\)) # (!\inst1|cursor_row\(1) & ((\inst1|new_cursor_row[0]~11\) # (GND))))) # (!\inst1|PACKET_CHAR3\(1) & ((\inst1|cursor_row\(1) & 
-- (\inst1|new_cursor_row[0]~11\ & VCC)) # (!\inst1|cursor_row\(1) & (!\inst1|new_cursor_row[0]~11\))))
-- \inst1|new_cursor_row[1]~13\ = CARRY((\inst1|PACKET_CHAR3\(1) & ((!\inst1|new_cursor_row[0]~11\) # (!\inst1|cursor_row\(1)))) # (!\inst1|PACKET_CHAR3\(1) & (!\inst1|cursor_row\(1) & !\inst1|new_cursor_row[0]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR3\(1),
	datab => \inst1|cursor_row\(1),
	datad => VCC,
	cin => \inst1|new_cursor_row[0]~11\,
	combout => \inst1|new_cursor_row[1]~12_combout\,
	cout => \inst1|new_cursor_row[1]~13\);

-- Location: FF_X30_Y20_N13
\inst1|new_cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_row[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_row\(1));

-- Location: LCCOMB_X29_Y20_N12
\inst1|cursor_row~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_row~9_combout\ = (\inst1|Equal3~0_combout\ & (\inst1|new_cursor_row\(1) & (\inst1|cursor_row~0_combout\ & !\inst1|RECV_UART~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|new_cursor_row\(1),
	datac => \inst1|cursor_row~0_combout\,
	datad => \inst1|RECV_UART~2_combout\,
	combout => \inst1|cursor_row~9_combout\);

-- Location: LCCOMB_X31_Y20_N12
\inst1|cursor_row[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_row[6]~2_combout\ = (\inst1|READ_CHAR~q\ & (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst1|LessThan1~0_combout\ & !\inst1|PACKET_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|READ_CHAR~q\,
	datab => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|PACKET_COUNT\(1),
	combout => \inst1|cursor_row[6]~2_combout\);

-- Location: FF_X29_Y20_N13
\inst1|cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_row~9_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_row\(1));

-- Location: LCCOMB_X30_Y20_N14
\inst1|new_cursor_row[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_row[2]~14_combout\ = ((\inst1|cursor_row\(2) $ (\inst1|PACKET_CHAR3\(2) $ (\inst1|new_cursor_row[1]~13\)))) # (GND)
-- \inst1|new_cursor_row[2]~15\ = CARRY((\inst1|cursor_row\(2) & ((!\inst1|new_cursor_row[1]~13\) # (!\inst1|PACKET_CHAR3\(2)))) # (!\inst1|cursor_row\(2) & (!\inst1|PACKET_CHAR3\(2) & !\inst1|new_cursor_row[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_row\(2),
	datab => \inst1|PACKET_CHAR3\(2),
	datad => VCC,
	cin => \inst1|new_cursor_row[1]~13\,
	combout => \inst1|new_cursor_row[2]~14_combout\,
	cout => \inst1|new_cursor_row[2]~15\);

-- Location: LCCOMB_X30_Y20_N16
\inst1|new_cursor_row[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_row[3]~16_combout\ = (\inst1|cursor_row\(3) & ((\inst1|PACKET_CHAR3\(3) & (!\inst1|new_cursor_row[2]~15\)) # (!\inst1|PACKET_CHAR3\(3) & (\inst1|new_cursor_row[2]~15\ & VCC)))) # (!\inst1|cursor_row\(3) & ((\inst1|PACKET_CHAR3\(3) & 
-- ((\inst1|new_cursor_row[2]~15\) # (GND))) # (!\inst1|PACKET_CHAR3\(3) & (!\inst1|new_cursor_row[2]~15\))))
-- \inst1|new_cursor_row[3]~17\ = CARRY((\inst1|cursor_row\(3) & (\inst1|PACKET_CHAR3\(3) & !\inst1|new_cursor_row[2]~15\)) # (!\inst1|cursor_row\(3) & ((\inst1|PACKET_CHAR3\(3)) # (!\inst1|new_cursor_row[2]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_row\(3),
	datab => \inst1|PACKET_CHAR3\(3),
	datad => VCC,
	cin => \inst1|new_cursor_row[2]~15\,
	combout => \inst1|new_cursor_row[3]~16_combout\,
	cout => \inst1|new_cursor_row[3]~17\);

-- Location: LCCOMB_X30_Y20_N18
\inst1|new_cursor_row[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_row[4]~18_combout\ = ((\inst1|PACKET_CHAR3\(4) $ (\inst1|cursor_row\(4) $ (\inst1|new_cursor_row[3]~17\)))) # (GND)
-- \inst1|new_cursor_row[4]~19\ = CARRY((\inst1|PACKET_CHAR3\(4) & (\inst1|cursor_row\(4) & !\inst1|new_cursor_row[3]~17\)) # (!\inst1|PACKET_CHAR3\(4) & ((\inst1|cursor_row\(4)) # (!\inst1|new_cursor_row[3]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR3\(4),
	datab => \inst1|cursor_row\(4),
	datad => VCC,
	cin => \inst1|new_cursor_row[3]~17\,
	combout => \inst1|new_cursor_row[4]~18_combout\,
	cout => \inst1|new_cursor_row[4]~19\);

-- Location: FF_X30_Y20_N19
\inst1|new_cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_row[4]~18_combout\,
	asdata => VCC,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_row\(4));

-- Location: FF_X30_Y20_N15
\inst1|new_cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_row[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_row\(2));

-- Location: FF_X30_Y20_N17
\inst1|new_cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_row[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_row\(3));

-- Location: LCCOMB_X30_Y20_N30
\inst1|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan5~0_combout\ = (!\inst1|new_cursor_row\(1) & (!\inst1|new_cursor_row\(4) & (!\inst1|new_cursor_row\(2) & !\inst1|new_cursor_row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_row\(1),
	datab => \inst1|new_cursor_row\(4),
	datac => \inst1|new_cursor_row\(2),
	datad => \inst1|new_cursor_row\(3),
	combout => \inst1|LessThan5~0_combout\);

-- Location: LCCOMB_X30_Y20_N20
\inst1|new_cursor_row[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_row[5]~20_combout\ = (\inst1|cursor_row\(5) & ((\inst1|PACKET_CHAR3\(5) & (!\inst1|new_cursor_row[4]~19\)) # (!\inst1|PACKET_CHAR3\(5) & (\inst1|new_cursor_row[4]~19\ & VCC)))) # (!\inst1|cursor_row\(5) & ((\inst1|PACKET_CHAR3\(5) & 
-- ((\inst1|new_cursor_row[4]~19\) # (GND))) # (!\inst1|PACKET_CHAR3\(5) & (!\inst1|new_cursor_row[4]~19\))))
-- \inst1|new_cursor_row[5]~21\ = CARRY((\inst1|cursor_row\(5) & (\inst1|PACKET_CHAR3\(5) & !\inst1|new_cursor_row[4]~19\)) # (!\inst1|cursor_row\(5) & ((\inst1|PACKET_CHAR3\(5)) # (!\inst1|new_cursor_row[4]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_row\(5),
	datab => \inst1|PACKET_CHAR3\(5),
	datad => VCC,
	cin => \inst1|new_cursor_row[4]~19\,
	combout => \inst1|new_cursor_row[5]~20_combout\,
	cout => \inst1|new_cursor_row[5]~21\);

-- Location: FF_X30_Y20_N21
\inst1|new_cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_row[5]~20_combout\,
	asdata => VCC,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_row\(5));

-- Location: LCCOMB_X30_Y20_N6
\inst1|RECV_UART~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|RECV_UART~0_combout\ = (!\inst1|new_cursor_row\(6) & (!\inst1|new_cursor_row\(7) & (\inst1|LessThan5~0_combout\ & !\inst1|new_cursor_row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_row\(6),
	datab => \inst1|new_cursor_row\(7),
	datac => \inst1|LessThan5~0_combout\,
	datad => \inst1|new_cursor_row\(5),
	combout => \inst1|RECV_UART~0_combout\);

-- Location: LCCOMB_X30_Y20_N4
\inst1|RECV_UART~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|RECV_UART~1_combout\ = (\inst1|new_cursor_row\(9)) # ((\inst1|new_cursor_row\(8) & ((\inst1|new_cursor_row\(0)) # (!\inst1|RECV_UART~0_combout\))) # (!\inst1|new_cursor_row\(8) & ((\inst1|RECV_UART~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_row\(0),
	datab => \inst1|new_cursor_row\(9),
	datac => \inst1|new_cursor_row\(8),
	datad => \inst1|RECV_UART~0_combout\,
	combout => \inst1|RECV_UART~1_combout\);

-- Location: LCCOMB_X30_Y20_N2
\inst1|RECV_UART~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|RECV_UART~2_combout\ = (!\inst1|cursor_row\(8) & (\inst1|RECV_UART~1_combout\ & !\inst1|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_row\(8),
	datac => \inst1|RECV_UART~1_combout\,
	datad => \inst1|cursor_row\(7),
	combout => \inst1|RECV_UART~2_combout\);

-- Location: LCCOMB_X29_Y20_N18
\inst1|cursor_row~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_row~6_combout\ = ((!\inst1|RECV_UART~2_combout\ & (\inst1|cursor_row~0_combout\ & \inst1|new_cursor_row\(4)))) # (!\inst1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|RECV_UART~2_combout\,
	datac => \inst1|cursor_row~0_combout\,
	datad => \inst1|new_cursor_row\(4),
	combout => \inst1|cursor_row~6_combout\);

-- Location: FF_X29_Y20_N19
\inst1|cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_row~6_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_row\(4));

-- Location: LCCOMB_X30_Y20_N22
\inst1|new_cursor_row[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_row[6]~22_combout\ = ((\inst1|cursor_row\(6) $ (\inst1|PACKET_CHAR3\(6) $ (\inst1|new_cursor_row[5]~21\)))) # (GND)
-- \inst1|new_cursor_row[6]~23\ = CARRY((\inst1|cursor_row\(6) & ((!\inst1|new_cursor_row[5]~21\) # (!\inst1|PACKET_CHAR3\(6)))) # (!\inst1|cursor_row\(6) & (!\inst1|PACKET_CHAR3\(6) & !\inst1|new_cursor_row[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_row\(6),
	datab => \inst1|PACKET_CHAR3\(6),
	datad => VCC,
	cin => \inst1|new_cursor_row[5]~21\,
	combout => \inst1|new_cursor_row[6]~22_combout\,
	cout => \inst1|new_cursor_row[6]~23\);

-- Location: LCCOMB_X30_Y20_N24
\inst1|new_cursor_row[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_row[7]~25_combout\ = (\inst1|PACKET_CHAR3\(7) & ((\inst1|cursor_row\(7) & (!\inst1|new_cursor_row[6]~23\)) # (!\inst1|cursor_row\(7) & ((\inst1|new_cursor_row[6]~23\) # (GND))))) # (!\inst1|PACKET_CHAR3\(7) & ((\inst1|cursor_row\(7) & 
-- (\inst1|new_cursor_row[6]~23\ & VCC)) # (!\inst1|cursor_row\(7) & (!\inst1|new_cursor_row[6]~23\))))
-- \inst1|new_cursor_row[7]~26\ = CARRY((\inst1|PACKET_CHAR3\(7) & ((!\inst1|new_cursor_row[6]~23\) # (!\inst1|cursor_row\(7)))) # (!\inst1|PACKET_CHAR3\(7) & (!\inst1|cursor_row\(7) & !\inst1|new_cursor_row[6]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR3\(7),
	datab => \inst1|cursor_row\(7),
	datad => VCC,
	cin => \inst1|new_cursor_row[6]~23\,
	combout => \inst1|new_cursor_row[7]~25_combout\,
	cout => \inst1|new_cursor_row[7]~26\);

-- Location: FF_X30_Y20_N25
\inst1|new_cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_row[7]~25_combout\,
	asdata => VCC,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_row\(7));

-- Location: LCCOMB_X30_Y21_N2
\inst1|cursor_row~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_row~4_combout\ = ((!\inst1|RECV_UART~2_combout\ & ((\inst1|new_cursor_row\(7)) # (!\inst1|cursor_row~0_combout\)))) # (!\inst1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|cursor_row~0_combout\,
	datac => \inst1|new_cursor_row\(7),
	datad => \inst1|RECV_UART~2_combout\,
	combout => \inst1|cursor_row~4_combout\);

-- Location: FF_X30_Y21_N3
\inst1|cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_row~4_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_row\(7));

-- Location: LCCOMB_X30_Y20_N28
\inst1|new_cursor_row[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_row[9]~29_combout\ = \inst1|new_cursor_row[8]~28\ $ (!\inst1|PACKET_CHAR3\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PACKET_CHAR3\(7),
	cin => \inst1|new_cursor_row[8]~28\,
	combout => \inst1|new_cursor_row[9]~29_combout\);

-- Location: FF_X30_Y20_N29
\inst1|new_cursor_row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_row[9]~29_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_row\(9));

-- Location: FF_X30_Y20_N23
\inst1|new_cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_row[6]~22_combout\,
	asdata => VCC,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_row\(6));

-- Location: LCCOMB_X31_Y20_N10
\inst1|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan5~1_combout\ = (\inst1|new_cursor_row\(8) & (\inst1|new_cursor_row\(6) & (\inst1|new_cursor_row\(5) & \inst1|new_cursor_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_row\(8),
	datab => \inst1|new_cursor_row\(6),
	datac => \inst1|new_cursor_row\(5),
	datad => \inst1|new_cursor_row\(7),
	combout => \inst1|LessThan5~1_combout\);

-- Location: FF_X30_Y20_N11
\inst1|new_cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_row[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_row\(0));

-- Location: LCCOMB_X30_Y20_N0
\inst1|cursor_row~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_row~0_combout\ = (!\inst1|new_cursor_row\(9) & (((\inst1|LessThan5~0_combout\ & !\inst1|new_cursor_row\(0))) # (!\inst1|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan5~0_combout\,
	datab => \inst1|new_cursor_row\(9),
	datac => \inst1|LessThan5~1_combout\,
	datad => \inst1|new_cursor_row\(0),
	combout => \inst1|cursor_row~0_combout\);

-- Location: LCCOMB_X27_Y20_N26
\inst1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal3~0_combout\ = (\inst1|PACKET_COUNT\(1)) # (\inst1|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PACKET_COUNT\(1),
	datad => \inst1|PACKET_COUNT\(0),
	combout => \inst1|Equal3~0_combout\);

-- Location: LCCOMB_X30_Y21_N8
\inst1|cursor_row~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_row~3_combout\ = (\inst1|Equal3~0_combout\ & (!\inst1|RECV_UART~2_combout\ & ((\inst1|new_cursor_row\(8)) # (!\inst1|cursor_row~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_row\(8),
	datab => \inst1|cursor_row~0_combout\,
	datac => \inst1|Equal3~0_combout\,
	datad => \inst1|RECV_UART~2_combout\,
	combout => \inst1|cursor_row~3_combout\);

-- Location: FF_X30_Y21_N9
\inst1|cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_row~3_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_row\(8));

-- Location: LCCOMB_X30_Y21_N24
\inst6|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux0~0_combout\ = (\inst1|cursor_row\(8) & (\inst1|cursor_row\(6) & \inst1|cursor_row\(7))) # (!\inst1|cursor_row\(8) & ((!\inst1|cursor_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_row\(6),
	datac => \inst1|cursor_row\(8),
	datad => \inst1|cursor_row\(7),
	combout => \inst6|Mux0~0_combout\);

-- Location: FF_X30_Y21_N25
\inst6|ledsegment[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|ledsegment\(6));

-- Location: LCCOMB_X30_Y21_N26
\inst6|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux1~0_combout\ = (\inst1|cursor_row\(6) & ((\inst1|cursor_row\(7)) # (!\inst1|cursor_row\(8)))) # (!\inst1|cursor_row\(6) & (!\inst1|cursor_row\(8) & \inst1|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_row\(6),
	datac => \inst1|cursor_row\(8),
	datad => \inst1|cursor_row\(7),
	combout => \inst6|Mux1~0_combout\);

-- Location: FF_X30_Y21_N27
\inst6|ledsegment[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|ledsegment\(5));

-- Location: LCCOMB_X30_Y21_N22
\inst1|cursor_row~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_row~1_combout\ = ((!\inst1|RECV_UART~2_combout\ & ((\inst1|new_cursor_row\(6)) # (!\inst1|cursor_row~0_combout\)))) # (!\inst1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|cursor_row~0_combout\,
	datac => \inst1|new_cursor_row\(6),
	datad => \inst1|RECV_UART~2_combout\,
	combout => \inst1|cursor_row~1_combout\);

-- Location: FF_X30_Y21_N23
\inst1|cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_row~1_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_row\(6));

-- Location: LCCOMB_X30_Y21_N20
\inst6|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux2~0_combout\ = (\inst1|cursor_row\(6)) # ((\inst1|cursor_row\(8) & !\inst1|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cursor_row\(8),
	datac => \inst1|cursor_row\(6),
	datad => \inst1|cursor_row\(7),
	combout => \inst6|Mux2~0_combout\);

-- Location: FF_X30_Y21_N21
\inst6|ledsegment[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|ledsegment\(4));

-- Location: LCCOMB_X30_Y21_N14
\inst6|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux3~0_combout\ = (\inst1|cursor_row\(8) & (\inst1|cursor_row\(6) $ (!\inst1|cursor_row\(7)))) # (!\inst1|cursor_row\(8) & (\inst1|cursor_row\(6) & !\inst1|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cursor_row\(8),
	datac => \inst1|cursor_row\(6),
	datad => \inst1|cursor_row\(7),
	combout => \inst6|Mux3~0_combout\);

-- Location: FF_X30_Y21_N15
\inst6|ledsegment[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|ledsegment\(3));

-- Location: LCCOMB_X30_Y21_N28
\inst6|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux4~0_combout\ = (!\inst1|cursor_row\(8) & (!\inst1|cursor_row\(6) & \inst1|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cursor_row\(8),
	datac => \inst1|cursor_row\(6),
	datad => \inst1|cursor_row\(7),
	combout => \inst6|Mux4~0_combout\);

-- Location: FF_X30_Y21_N29
\inst6|ledsegment[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|ledsegment\(2));

-- Location: LCCOMB_X30_Y21_N18
\inst6|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux5~0_combout\ = (\inst1|cursor_row\(8) & (\inst1|cursor_row\(7) $ (\inst1|cursor_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cursor_row\(7),
	datac => \inst1|cursor_row\(6),
	datad => \inst1|cursor_row\(8),
	combout => \inst6|Mux5~0_combout\);

-- Location: FF_X30_Y21_N19
\inst6|ledsegment[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|ledsegment\(1));

-- Location: LCCOMB_X30_Y21_N16
\inst6|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux6~0_combout\ = (!\inst1|cursor_row\(7) & (\inst1|cursor_row\(6) $ (\inst1|cursor_row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cursor_row\(7),
	datac => \inst1|cursor_row\(6),
	datad => \inst1|cursor_row\(8),
	combout => \inst6|Mux6~0_combout\);

-- Location: FF_X30_Y21_N17
\inst6|ledsegment[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|ledsegment\(0));

-- Location: LCCOMB_X29_Y20_N22
\inst1|PACKET_CHAR2[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[5]~feeder_combout\ = \inst1|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTIN\(5),
	combout => \inst1|PACKET_CHAR2[5]~feeder_combout\);

-- Location: LCCOMB_X27_Y20_N18
\inst1|PACKET_CHAR2[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[7]~1_combout\ = (!\inst1|PACKET_COUNT\(0) & \inst1|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|PACKET_COUNT\(0),
	datac => \inst1|PACKET_COUNT\(1),
	combout => \inst1|PACKET_CHAR2[7]~1_combout\);

-- Location: LCCOMB_X28_Y20_N26
\inst1|PACKET_CHAR2[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[7]~2_combout\ = (\inst1|INCNT[3]~0_combout\ & (\inst1|READ_CHAR~q\ & (!\inst1|LessThan1~0_combout\ & \inst1|PACKET_CHAR2[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT[3]~0_combout\,
	datab => \inst1|READ_CHAR~q\,
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|PACKET_CHAR2[7]~1_combout\,
	combout => \inst1|PACKET_CHAR2[7]~2_combout\);

-- Location: FF_X29_Y20_N23
\inst1|PACKET_CHAR2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[5]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(5));

-- Location: LCCOMB_X29_Y20_N28
\inst1|PACKET_CHAR2[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[4]~feeder_combout\ = \inst1|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(4),
	combout => \inst1|PACKET_CHAR2[4]~feeder_combout\);

-- Location: FF_X29_Y20_N29
\inst1|PACKET_CHAR2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[4]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(4));

-- Location: LCCOMB_X29_Y20_N24
\inst1|PACKET_CHAR2[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[2]~feeder_combout\ = \inst1|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(2),
	combout => \inst1|PACKET_CHAR2[2]~feeder_combout\);

-- Location: FF_X29_Y20_N25
\inst1|PACKET_CHAR2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[2]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(2));

-- Location: LCCOMB_X29_Y20_N10
\inst1|PACKET_CHAR2[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[7]~feeder_combout\ = \inst1|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(7),
	combout => \inst1|PACKET_CHAR2[7]~feeder_combout\);

-- Location: FF_X29_Y20_N11
\inst1|PACKET_CHAR2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[7]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(7));

-- Location: LCCOMB_X28_Y20_N18
\inst1|new_cursor_column[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[6]~22_combout\ = ((\inst1|PACKET_CHAR2\(6) $ (\inst1|cursor_column\(6) $ (!\inst1|new_cursor_column[5]~21\)))) # (GND)
-- \inst1|new_cursor_column[6]~23\ = CARRY((\inst1|PACKET_CHAR2\(6) & ((\inst1|cursor_column\(6)) # (!\inst1|new_cursor_column[5]~21\))) # (!\inst1|PACKET_CHAR2\(6) & (\inst1|cursor_column\(6) & !\inst1|new_cursor_column[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(6),
	datab => \inst1|cursor_column\(6),
	datad => VCC,
	cin => \inst1|new_cursor_column[5]~21\,
	combout => \inst1|new_cursor_column[6]~22_combout\,
	cout => \inst1|new_cursor_column[6]~23\);

-- Location: LCCOMB_X28_Y20_N20
\inst1|new_cursor_column[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[7]~24_combout\ = (\inst1|cursor_column\(7) & ((\inst1|PACKET_CHAR2\(7) & (\inst1|new_cursor_column[6]~23\ & VCC)) # (!\inst1|PACKET_CHAR2\(7) & (!\inst1|new_cursor_column[6]~23\)))) # (!\inst1|cursor_column\(7) & 
-- ((\inst1|PACKET_CHAR2\(7) & (!\inst1|new_cursor_column[6]~23\)) # (!\inst1|PACKET_CHAR2\(7) & ((\inst1|new_cursor_column[6]~23\) # (GND)))))
-- \inst1|new_cursor_column[7]~25\ = CARRY((\inst1|cursor_column\(7) & (!\inst1|PACKET_CHAR2\(7) & !\inst1|new_cursor_column[6]~23\)) # (!\inst1|cursor_column\(7) & ((!\inst1|new_cursor_column[6]~23\) # (!\inst1|PACKET_CHAR2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(7),
	datab => \inst1|PACKET_CHAR2\(7),
	datad => VCC,
	cin => \inst1|new_cursor_column[6]~23\,
	combout => \inst1|new_cursor_column[7]~24_combout\,
	cout => \inst1|new_cursor_column[7]~25\);

-- Location: LCCOMB_X28_Y20_N22
\inst1|new_cursor_column[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[8]~26_combout\ = ((\inst1|cursor_column\(8) $ (\inst1|PACKET_CHAR2\(7) $ (!\inst1|new_cursor_column[7]~25\)))) # (GND)
-- \inst1|new_cursor_column[8]~27\ = CARRY((\inst1|cursor_column\(8) & ((\inst1|PACKET_CHAR2\(7)) # (!\inst1|new_cursor_column[7]~25\))) # (!\inst1|cursor_column\(8) & (\inst1|PACKET_CHAR2\(7) & !\inst1|new_cursor_column[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(8),
	datab => \inst1|PACKET_CHAR2\(7),
	datad => VCC,
	cin => \inst1|new_cursor_column[7]~25\,
	combout => \inst1|new_cursor_column[8]~26_combout\,
	cout => \inst1|new_cursor_column[8]~27\);

-- Location: FF_X28_Y20_N23
\inst1|new_cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[8]~26_combout\,
	asdata => VCC,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(8));

-- Location: LCCOMB_X28_Y20_N24
\inst1|new_cursor_column[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[9]~28_combout\ = \inst1|cursor_column\(9) $ (\inst1|new_cursor_column[8]~27\ $ (\inst1|PACKET_CHAR2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(9),
	datad => \inst1|PACKET_CHAR2\(7),
	cin => \inst1|new_cursor_column[8]~27\,
	combout => \inst1|new_cursor_column[9]~28_combout\);

-- Location: FF_X28_Y20_N25
\inst1|new_cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[9]~28_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(9));

-- Location: LCCOMB_X26_Y20_N16
\inst1|cursor_column~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~18_combout\ = (\inst1|PACKET_COUNT\(0) & (((\inst1|new_cursor_column\(8) & \inst1|cursor_column[9]~20_combout\)))) # (!\inst1|PACKET_COUNT\(0) & (((\inst1|new_cursor_column\(8) & \inst1|cursor_column[9]~20_combout\)) # 
-- (!\inst1|PACKET_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_COUNT\(0),
	datab => \inst1|PACKET_COUNT\(1),
	datac => \inst1|new_cursor_column\(8),
	datad => \inst1|cursor_column[9]~20_combout\,
	combout => \inst1|cursor_column~18_combout\);

-- Location: FF_X26_Y20_N17
\inst1|cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~18_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(8));

-- Location: LCCOMB_X26_Y20_N30
\inst1|cursor_column~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~9_combout\ = (\inst1|new_cursor_column\(9) & \inst1|cursor_column~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(9),
	datad => \inst1|cursor_column~7_combout\,
	combout => \inst1|cursor_column~9_combout\);

-- Location: FF_X26_Y20_N31
\inst1|cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~9_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(9));

-- Location: LCCOMB_X26_Y20_N22
\inst1|cursor_column~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~8_combout\ = (\inst1|cursor_column[9]~20_combout\ & (\inst1|new_cursor_column\(7))) # (!\inst1|cursor_column[9]~20_combout\ & ((\inst1|cursor_column~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(7),
	datab => \inst1|cursor_column~7_combout\,
	datad => \inst1|cursor_column[9]~20_combout\,
	combout => \inst1|cursor_column~8_combout\);

-- Location: FF_X26_Y20_N23
\inst1|cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~8_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(7));

-- Location: LCCOMB_X26_Y20_N20
\inst1|RECV_UART~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|RECV_UART~3_combout\ = (!\inst1|cursor_column\(8) & (!\inst1|cursor_column\(9) & !\inst1|cursor_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cursor_column\(8),
	datac => \inst1|cursor_column\(9),
	datad => \inst1|cursor_column\(7),
	combout => \inst1|RECV_UART~3_combout\);

-- Location: FF_X28_Y20_N21
\inst1|new_cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[7]~24_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(7));

-- Location: LCCOMB_X28_Y20_N30
\inst1|RECV_UART~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|RECV_UART~4_combout\ = (!\inst1|new_cursor_column\(2) & (!\inst1|new_cursor_column\(6) & (!\inst1|new_cursor_column\(1) & !\inst1|new_cursor_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(2),
	datab => \inst1|new_cursor_column\(6),
	datac => \inst1|new_cursor_column\(1),
	datad => \inst1|new_cursor_column\(3),
	combout => \inst1|RECV_UART~4_combout\);

-- Location: LCCOMB_X28_Y20_N14
\inst1|new_cursor_column[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[4]~18_combout\ = ((\inst1|cursor_column\(4) $ (\inst1|PACKET_CHAR2\(4) $ (!\inst1|new_cursor_column[3]~17\)))) # (GND)
-- \inst1|new_cursor_column[4]~19\ = CARRY((\inst1|cursor_column\(4) & ((\inst1|PACKET_CHAR2\(4)) # (!\inst1|new_cursor_column[3]~17\))) # (!\inst1|cursor_column\(4) & (\inst1|PACKET_CHAR2\(4) & !\inst1|new_cursor_column[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(4),
	datab => \inst1|PACKET_CHAR2\(4),
	datad => VCC,
	cin => \inst1|new_cursor_column[3]~17\,
	combout => \inst1|new_cursor_column[4]~18_combout\,
	cout => \inst1|new_cursor_column[4]~19\);

-- Location: FF_X28_Y20_N15
\inst1|new_cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[4]~18_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(4));

-- Location: LCCOMB_X28_Y20_N16
\inst1|new_cursor_column[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[5]~20_combout\ = (\inst1|cursor_column\(5) & ((\inst1|PACKET_CHAR2\(5) & (\inst1|new_cursor_column[4]~19\ & VCC)) # (!\inst1|PACKET_CHAR2\(5) & (!\inst1|new_cursor_column[4]~19\)))) # (!\inst1|cursor_column\(5) & 
-- ((\inst1|PACKET_CHAR2\(5) & (!\inst1|new_cursor_column[4]~19\)) # (!\inst1|PACKET_CHAR2\(5) & ((\inst1|new_cursor_column[4]~19\) # (GND)))))
-- \inst1|new_cursor_column[5]~21\ = CARRY((\inst1|cursor_column\(5) & (!\inst1|PACKET_CHAR2\(5) & !\inst1|new_cursor_column[4]~19\)) # (!\inst1|cursor_column\(5) & ((!\inst1|new_cursor_column[4]~19\) # (!\inst1|PACKET_CHAR2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(5),
	datab => \inst1|PACKET_CHAR2\(5),
	datad => VCC,
	cin => \inst1|new_cursor_column[4]~19\,
	combout => \inst1|new_cursor_column[5]~20_combout\,
	cout => \inst1|new_cursor_column[5]~21\);

-- Location: FF_X28_Y20_N17
\inst1|new_cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[5]~20_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(5));

-- Location: LCCOMB_X28_Y20_N0
\inst1|RECV_UART~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|RECV_UART~5_combout\ = (!\inst1|new_cursor_column\(4) & !\inst1|new_cursor_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|new_cursor_column\(4),
	datad => \inst1|new_cursor_column\(5),
	combout => \inst1|RECV_UART~5_combout\);

-- Location: LCCOMB_X28_Y20_N28
\inst1|cursor_column~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~16_combout\ = (\inst1|new_cursor_column\(8) & (((!\inst1|RECV_UART~5_combout\) # (!\inst1|RECV_UART~4_combout\)))) # (!\inst1|new_cursor_column\(8) & (!\inst1|new_cursor_column\(7) & (\inst1|RECV_UART~4_combout\ & 
-- \inst1|RECV_UART~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(8),
	datab => \inst1|new_cursor_column\(7),
	datac => \inst1|RECV_UART~4_combout\,
	datad => \inst1|RECV_UART~5_combout\,
	combout => \inst1|cursor_column~16_combout\);

-- Location: LCCOMB_X27_Y20_N28
\inst1|cursor_column~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~7_combout\ = (\inst1|Equal3~0_combout\ & (((!\inst1|cursor_column~6_combout\ & !\inst1|cursor_column~16_combout\)) # (!\inst1|RECV_UART~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column~6_combout\,
	datab => \inst1|RECV_UART~3_combout\,
	datac => \inst1|Equal3~0_combout\,
	datad => \inst1|cursor_column~16_combout\,
	combout => \inst1|cursor_column~7_combout\);

-- Location: LCCOMB_X27_Y20_N4
\inst1|cursor_column[9]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column[9]~20_combout\ = (\inst1|cursor_column~7_combout\ & (((\inst1|cursor_column[9]~19_combout\ & !\inst1|new_cursor_column\(8))) # (!\inst1|new_cursor_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column[9]~19_combout\,
	datab => \inst1|new_cursor_column\(8),
	datac => \inst1|new_cursor_column\(9),
	datad => \inst1|cursor_column~7_combout\,
	combout => \inst1|cursor_column[9]~20_combout\);

-- Location: LCCOMB_X27_Y20_N24
\inst1|cursor_column~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~15_combout\ = (\inst1|new_cursor_column\(0) & \inst1|cursor_column[9]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(0),
	datac => \inst1|cursor_column[9]~20_combout\,
	combout => \inst1|cursor_column~15_combout\);

-- Location: FF_X27_Y20_N25
\inst1|cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~15_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(0));

-- Location: LCCOMB_X28_Y20_N8
\inst1|new_cursor_column[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[1]~12_combout\ = (\inst1|PACKET_CHAR2\(1) & ((\inst1|cursor_column\(1) & (\inst1|new_cursor_column[0]~11\ & VCC)) # (!\inst1|cursor_column\(1) & (!\inst1|new_cursor_column[0]~11\)))) # (!\inst1|PACKET_CHAR2\(1) & 
-- ((\inst1|cursor_column\(1) & (!\inst1|new_cursor_column[0]~11\)) # (!\inst1|cursor_column\(1) & ((\inst1|new_cursor_column[0]~11\) # (GND)))))
-- \inst1|new_cursor_column[1]~13\ = CARRY((\inst1|PACKET_CHAR2\(1) & (!\inst1|cursor_column\(1) & !\inst1|new_cursor_column[0]~11\)) # (!\inst1|PACKET_CHAR2\(1) & ((!\inst1|new_cursor_column[0]~11\) # (!\inst1|cursor_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(1),
	datab => \inst1|cursor_column\(1),
	datad => VCC,
	cin => \inst1|new_cursor_column[0]~11\,
	combout => \inst1|new_cursor_column[1]~12_combout\,
	cout => \inst1|new_cursor_column[1]~13\);

-- Location: FF_X28_Y20_N9
\inst1|new_cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(1));

-- Location: LCCOMB_X27_Y20_N22
\inst1|cursor_column~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~14_combout\ = (\inst1|new_cursor_column\(1) & \inst1|cursor_column[9]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(1),
	datac => \inst1|cursor_column[9]~20_combout\,
	combout => \inst1|cursor_column~14_combout\);

-- Location: FF_X27_Y20_N23
\inst1|cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~14_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(1));

-- Location: LCCOMB_X28_Y20_N12
\inst1|new_cursor_column[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[3]~16_combout\ = (\inst1|PACKET_CHAR2\(3) & ((\inst1|cursor_column\(3) & (\inst1|new_cursor_column[2]~15\ & VCC)) # (!\inst1|cursor_column\(3) & (!\inst1|new_cursor_column[2]~15\)))) # (!\inst1|PACKET_CHAR2\(3) & 
-- ((\inst1|cursor_column\(3) & (!\inst1|new_cursor_column[2]~15\)) # (!\inst1|cursor_column\(3) & ((\inst1|new_cursor_column[2]~15\) # (GND)))))
-- \inst1|new_cursor_column[3]~17\ = CARRY((\inst1|PACKET_CHAR2\(3) & (!\inst1|cursor_column\(3) & !\inst1|new_cursor_column[2]~15\)) # (!\inst1|PACKET_CHAR2\(3) & ((!\inst1|new_cursor_column[2]~15\) # (!\inst1|cursor_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(3),
	datab => \inst1|cursor_column\(3),
	datad => VCC,
	cin => \inst1|new_cursor_column[2]~15\,
	combout => \inst1|new_cursor_column[3]~16_combout\,
	cout => \inst1|new_cursor_column[3]~17\);

-- Location: FF_X28_Y20_N13
\inst1|new_cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(3));

-- Location: LCCOMB_X27_Y20_N30
\inst1|cursor_column~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~12_combout\ = (\inst1|new_cursor_column\(3) & \inst1|cursor_column[9]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(3),
	datac => \inst1|cursor_column[9]~20_combout\,
	combout => \inst1|cursor_column~12_combout\);

-- Location: FF_X27_Y20_N31
\inst1|cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~12_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(3));

-- Location: FF_X28_Y20_N19
\inst1|new_cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[6]~22_combout\,
	asdata => VCC,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_row[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(6));

-- Location: LCCOMB_X26_Y20_N4
\inst1|cursor_column~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~17_combout\ = (\inst1|PACKET_COUNT\(0) & (((\inst1|new_cursor_column\(6) & \inst1|cursor_column[9]~20_combout\)))) # (!\inst1|PACKET_COUNT\(0) & (((\inst1|new_cursor_column\(6) & \inst1|cursor_column[9]~20_combout\)) # 
-- (!\inst1|PACKET_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_COUNT\(0),
	datab => \inst1|PACKET_COUNT\(1),
	datac => \inst1|new_cursor_column\(6),
	datad => \inst1|cursor_column[9]~20_combout\,
	combout => \inst1|cursor_column~17_combout\);

-- Location: FF_X26_Y20_N5
\inst1|cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~17_combout\,
	ena => \inst1|cursor_row[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(6));

-- Location: LCCOMB_X26_Y20_N10
\inst7|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst1|cursor_column\(6) & (!\inst1|cursor_column\(9) & (\inst1|cursor_column\(7) $ (!\inst1|cursor_column\(8))))) # (!\inst1|cursor_column\(6) & (!\inst1|cursor_column\(7) & (\inst1|cursor_column\(9) $ 
-- (!\inst1|cursor_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(9),
	datab => \inst1|cursor_column\(6),
	datac => \inst1|cursor_column\(7),
	datad => \inst1|cursor_column\(8),
	combout => \inst7|Mux0~0_combout\);

-- Location: FF_X26_Y20_N11
\inst7|ledsegment[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ledsegment\(6));

-- Location: LCCOMB_X26_Y20_N8
\inst7|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = (\inst1|cursor_column\(7) & (!\inst1|cursor_column\(9) & ((\inst1|cursor_column\(6)) # (!\inst1|cursor_column\(8))))) # (!\inst1|cursor_column\(7) & (\inst1|cursor_column\(6) & (\inst1|cursor_column\(9) $ 
-- (!\inst1|cursor_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(7),
	datab => \inst1|cursor_column\(6),
	datac => \inst1|cursor_column\(9),
	datad => \inst1|cursor_column\(8),
	combout => \inst7|Mux1~0_combout\);

-- Location: FF_X26_Y20_N9
\inst7|ledsegment[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ledsegment\(5));

-- Location: LCCOMB_X26_Y20_N26
\inst7|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = (\inst1|cursor_column\(7) & (!\inst1|cursor_column\(9) & (\inst1|cursor_column\(6)))) # (!\inst1|cursor_column\(7) & ((\inst1|cursor_column\(8) & (!\inst1|cursor_column\(9))) # (!\inst1|cursor_column\(8) & 
-- ((\inst1|cursor_column\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(9),
	datab => \inst1|cursor_column\(7),
	datac => \inst1|cursor_column\(6),
	datad => \inst1|cursor_column\(8),
	combout => \inst7|Mux2~0_combout\);

-- Location: FF_X26_Y20_N27
\inst7|ledsegment[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ledsegment\(4));

-- Location: LCCOMB_X26_Y20_N12
\inst7|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux3~0_combout\ = (\inst1|cursor_column\(7) & ((\inst1|cursor_column\(6) & ((\inst1|cursor_column\(8)))) # (!\inst1|cursor_column\(6) & (\inst1|cursor_column\(9) & !\inst1|cursor_column\(8))))) # (!\inst1|cursor_column\(7) & 
-- (!\inst1|cursor_column\(9) & (\inst1|cursor_column\(6) $ (\inst1|cursor_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(9),
	datab => \inst1|cursor_column\(6),
	datac => \inst1|cursor_column\(7),
	datad => \inst1|cursor_column\(8),
	combout => \inst7|Mux3~0_combout\);

-- Location: FF_X26_Y20_N13
\inst7|ledsegment[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ledsegment\(3));

-- Location: LCCOMB_X26_Y20_N6
\inst7|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux4~0_combout\ = (\inst1|cursor_column\(9) & (\inst1|cursor_column\(8) & ((\inst1|cursor_column\(7)) # (!\inst1|cursor_column\(6))))) # (!\inst1|cursor_column\(9) & (\inst1|cursor_column\(7) & (!\inst1|cursor_column\(6) & 
-- !\inst1|cursor_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(7),
	datab => \inst1|cursor_column\(6),
	datac => \inst1|cursor_column\(9),
	datad => \inst1|cursor_column\(8),
	combout => \inst7|Mux4~0_combout\);

-- Location: FF_X26_Y20_N7
\inst7|ledsegment[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ledsegment\(2));

-- Location: LCCOMB_X26_Y20_N28
\inst7|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = (\inst1|cursor_column\(7) & ((\inst1|cursor_column\(6) & (\inst1|cursor_column\(9))) # (!\inst1|cursor_column\(6) & ((\inst1|cursor_column\(8)))))) # (!\inst1|cursor_column\(7) & (\inst1|cursor_column\(8) & 
-- (\inst1|cursor_column\(6) $ (\inst1|cursor_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(7),
	datab => \inst1|cursor_column\(6),
	datac => \inst1|cursor_column\(9),
	datad => \inst1|cursor_column\(8),
	combout => \inst7|Mux5~0_combout\);

-- Location: FF_X26_Y20_N29
\inst7|ledsegment[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ledsegment\(1));

-- Location: LCCOMB_X26_Y20_N18
\inst7|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux6~0_combout\ = (\inst1|cursor_column\(9) & (\inst1|cursor_column\(6) & (\inst1|cursor_column\(7) $ (\inst1|cursor_column\(8))))) # (!\inst1|cursor_column\(9) & (!\inst1|cursor_column\(7) & (\inst1|cursor_column\(6) $ 
-- (\inst1|cursor_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(9),
	datab => \inst1|cursor_column\(6),
	datac => \inst1|cursor_column\(7),
	datad => \inst1|cursor_column\(8),
	combout => \inst7|Mux6~0_combout\);

-- Location: FF_X26_Y20_N19
\inst7|ledsegment[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ledsegment\(0));
END structure;


