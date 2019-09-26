-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/25/2019 19:35:04"

-- 
-- Device: Altera EPM2210F324C3 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	ASM IS
    PORT (
	Sd : IN std_logic;
	Si : IN std_logic;
	deep : IN std_logic_vector(3 DOWNTO 0);
	Movimientos : OUT std_logic_vector(3 DOWNTO 0);
	Display : OUT std_logic_vector(6 DOWNTO 0);
	Reset : IN std_logic;
	mclk : IN std_logic
	);
END ASM;

-- Design Ports Information


ARCHITECTURE structure OF ASM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Sd : std_logic;
SIGNAL ww_Si : std_logic;
SIGNAL ww_deep : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Movimientos : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Display : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Reset : std_logic;
SIGNAL ww_mclk : std_logic;
SIGNAL \mclk~combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_127\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_126\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_128\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_129\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_130\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_131\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_132\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_133\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_134\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_135\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_136\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_137\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_138\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_139\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_140\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_141\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~107COUT1_142\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_143\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~122COUT1_144\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Equal0~5\ : std_logic;
SIGNAL \Equal0~6\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \div~regout\ : std_logic;
SIGNAL \edo_sig~20_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \edo_sig~14_combout\ : std_logic;
SIGNAL \Movimientos[0]~2_combout\ : std_logic;
SIGNAL \edo_sig~15_combout\ : std_logic;
SIGNAL \edo_sig~28_combout\ : std_logic;
SIGNAL \edo_sig~17_combout\ : std_logic;
SIGNAL \Sd~combout\ : std_logic;
SIGNAL \edo_sig~24_combout\ : std_logic;
SIGNAL \edo_sig~25_combout\ : std_logic;
SIGNAL \Si~combout\ : std_logic;
SIGNAL \edo_sig~34_combout\ : std_logic;
SIGNAL \Movimientos[0]~3_combout\ : std_logic;
SIGNAL \edo_pres.E0~regout\ : std_logic;
SIGNAL \edo_sig~33_combout\ : std_logic;
SIGNAL \edo_sig.E1~regout\ : std_logic;
SIGNAL \edo_sig~23\ : std_logic;
SIGNAL \edo_sig.E2~regout\ : std_logic;
SIGNAL \edo_sig~18_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \edo_sig.E3~regout\ : std_logic;
SIGNAL \edo_pres.E3~regout\ : std_logic;
SIGNAL \edo_sig.E4~regout\ : std_logic;
SIGNAL \WideOr3~0\ : std_logic;
SIGNAL \edo_sig~31\ : std_logic;
SIGNAL \edo_sig.E0~regout\ : std_logic;
SIGNAL \Selector1~0\ : std_logic;
SIGNAL \edo_pres.E2~regout\ : std_logic;
SIGNAL \edo_sig.E5~regout\ : std_logic;
SIGNAL \edo_pres.E5~regout\ : std_logic;
SIGNAL \edo_sig.E6~regout\ : std_logic;
SIGNAL \edo_pres.E6~regout\ : std_logic;
SIGNAL \edo_sig.E7~regout\ : std_logic;
SIGNAL \edo_pres.E7~regout\ : std_logic;
SIGNAL \edo_sig.E8~regout\ : std_logic;
SIGNAL \edo_pres.E8~regout\ : std_logic;
SIGNAL \edo_sig.E9~regout\ : std_logic;
SIGNAL \edo_pres.E9~regout\ : std_logic;
SIGNAL \edo_sig.E10~regout\ : std_logic;
SIGNAL \edo_pres.E10~regout\ : std_logic;
SIGNAL \edo_sig.E11~regout\ : std_logic;
SIGNAL \edo_pres.E11~regout\ : std_logic;
SIGNAL \edo_pres.E4~regout\ : std_logic;
SIGNAL \Movimientos[0]~reg0_regout\ : std_logic;
SIGNAL \Movimientos[1]~reg0_regout\ : std_logic;
SIGNAL \Movimientos[2]~reg0_regout\ : std_logic;
SIGNAL \edo_pres.E1~regout\ : std_logic;
SIGNAL \Movimientos[3]~reg0_regout\ : std_logic;
SIGNAL \Display[0]~reg0_regout\ : std_logic;
SIGNAL \Display[1]~reg0_regout\ : std_logic;
SIGNAL \Display[2]~reg0_regout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \Display[3]~reg0_regout\ : std_logic;
SIGNAL \WideOr5~0\ : std_logic;
SIGNAL \Display[4]~reg0_regout\ : std_logic;
SIGNAL \Display[5]~reg0_regout\ : std_logic;
SIGNAL \Display[6]~reg0_regout\ : std_logic;
SIGNAL \deep~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL delay : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_Sd <= Sd;
ww_Si <= Si;
ww_deep <= deep;
Movimientos <= ww_Movimientos;
Display <= ww_Display;
ww_Reset <= Reset;
ww_mclk <= mclk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mclk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mclk,
	combout => \mclk~combout\);

