library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity debounce is
	generic ( 
		DEBOUNCE_LIMIT : integer := 20;	-- CONSTANT USED TO DEFINE UPPER LIMIT OF CLOCK CYCLES BEING COUNTED
		SWITCH_COUNT   : integer := 20);
	port (
		i_clk 		: in std_logic;
		i_bouncy 	: in std_logic_vector(SWITCH_COUNT-1 downto 0);
		o_debounced : out std_logic_vector(SWITCH_COUNT-1 downto 0)
	);
end entity debounce;

architecture RTL of debounce is

	signal r_count : integer range 0 to DEBOUNCE_LIMIT := 0;	-- CLOCK COUNTER CAN RANGE FROM 0 TO DEFINED LIMIT
	signal r_state : std_logic_vector(SWITCH_COUNT-1 downto 0) := (others => '0');
	
begin

	process(i_clk) is
	begin																	--  = MEANS EQUAL
		if rising_edge(i_clk) then											-- /= MEANS DOES NOT EQUAL
			if(i_bouncy /= r_state and r_count < DEBOUNCE_LIMIT-1) then 	-- IF INPUTS ARE DIFFERENT AND COUNT IS LESS THAN LIMIT
				r_count <= r_count + 1;
			elsif r_count = DEBOUNCE_LIMIT-1 then	-- IF COUNT IS AT LIMIT RESET COUNT AND PUT SWITCH STATE INTO REGISTER
				r_state <= i_bouncy;
				r_count <= 0;
			else				-- IF INPUT AND OUTPUT ARE IN THE SAME STATE
				r_count <= 0;
			end if;
		end if;
	end process;
	
	o_debounced <= r_state; -- OUTPUT DEBOUNCED REGISTER STATE
end architecture RTL;
