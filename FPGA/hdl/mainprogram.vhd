library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
--
--        SIMTEK, INC
--        PART : #76-5036
--        DESCRIPTION : 
--        SIMTEK INSTRUMENT PART # 10-9864-01.
--        By: Colin Jeardoe
--        REVISION: -
--        Started March 2026

entity mainprogram is
    Port(           

            -- ENCODER
            i_enc1_a        : in std_logic;
            i_enc1_b        : in std_logic;
            i_enc2_a        : in std_logic;
            i_enc2_b        : in std_logic;
            i_enc3_a        : in std_logic;
            i_enc3_b        : in std_logic;
            i_enc4_a        : in std_logic;
            i_enc4_b        : in std_logic;

            -- SWITCH INPUTS
            i_xpndr_switch      : in std_logic;
            i_alt_source_switch : in std_logic;
            i_ident_button      : in std_logic;
            i_5pos_switch       : in std_logic_vector(4 downto 0);
            i_test_button       : in std_logic;

            
            -- PWM outputs
            o_panel_pwm     : out std_logic;
            o_indicator_pwm : out std_logic;
            
            
            -- EXTRA
            AdClock             :   out std_logic; -- 59 -- U1.8              -- GIO32    -- MAX144 SerialClock
            AdCs1               :   out std_logic; -- 61 -- U1.6              -- GIO30    -- MAX144 ~CS
            AdDout              :   in  std_logic; -- 60 -- U1.7              -- GIO31    -- MAX144 DOUT

            HrtBeat             :   out std_logic; -- 23 -- DS2-              -- HB       -- DS2 CATHODE FPGA heartbeat
            
            ExternalHardwareEn  :   out std_logic_vector(4 downto 0);

            XCLK                :   in    std_logic; -- 80 -- U3.97             -- XCLK     -- FPGA SYSTEM CLOCK
            ResetIn             :   in    std_logic; -- 82 -- R77&C41           -- RESETI   -- RC CIRCUIT TO GENERATE RESET
            uCReset             :   out   std_logic; -- 83 -- U3.120            -- RESETO   -- uC MANUAL RESET INPUT

            SerialClock         :   in    std_logic; -- 95 -- U3.5              -- P2.0     -- uC INTERFACE CLOCK IN
            SerialLoad          :   in    std_logic; -- 93 -- U3.12             -- P2.2     -- uC INTERFACE LOAD
            SerialOut           :   out   std_logic; -- 94 -- U3.9              -- P2.1     -- uC INTERFACE DATA OUT
            SerialIn            :   in    std_logic; -- 92 -- U3.14             -- P2.3     -- uC INTERFACE DATA IN
            Ale                 :   in    std_logic; -- 91 -- U3.17             -- P2.4     -- uC INTERFACE ALE

            LogicReset          :   in    std_logic  -- 86 -- U3.19             -- P2.5     -- uC INTERFACE FPGA logic reset
            );

end  mainprogram;

architecture Behavioral of mainprogram is

-- constants
constant dfDutyCycle14     : std_logic_vector := "00000000000000";        -- default PWM duty cycle
constant dfDutyCycle8      : std_logic_vector := "00000000";              -- default PWM duty cycle

constant Ax00            : std_logic_vector := x"00";         -- default address to use after reset

constant Ax20            : std_logic_vector := x"20";         -- address of firmware number and revision
constant Ax21            : std_logic_vector := x"21";         -- address of firmware number and revision
constant Ax22            : std_logic_vector := x"22";         -- address of firmware number and revision
constant Ax23            : std_logic_vector := x"23";         -- address of firmware number and revision

constant Ax50            : std_logic_vector := x"50";         -- address of a2d 1 channel 0 reader internal
constant Ax51            : std_logic_vector := x"51";         -- address of a2d 1 channel 1 reader

