-- Code for a keypad/switch matrix 
-- Controlled completely within the FPGA
-- Just need to read the data over to the uC
--------------------------------------------

library ieee;
use ieee.std_logic_1164.all;		



entity switch_matrix is			 
	port (
		i_clk		    : in std_logic;
		i_rst		    : in std_logic;	
		o_column_ctrl   : out  std_logic_vector(3 downto 0);   
		
        i_row_data      : in std_logic_vector(5 downto 0);   	
		o_switch_data   : out std_logic_vector(23 downto 0)   
	);	
end entity switch_matrix;		


architecture RTL of switch_matrix is 

signal r_switch_data : std_logic_vector(23 downto 0); -- 28 switches = 28 bits
signal c_counter     : integer range 0 to 200 := 0;
 
-- TIMING MATH
-- 5330 clock
-- XCLK    = 100 MHZ  - each clock cycle = 10 nanoseconds
-- ICLK    = 50 MHZ   - each clock cycle = 20 nanoseconds
-- clock01 = 25 MHZ   - each clock cycle = 40 nanoseconds
-- clock02 = 12.5 MHZ - each clock cycle = 80 nanoseconds <- THIS CLOCK USED

begin
	process(i_clk)
	begin
		if rising_edge(i_clk) then
			
			c_counter <= c_counter + 1;
			
            -- At start of scan reset the register
            if(c_counter > 150) then
                c_counter <= 0;             
                --o_column_ctrl <= x"1111";    
			
            -- Cases for single switch presses
            elsif((c_counter > 20) and (c_counter < 40)) then   -- ground column 0
				o_column_ctrl     <= "1110";                    -- column 1
				r_switch_data(23) <= i_row_data(0);
				r_switch_data(22) <= i_row_data(1);
				r_switch_data(21) <= i_row_data(2);
				r_switch_data(20) <= i_row_data(3);
                r_switch_data(19) <= i_row_data(4);
				r_switch_data(18) <= i_row_data(5);				
			
            elsif((c_counter > 50) and (c_counter < 70))then    -- ground column 2
				o_column_ctrl    <= "1101";                     -- column 2
				r_switch_data(0) <= i_row_data(0);
				r_switch_data(1) <= i_row_data(1);
				r_switch_data(2) <= i_row_data(2);
				r_switch_data(3) <= i_row_data(3);
                r_switch_data(4) <= i_row_data(4);
				r_switch_data(5) <= i_row_data(5);	
				
			elsif((c_counter > 80) and (c_counter < 100))then    -- ground column 3 
				o_column_ctrl        <= "1011";                 -- column 3
				r_switch_data(12) <= i_row_data(0);
				r_switch_data(13) <= i_row_data(1);
				r_switch_data(14) <= i_row_data(2);
				r_switch_data(15) <= i_row_data(3);
                r_switch_data(16) <= i_row_data(4);
				r_switch_data(17) <= i_row_data(5);	
				
			elsif((c_counter > 110) and (c_counter < 130))then   -- ground column 4 
                o_column_ctrl        <= "0111";                 -- column 4				
                r_switch_data(6)  <= i_row_data(0);
				r_switch_data(7)  <= i_row_data(1);
				r_switch_data(8)  <= i_row_data(2);
				r_switch_data(9)  <= i_row_data(3);
                r_switch_data(10) <= i_row_data(4);
				r_switch_data(11) <= i_row_data(5);	
				
			--elsif(c_counter < 30) then  -- Scan row 5
				--o_column_ctrl        <= "010000";
				--r_switch_data(19) <= i_col_data(0);
				--r_switch_data(4)  <= i_col_data(1);
				--r_switch_data(16) <= i_col_data(2);
				--r_switch_data(10) <= i_col_data(3);
				
			--elsif(c_counter < 35) then -- Scan row 6
				--o_column_ctrl        <= "100000";
				--r_switch_data(18) <= i_col_data(0);
				--r_switch_data(5)  <= i_col_data(1);
				--r_switch_data(17) <= i_col_data(2);
				--r_switch_data(11) <= i_col_data(3);			

			else--(c_counter < 105) then -- Turn off all rows, reset counter, and output read data
				--o_row_data    <= "000000";
                --c_counter     <= 0;
                o_switch_data       <= r_switch_data;             
				o_column_ctrl       <= "1111";
			end if;
		end if;
	
    
            
	end process;	
end RTL;