library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity fsm_game is 
	port(
		clk, reset, PB1, SW0: in std_logic;
		hit : in std_logic;
		output_select: out std_logic_vector(1 downto 0);
		debug_fsm: out std_logic_vector(3 downto 0)
		);
end entity;

architecture yeet of fsm_game is
--State Machine signals
type state_type is (s_menu, s_regular, s_training, s_over);
signal state, next_state : state_type := s_menu;

begin
	state_register: process(clk,reset) --synchronously move to next state
	begin
		if (reset = '1') then
			state <= s_menu;
		elsif (rising_edge(clk)) then
			state <= next_state;
		end if;
	end process;

	next_state_fn: process(state,hit,PB1,SW0) --asynchronously decide next state based only on current state and inputs
	begin
		case state is
			when s_menu =>
				if (PB1 = '1') then
					if (SW0 = '1') then
						next_state <= s_regular;
					else
						next_state <= s_training;
					end if;
				else
					next_state <= s_menu;
				end if;
				
			when s_regular =>
				if (hit = '1') then
					next_state <= s_over;
				else
					next_state <= s_regular;
				end if;
			
			when s_training =>
				if (hit = '1') then
					next_state <= s_over;
				else
					next_state <= s_training;
				end if;
				
			when s_over => 
				if (PB1 = '1') then
					next_state <= s_menu;
				else
					next_state <= s_menu;
				end if;
		end case;
	end process;
	
	select_signal: process(state) --asynchronously decide output select signal based on current state
	begin
		case state is
			when s_menu =>
				output_select <= "00";
				debug_fsm <= "0001";
			when s_regular =>
				output_select <= "01";
				debug_fsm <= "0010";
			when s_training =>
				output_select <= "10";
				debug_fsm <= "0100";
			when s_over =>
				output_select <= "11";
				debug_fsm <= "1000";
		end case;
	end process;
end architecture;