constant AxC1            : std_logic_vector := x"C1";         -- address of panel pwm
constant AxC2            : std_logic_vector := x"C2";         -- address of 
constant AxC3            : std_logic_vector := x"C3";         -- address of 

constant Ax61            : std_logic_vector := x"61";         -- address of switch column 1
constant Ax62            : std_logic_vector := x"62";         -- address of switch column 2
constant Ax63            : std_logic_vector := x"63";         -- address of switch column 3
constant Ax64            : std_logic_vector := x"64";         -- address of switch column 4
constant Ax65            : std_logic_vector := x"65";         -- address of
constant Ax66            : std_logic_vector := x"66";         -- address of 
constant Ax67            : std_logic_vector := x"67";         -- address of  

    COMPONENT divider is
    PORT(
        Clockin                  : IN    std_logic;
        clockout                 : OUT std_logic
        );
    END COMPONENT;--

    COMPONENT WatchDog is
    GENERIC(
           timerout             : INTEGER := 255 --
           );
    PORT   (
           clock                : IN    std_logic; --
           timerreset           : IN    std_logic; --
           timerexpired         : OUT std_logic  --
           );
    END COMPONENT;

    COMPONENT clockmaster
    PORT(
        Clock                    : IN    std_logic;
        Clock01                  : OUT std_logic;
        Clock02                  : OUT std_logic;
        Clock03                  : OUT std_logic;
        Clock04                  : OUT std_logic;
        Clock05                  : OUT std_logic;
        Reset                    : IN    std_logic
        );
    END COMPONENT;

    COMPONENT sipo is
    GENERIC(
           outputdefault         : std_logic_vector := (others => '0');   -- default settings for parallel output register
           componentaddress      : std_logic_vector := (others => '0')    -- the address of the instaniated component
           );
    PORT   (
-- master clock input for whole system
           clock                 : IN    std_logic;
-- parallel input output busses
           address               : IN    std_logic_vector;
           output                : OUT std_logic_vector;
-- serial module control lines
           sclock                : IN    std_logic;
           datain                : IN    std_logic;
           latch                 : IN    std_logic;
           reset                 : IN    std_logic
           );
    END COMPONENT;

    COMPONENT piso is
    GENERIC(
           componentaddress      : std_logic_vector := (others => '0')
           );
    PORT   (
-- master clock input for whole system
           clock                 : IN    std_logic;
-- parallel input output busses
           address               : IN    std_logic_vector;
           input                 : IN    std_logic_vector;
-- serial module control lines
           sclock                : IN    std_logic;
           dataout               : OUT std_logic;
           latch                 : IN    std_logic;
           reset                 : IN    std_logic
           );
    END COMPONENT;

    COMPONENT Max144
    PORT(
         Clock                   : IN    std_logic;
         inhibit                 : IN    std_logic;
         AdDin                   : IN    std_logic;
         AdClock                 : OUT std_logic;
         AdCs1                   : OUT std_logic;
         DataOutCh0              : OUT std_logic_vector;
         DataOutCh1              : OUT std_logic_vector;
         Reset                   : IN    std_logic
        );
    END COMPONENT;

    COMPONENT revision
    PORT(
-- master clock input for whole system
        clock                    : IN    std_logic;
-- parallel input output busses
        address                  : IN    std_logic_vector;
-- serial module control lines
        sclock                   : IN    std_logic;
        dataout                  :   OUT std_logic;
        latch                    : IN    std_logic;
        reset                    : IN    std_logic
        );
    END COMPONENT;



    COMPONENT Debounce
    GENERIC( 
		DEBOUNCE_LIMIT : integer := 20;	-- CONSTANT USED TO DEFINE UPPER LIMIT OF CLOCK CYCLES BEING COUNTED
		SWITCH_COUNT   : integer := 20
    );
    PORT(
        i_clk         : in std_logic;
        i_bouncy      : in std_logic_vector(SWITCH_COUNT-1 downto 0);
        o_debounced   : out std_logic_vector(SWITCH_COUNT-1 downto 0)
    );
    END COMPONENT;

    COMPONENT pwm_14bit
    GENERIC(
            PWM_ON            : std_logic   := '1'  -- define the mask for the duty cycle limit calculation
           );
    PORT(
        i_rst             : in    std_logic;
        i_clk             : in    std_logic;
        i_pwm_clk         : in    std_logic;
        i_duty_cycle      : in    std_logic_vector(13 downto 0); -- only accepts 14 bits
        o_pwm_ctrl        : out   std_logic
         );
    END COMPONENT;

    COMPONENT encoder
    PORT( 
        i_reset              : in std_logic;
        i_encoder_clk        : in std_logic;
        i_enc_A              : in std_logic;
        i_enc_B              : in std_logic;
        o_encounter_count    : out std_logic_vector(7 downto 0)
        );
    END COMPONENT;



