--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: CORRI_synthesis.vhd
-- /___/   /\     Timestamp: Wed Sep 04 15:11:04 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -filter C:/Users/ChuzGallagher/Documents/VLSI/P2/iseconfig/filter.filter -intstyle ise -ar Structure -tm CORRI -w -dir netgen/synthesis -ofmt vhdl -sim CORRI.ngc CORRI_synthesis.vhd 
-- Device	: xc6slx9-2-tqg144
-- Input file	: CORRI.ngc
-- Output file	: C:\Users\ChuzGallagher\Documents\VLSI\P2\netgen\synthesis\CORRI_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: CORRI
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity CORRI is
  port (
    RST : in STD_LOGIC := 'X'; 
    DIR : in STD_LOGIC := 'X'; 
    MCLK : in STD_LOGIC := 'X'; 
    LEDS : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end CORRI;

architecture Structure of CORRI is
  signal RST_IBUF_0 : STD_LOGIC; 
  signal DIR_IBUF_1 : STD_LOGIC; 
  signal MCLK_BUFGP_2 : STD_LOGIC; 
  signal div_37 : STD_LOGIC; 
  signal corrimiento_6_corrimiento_0_mux_4_OUT_7_Q : STD_LOGIC; 
  signal corrimiento_6_corrimiento_0_mux_4_OUT_6_Q : STD_LOGIC; 
  signal corrimiento_6_corrimiento_0_mux_4_OUT_5_Q : STD_LOGIC; 
  signal corrimiento_6_corrimiento_0_mux_4_OUT_4_Q : STD_LOGIC; 
  signal corrimiento_6_corrimiento_0_mux_4_OUT_3_Q : STD_LOGIC; 
  signal corrimiento_6_corrimiento_0_mux_4_OUT_2_Q : STD_LOGIC; 
  signal corrimiento_6_corrimiento_0_mux_4_OUT_1_Q : STD_LOGIC; 
  signal corrimiento_6_corrimiento_0_mux_4_OUT_0_Q : STD_LOGIC; 
  signal PWR_5_o_delay_25_equal_1_o : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal PWR_5_o_delay_25_equal_1_o_25_Q : STD_LOGIC; 
  signal PWR_5_o_delay_25_equal_1_o_25_1_102 : STD_LOGIC; 
  signal PWR_5_o_delay_25_equal_1_o_25_2_103 : STD_LOGIC; 
  signal PWR_5_o_delay_25_equal_1_o_25_3_104 : STD_LOGIC; 
  signal Mcount_delay_cy_1_rt_116 : STD_LOGIC; 
  signal Mcount_delay_cy_2_rt_117 : STD_LOGIC; 
  signal Mcount_delay_cy_3_rt_118 : STD_LOGIC; 
  signal Mcount_delay_cy_4_rt_119 : STD_LOGIC; 
  signal Mcount_delay_cy_5_rt_120 : STD_LOGIC; 
  signal Mcount_delay_cy_6_rt_121 : STD_LOGIC; 
  signal Mcount_delay_cy_7_rt_122 : STD_LOGIC; 
  signal Mcount_delay_cy_8_rt_123 : STD_LOGIC; 
  signal Mcount_delay_cy_9_rt_124 : STD_LOGIC; 
  signal Mcount_delay_cy_10_rt_125 : STD_LOGIC; 
  signal Mcount_delay_cy_11_rt_126 : STD_LOGIC; 
  signal Mcount_delay_cy_12_rt_127 : STD_LOGIC; 
  signal Mcount_delay_cy_13_rt_128 : STD_LOGIC; 
  signal Mcount_delay_cy_14_rt_129 : STD_LOGIC; 
  signal Mcount_delay_cy_15_rt_130 : STD_LOGIC; 
  signal Mcount_delay_cy_16_rt_131 : STD_LOGIC; 
  signal Mcount_delay_cy_17_rt_132 : STD_LOGIC; 
  signal Mcount_delay_cy_18_rt_133 : STD_LOGIC; 
  signal Mcount_delay_cy_19_rt_134 : STD_LOGIC; 
  signal Mcount_delay_cy_20_rt_135 : STD_LOGIC; 
  signal Mcount_delay_cy_21_rt_136 : STD_LOGIC; 
  signal Mcount_delay_cy_22_rt_137 : STD_LOGIC; 
  signal Mcount_delay_cy_23_rt_138 : STD_LOGIC; 
  signal Mcount_delay_cy_24_rt_139 : STD_LOGIC; 
  signal Mcount_delay_xor_25_rt_140 : STD_LOGIC; 
  signal div_dpot_141 : STD_LOGIC; 
  signal div_rstpot_142 : STD_LOGIC; 
  signal delay_0_rstpot_143 : STD_LOGIC; 
  signal delay_1_rstpot_144 : STD_LOGIC; 
  signal delay_2_rstpot_145 : STD_LOGIC; 
  signal delay_3_rstpot_146 : STD_LOGIC; 
  signal delay_4_rstpot_147 : STD_LOGIC; 
  signal delay_5_rstpot_148 : STD_LOGIC; 
  signal delay_6_rstpot_149 : STD_LOGIC; 
  signal delay_7_rstpot_150 : STD_LOGIC; 
  signal delay_8_rstpot_151 : STD_LOGIC; 
  signal delay_9_rstpot_152 : STD_LOGIC; 
  signal delay_10_rstpot_153 : STD_LOGIC; 
  signal delay_11_rstpot_154 : STD_LOGIC; 
  signal delay_12_rstpot_155 : STD_LOGIC; 
  signal delay_13_rstpot_156 : STD_LOGIC; 
  signal delay_14_rstpot_157 : STD_LOGIC; 
  signal delay_15_rstpot_158 : STD_LOGIC; 
  signal delay_16_rstpot_159 : STD_LOGIC; 
  signal delay_17_rstpot_160 : STD_LOGIC; 
  signal delay_18_rstpot_161 : STD_LOGIC; 
  signal delay_19_rstpot_162 : STD_LOGIC; 
  signal delay_20_rstpot_163 : STD_LOGIC; 
  signal delay_21_rstpot_164 : STD_LOGIC; 
  signal delay_22_rstpot_165 : STD_LOGIC; 
  signal delay_23_rstpot_166 : STD_LOGIC; 
  signal delay_24_rstpot_167 : STD_LOGIC; 
  signal delay_25_rstpot_168 : STD_LOGIC; 
  signal PWR_5_o_delay_25_equal_1_o_25_5_169 : STD_LOGIC; 
  signal corrimiento : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal delay : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal Mcount_delay_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_delay_cy : STD_LOGIC_VECTOR ( 24 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => N1
    );
  corrimiento_0 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => div_37,
      D => corrimiento_6_corrimiento_0_mux_4_OUT_0_Q,
      PRE => RST_IBUF_0,
      Q => corrimiento(0)
    );
  corrimiento_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => div_37,
      CLR => RST_IBUF_0,
      D => corrimiento_6_corrimiento_0_mux_4_OUT_1_Q,
      Q => corrimiento(1)
    );
  corrimiento_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => div_37,
      CLR => RST_IBUF_0,
      D => corrimiento_6_corrimiento_0_mux_4_OUT_2_Q,
      Q => corrimiento(2)
    );
  corrimiento_3 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => div_37,
      D => corrimiento_6_corrimiento_0_mux_4_OUT_3_Q,
      PRE => RST_IBUF_0,
      Q => corrimiento(3)
    );
  corrimiento_4 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => div_37,
      D => corrimiento_6_corrimiento_0_mux_4_OUT_4_Q,
      PRE => RST_IBUF_0,
      Q => corrimiento(4)
    );
  corrimiento_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => div_37,
      CLR => RST_IBUF_0,
      D => corrimiento_6_corrimiento_0_mux_4_OUT_5_Q,
      Q => corrimiento(5)
    );
  corrimiento_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => div_37,
      CLR => RST_IBUF_0,
      D => corrimiento_6_corrimiento_0_mux_4_OUT_6_Q,
      Q => corrimiento(6)
    );
  corrimiento_7 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => div_37,
      D => corrimiento_6_corrimiento_0_mux_4_OUT_7_Q,
      PRE => RST_IBUF_0,
      Q => corrimiento(7)
    );
  Mcount_delay_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcount_delay_lut(0),
      O => Mcount_delay_cy(0)
    );
  Mcount_delay_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => Mcount_delay_lut(0),
      O => Result(0)
    );
  Mcount_delay_cy_1_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(0),
      DI => N1,
      S => Mcount_delay_cy_1_rt_116,
      O => Mcount_delay_cy(1)
    );
  Mcount_delay_xor_1_Q : XORCY
    port map (
      CI => Mcount_delay_cy(0),
      LI => Mcount_delay_cy_1_rt_116,
      O => Result(1)
    );
  Mcount_delay_cy_2_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(1),
      DI => N1,
      S => Mcount_delay_cy_2_rt_117,
      O => Mcount_delay_cy(2)
    );
  Mcount_delay_xor_2_Q : XORCY
    port map (
      CI => Mcount_delay_cy(1),
      LI => Mcount_delay_cy_2_rt_117,
      O => Result(2)
    );
  Mcount_delay_cy_3_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(2),
      DI => N1,
      S => Mcount_delay_cy_3_rt_118,
      O => Mcount_delay_cy(3)
    );
  Mcount_delay_xor_3_Q : XORCY
    port map (
      CI => Mcount_delay_cy(2),
      LI => Mcount_delay_cy_3_rt_118,
      O => Result(3)
    );
  Mcount_delay_cy_4_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(3),
      DI => N1,
      S => Mcount_delay_cy_4_rt_119,
      O => Mcount_delay_cy(4)
    );
  Mcount_delay_xor_4_Q : XORCY
    port map (
      CI => Mcount_delay_cy(3),
      LI => Mcount_delay_cy_4_rt_119,
      O => Result(4)
    );
  Mcount_delay_cy_5_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(4),
      DI => N1,
      S => Mcount_delay_cy_5_rt_120,
      O => Mcount_delay_cy(5)
    );
  Mcount_delay_xor_5_Q : XORCY
    port map (
      CI => Mcount_delay_cy(4),
      LI => Mcount_delay_cy_5_rt_120,
      O => Result(5)
    );
  Mcount_delay_cy_6_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(5),
      DI => N1,
      S => Mcount_delay_cy_6_rt_121,
      O => Mcount_delay_cy(6)
    );
  Mcount_delay_xor_6_Q : XORCY
    port map (
      CI => Mcount_delay_cy(5),
      LI => Mcount_delay_cy_6_rt_121,
      O => Result(6)
    );
  Mcount_delay_cy_7_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(6),
      DI => N1,
      S => Mcount_delay_cy_7_rt_122,
      O => Mcount_delay_cy(7)
    );
  Mcount_delay_xor_7_Q : XORCY
    port map (
      CI => Mcount_delay_cy(6),
      LI => Mcount_delay_cy_7_rt_122,
      O => Result(7)
    );
  Mcount_delay_cy_8_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(7),
      DI => N1,
      S => Mcount_delay_cy_8_rt_123,
      O => Mcount_delay_cy(8)
    );
  Mcount_delay_xor_8_Q : XORCY
    port map (
      CI => Mcount_delay_cy(7),
      LI => Mcount_delay_cy_8_rt_123,
      O => Result(8)
    );
  Mcount_delay_cy_9_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(8),
      DI => N1,
      S => Mcount_delay_cy_9_rt_124,
      O => Mcount_delay_cy(9)
    );
  Mcount_delay_xor_9_Q : XORCY
    port map (
      CI => Mcount_delay_cy(8),
      LI => Mcount_delay_cy_9_rt_124,
      O => Result(9)
    );
  Mcount_delay_cy_10_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(9),
      DI => N1,
      S => Mcount_delay_cy_10_rt_125,
      O => Mcount_delay_cy(10)
    );
  Mcount_delay_xor_10_Q : XORCY
    port map (
      CI => Mcount_delay_cy(9),
      LI => Mcount_delay_cy_10_rt_125,
      O => Result(10)
    );
  Mcount_delay_cy_11_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(10),
      DI => N1,
      S => Mcount_delay_cy_11_rt_126,
      O => Mcount_delay_cy(11)
    );
  Mcount_delay_xor_11_Q : XORCY
    port map (
      CI => Mcount_delay_cy(10),
      LI => Mcount_delay_cy_11_rt_126,
      O => Result(11)
    );
  Mcount_delay_cy_12_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(11),
      DI => N1,
      S => Mcount_delay_cy_12_rt_127,
      O => Mcount_delay_cy(12)
    );
  Mcount_delay_xor_12_Q : XORCY
    port map (
      CI => Mcount_delay_cy(11),
      LI => Mcount_delay_cy_12_rt_127,
      O => Result(12)
    );
  Mcount_delay_cy_13_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(12),
      DI => N1,
      S => Mcount_delay_cy_13_rt_128,
      O => Mcount_delay_cy(13)
    );
  Mcount_delay_xor_13_Q : XORCY
    port map (
      CI => Mcount_delay_cy(12),
      LI => Mcount_delay_cy_13_rt_128,
      O => Result(13)
    );
  Mcount_delay_cy_14_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(13),
      DI => N1,
      S => Mcount_delay_cy_14_rt_129,
      O => Mcount_delay_cy(14)
    );
  Mcount_delay_xor_14_Q : XORCY
    port map (
      CI => Mcount_delay_cy(13),
      LI => Mcount_delay_cy_14_rt_129,
      O => Result(14)
    );
  Mcount_delay_cy_15_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(14),
      DI => N1,
      S => Mcount_delay_cy_15_rt_130,
      O => Mcount_delay_cy(15)
    );
  Mcount_delay_xor_15_Q : XORCY
    port map (
      CI => Mcount_delay_cy(14),
      LI => Mcount_delay_cy_15_rt_130,
      O => Result(15)
    );
  Mcount_delay_cy_16_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(15),
      DI => N1,
      S => Mcount_delay_cy_16_rt_131,
      O => Mcount_delay_cy(16)
    );
  Mcount_delay_xor_16_Q : XORCY
    port map (
      CI => Mcount_delay_cy(15),
      LI => Mcount_delay_cy_16_rt_131,
      O => Result(16)
    );
  Mcount_delay_cy_17_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(16),
      DI => N1,
      S => Mcount_delay_cy_17_rt_132,
      O => Mcount_delay_cy(17)
    );
  Mcount_delay_xor_17_Q : XORCY
    port map (
      CI => Mcount_delay_cy(16),
      LI => Mcount_delay_cy_17_rt_132,
      O => Result(17)
    );
  Mcount_delay_cy_18_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(17),
      DI => N1,
      S => Mcount_delay_cy_18_rt_133,
      O => Mcount_delay_cy(18)
    );
  Mcount_delay_xor_18_Q : XORCY
    port map (
      CI => Mcount_delay_cy(17),
      LI => Mcount_delay_cy_18_rt_133,
      O => Result(18)
    );
  Mcount_delay_cy_19_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(18),
      DI => N1,
      S => Mcount_delay_cy_19_rt_134,
      O => Mcount_delay_cy(19)
    );
  Mcount_delay_xor_19_Q : XORCY
    port map (
      CI => Mcount_delay_cy(18),
      LI => Mcount_delay_cy_19_rt_134,
      O => Result(19)
    );
  Mcount_delay_cy_20_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(19),
      DI => N1,
      S => Mcount_delay_cy_20_rt_135,
      O => Mcount_delay_cy(20)
    );
  Mcount_delay_xor_20_Q : XORCY
    port map (
      CI => Mcount_delay_cy(19),
      LI => Mcount_delay_cy_20_rt_135,
      O => Result(20)
    );
  Mcount_delay_cy_21_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(20),
      DI => N1,
      S => Mcount_delay_cy_21_rt_136,
      O => Mcount_delay_cy(21)
    );
  Mcount_delay_xor_21_Q : XORCY
    port map (
      CI => Mcount_delay_cy(20),
      LI => Mcount_delay_cy_21_rt_136,
      O => Result(21)
    );
  Mcount_delay_cy_22_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(21),
      DI => N1,
      S => Mcount_delay_cy_22_rt_137,
      O => Mcount_delay_cy(22)
    );
  Mcount_delay_xor_22_Q : XORCY
    port map (
      CI => Mcount_delay_cy(21),
      LI => Mcount_delay_cy_22_rt_137,
      O => Result(22)
    );
  Mcount_delay_cy_23_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(22),
      DI => N1,
      S => Mcount_delay_cy_23_rt_138,
      O => Mcount_delay_cy(23)
    );
  Mcount_delay_xor_23_Q : XORCY
    port map (
      CI => Mcount_delay_cy(22),
      LI => Mcount_delay_cy_23_rt_138,
      O => Result(23)
    );
  Mcount_delay_cy_24_Q : MUXCY
    port map (
      CI => Mcount_delay_cy(23),
      DI => N1,
      S => Mcount_delay_cy_24_rt_139,
      O => Mcount_delay_cy(24)
    );
  Mcount_delay_xor_24_Q : XORCY
    port map (
      CI => Mcount_delay_cy(23),
      LI => Mcount_delay_cy_24_rt_139,
      O => Result(24)
    );
  Mcount_delay_xor_25_Q : XORCY
    port map (
      CI => Mcount_delay_cy(24),
      LI => Mcount_delay_xor_25_rt_140,
      O => Result(25)
    );
  Mmux_corrimiento_6_corrimiento_0_mux_4_OUT81 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => DIR_IBUF_1,
      I1 => corrimiento(6),
      I2 => corrimiento(0),
      O => corrimiento_6_corrimiento_0_mux_4_OUT_7_Q
    );
  Mmux_corrimiento_6_corrimiento_0_mux_4_OUT71 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => DIR_IBUF_1,
      I1 => corrimiento(5),
      I2 => corrimiento(7),
      O => corrimiento_6_corrimiento_0_mux_4_OUT_6_Q
    );
  Mmux_corrimiento_6_corrimiento_0_mux_4_OUT61 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => DIR_IBUF_1,
      I1 => corrimiento(4),
      I2 => corrimiento(6),
      O => corrimiento_6_corrimiento_0_mux_4_OUT_5_Q
    );
  Mmux_corrimiento_6_corrimiento_0_mux_4_OUT51 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => DIR_IBUF_1,
      I1 => corrimiento(3),
      I2 => corrimiento(5),
      O => corrimiento_6_corrimiento_0_mux_4_OUT_4_Q
    );
  Mmux_corrimiento_6_corrimiento_0_mux_4_OUT41 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => DIR_IBUF_1,
      I1 => corrimiento(2),
      I2 => corrimiento(4),
      O => corrimiento_6_corrimiento_0_mux_4_OUT_3_Q
    );
  Mmux_corrimiento_6_corrimiento_0_mux_4_OUT31 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => DIR_IBUF_1,
      I1 => corrimiento(1),
      I2 => corrimiento(3),
      O => corrimiento_6_corrimiento_0_mux_4_OUT_2_Q
    );
  Mmux_corrimiento_6_corrimiento_0_mux_4_OUT21 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => DIR_IBUF_1,
      I1 => corrimiento(0),
      I2 => corrimiento(2),
      O => corrimiento_6_corrimiento_0_mux_4_OUT_1_Q
    );
  Mmux_corrimiento_6_corrimiento_0_mux_4_OUT11 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => DIR_IBUF_1,
      I1 => corrimiento(7),
      I2 => corrimiento(1),
      O => corrimiento_6_corrimiento_0_mux_4_OUT_0_Q
    );
  PWR_5_o_delay_25_equal_1_o_25_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => delay(20),
      I1 => delay(15),
      I2 => delay(23),
      I3 => delay(22),
      I4 => delay(25),
      I5 => delay(24),
      O => PWR_5_o_delay_25_equal_1_o_25_Q
    );
  PWR_5_o_delay_25_equal_1_o_25_2 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => delay(7),
      I1 => delay(6),
      I2 => delay(9),
      I3 => delay(8),
      I4 => delay(11),
      I5 => delay(10),
      O => PWR_5_o_delay_25_equal_1_o_25_1_102
    );
  PWR_5_o_delay_25_equal_1_o_25_3 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => delay(1),
      I1 => delay(0),
      I2 => delay(3),
      I3 => delay(2),
      I4 => delay(5),
      I5 => delay(4),
      O => PWR_5_o_delay_25_equal_1_o_25_2_103
    );
  PWR_5_o_delay_25_equal_1_o_25_4 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => delay(13),
      I1 => delay(12),
      I2 => delay(14),
      I3 => delay(16),
      I4 => delay(17),
      I5 => delay(18),
      O => PWR_5_o_delay_25_equal_1_o_25_3_104
    );
  PWR_5_o_delay_25_equal_1_o_25_5 : LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => delay(19),
      I1 => delay(21),
      I2 => PWR_5_o_delay_25_equal_1_o_25_3_104,
      I3 => PWR_5_o_delay_25_equal_1_o_25_2_103,
      I4 => PWR_5_o_delay_25_equal_1_o_25_1_102,
      I5 => PWR_5_o_delay_25_equal_1_o_25_Q,
      O => PWR_5_o_delay_25_equal_1_o
    );
  RST_IBUF : IBUF
    port map (
      I => RST,
      O => RST_IBUF_0
    );
  DIR_IBUF : IBUF
    port map (
      I => DIR,
      O => DIR_IBUF_1
    );
  LEDS_7_OBUF : OBUF
    port map (
      I => corrimiento(7),
      O => LEDS(7)
    );
  LEDS_6_OBUF : OBUF
    port map (
      I => corrimiento(6),
      O => LEDS(6)
    );
  LEDS_5_OBUF : OBUF
    port map (
      I => corrimiento(5),
      O => LEDS(5)
    );
  LEDS_4_OBUF : OBUF
    port map (
      I => corrimiento(4),
      O => LEDS(4)
    );
  LEDS_3_OBUF : OBUF
    port map (
      I => corrimiento(3),
      O => LEDS(3)
    );
  LEDS_2_OBUF : OBUF
    port map (
      I => corrimiento(2),
      O => LEDS(2)
    );
  LEDS_1_OBUF : OBUF
    port map (
      I => corrimiento(1),
      O => LEDS(1)
    );
  LEDS_0_OBUF : OBUF
    port map (
      I => corrimiento(0),
      O => LEDS(0)
    );
  Mcount_delay_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(1),
      O => Mcount_delay_cy_1_rt_116
    );
  Mcount_delay_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(2),
      O => Mcount_delay_cy_2_rt_117
    );
  Mcount_delay_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(3),
      O => Mcount_delay_cy_3_rt_118
    );
  Mcount_delay_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(4),
      O => Mcount_delay_cy_4_rt_119
    );
  Mcount_delay_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(5),
      O => Mcount_delay_cy_5_rt_120
    );
  Mcount_delay_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(6),
      O => Mcount_delay_cy_6_rt_121
    );
  Mcount_delay_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(7),
      O => Mcount_delay_cy_7_rt_122
    );
  Mcount_delay_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(8),
      O => Mcount_delay_cy_8_rt_123
    );
  Mcount_delay_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(9),
      O => Mcount_delay_cy_9_rt_124
    );
  Mcount_delay_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(10),
      O => Mcount_delay_cy_10_rt_125
    );
  Mcount_delay_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(11),
      O => Mcount_delay_cy_11_rt_126
    );
  Mcount_delay_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(12),
      O => Mcount_delay_cy_12_rt_127
    );
  Mcount_delay_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(13),
      O => Mcount_delay_cy_13_rt_128
    );
  Mcount_delay_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(14),
      O => Mcount_delay_cy_14_rt_129
    );
  Mcount_delay_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(15),
      O => Mcount_delay_cy_15_rt_130
    );
  Mcount_delay_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(16),
      O => Mcount_delay_cy_16_rt_131
    );
  Mcount_delay_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(17),
      O => Mcount_delay_cy_17_rt_132
    );
  Mcount_delay_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(18),
      O => Mcount_delay_cy_18_rt_133
    );
  Mcount_delay_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(19),
      O => Mcount_delay_cy_19_rt_134
    );
  Mcount_delay_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(20),
      O => Mcount_delay_cy_20_rt_135
    );
  Mcount_delay_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(21),
      O => Mcount_delay_cy_21_rt_136
    );
  Mcount_delay_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(22),
      O => Mcount_delay_cy_22_rt_137
    );
  Mcount_delay_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(23),
      O => Mcount_delay_cy_23_rt_138
    );
  Mcount_delay_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(24),
      O => Mcount_delay_cy_24_rt_139
    );
  Mcount_delay_xor_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => delay(25),
      O => Mcount_delay_xor_25_rt_140
    );
  div_dpot : LUT6
    generic map(
      INIT => X"E1F0F0F0F0F0F0F0"
    )
    port map (
      I0 => delay(19),
      I1 => delay(21),
      I2 => div_37,
      I3 => PWR_5_o_delay_25_equal_1_o_25_3_104,
      I4 => PWR_5_o_delay_25_equal_1_o_25_2_103,
      I5 => PWR_5_o_delay_25_equal_1_o_25_1_102,
      O => div_dpot_141
    );
  div_rstpot : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => div_37,
      I1 => PWR_5_o_delay_25_equal_1_o_25_Q,
      I2 => div_dpot_141,
      O => div_rstpot_142
    );
  div : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => div_rstpot_142,
      Q => div_37
    );
  delay_0_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(0),
      I1 => PWR_5_o_delay_25_equal_1_o,
      O => delay_0_rstpot_143
    );
  delay_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_0_rstpot_143,
      Q => delay(0)
    );
  delay_1_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(1),
      I1 => PWR_5_o_delay_25_equal_1_o,
      O => delay_1_rstpot_144
    );
  delay_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_1_rstpot_144,
      Q => delay(1)
    );
  delay_2_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(2),
      I1 => PWR_5_o_delay_25_equal_1_o,
      O => delay_2_rstpot_145
    );
  delay_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_2_rstpot_145,
      Q => delay(2)
    );
  delay_3_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(3),
      I1 => PWR_5_o_delay_25_equal_1_o,
      O => delay_3_rstpot_146
    );
  delay_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_3_rstpot_146,
      Q => delay(3)
    );
  delay_4_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(4),
      I1 => PWR_5_o_delay_25_equal_1_o,
      O => delay_4_rstpot_147
    );
  delay_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_4_rstpot_147,
      Q => delay(4)
    );
  delay_5_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(5),
      I1 => PWR_5_o_delay_25_equal_1_o,
      O => delay_5_rstpot_148
    );
  delay_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_5_rstpot_148,
      Q => delay(5)
    );
  delay_6_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(6),
      I1 => PWR_5_o_delay_25_equal_1_o,
      O => delay_6_rstpot_149
    );
  delay_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_6_rstpot_149,
      Q => delay(6)
    );
  delay_7_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(7),
      I1 => PWR_5_o_delay_25_equal_1_o,
      O => delay_7_rstpot_150
    );
  delay_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_7_rstpot_150,
      Q => delay(7)
    );
  delay_8_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(8),
      I1 => PWR_5_o_delay_25_equal_1_o,
      O => delay_8_rstpot_151
    );
  delay_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_8_rstpot_151,
      Q => delay(8)
    );
  delay_9_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(9),
      I1 => PWR_5_o_delay_25_equal_1_o,
      O => delay_9_rstpot_152
    );
  delay_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_9_rstpot_152,
      Q => delay(9)
    );
  delay_10_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(10),
      I1 => PWR_5_o_delay_25_equal_1_o,
      O => delay_10_rstpot_153
    );
  delay_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_10_rstpot_153,
      Q => delay(10)
    );
  delay_11_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(11),
      I1 => PWR_5_o_delay_25_equal_1_o,
      O => delay_11_rstpot_154
    );
  delay_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_11_rstpot_154,
      Q => delay(11)
    );
  delay_12_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(12),
      I1 => PWR_5_o_delay_25_equal_1_o,
      O => delay_12_rstpot_155
    );
  delay_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_12_rstpot_155,
      Q => delay(12)
    );
  delay_13_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(13),
      I1 => PWR_5_o_delay_25_equal_1_o,
      O => delay_13_rstpot_156
    );
  delay_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_13_rstpot_156,
      Q => delay(13)
    );
  delay_14_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(14),
      I1 => PWR_5_o_delay_25_equal_1_o_25_5_169,
      O => delay_14_rstpot_157
    );
  delay_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_14_rstpot_157,
      Q => delay(14)
    );
  delay_15_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(15),
      I1 => PWR_5_o_delay_25_equal_1_o_25_5_169,
      O => delay_15_rstpot_158
    );
  delay_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_15_rstpot_158,
      Q => delay(15)
    );
  delay_16_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(16),
      I1 => PWR_5_o_delay_25_equal_1_o_25_5_169,
      O => delay_16_rstpot_159
    );
  delay_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_16_rstpot_159,
      Q => delay(16)
    );
  delay_17_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(17),
      I1 => PWR_5_o_delay_25_equal_1_o_25_5_169,
      O => delay_17_rstpot_160
    );
  delay_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_17_rstpot_160,
      Q => delay(17)
    );
  delay_18_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(18),
      I1 => PWR_5_o_delay_25_equal_1_o_25_5_169,
      O => delay_18_rstpot_161
    );
  delay_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_18_rstpot_161,
      Q => delay(18)
    );
  delay_19_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(19),
      I1 => PWR_5_o_delay_25_equal_1_o_25_5_169,
      O => delay_19_rstpot_162
    );
  delay_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_19_rstpot_162,
      Q => delay(19)
    );
  delay_20_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(20),
      I1 => PWR_5_o_delay_25_equal_1_o_25_5_169,
      O => delay_20_rstpot_163
    );
  delay_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_20_rstpot_163,
      Q => delay(20)
    );
  delay_21_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(21),
      I1 => PWR_5_o_delay_25_equal_1_o_25_5_169,
      O => delay_21_rstpot_164
    );
  delay_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_21_rstpot_164,
      Q => delay(21)
    );
  delay_22_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(22),
      I1 => PWR_5_o_delay_25_equal_1_o_25_5_169,
      O => delay_22_rstpot_165
    );
  delay_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_22_rstpot_165,
      Q => delay(22)
    );
  delay_23_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(23),
      I1 => PWR_5_o_delay_25_equal_1_o_25_5_169,
      O => delay_23_rstpot_166
    );
  delay_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_23_rstpot_166,
      Q => delay(23)
    );
  delay_24_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(24),
      I1 => PWR_5_o_delay_25_equal_1_o_25_5_169,
      O => delay_24_rstpot_167
    );
  delay_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_24_rstpot_167,
      Q => delay(24)
    );
  delay_25_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(25),
      I1 => PWR_5_o_delay_25_equal_1_o_25_5_169,
      O => delay_25_rstpot_168
    );
  delay_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK_BUFGP_2,
      D => delay_25_rstpot_168,
      Q => delay(25)
    );
  PWR_5_o_delay_25_equal_1_o_25_5_1 : LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => delay(19),
      I1 => delay(21),
      I2 => PWR_5_o_delay_25_equal_1_o_25_3_104,
      I3 => PWR_5_o_delay_25_equal_1_o_25_2_103,
      I4 => PWR_5_o_delay_25_equal_1_o_25_1_102,
      I5 => PWR_5_o_delay_25_equal_1_o_25_Q,
      O => PWR_5_o_delay_25_equal_1_o_25_5_169
    );
  MCLK_BUFGP : BUFGP
    port map (
      I => MCLK,
      O => MCLK_BUFGP_2
    );
  Mcount_delay_lut_0_INV_0 : INV
    port map (
      I => delay(0),
      O => Mcount_delay_lut(0)
    );

end Structure;

