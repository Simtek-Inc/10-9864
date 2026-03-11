library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity encoder is
  Port ( 
    i_reset              : in std_logic;
    i_encoder_clk        : in std_logic;
    i_enc_A              : in std_logic;
    i_enc_B              : in std_logic;
    o_encounter_count    : out std_logic_vector(7 downto 0)
    );
end encoder;

architecture RTL of encoder is

signal r_enc_A_new : std_logic_vector(1 downto 0);
signal r_enc_B_new : std_logic_vector(1 downto 0);

signal r_enc_A_prev : std_logic;
signal r_enc_B_prev : std_logic;

signal r_debounce_count : INTEGER RANGE 0 to 500000;

signal r_count : unsigned(7 downto 0) := (others => '0');

begin
    process(i_encoder_clk)
    begin
        if rising_edge(i_encoder_clk) then
            if( i_reset = '1' ) then
                r_count <= (others => '0');
            else
                r_enc_A_new  <= r_enc_A_new(0) & i_enc_A; -- shift in new values
                r_enc_B_new  <= r_enc_B_new(0) & i_enc_B; -- shift in new values
                
                if(r_enc_A_new(0) xor r_enc_A_new(1) xor r_enc_B_new(0) xor r_enc_B_new(1)) = '1' then
                    r_debounce_count <= 0;
                elsif(r_debounce_count = 500000) then
                    r_enc_A_prev <= r_enc_A_new(1);           -- position (1) is hold value for prev
                    r_enc_B_prev <= r_enc_B_new(1);           -- position (1) is hold value for prev
                    
                    if (r_enc_A_new(0) xor r_enc_A_prev xor r_enc_B_new(0) xor r_enc_B_prev) = '1' then -- count enable
                        if (r_enc_A_new(0) xor r_enc_B_prev) = '1' then -- count direction
                        r_count <= r_count + 1;
                    else
                        r_count <= r_count - 1;
                    
                    end if;
                end if;
                else
                    r_debounce_count <= r_debounce_count + 1;
                end if;
            end if;
        end if;
    
    end process;

    o_encounter_count <= std_logic_vector(r_count);

end RTL;
