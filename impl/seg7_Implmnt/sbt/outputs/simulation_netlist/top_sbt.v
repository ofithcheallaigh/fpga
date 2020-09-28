// ******************************************************************************

// iCEcube Netlister

// Version:            2017.08.27940

// Build Date:         Sep 11 2017 17:30:03

// File Generated:     Sep 16 2020 21:11:42

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "top" view "INTERFACE"

module top (
    segments,
    digit_sel,
    rst_n,
    clk);

    output [6:0] segments;
    output digit_sel;
    input rst_n;
    input clk;

    wire N__228;
    wire N__227;
    wire N__226;
    wire N__219;
    wire N__218;
    wire N__217;
    wire N__210;
    wire N__209;
    wire N__208;
    wire N__201;
    wire N__200;
    wire N__199;
    wire N__192;
    wire N__191;
    wire N__190;
    wire N__183;
    wire N__182;
    wire N__181;
    wire N__174;
    wire N__173;
    wire N__172;
    wire N__165;
    wire N__164;
    wire N__163;
    wire N__146;
    wire N__145;
    wire N__144;
    wire N__141;
    wire N__138;
    wire N__135;
    wire N__130;
    wire N__127;
    wire N__126;
    wire N__125;
    wire N__120;
    wire N__117;
    wire N__114;
    wire VCCG0;
    wire GNDG0;
    wire CONSTANT_ONE_NET;
    wire _gnd_net_;

    IO_PAD segments_obuf_0_iopad (
            .OE(N__228),
            .DIN(N__227),
            .DOUT(N__226),
            .PACKAGEPIN(segments[0]));
    defparam segments_obuf_0_preio.NEG_TRIGGER=1'b0;
    defparam segments_obuf_0_preio.PIN_TYPE=6'b011001;
    PRE_IO segments_obuf_0_preio (
            .PADOEN(N__228),
            .PADOUT(N__227),
            .PADIN(N__226),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__144),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD segments_obuf_4_iopad (
            .OE(N__219),
            .DIN(N__218),
            .DOUT(N__217),
            .PACKAGEPIN(segments[4]));
    defparam segments_obuf_4_preio.NEG_TRIGGER=1'b0;
    defparam segments_obuf_4_preio.PIN_TYPE=6'b011001;
    PRE_IO segments_obuf_4_preio (
            .PADOEN(N__219),
            .PADOUT(N__218),
            .PADIN(N__217),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(GNDG0),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD digit_sel_obuf_iopad (
            .OE(N__210),
            .DIN(N__209),
            .DOUT(N__208),
            .PACKAGEPIN(digit_sel));
    defparam digit_sel_obuf_preio.NEG_TRIGGER=1'b0;
    defparam digit_sel_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO digit_sel_obuf_preio (
            .PADOEN(N__210),
            .PADOUT(N__209),
            .PADIN(N__208),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(GNDG0),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD segments_obuf_1_iopad (
            .OE(N__201),
            .DIN(N__200),
            .DOUT(N__199),
            .PACKAGEPIN(segments[1]));
    defparam segments_obuf_1_preio.NEG_TRIGGER=1'b0;
    defparam segments_obuf_1_preio.PIN_TYPE=6'b011001;
    PRE_IO segments_obuf_1_preio (
            .PADOEN(N__201),
            .PADOUT(N__200),
            .PADIN(N__199),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(GNDG0),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD segments_obuf_3_iopad (
            .OE(N__192),
            .DIN(N__191),
            .DOUT(N__190),
            .PACKAGEPIN(segments[3]));
    defparam segments_obuf_3_preio.NEG_TRIGGER=1'b0;
    defparam segments_obuf_3_preio.PIN_TYPE=6'b011001;
    PRE_IO segments_obuf_3_preio (
            .PADOEN(N__192),
            .PADOUT(N__191),
            .PADIN(N__190),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__126),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD segments_obuf_5_iopad (
            .OE(N__183),
            .DIN(N__182),
            .DOUT(N__181),
            .PACKAGEPIN(segments[5]));
    defparam segments_obuf_5_preio.NEG_TRIGGER=1'b0;
    defparam segments_obuf_5_preio.PIN_TYPE=6'b011001;
    PRE_IO segments_obuf_5_preio (
            .PADOEN(N__183),
            .PADOUT(N__182),
            .PADIN(N__181),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__145),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD segments_obuf_2_iopad (
            .OE(N__174),
            .DIN(N__173),
            .DOUT(N__172),
            .PACKAGEPIN(segments[2]));
    defparam segments_obuf_2_preio.NEG_TRIGGER=1'b0;
    defparam segments_obuf_2_preio.PIN_TYPE=6'b011001;
    PRE_IO segments_obuf_2_preio (
            .PADOEN(N__174),
            .PADOUT(N__173),
            .PADIN(N__172),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__125),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD segments_obuf_6_iopad (
            .OE(N__165),
            .DIN(N__164),
            .DOUT(N__163),
            .PACKAGEPIN(segments[6]));
    defparam segments_obuf_6_preio.NEG_TRIGGER=1'b0;
    defparam segments_obuf_6_preio.PIN_TYPE=6'b011001;
    PRE_IO segments_obuf_6_preio (
            .PADOEN(N__165),
            .PADOUT(N__164),
            .PADIN(N__163),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__146),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IoInMux I__24 (
            .O(N__146),
            .I(N__141));
    IoInMux I__23 (
            .O(N__145),
            .I(N__138));
    IoInMux I__22 (
            .O(N__144),
            .I(N__135));
    LocalMux I__21 (
            .O(N__141),
            .I(N__130));
    LocalMux I__20 (
            .O(N__138),
            .I(N__130));
    LocalMux I__19 (
            .O(N__135),
            .I(N__127));
    Span4Mux_s0_h I__18 (
            .O(N__130),
            .I(N__120));
    Span4Mux_s0_h I__17 (
            .O(N__127),
            .I(N__120));
    IoInMux I__16 (
            .O(N__126),
            .I(N__117));
    IoInMux I__15 (
            .O(N__125),
            .I(N__114));
    Odrv4 I__14 (
            .O(N__120),
            .I(CONSTANT_ONE_NET));
    LocalMux I__13 (
            .O(N__117),
            .I(CONSTANT_ONE_NET));
    LocalMux I__12 (
            .O(N__114),
            .I(CONSTANT_ONE_NET));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam CONSTANT_ONE_LUT4_LC_12_5_0.C_ON=1'b0;
    defparam CONSTANT_ONE_LUT4_LC_12_5_0.SEQ_MODE=4'b0000;
    defparam CONSTANT_ONE_LUT4_LC_12_5_0.LUT_INIT=16'b1111111111111111;
    LogicCell40 CONSTANT_ONE_LUT4_LC_12_5_0 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(CONSTANT_ONE_NET),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
endmodule // top
