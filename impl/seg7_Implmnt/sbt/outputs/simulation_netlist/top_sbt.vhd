-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2017.08.27940

-- Build Date:         Sep 11 2017 17:29:57

-- File Generated:     Sep 16 2020 21:11:42

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "top" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of top
entity top is
port (
    segments : out std_logic_vector(6 downto 0);
    digit_sel : out std_logic;
    rst_n : in std_logic;
    clk : in std_logic);
end top;

-- Architecture of top
-- View name is \INTERFACE\
architecture \INTERFACE\ of top is

signal \N__228\ : std_logic;
signal \N__227\ : std_logic;
signal \N__226\ : std_logic;
signal \N__219\ : std_logic;
signal \N__218\ : std_logic;
signal \N__217\ : std_logic;
signal \N__210\ : std_logic;
signal \N__209\ : std_logic;
signal \N__208\ : std_logic;
signal \N__201\ : std_logic;
signal \N__200\ : std_logic;
signal \N__199\ : std_logic;
signal \N__192\ : std_logic;
signal \N__191\ : std_logic;
signal \N__190\ : std_logic;
signal \N__183\ : std_logic;
signal \N__182\ : std_logic;
signal \N__181\ : std_logic;
signal \N__174\ : std_logic;
signal \N__173\ : std_logic;
signal \N__172\ : std_logic;
signal \N__165\ : std_logic;
signal \N__164\ : std_logic;
signal \N__163\ : std_logic;
signal \N__146\ : std_logic;
signal \N__145\ : std_logic;
signal \N__144\ : std_logic;
signal \N__141\ : std_logic;
signal \N__138\ : std_logic;
signal \N__135\ : std_logic;
signal \N__130\ : std_logic;
signal \N__127\ : std_logic;
signal \N__126\ : std_logic;
signal \N__125\ : std_logic;
signal \N__120\ : std_logic;
signal \N__117\ : std_logic;
signal \N__114\ : std_logic;
signal \VCCG0\ : std_logic;
signal \GNDG0\ : std_logic;
signal \CONSTANT_ONE_NET\ : std_logic;
signal \_gnd_net_\ : std_logic;

signal segments_wire : std_logic_vector(6 downto 0);
signal digit_sel_wire : std_logic;

begin
    segments <= segments_wire;
    digit_sel <= digit_sel_wire;

    \segments_obuf_0_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__228\,
            DIN => \N__227\,
            DOUT => \N__226\,
            PACKAGEPIN => segments_wire(0)
        );

    \segments_obuf_0_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__228\,
            PADOUT => \N__227\,
            PADIN => \N__226\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__144\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \segments_obuf_4_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__219\,
            DIN => \N__218\,
            DOUT => \N__217\,
            PACKAGEPIN => segments_wire(4)
        );

    \segments_obuf_4_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__219\,
            PADOUT => \N__218\,
            PADIN => \N__217\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \GNDG0\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \digit_sel_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__210\,
            DIN => \N__209\,
            DOUT => \N__208\,
            PACKAGEPIN => digit_sel_wire
        );

    \digit_sel_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__210\,
            PADOUT => \N__209\,
            PADIN => \N__208\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \GNDG0\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \segments_obuf_1_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__201\,
            DIN => \N__200\,
            DOUT => \N__199\,
            PACKAGEPIN => segments_wire(1)
        );

    \segments_obuf_1_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__201\,
            PADOUT => \N__200\,
            PADIN => \N__199\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \GNDG0\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \segments_obuf_3_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__192\,
            DIN => \N__191\,
            DOUT => \N__190\,
            PACKAGEPIN => segments_wire(3)
        );

    \segments_obuf_3_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__192\,
            PADOUT => \N__191\,
            PADIN => \N__190\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__126\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \segments_obuf_5_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__183\,
            DIN => \N__182\,
            DOUT => \N__181\,
            PACKAGEPIN => segments_wire(5)
        );

    \segments_obuf_5_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__183\,
            PADOUT => \N__182\,
            PADIN => \N__181\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__145\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \segments_obuf_2_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__174\,
            DIN => \N__173\,
            DOUT => \N__172\,
            PACKAGEPIN => segments_wire(2)
        );

    \segments_obuf_2_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__174\,
            PADOUT => \N__173\,
            PADIN => \N__172\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__125\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \segments_obuf_6_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__165\,
            DIN => \N__164\,
            DOUT => \N__163\,
            PACKAGEPIN => segments_wire(6)
        );

    \segments_obuf_6_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__165\,
            PADOUT => \N__164\,
            PADIN => \N__163\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__146\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I__24\ : IoInMux
    port map (
            O => \N__146\,
            I => \N__141\
        );

    \I__23\ : IoInMux
    port map (
            O => \N__145\,
            I => \N__138\
        );

    \I__22\ : IoInMux
    port map (
            O => \N__144\,
            I => \N__135\
        );

    \I__21\ : LocalMux
    port map (
            O => \N__141\,
            I => \N__130\
        );

    \I__20\ : LocalMux
    port map (
            O => \N__138\,
            I => \N__130\
        );

    \I__19\ : LocalMux
    port map (
            O => \N__135\,
            I => \N__127\
        );

    \I__18\ : Span4Mux_s0_h
    port map (
            O => \N__130\,
            I => \N__120\
        );

    \I__17\ : Span4Mux_s0_h
    port map (
            O => \N__127\,
            I => \N__120\
        );

    \I__16\ : IoInMux
    port map (
            O => \N__126\,
            I => \N__117\
        );

    \I__15\ : IoInMux
    port map (
            O => \N__125\,
            I => \N__114\
        );

    \I__14\ : Odrv4
    port map (
            O => \N__120\,
            I => \CONSTANT_ONE_NET\
        );

    \I__13\ : LocalMux
    port map (
            O => \N__117\,
            I => \CONSTANT_ONE_NET\
        );

    \I__12\ : LocalMux
    port map (
            O => \N__114\,
            I => \CONSTANT_ONE_NET\
        );

    \VCC\ : VCC
    port map (
            Y => \VCCG0\
        );

    \GND\ : GND
    port map (
            Y => \GNDG0\
        );

    \GND_Inst\ : GND
    port map (
            Y => \_gnd_net_\
        );

    \CONSTANT_ONE_LUT4_LC_12_5_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \CONSTANT_ONE_NET\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );
end \INTERFACE\;