signal Clock01                   : std_logic;
signal Clock02                   : std_logic;
signal Clock03                   : std_logic;
signal Clock04                   : std_logic;
signal Clock05                   : std_logic;

signal iWatchDog                 : std_logic;

signal internaddr                : std_logic_vector(7 downto 0);

-- variables for FPGA readback to microcontroller functions
signal ohold50                   : std_logic_vector(11 downto 0);
signal ohold51                   : std_logic_vector(11 downto 0);

signal ohold61                   : std_logic_vector(0 downto 0); -- pre-output hold register

signal do2x                      : std_logic;
signal do50                      : std_logic;
signal do51                      : std_logic;
signal do60                      : std_logic;
signal do61                      : std_logic;
signal do62                      : std_logic;
signal do63                      : std_logic;
signal do64                      : std_logic;
signal do65                      : std_logic;
signal do66                      : std_logic;
signal do67                      : std_logic;

signal heartbeat_counter          : integer range 0 to 40000000;

signal r_switch_data              : std_logic_vector(7 downto 0); -- discrete switch inputs
signal r_switch_data_debounced    : std_logic_vector(7 downto 0); -- discrete switch inputs

--signal r_switch_byte1             : std_logic_vector(7 downto 0); -- unused (set to 0)
signal r_switch_byte2             : std_logic_vector(7 downto 0); -- xpndr, alt source switches, ident button
signal r_switch_byte3             : std_logic_vector(7 downto 0); -- 5-position switch, test button
signal r_encoder_byte1            : std_logic_vector(7 downto 0);
signal r_encoder_byte2            : std_logic_vector(7 downto 0);
signal r_encoder_byte3            : std_logic_vector(7 downto 0);
signal r_encoder_byte4            : std_logic_vector(7 downto 0);

signal r_panel_dim_value          : std_logic_vector(13 downto 0); -- 14 bit resolution
signal r_ind_dim_value            : std_logic_vector(13 downto 0); -- 14 bit resolution
signal r_ind_value                : std_logic_vector(7 downto 0); --  XPNDR_Fail indicator value read from microcontroller for output to fpga
signal ind_pwm_enable : std_logic;
signal duty_cycle_out : std_logic_vector(13 downto 0);

signal ICLK                      : std_logic;

begin
    clockdivider       : divider                       PORT MAP(XCLK, ICLK);
    clock_master       : clockmaster                   PORT MAP(ICLK, Clock01, Clock02, Clock03, Clock04, Clock05, LogicReset );
--    heart_beat         : heartbeat                     PORT MAP(Clock05, HrtBeat, iWatchDog, pout00, HrtBeatOn, HrtBeatOff, LogicReset );
------------------------------------------------------------
-- microcontroller management functions
------------------------------------------------------------
    Watch_Dog_Reset    : WatchDog GENERIC MAP(2040)    PORT MAP(Clock02, ResetIn, iWatchDog);
    uCReset          <= iWatchDog;
