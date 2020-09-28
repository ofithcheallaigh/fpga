-- This file can be thougth of as a module, because it is a self contained 
-- block of code.
-- As is convention, the main file, which goes onto the FPGA, is called 'top'.

-- for 7SD:
--    --A--
--    F   B
--    --G--
--    E   D
--    --C--
-- Index 0 correspeonds to A; index 1 corresponds to B ...index 6 corresponds to G
-- Therefore, index : 6  5  4  3  2  1  0
--                    G  F  E  D  C  B  A    
                      

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- The entity defines the inputs and outputs from this module
-- defines how it interacts with the outside world. 
entity top is
  port (
    -- The signals here are connected to physical pins on the FPGA
    -- The Port defines these physical signals. Signals are best thought of
    -- as physical wires
    clk : in std_logic;
    rst_n : in std_logic;
    segments : out std_logic_vector(6 downto 0);
    digit_sel : out std_logic
  );
end top;

-- The Architecture is divided into two parts: the declarity region, before the 'begin' key word
-- where we declare new types and signals. After the begin keyword, we have a region for our digital logic
architecture rtl of top is

  signal digit : integer;   -- This can hold of the 32bit int values

begin
  
  -- segments <= '1111111';    -- This is a concurrent statement, or
                            -- concurrent assignment, since it is being
                            -- assigned outside of a process
  -- Whenever the state of 'digit' changes, the process below is triggered
  -- right away
  digit <= 5;               -- Forcing digit to 8, forcing the process below

  ENCODER_PROC : process(digit)

    -- Segments from the PMODSSD Datasheet
    constant A : integer := 0;    -- This is visible only inside the process
    constant B : integer := 1;
    constant C : integer := 2;
    constant D : integer := 3;
    constant E : integer := 4;
    constant F : integer := 5;
    constant G : integer := 6;

  begin
    segments <= (others => '1');    -- This is an aggregate assignment, used to assign to same value to 
                                    -- all bits in the vector

    case digit is
    
      when 0 =>
        segments(G) <= '0';

      when 1 =>
        segments <= (others => '0');
        segments(B) <= '1';
        segments(C) <= '1';

      when 2 =>
        segments (C) <= '0';
        segments (F) <= '0';

      when 3 =>
        segments (E) <= '0';
        segments (F) <= '0';

      when 4 =>
        segments (A) <= '0';
        segments (D) <= '0';
        segments (E) <= '0';

      when 5 =>
        segments (B) <= '0';
        segments (E) <= '0';

      when 6 =>
        segments (B) <= '0';

      when 7 =>
        segments (D) <= '0';
        segments (E) <= '0';
        segments (F) <= '0';
        segments (G) <= '0';

      when 8 =>                 -- This is dealt with above, by setting vector to '1'

      when 9 =>
        segments (E) <= '0';
  
      when others =>
        segments <= (others => '0');
    
    end case;
  end process;
end architecture;