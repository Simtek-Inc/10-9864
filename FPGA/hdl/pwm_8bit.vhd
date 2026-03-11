library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm_8bit is
    generic(
            PWM_ON     : std_logic   := '1'  -- define the mask for the duty cycle limit calculation
           );
    Port (
          i_rst           : in  std_logic;
          i_clk           : in  std_logic;
          i_pwm_clk       : in  std_logic;
          i_duty_cycle    : in  std_logic_vector(7 downto 0);
          o_pwm_ctrl      : out std_logic
          );

end pwm_8bit;

architecture Behavioral of pwm_8bit is

signal   counter       : integer range 0 to 255; -- 8 bit range

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