------------------------------------------------------------
-- parallel data read functions
------------------------------------------------------------

    ExternalHardwareEn(0) <= '1';--0not iExternHwEn01(0); -- sw cmn low
    ExternalHardwareEn(1) <= '0';--0    iExternHwEn01(1); -- sw cmn high

    -- BELOW --> 101 for RS422, 001 for RS232
    ExternalHardwareEn(2) <= '0';--1    iExternHwEn01(2); -- rs482 DE
    ExternalHardwareEn(3) <= '0';--1not iExternHwEn01(3); -- rs485 ~RE
    ExternalHardwareEn(4) <= '1';--1    iExternHwEn01(4); -- rs232 PS
 
--   HrtBeatOn             <= '1';--0not iExternHwEn01(5);
 --   HrtBeatOff            <= '0';--0    iExternHwEn01(6);
--    A2DEDisable           <=     iExternHwEn01(7);

-- feedback functions to the microcontroller
-- analog to digital register to fpga register reader
    A2DRead0            : Max144                        PORT MAP((Clock03), not iWatchDog, AdDout, AdClock, AdCs1, ohold50, ohold51, LogicReset);

-- debounce inputs
--    iobank60debounce   : iodebounce GENERIC MAP(timer_size) PORT MAP(Clock02, inputs60, ohold60, LogicReset ); --
--    input_debounce   : iodebounce GENERIC MAP(timer_size) PORT MAP(Clock02, i_mfds_du_power, ohold61, LogicReset ); --
------------------------------------------------------------

-- serial data in parallell data output functions
------------------------------------------------------------
-- function data register address selector
    addresslatch        : sipo GENERIC MAP(Ax00, Ax00)      PORT MAP(Clock01, Ax00,  internaddr,    serialclock, SerialIn, Ale,        LogicReset);

-- firmware part number and revision bytes
    firmware            : revision                          PORT MAP(Clock01, internaddr, serialclock, do2X, SerialLoad, LogicReset);

-- reads from microcontroller - To send to the panel for display
    panel_pwm_duty  : sipo GENERIC MAP(dfDutyCycle14,AxC1) PORT MAP(Clock01, internaddr, r_panel_dim_value, serialclock, SerialIn, SerialLoad, LogicReset);
    ind_pwm_duty    : sipo GENERIC MAP(dfDutyCycle14,AxC2) PORT MAP(Clock01, internaddr, r_ind_dim_value, serialclock, SerialIn, SerialLoad, LogicReset);
    ind_status      : sipo GENERIC MAP(dfDutyCycle8,AxC3) PORT MAP(Clock01, internaddr, r_ind_value, serialclock, SerialIn, SerialLoad, LogicReset);

-- fpga a2d register to microcontroller write
    A2D00reader         : piso GENERIC MAP(Ax50)            PORT MAP(Clock01, internaddr, ohold50, serialclock, do50, SerialLoad, LogicReset);
    A2D01reader         : piso GENERIC MAP(Ax51)            PORT MAP(Clock01, internaddr, ohold51, serialclock, do51, SerialLoad, LogicReset);