-- Location: LC_X10_Y11_N5
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = delay(2) $ ((((!\Add0~7\))))
-- \Add0~12\ = CARRY((delay(2) & ((!\Add0~7\))))
-- \Add0~12COUT1_127\ = CARRY((delay(2) & ((!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => delay(2),
	cin => \Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_127\);

-- Location: LC_X9_Y11_N1
\delay[2]\ : maxii_lcell
-- Equation(s):
-- delay(2) = DFFEAS((((\Add0~10_combout\))), GLOBAL(\mclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datad => \Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(2));

-- Location: LC_X10_Y11_N6
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = (delay(3) $ (((!\Add0~7\ & \Add0~12\) # (\Add0~7\ & \Add0~12COUT1_127\))))
-- \Add0~17\ = CARRY(((!\Add0~12\) # (!delay(3))))
-- \Add0~17COUT1_128\ = CARRY(((!\Add0~12COUT1_127\) # (!delay(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(3),
	cin => \Add0~7\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_128\);

-- Location: LC_X10_Y11_N0
\delay[3]\ : maxii_lcell
-- Equation(s):
-- delay(3) = DFFEAS(GND, GLOBAL(\mclk~combout\), VCC, , , \Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datac => \Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(3));

-- Location: LC_X10_Y11_N3
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = ((!delay(0)))
-- \Add0~2\ = CARRY(((delay(0))))
-- \Add0~2COUT1_126\ = CARRY(((delay(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_126\);

-- Location: LC_X9_Y11_N2
\delay[0]\ : maxii_lcell
-- Equation(s):
-- \Equal0~0\ = (delay(3) & (delay(1) & (delay[0] & delay(2))))
-- delay(0) = DFFEAS(\Equal0~0\, GLOBAL(\mclk~combout\), VCC, , , \Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => delay(3),
	datab => delay(1),
	datac => \Add0~0_combout\,
	datad => delay(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => delay(0));

-- Location: LC_X10_Y11_N4
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = (delay(1) $ ((\Add0~2\)))
-- \Add0~7\ = CARRY(((!\Add0~2COUT1_126\) # (!delay(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(1),
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout => \Add0~7\);

-- Location: LC_X8_Y11_N7
\delay[1]\ : maxii_lcell
-- Equation(s):
-- delay(1) = DFFEAS(GND, GLOBAL(\mclk~combout\), VCC, , , \Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datac => \Add0~5_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(1));

-- Location: LC_X10_Y11_N7
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = (delay(4) $ ((!(!\Add0~7\ & \Add0~17\) # (\Add0~7\ & \Add0~17COUT1_128\))))
-- \Add0~22\ = CARRY(((delay(4) & !\Add0~17\)))
-- \Add0~22COUT1_129\ = CARRY(((delay(4) & !\Add0~17COUT1_128\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(4),
	cin => \Add0~7\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_129\);

-- Location: LC_X11_Y11_N0
\Add0~35\ : maxii_lcell
-- Equation(s):
-- \Add0~35_combout\ = (delay(7) $ ((\Add0~32\)))
-- \Add0~37\ = CARRY(((!\Add0~32\) # (!delay(7))))
-- \Add0~37COUT1_131\ = CARRY(((!\Add0~32\) # (!delay(7))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(7),
	cin => \Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_131\);

-- Location: LC_X8_Y11_N4
\delay[7]\ : maxii_lcell
-- Equation(s):
-- delay(7) = DFFEAS(GND, GLOBAL(\mclk~combout\), VCC, , , \Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datac => \Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(7));

-- Location: LC_X9_Y11_N4
\delay[4]\ : maxii_lcell
-- Equation(s):
-- \Equal0~1\ = (!delay(6) & (delay(5) & (delay[4] & !delay(7))))
-- delay(4) = DFFEAS(\Equal0~1\, GLOBAL(\mclk~combout\), VCC, , , \Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => delay(6),
	datab => delay(5),
	datac => \Add0~20_combout\,
	datad => delay(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => delay(4));

-- Location: LC_X10_Y11_N8
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = delay(5) $ (((((!\Add0~7\ & \Add0~22\) # (\Add0~7\ & \Add0~22COUT1_129\)))))
-- \Add0~27\ = CARRY(((!\Add0~22\)) # (!delay(5)))
-- \Add0~27COUT1_130\ = CARRY(((!\Add0~22COUT1_129\)) # (!delay(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => delay(5),
	cin => \Add0~7\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_129\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_130\);

-- Location: LC_X9_Y11_N0
\delay[5]\ : maxii_lcell
-- Equation(s):
-- delay(5) = DFFEAS(GND, GLOBAL(\mclk~combout\), VCC, , , \Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datac => \Add0~25_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(5));

-- Location: LC_X10_Y11_N9
\Add0~30\ : maxii_lcell
-- Equation(s):
-- \Add0~30_combout\ = (delay(6) $ ((!(!\Add0~7\ & \Add0~27\) # (\Add0~7\ & \Add0~27COUT1_130\))))
-- \Add0~32\ = CARRY(((delay(6) & !\Add0~27COUT1_130\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(6),
	cin => \Add0~7\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout => \Add0~32\);

-- Location: LC_X10_Y11_N1
\delay[6]\ : maxii_lcell
-- Equation(s):
-- delay(6) = DFFEAS((((!\Equal0~7_combout\ & \Add0~30_combout\))), GLOBAL(\mclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datac => \Equal0~7_combout\,
	datad => \Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(6));

-- Location: LC_X11_Y11_N1
\Add0~45\ : maxii_lcell
-- Equation(s):
-- \Add0~45_combout\ = (delay(8) $ ((!(!\Add0~32\ & \Add0~37\) # (\Add0~32\ & \Add0~37COUT1_131\))))
-- \Add0~47\ = CARRY(((delay(8) & !\Add0~37\)))
-- \Add0~47COUT1_132\ = CARRY(((delay(8) & !\Add0~37COUT1_131\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(8),
	cin => \Add0~32\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_131\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_132\);

-- Location: LC_X9_Y11_N6
\delay[8]\ : maxii_lcell
-- Equation(s):
-- \Equal0~2\ = (delay(11) & (!delay(9) & (!delay[8] & !delay(10))))
-- delay(8) = DFFEAS(\Equal0~2\, GLOBAL(\mclk~combout\), VCC, , , \Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => delay(11),
	datab => delay(9),
	datac => \Add0~45_combout\,
	datad => delay(10),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => delay(8));

-- Location: LC_X11_Y11_N2
\Add0~50\ : maxii_lcell
-- Equation(s):
-- \Add0~50_combout\ = (delay(9) $ (((!\Add0~32\ & \Add0~47\) # (\Add0~32\ & \Add0~47COUT1_132\))))
-- \Add0~52\ = CARRY(((!\Add0~47\) # (!delay(9))))
-- \Add0~52COUT1_133\ = CARRY(((!\Add0~47COUT1_132\) # (!delay(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(9),
	cin => \Add0~32\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_133\);

-- Location: LC_X8_Y11_N3
\delay[9]\ : maxii_lcell
-- Equation(s):
-- delay(9) = DFFEAS(GND, GLOBAL(\mclk~combout\), VCC, , , \Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datac => \Add0~50_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(9));

-- Location: LC_X11_Y11_N3
\Add0~55\ : maxii_lcell
-- Equation(s):
-- \Add0~55_combout\ = (delay(10) $ ((!(!\Add0~32\ & \Add0~52\) # (\Add0~32\ & \Add0~52COUT1_133\))))
-- \Add0~57\ = CARRY(((delay(10) & !\Add0~52\)))
-- \Add0~57COUT1_134\ = CARRY(((delay(10) & !\Add0~52COUT1_133\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(10),
	cin => \Add0~32\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_133\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_134\);

-- Location: LC_X10_Y12_N7
\delay[10]\ : maxii_lcell
-- Equation(s):
-- delay(10) = DFFEAS(GND, GLOBAL(\mclk~combout\), VCC, , , \Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datac => \Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(10));

-- Location: LC_X11_Y11_N4
\Add0~40\ : maxii_lcell
-- Equation(s):
-- \Add0~40_combout\ = (delay(11) $ (((!\Add0~32\ & \Add0~57\) # (\Add0~32\ & \Add0~57COUT1_134\))))
-- \Add0~42\ = CARRY(((!\Add0~57COUT1_134\) # (!delay(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(11),
	cin => \Add0~32\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout => \Add0~42\);

-- Location: LC_X9_Y11_N3
\delay[11]\ : maxii_lcell
-- Equation(s):
-- delay(11) = DFFEAS((!\Equal0~7_combout\ & (((\Add0~40_combout\)))), GLOBAL(\mclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => \Equal0~7_combout\,
	datad => \Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(11));

-- Location: LC_X11_Y11_N5
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = (delay(12) $ ((!\Add0~42\)))
-- \Add0~62\ = CARRY(((delay(12) & !\Add0~42\)))
-- \Add0~62COUT1_135\ = CARRY(((delay(12) & !\Add0~42\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(12),
	cin => \Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_135\);

-- Location: LC_X10_Y11_N2
\delay[12]\ : maxii_lcell
-- Equation(s):
-- delay(12) = DFFEAS((((!\Equal0~7_combout\ & \Add0~60_combout\))), GLOBAL(\mclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datac => \Equal0~7_combout\,
	datad => \Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(12));

-- Location: LC_X11_Y11_N6
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = (delay(13) $ (((!\Add0~42\ & \Add0~62\) # (\Add0~42\ & \Add0~62COUT1_135\))))
-- \Add0~67\ = CARRY(((!\Add0~62\) # (!delay(13))))
-- \Add0~67COUT1_136\ = CARRY(((!\Add0~62COUT1_135\) # (!delay(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(13),
	cin => \Add0~42\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_135\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_136\);

-- Location: LC_X8_Y11_N9
\delay[13]\ : maxii_lcell
-- Equation(s):
-- delay(13) = DFFEAS(((!\Equal0~7_combout\ & ((\Add0~65_combout\)))), GLOBAL(\mclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datab => \Equal0~7_combout\,
	datad => \Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(13));

-- Location: LC_X11_Y11_N7
\Add0~70\ : maxii_lcell
-- Equation(s):
-- \Add0~70_combout\ = (delay(14) $ ((!(!\Add0~42\ & \Add0~67\) # (\Add0~42\ & \Add0~67COUT1_136\))))
-- \Add0~72\ = CARRY(((delay(14) & !\Add0~67\)))
-- \Add0~72COUT1_137\ = CARRY(((delay(14) & !\Add0~67COUT1_136\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(14),
	cin => \Add0~42\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_137\);

-- Location: LC_X9_Y11_N9
\delay[14]\ : maxii_lcell
-- Equation(s):
-- delay(14) = DFFEAS((!\Equal0~7_combout\ & (((\Add0~70_combout\)))), GLOBAL(\mclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => \Equal0~7_combout\,
	datad => \Add0~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(14));

-- Location: LC_X11_Y11_N8
\Add0~75\ : maxii_lcell
-- Equation(s):
-- \Add0~75_combout\ = (delay(15) $ (((!\Add0~42\ & \Add0~72\) # (\Add0~42\ & \Add0~72COUT1_137\))))
-- \Add0~77\ = CARRY(((!\Add0~72\) # (!delay(15))))
-- \Add0~77COUT1_138\ = CARRY(((!\Add0~72COUT1_137\) # (!delay(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(15),
	cin => \Add0~42\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_138\);

-- Location: LC_X9_Y11_N5
\delay[15]\ : maxii_lcell
-- Equation(s):
-- \Equal0~3\ = (delay(13) & (delay(12) & (!delay[15] & delay(14))))
-- delay(15) = DFFEAS(\Equal0~3\, GLOBAL(\mclk~combout\), VCC, , , \Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => delay(13),
	datab => delay(12),
	datac => \Add0~75_combout\,
	datad => delay(14),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => delay(15));

-- Location: LC_X11_Y11_N9
\Add0~80\ : maxii_lcell
-- Equation(s):
-- \Add0~80_combout\ = (delay(16) $ ((!(!\Add0~42\ & \Add0~77\) # (\Add0~42\ & \Add0~77COUT1_138\))))
-- \Add0~82\ = CARRY(((delay(16) & !\Add0~77COUT1_138\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(16),
	cin => \Add0~42\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout => \Add0~82\);

-- Location: LC_X12_Y11_N8
\delay[16]\ : maxii_lcell
-- Equation(s):
-- delay(16) = DFFEAS((((\Add0~80_combout\ & !\Equal0~7_combout\))), GLOBAL(\mclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datac => \Add0~80_combout\,
	datad => \Equal0~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(16));

-- Location: LC_X12_Y11_N0
\Add0~95\ : maxii_lcell
-- Equation(s):
-- \Add0~95_combout\ = (delay(17) $ ((\Add0~82\)))
-- \Add0~97\ = CARRY(((!\Add0~82\) # (!delay(17))))
-- \Add0~97COUT1_139\ = CARRY(((!\Add0~82\) # (!delay(17))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(17),
	cin => \Add0~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_139\);

-- Location: LC_X13_Y11_N8
\delay[17]\ : maxii_lcell
-- Equation(s):
-- \Equal0~5\ = (delay(16) & (delay(18) & (!delay[17] & delay(19))))
-- delay(17) = DFFEAS(\Equal0~5\, GLOBAL(\mclk~combout\), VCC, , , \Add0~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => delay(16),
	datab => delay(18),
	datac => \Add0~95_combout\,
	datad => delay(19),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5\,
	regout => delay(17));

-- Location: LC_X12_Y11_N1
\Add0~85\ : maxii_lcell
-- Equation(s):
-- \Add0~85_combout\ = delay(18) $ ((((!(!\Add0~82\ & \Add0~97\) # (\Add0~82\ & \Add0~97COUT1_139\)))))
-- \Add0~87\ = CARRY((delay(18) & ((!\Add0~97\))))
-- \Add0~87COUT1_140\ = CARRY((delay(18) & ((!\Add0~97COUT1_139\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => delay(18),
	cin => \Add0~82\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_139\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_140\);

-- Location: LC_X13_Y11_N1
\delay[18]\ : maxii_lcell
-- Equation(s):
-- delay(18) = DFFEAS((((\Add0~85_combout\ & !\Equal0~7_combout\))), GLOBAL(\mclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datac => \Add0~85_combout\,
	datad => \Equal0~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(18));

-- Location: LC_X12_Y11_N2
\Add0~90\ : maxii_lcell
-- Equation(s):
-- \Add0~90_combout\ = (delay(19) $ (((!\Add0~82\ & \Add0~87\) # (\Add0~82\ & \Add0~87COUT1_140\))))
-- \Add0~92\ = CARRY(((!\Add0~87\) # (!delay(19))))
-- \Add0~92COUT1_141\ = CARRY(((!\Add0~87COUT1_140\) # (!delay(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(19),
	cin => \Add0~82\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_141\);

-- Location: LC_X13_Y11_N9
\delay[19]\ : maxii_lcell
-- Equation(s):
-- delay(19) = DFFEAS((((!\Equal0~7_combout\ & \Add0~90_combout\))), GLOBAL(\mclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datac => \Equal0~7_combout\,
	datad => \Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(19));

-- Location: LC_X12_Y11_N3
\Add0~105\ : maxii_lcell
-- Equation(s):
-- \Add0~105_combout\ = delay(20) $ ((((!(!\Add0~82\ & \Add0~92\) # (\Add0~82\ & \Add0~92COUT1_141\)))))
-- \Add0~107\ = CARRY((delay(20) & ((!\Add0~92\))))
-- \Add0~107COUT1_142\ = CARRY((delay(20) & ((!\Add0~92COUT1_141\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => delay(20),
	cin => \Add0~82\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_142\);

-- Location: LC_X13_Y11_N3
\delay[20]\ : maxii_lcell
-- Equation(s):
-- delay(20) = DFFEAS((((!\Equal0~7_combout\ & \Add0~105_combout\))), GLOBAL(\mclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datac => \Equal0~7_combout\,
	datad => \Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(20));

-- Location: LC_X12_Y11_N4
\Add0~110\ : maxii_lcell
-- Equation(s):
-- \Add0~110_combout\ = delay(21) $ (((((!\Add0~82\ & \Add0~107\) # (\Add0~82\ & \Add0~107COUT1_142\)))))
-- \Add0~112\ = CARRY(((!\Add0~107COUT1_142\)) # (!delay(21)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => delay(21),
	cin => \Add0~82\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout => \Add0~112\);

-- Location: LC_X13_Y11_N0
\delay[21]\ : maxii_lcell
-- Equation(s):
-- delay(21) = DFFEAS((((!\Equal0~7_combout\ & \Add0~110_combout\))), GLOBAL(\mclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datac => \Equal0~7_combout\,
	datad => \Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(21));

-- Location: LC_X12_Y11_N5
\Add0~115\ : maxii_lcell
-- Equation(s):
-- \Add0~115_combout\ = (delay(22) $ ((!\Add0~112\)))
-- \Add0~117\ = CARRY(((delay(22) & !\Add0~112\)))
-- \Add0~117COUT1_143\ = CARRY(((delay(22) & !\Add0~112\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(22),
	cin => \Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_143\);

-- Location: LC_X12_Y11_N9
\delay[22]\ : maxii_lcell
-- Equation(s):
-- delay(22) = DFFEAS((((\Add0~115_combout\ & !\Equal0~7_combout\))), GLOBAL(\mclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datac => \Add0~115_combout\,
	datad => \Equal0~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(22));

-- Location: LC_X12_Y11_N6
\Add0~120\ : maxii_lcell
-- Equation(s):
-- \Add0~120_combout\ = (delay(23) $ (((!\Add0~112\ & \Add0~117\) # (\Add0~112\ & \Add0~117COUT1_143\))))
-- \Add0~122\ = CARRY(((!\Add0~117\) # (!delay(23))))
-- \Add0~122COUT1_144\ = CARRY(((!\Add0~117COUT1_143\) # (!delay(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => delay(23),
	cin => \Add0~112\,
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout0 => \Add0~122\,
	cout1 => \Add0~122COUT1_144\);

-- Location: LC_X13_Y11_N6
\delay[23]\ : maxii_lcell
-- Equation(s):
-- \Equal0~6\ = (delay(20) & (delay(21) & (!delay[23] & delay(22))))
-- delay(23) = DFFEAS(\Equal0~6\, GLOBAL(\mclk~combout\), VCC, , , \Add0~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => delay(20),
	datab => delay(21),
	datac => \Add0~120_combout\,
	datad => delay(22),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6\,
	regout => delay(23));

-- Location: LC_X12_Y11_N7
\Add0~100\ : maxii_lcell
-- Equation(s):
-- \Add0~100_combout\ = (((!\Add0~112\ & \Add0~122\) # (\Add0~112\ & \Add0~122COUT1_144\) $ (!delay(24))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => delay(24),
	cin => \Add0~112\,
	cin0 => \Add0~122\,
	cin1 => \Add0~122COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\);

-- Location: LC_X13_Y11_N4
\delay[24]\ : maxii_lcell
-- Equation(s):
-- delay(24) = DFFEAS((((!\Equal0~7_combout\ & \Add0~100_combout\))), GLOBAL(\mclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datac => \Equal0~7_combout\,
	datad => \Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(24));

-- Location: LC_X9_Y11_N7
\Equal0~4\ : maxii_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1\ & (\Equal0~0\ & (\Equal0~3\ & \Equal0~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1\,
	datab => \Equal0~0\,
	datac => \Equal0~3\,
	datad => \Equal0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X9_Y11_N8
\Equal0~7\ : maxii_lcell
-- Equation(s):
-- \Equal0~7_combout\ = (delay(24) & (\Equal0~5\ & (\Equal0~6\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => delay(24),
	datab => \Equal0~5\,
	datac => \Equal0~6\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7_combout\);

-- Location: LC_X13_Y11_N7
div : maxii_lcell
-- Equation(s):
-- \div~regout\ = DFFEAS(((\div~regout\ $ (\Equal0~7_combout\))), GLOBAL(\mclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datac => \div~regout\,
	datad => \Equal0~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div~regout\);

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\deep[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_deep(0),
	combout => \deep~combout\(0));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\deep[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_deep(1),
	combout => \deep~combout\(1));

-- Location: LC_X3_Y12_N3
\edo_sig~20\ : maxii_lcell
-- Equation(s):
-- \edo_sig~20_combout\ = ((\deep~combout\(0) & (\deep~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \deep~combout\(0),
	datac => \deep~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \edo_sig~20_combout\);

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\deep[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_deep(3),
	combout => \deep~combout\(3));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\deep[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_deep(2),
	combout => \deep~combout\(2));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: LC_X4_Y12_N0
\edo_sig~14\ : maxii_lcell
-- Equation(s):
-- \edo_sig~14_combout\ = (\deep~combout\(3) & (((!\deep~combout\(2) & !\Reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deep~combout\(3),
	datac => \deep~combout\(2),
	datad => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \edo_sig~14_combout\);

-- Location: LC_X4_Y12_N8
\Movimientos[0]~2\ : maxii_lcell
-- Equation(s):
-- \Movimientos[0]~2_combout\ = (\deep~combout\(3) & (((\deep~combout\(2) & !\Reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deep~combout\(3),
	datac => \deep~combout\(2),
	datad => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Movimientos[0]~2_combout\);

-- Location: LC_X3_Y13_N5
\edo_sig~15\ : maxii_lcell
-- Equation(s):
-- \edo_sig~15_combout\ = ((!\deep~combout\(0) & (\deep~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \deep~combout\(0),
	datac => \deep~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \edo_sig~15_combout\);

-- Location: LC_X3_Y13_N2
\edo_sig~28\ : maxii_lcell
-- Equation(s):
-- \edo_sig~28_combout\ = ((\deep~combout\(0) & (!\deep~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \deep~combout\(0),
	datac => \deep~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \edo_sig~28_combout\);

-- Location: LC_X3_Y13_N1
\edo_sig~17\ : maxii_lcell
-- Equation(s):
-- \edo_sig~17_combout\ = ((!\deep~combout\(0) & (!\deep~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \deep~combout\(0),
	datac => \deep~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \edo_sig~17_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sd~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sd,
	combout => \Sd~combout\);

-- Location: LC_X5_Y12_N7
\edo_sig~24\ : maxii_lcell
-- Equation(s):
-- \edo_sig~24_combout\ = ((!\deep~combout\(2) & ((!\deep~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \deep~combout\(2),
	datad => \deep~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \edo_sig~24_combout\);

-- Location: LC_X4_Y12_N9
\edo_sig~25\ : maxii_lcell
-- Equation(s):
-- \edo_sig~25_combout\ = ((\Reset~combout\) # ((\deep~combout\(3) & \deep~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deep~combout\(3),
	datac => \deep~combout\(2),
	datad => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \edo_sig~25_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Si~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Si,
	combout => \Si~combout\);

-- Location: LC_X5_Y12_N0
\edo_sig~34\ : maxii_lcell
-- Equation(s):
-- \edo_sig~34_combout\ = (!\Reset~combout\ & (\deep~combout\(0) & (!\deep~combout\(1) & !\deep~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~combout\,
	datab => \deep~combout\(0),
	datac => \deep~combout\(1),
	datad => \deep~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \edo_sig~34_combout\);

-- Location: LC_X5_Y12_N6
\Movimientos[0]~3\ : maxii_lcell
-- Equation(s):
-- \Movimientos[0]~3_combout\ = ((\deep~combout\(2) & ((\deep~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \deep~combout\(2),
	datad => \deep~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Movimientos[0]~3_combout\);

-- Location: LC_X4_Y12_N2
\edo_pres.E0\ : maxii_lcell
-- Equation(s):
-- \Selector1~0\ = ((!\Sd~combout\ & (!edo_pres.E0 & !\Si~combout\)))
-- \edo_pres.E0~regout\ = DFFEAS(\Selector1~0\, GLOBAL(\div~regout\), VCC, , , \edo_sig.E0~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	datab => \Sd~combout\,
	datac => \edo_sig.E0~regout\,
	datad => \Si~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~0\,
	regout => \edo_pres.E0~regout\);

-- Location: LC_X5_Y12_N8
\edo_sig~33\ : maxii_lcell
-- Equation(s):
-- \edo_sig~33_combout\ = (!\Reset~combout\ & (\Sd~combout\ & (\Movimientos[0]~3_combout\ & !\edo_pres.E0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~combout\,
	datab => \Sd~combout\,
	datac => \Movimientos[0]~3_combout\,
	datad => \edo_pres.E0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \edo_sig~33_combout\);

-- Location: LC_X5_Y12_N9
\edo_sig.E1\ : maxii_lcell
-- Equation(s):
-- \edo_sig.E1~regout\ = DFFEAS((\Si~combout\ & (!\deep~combout\(2) & (\edo_sig~34_combout\))) # (!\Si~combout\ & ((\edo_sig~33_combout\) # ((!\deep~combout\(2) & \edo_sig~34_combout\)))), GLOBAL(\div~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7530",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \Si~combout\,
	datab => \deep~combout\(2),
	datac => \edo_sig~34_combout\,
	datad => \edo_sig~33_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_sig.E1~regout\);

-- Location: LC_X4_Y12_N6
\edo_pres.E1\ : maxii_lcell
-- Equation(s):
-- \edo_sig~23\ = (\deep~combout\(3) & (\deep~combout\(2) & (edo_pres.E1 & !\Reset~combout\)))
-- \edo_pres.E1~regout\ = DFFEAS(\edo_sig~23\, GLOBAL(\div~regout\), VCC, , , \edo_sig.E1~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \deep~combout\(3),
	datab => \deep~combout\(2),
	datac => \edo_sig.E1~regout\,
	datad => \Reset~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \edo_sig~23\,
	regout => \edo_pres.E1~regout\);

-- Location: LC_X4_Y12_N7
\edo_sig.E2\ : maxii_lcell
-- Equation(s):
-- \edo_sig.E2~regout\ = DFFEAS((\edo_sig~23\) # ((\edo_sig~24_combout\ & (!\edo_sig~25_combout\ & \edo_sig~15_combout\))), GLOBAL(\div~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \edo_sig~24_combout\,
	datab => \edo_sig~25_combout\,
	datac => \edo_sig~23\,
	datad => \edo_sig~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_sig.E2~regout\);

-- Location: LC_X5_Y12_N4
\edo_sig~18\ : maxii_lcell
-- Equation(s):
-- \edo_sig~18_combout\ = ((\deep~combout\(2) & (!\Reset~combout\ & !\deep~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \deep~combout\(2),
	datac => \Reset~combout\,
	datad => \deep~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \edo_sig~18_combout\);

-- Location: LC_X5_Y12_N1
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (\Si~combout\ & (!\Sd~combout\ & (\Movimientos[0]~3_combout\ & !\edo_pres.E0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Si~combout\,
	datab => \Sd~combout\,
	datac => \Movimientos[0]~3_combout\,
	datad => \edo_pres.E0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X5_Y12_N2
\edo_sig.E3\ : maxii_lcell
-- Equation(s):
-- \edo_sig.E3~regout\ = DFFEAS((!\Reset~combout\ & ((\Mux3~0_combout\) # ((\edo_sig~20_combout\ & \edo_sig~24_combout\)))), GLOBAL(\div~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \Reset~combout\,
	datab => \edo_sig~20_combout\,
	datac => \edo_sig~24_combout\,
	datad => \Mux3~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_sig.E3~regout\);

-- Location: LC_X5_Y13_N7
\edo_pres.E3\ : maxii_lcell
-- Equation(s):
-- \edo_pres.E3~regout\ = DFFEAS(GND, GLOBAL(\div~regout\), VCC, , , \edo_sig.E3~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	datac => \edo_sig.E3~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.E3~regout\);

-- Location: LC_X4_Y13_N5
\edo_sig.E4\ : maxii_lcell
-- Equation(s):
-- \edo_sig.E4~regout\ = DFFEAS((\edo_sig~17_combout\ & ((\edo_sig~18_combout\) # ((\Movimientos[0]~2_combout\ & \edo_pres.E3~regout\)))) # (!\edo_sig~17_combout\ & (\Movimientos[0]~2_combout\ & ((\edo_pres.E3~regout\)))), GLOBAL(\div~regout\), VCC, , , , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \edo_sig~17_combout\,
	datab => \Movimientos[0]~2_combout\,
	datac => \edo_sig~18_combout\,
	datad => \edo_pres.E3~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_sig.E4~regout\);

-- Location: LC_X4_Y12_N4
\edo_pres.E4\ : maxii_lcell
-- Equation(s):
-- \WideOr3~0\ = (((!edo_pres.E4 & !\edo_pres.E11~regout\)))
-- \edo_pres.E4~regout\ = DFFEAS(\WideOr3~0\, GLOBAL(\div~regout\), VCC, , , \edo_sig.E4~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	datac => \edo_sig.E4~regout\,
	datad => \edo_pres.E11~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr3~0\,
	regout => \edo_pres.E4~regout\);

-- Location: LC_X4_Y12_N1
\edo_pres.E2\ : maxii_lcell
-- Equation(s):
-- \edo_sig~31\ = ((\Selector1~0\) # ((edo_pres.E2) # (!\WideOr3~0\))) # (!\Movimientos[0]~2_combout\)
-- \edo_pres.E2~regout\ = DFFEAS(\edo_sig~31\, GLOBAL(\div~regout\), VCC, , , \edo_sig.E2~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \Movimientos[0]~2_combout\,
	datab => \Selector1~0\,
	datac => \edo_sig.E2~regout\,
	datad => \WideOr3~0\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \edo_sig~31\,
	regout => \edo_pres.E2~regout\);

-- Location: LC_X4_Y12_N5
\edo_sig.E0\ : maxii_lcell
-- Equation(s):
-- \edo_sig.E0~regout\ = DFFEAS(((!\edo_sig~25_combout\ & ((!\edo_sig~17_combout\) # (!\edo_sig~24_combout\)))) # (!\edo_sig~31\), GLOBAL(\div~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "13ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \edo_sig~24_combout\,
	datab => \edo_sig~25_combout\,
	datac => \edo_sig~17_combout\,
	datad => \edo_sig~31\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_sig.E0~regout\);

-- Location: LC_X5_Y12_N3
\edo_sig.E5\ : maxii_lcell
-- Equation(s):
-- \edo_sig.E5~regout\ = DFFEAS((\Si~combout\ & ((\edo_sig~33_combout\) # ((\deep~combout\(2) & \edo_sig~34_combout\)))) # (!\Si~combout\ & (\deep~combout\(2) & (\edo_sig~34_combout\))), GLOBAL(\div~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \Si~combout\,
	datab => \deep~combout\(2),
	datac => \edo_sig~34_combout\,
	datad => \edo_sig~33_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_sig.E5~regout\);

-- Location: LC_X5_Y13_N4
\edo_pres.E5\ : maxii_lcell
-- Equation(s):
-- \edo_pres.E5~regout\ = DFFEAS(GND, GLOBAL(\div~regout\), VCC, , , \edo_sig.E5~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	datac => \edo_sig.E5~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.E5~regout\);

-- Location: LC_X4_Y13_N2
\edo_sig.E6\ : maxii_lcell
-- Equation(s):
-- \edo_sig.E6~regout\ = DFFEAS((\edo_sig~15_combout\ & ((\edo_sig~18_combout\) # ((\Movimientos[0]~2_combout\ & \edo_pres.E5~regout\)))) # (!\edo_sig~15_combout\ & (\Movimientos[0]~2_combout\ & ((\edo_pres.E5~regout\)))), GLOBAL(\div~regout\), VCC, , , , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \edo_sig~15_combout\,
	datab => \Movimientos[0]~2_combout\,
	datac => \edo_sig~18_combout\,
	datad => \edo_pres.E5~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_sig.E6~regout\);

-- Location: LC_X4_Y13_N7
\edo_pres.E6\ : maxii_lcell
-- Equation(s):
-- \WideOr5~0\ = (\edo_pres.E8~regout\) # ((\edo_pres.E2~regout\) # ((edo_pres.E6) # (!\edo_pres.E0~regout\)))
-- \edo_pres.E6~regout\ = DFFEAS(\WideOr5~0\, GLOBAL(\div~regout\), VCC, , , \edo_sig.E6~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \edo_pres.E8~regout\,
	datab => \edo_pres.E2~regout\,
	datac => \edo_sig.E6~regout\,
	datad => \edo_pres.E0~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr5~0\,
	regout => \edo_pres.E6~regout\);

-- Location: LC_X4_Y13_N0
\edo_sig.E7\ : maxii_lcell
-- Equation(s):
-- \edo_sig.E7~regout\ = DFFEAS((\edo_pres.E6~regout\ & ((\Movimientos[0]~2_combout\) # ((\edo_sig~18_combout\ & \edo_sig~20_combout\)))) # (!\edo_pres.E6~regout\ & (((\edo_sig~18_combout\ & \edo_sig~20_combout\)))), GLOBAL(\div~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \edo_pres.E6~regout\,
	datab => \Movimientos[0]~2_combout\,
	datac => \edo_sig~18_combout\,
	datad => \edo_sig~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_sig.E7~regout\);

-- Location: LC_X4_Y13_N9
\edo_pres.E7\ : maxii_lcell
-- Equation(s):
-- \edo_pres.E7~regout\ = DFFEAS(GND, GLOBAL(\div~regout\), VCC, , , \edo_sig.E7~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	datac => \edo_sig.E7~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.E7~regout\);

-- Location: LC_X3_Y13_N6
\edo_sig.E8\ : maxii_lcell
-- Equation(s):
-- \edo_sig.E8~regout\ = DFFEAS((\Movimientos[0]~2_combout\ & ((\edo_pres.E7~regout\) # ((\edo_sig~17_combout\ & \edo_sig~14_combout\)))) # (!\Movimientos[0]~2_combout\ & (\edo_sig~17_combout\ & ((\edo_sig~14_combout\)))), GLOBAL(\div~regout\), VCC, , , , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \Movimientos[0]~2_combout\,
	datab => \edo_sig~17_combout\,
	datac => \edo_pres.E7~regout\,
	datad => \edo_sig~14_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_sig.E8~regout\);

-- Location: LC_X3_Y13_N9
\edo_pres.E8\ : maxii_lcell
-- Equation(s):
-- \edo_pres.E8~regout\ = DFFEAS(GND, GLOBAL(\div~regout\), VCC, , , \edo_sig.E8~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	datac => \edo_sig.E8~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.E8~regout\);

-- Location: LC_X3_Y13_N8
\edo_sig.E9\ : maxii_lcell
-- Equation(s):
-- \edo_sig.E9~regout\ = DFFEAS((\Movimientos[0]~2_combout\ & ((\edo_pres.E8~regout\) # ((\edo_sig~28_combout\ & \edo_sig~14_combout\)))) # (!\Movimientos[0]~2_combout\ & (\edo_sig~28_combout\ & ((\edo_sig~14_combout\)))), GLOBAL(\div~regout\), VCC, , , , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \Movimientos[0]~2_combout\,
	datab => \edo_sig~28_combout\,
	datac => \edo_pres.E8~regout\,
	datad => \edo_sig~14_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_sig.E9~regout\);

-- Location: LC_X3_Y13_N3
\edo_pres.E9\ : maxii_lcell
-- Equation(s):
-- \edo_pres.E9~regout\ = DFFEAS((((\edo_sig.E9~regout\))), GLOBAL(\div~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	datad => \edo_sig.E9~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.E9~regout\);

-- Location: LC_X3_Y13_N4
\edo_sig.E10\ : maxii_lcell
-- Equation(s):
-- \edo_sig.E10~regout\ = DFFEAS((\Movimientos[0]~2_combout\ & ((\edo_pres.E9~regout\) # ((\edo_sig~14_combout\ & \edo_sig~15_combout\)))) # (!\Movimientos[0]~2_combout\ & (\edo_sig~14_combout\ & (\edo_sig~15_combout\))), GLOBAL(\div~regout\), VCC, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \Movimientos[0]~2_combout\,
	datab => \edo_sig~14_combout\,
	datac => \edo_sig~15_combout\,
	datad => \edo_pres.E9~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_sig.E10~regout\);

-- Location: LC_X3_Y13_N0
\edo_pres.E10\ : maxii_lcell
-- Equation(s):
-- \edo_pres.E10~regout\ = DFFEAS((((\edo_sig.E10~regout\))), GLOBAL(\div~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	datad => \edo_sig.E10~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.E10~regout\);

-- Location: LC_X3_Y12_N5
\edo_sig.E11\ : maxii_lcell
-- Equation(s):
-- \edo_sig.E11~regout\ = DFFEAS((\edo_sig~20_combout\ & ((\edo_sig~14_combout\) # ((\edo_pres.E10~regout\ & \Movimientos[0]~2_combout\)))) # (!\edo_sig~20_combout\ & (((\edo_pres.E10~regout\ & \Movimientos[0]~2_combout\)))), GLOBAL(\div~regout\), VCC, , , , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \edo_sig~20_combout\,
	datab => \edo_sig~14_combout\,
	datac => \edo_pres.E10~regout\,
	datad => \Movimientos[0]~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_sig.E11~regout\);

-- Location: LC_X4_Y12_N3
\edo_pres.E11\ : maxii_lcell
-- Equation(s):
-- \edo_pres.E11~regout\ = DFFEAS((((\edo_sig.E11~regout\))), GLOBAL(\div~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	datad => \edo_sig.E11~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.E11~regout\);

-- Location: LC_X3_Y12_N6
\Movimientos[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Movimientos[0]~reg0_regout\ = DFFEAS((\edo_pres.E11~regout\) # (((\edo_pres.E10~regout\) # (\edo_pres.E4~regout\))), GLOBAL(\div~regout\), VCC, , \Movimientos[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \edo_pres.E11~regout\,
	datac => \edo_pres.E10~regout\,
	datad => \edo_pres.E4~regout\,
	aclr => GND,
	ena => \Movimientos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Movimientos[0]~reg0_regout\);

-- Location: LC_X3_Y12_N9
\Movimientos[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Movimientos[1]~reg0_regout\ = DFFEAS((\edo_pres.E2~regout\) # (((\edo_pres.E7~regout\) # (\edo_pres.E6~regout\))), GLOBAL(\div~regout\), VCC, , \Movimientos[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \edo_pres.E2~regout\,
	datac => \edo_pres.E7~regout\,
	datad => \edo_pres.E6~regout\,
	aclr => GND,
	ena => \Movimientos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Movimientos[1]~reg0_regout\);

-- Location: LC_X3_Y13_N7
\Movimientos[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Movimientos[2]~reg0_regout\ = DFFEAS((\edo_pres.E9~regout\) # ((\edo_pres.E8~regout\) # ((\Selector1~0\))), GLOBAL(\div~regout\), VCC, , \Movimientos[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \edo_pres.E9~regout\,
	datab => \edo_pres.E8~regout\,
	datad => \Selector1~0\,
	aclr => GND,
	ena => \Movimientos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Movimientos[2]~reg0_regout\);

-- Location: LC_X4_Y13_N1
\Movimientos[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Movimientos[3]~reg0_regout\ = DFFEAS((\edo_pres.E3~regout\) # (((\edo_pres.E1~regout\) # (\edo_pres.E5~regout\))), GLOBAL(\div~regout\), VCC, , \Movimientos[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \edo_pres.E3~regout\,
	datac => \edo_pres.E1~regout\,
	datad => \edo_pres.E5~regout\,
	aclr => GND,
	ena => \Movimientos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Movimientos[3]~reg0_regout\);

-- Location: LC_X3_Y12_N4
\Display[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Display[0]~reg0_regout\ = DFFEAS((!\edo_pres.E1~regout\ & (((!\edo_pres.E11~regout\ & !\edo_pres.E4~regout\)))), GLOBAL(\div~regout\), VCC, , \Movimientos[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \edo_pres.E1~regout\,
	datac => \edo_pres.E11~regout\,
	datad => \edo_pres.E4~regout\,
	aclr => GND,
	ena => \Movimientos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Display[0]~reg0_regout\);

-- Location: LC_X4_Y13_N4
\Display[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Display[1]~reg0_regout\ = DFFEAS(((!\edo_pres.E6~regout\ & (!\edo_pres.E11~regout\ & !\edo_pres.E5~regout\))), GLOBAL(\div~regout\), VCC, , \Movimientos[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	datab => \edo_pres.E6~regout\,
	datac => \edo_pres.E11~regout\,
	datad => \edo_pres.E5~regout\,
	aclr => GND,
	ena => \Movimientos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Display[1]~reg0_regout\);

-- Location: LC_X3_Y12_N2
\Display[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Display[2]~reg0_regout\ = DFFEAS((((!\edo_pres.E2~regout\))), GLOBAL(\div~regout\), VCC, , \Movimientos[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	datad => \edo_pres.E2~regout\,
	aclr => GND,
	ena => \Movimientos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Display[2]~reg0_regout\);

-- Location: LC_X3_Y12_N7
\WideOr6~0\ : maxii_lcell
-- Equation(s):
-- \WideOr6~0_combout\ = (((\edo_pres.E1~regout\) # (\edo_pres.E4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \edo_pres.E1~regout\,
	datad => \edo_pres.E4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~0_combout\);

-- Location: LC_X3_Y12_N8
\Display[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Display[3]~reg0_regout\ = DFFEAS((!\edo_pres.E10~regout\ & (!\edo_pres.E9~regout\ & (!\edo_pres.E7~regout\ & !\WideOr6~0_combout\))), GLOBAL(\div~regout\), VCC, , \Movimientos[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \edo_pres.E10~regout\,
	datab => \edo_pres.E9~regout\,
	datac => \edo_pres.E7~regout\,
	datad => \WideOr6~0_combout\,
	aclr => GND,
	ena => \Movimientos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Display[3]~reg0_regout\);

-- Location: LC_X4_Y13_N8
\Display[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \Display[4]~reg0_regout\ = DFFEAS((\edo_pres.E10~regout\) # (((\edo_pres.E11~regout\) # (\WideOr5~0\))), GLOBAL(\div~regout\), VCC, , \Movimientos[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \edo_pres.E10~regout\,
	datac => \edo_pres.E11~regout\,
	datad => \WideOr5~0\,
	aclr => GND,
	ena => \Movimientos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Display[4]~reg0_regout\);

-- Location: LC_X4_Y13_N3
\Display[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \Display[5]~reg0_regout\ = DFFEAS((!\edo_pres.E3~regout\ & (!\edo_pres.E7~regout\ & (!\edo_pres.E1~regout\ & !\edo_pres.E2~regout\))), GLOBAL(\div~regout\), VCC, , \Movimientos[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	dataa => \edo_pres.E3~regout\,
	datab => \edo_pres.E7~regout\,
	datac => \edo_pres.E1~regout\,
	datad => \edo_pres.E2~regout\,
	aclr => GND,
	ena => \Movimientos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Display[5]~reg0_regout\);

-- Location: LC_X4_Y13_N6
\Display[6]~reg0\ : maxii_lcell
-- Equation(s):
-- \Display[6]~reg0_regout\ = DFFEAS((((!\edo_pres.E1~regout\ & \edo_pres.E0~regout\))), GLOBAL(\div~regout\), VCC, , \Movimientos[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \div~regout\,
	datac => \edo_pres.E1~regout\,
	datad => \edo_pres.E0~regout\,
	aclr => GND,
	ena => \Movimientos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Display[6]~reg0_regout\);

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Movimientos[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Movimientos[0]~reg0_regout\,
	oe => VCC,
	padio => ww_Movimientos(0));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Movimientos[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Movimientos[1]~reg0_regout\,
	oe => VCC,
	padio => ww_Movimientos(1));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Movimientos[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Movimientos[2]~reg0_regout\,
	oe => VCC,
	padio => ww_Movimientos(2));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Movimientos[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Movimientos[3]~reg0_regout\,
	oe => VCC,
	padio => ww_Movimientos(3));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Display[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Display[0]~reg0_regout\,
	oe => VCC,
	padio => ww_Display(0));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Display[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Display[1]~reg0_regout\,
	oe => VCC,
	padio => ww_Display(1));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Display[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Display[2]~reg0_regout\,
	oe => VCC,
	padio => ww_Display(2));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Display[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Display[3]~reg0_regout\,
	oe => VCC,
	padio => ww_Display(3));

-- Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Display[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Display[4]~reg0_regout\,
	oe => VCC,
	padio => ww_Display(4));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Display[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Display[5]~reg0_regout\,
	oe => VCC,
	padio => ww_Display(5));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Display[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Display[6]~reg0_regout\,
	oe => VCC,
	padio => ww_Display(6));
END structure;


