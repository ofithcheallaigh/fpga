-- std_logic values
--    '1' - Logic 1
--    '0' - Logic 0
--    'Z' - High impedance
--    'W' - Weak signal, can't tell if 1 or 0
--    'L' - Weak 0, pulldown
--    'H' - Weak 1, pullup
--    '-' - Don't care
--    'U' - Uninitialised
--    'X' - Unknown, multiple drivers

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_tb is
end top_tb; 

architecture sim of top_tb is

  constant clk_hz : integer := 12e6;                    -- 12MHz Clock Freq
  constant clk_period : time := 1 sec / clk_hz;         -- the time type can only be used for simulation

  -- These signals are copied from the top.vhd file (with either in or out removed)
  signal clk : std_logic := '1'; 
  signal rst_n : std_logic := '0';
  signal segments : std_logic_vector(6 downto 0);
  signal digit_sel : std_logic;


begin

  -- Device Under test
  DUT : entity work.top(rtl)
  port map(
    clk => clk,
    rst_n => rst_n,
    segments => segments,
    digit_sel => digit_sel
  );

  CLOCK_PROC : process                                  -- Removing sensitivity list means process will run no matter what
  begin                                                 -- this type of notation should only be used in test benches
    wait for clk_period/2;
    clk <= not clk;                                     -- Not clk inverts the clock signal i.e from a 1 to 0
  end process;

  RESET_PROC : process                                  -- Sensitivity list removed, not typically used in TB
  begin
    wait until clk = '1';                              -- This onlt takes effect on a change to 1, will not work if already 1
    wait until clk = '1';
    wait until clk = '1';
    wait until clk = '1';
    wait until clk = '1';
    rst_n <= '1';                                       -- Out of reset after 10 ns
    wait;                                               -- Keyword 'wait' means prcoess will stop here and not loop to repeat
  end process;

end architecture;

-- Note 1:
-- What happens when we have two process inpacting the same signal? For example if rst_n in
-- one process is = 0, and in another is equal to 1. We are driving rst_n from two different processes
-- The rst_n will be '0' from the start, and there is no timescale on this. So, when it should
-- change to '1', it doesn't know what to do, because it has a process for '1' and a process
-- for '0'. This then becomes undefined. 

-- Note 2:
-- Variables are updated instantly, signals are only uploaded when the process goes to sleep,
-- for example, with a wait statement.