library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm_14bit is
    generic(
            PWM_ON     : std_logic   := '1'  -- define the mask for the duty cycle limit calculation
           );
    Port (
          i_rst           : in  std_logic;
          i_clk           : in  std_logic;
          i_pwm_clk       : in  std_logic;
          i_duty_cycle    : in  std_logic_vector(13 downto 0);
          o_pwm_ctrl      : out std_logic
          );

end pwm_14bit;

architecture Behavioral of pwm_14bit is

signal   counter       : integer range 0 to 16383; -- 14 bit range
-- If less than 14 bit dimming is used then only portions of the full duty cycle will be used per Chris Mason 10/31/24
-- ex 12 bit = 4095, so only 1/4 of duty cycle
-- ex 8 bit = 255, so only 1/64 of duty cycle


begin

PwmCountProcess:
process(i_pwm_clk)
begin
  if(i_rst = '1') then
    counter <= 0;
  elsif(rising_edge(i_pwm_clk)) then
      counter <= counter + 1;
  end if;
end process PwmCountProcess;


PwmControlProcess:
process(i_clk)
begin
  if(i_rst = '1') then
    o_pwm_ctrl <= not PWM_ON;                                    -- if reset then turn off pwm
  elsif(rising_edge(i_clk))  then
    if counter >=  to_integer(unsigned(i_duty_cycle))  then      -- when pwm clock counter >= duty cycle, turn OFF pwm   
      o_pwm_ctrl  <= not PWM_ON;
    else
      o_pwm_ctrl  <= PWM_ON;                                     -- when pwm clock counter < duty cycle, turn ON pwm
    end if;--if counter >= i_duty_cycle then
  end if;
end process PwmControlProcess;


end Behavioral;