-- read input bank data write back to microcontroller - For Response to the host
--    ioBank60reader      : piso GENERIC MAP(Ax60)            PORT MAP(Clock01, internaddr, ohold60, serialclock, do60, SerialLoad, LogicReset);
      
    data_byte1_out         : piso GENERIC MAP(Ax61)            PORT MAP(Clock01, internaddr, r_switch_byte2, serialclock, do61, SerialLoad, LogicReset);
    data_byte2_out         : piso GENERIC MAP(Ax62)            PORT MAP(Clock01, internaddr, r_switch_byte3, serialclock, do62, SerialLoad, LogicReset);
    data_byte3_out         : piso GENERIC MAP(Ax63)            PORT MAP(Clock01, internaddr, r_encoder_byte1, serialclock, do63, SerialLoad, LogicReset);
    data_byte4_out         : piso GENERIC MAP(Ax64)            PORT MAP(Clock01, internaddr, r_encoder_byte2, serialclock, do64, SerialLoad, LogicReset);
    data_byte5_out         : piso GENERIC MAP(Ax65)            PORT MAP(Clock01, internaddr, r_encoder_byte3, serialclock, do65, SerialLoad, LogicReset);
    data_byte6_out         : piso GENERIC MAP(Ax66)            PORT MAP(Clock01, internaddr, r_encoder_byte4, serialclock, do66, SerialLoad, LogicReset);
    
    SerialOut     <= do2X and do61 and do62 and do63 and do64 and do65 and do66;


    -- SWITCHES	

    Discrete_Switches_Debounce : debounce
    GENERIC MAP(
    DEBOUNCE_LIMIT  => 250000,
    SWITCH_COUNT    => 8)
    PORT MAP
    (
        i_clk       => XCLK,
        i_bouncy    => r_switch_data,
        o_debounced => r_switch_data_debounced
     );

    --Input data format for host response
     --r_switch_byte1 <= "00000000";
    r_switch_byte2 <= "000" & i_ident_button & not(i_alt_source_switch) & i_alt_source_switch & not(i_xpndr_switch) & i_xpndr_switch;
    r_switch_byte3 <= "00" & i_test_button & i_5pos_switch;

   

    ind_pwm_enable <= r_ind_value(0);  -- '1' enables PWM, '0' disables
    duty_cycle_out <= (others => '0') when ind_pwm_enable = '0' else r_ind_dim_value(13 downto 0);



    
    -- ENCODERS
    encoder_1 : encoder 
    PORT MAP( 
        i_reset              => LogicReset,
        i_encoder_clk        => XCLK,
        i_enc_A              => i_enc1_a,
        i_enc_B              => i_enc1_b,
        o_encounter_count    => r_encoder_byte1
    );

    encoder_2 : encoder 
    PORT MAP( 
        i_reset              => LogicReset,
        i_encoder_clk        => XCLK,
        i_enc_A              => i_enc2_a,
        i_enc_B              => i_enc2_b,
        o_encounter_count    => r_encoder_byte2
    );

    encoder_3 : encoder 
    PORT MAP( 
        i_reset              => LogicReset,
        i_encoder_clk        => XCLK,
        i_enc_A              => i_enc3_a,
        i_enc_B              => i_enc3_b,
        o_encounter_count    => r_encoder_byte3
    );

    encoder_4 : encoder 
    PORT MAP( 
        i_reset              => LogicReset,
        i_encoder_clk        => XCLK,
        i_enc_A              => i_enc4_a,
        i_enc_B              => i_enc4_b,
        o_encounter_count    => r_encoder_byte4
    );
    
    -- LIGHTING
    pwm_control_01   : pwm_14bit 
    GENERIC MAP('1')  
    PORT MAP(
        i_rst           => LogicReset,
        i_clk           => Clock01,
        i_pwm_clk       => Clock03,
        i_duty_cycle    => r_panel_dim_value(13 downto 0),
        o_pwm_ctrl      => o_panel_pwm
    );

    pwm_control_02 : pwm_14bit 
    GENERIC MAP('1')  
    PORT MAP(
        i_rst        => LogicReset,
        i_clk        => Clock01,
        i_pwm_clk    => Clock03,
        i_duty_cycle => duty_cycle_out,
        o_pwm_ctrl   => o_indicator_pwm
    );


    ---------------------------------------------------------------------
    process(XCLK) -- Process to blink the heartbeat LED
    begin
        if (rising_edge(XCLK)) then
            heartbeat_counter <= heartbeat_counter + 1;
            if(heartbeat_counter < 20000000 ) then
                HrtBeat <= '0'; -- LED ON
            else
                HrtBeat <= '1'; -- LED OFF
            end if;
        end if;
    end process;
    ---------------------------------------------------------------------

end Behavioral;
