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

-- DATE "09/05/2019 18:57:26"

-- 
-- Device: Altera 5CSEBA6U23I7 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MaquinaEstados IS
    PORT (
	H : IN std_logic;
	MCLK : IN std_logic;
	A : BUFFER std_logic;
	B : BUFFER std_logic
	);
END MaquinaEstados;

-- Design Ports Information
-- A	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLK	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MaquinaEstados IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_H : std_logic;
SIGNAL ww_MCLK : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \MCLK~input_o\ : std_logic;
SIGNAL \MCLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \H~input_o\ : std_logic;
SIGNAL \qt~11_combout\ : std_logic;
SIGNAL \qt.E0~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \qt.E3~q\ : std_logic;
SIGNAL \qt~10_combout\ : std_logic;
SIGNAL \qt.E2~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \qt.E1~q\ : std_logic;
SIGNAL \A~reg0_q\ : std_logic;
SIGNAL \B~reg0_q\ : std_logic;
SIGNAL \ALT_INV_H~input_o\ : std_logic;
SIGNAL \ALT_INV_qt.E0~q\ : std_logic;
SIGNAL \ALT_INV_qt.E2~q\ : std_logic;
SIGNAL \ALT_INV_qt.E3~q\ : std_logic;
SIGNAL \ALT_INV_qt.E1~q\ : std_logic;

BEGIN

ww_H <= H;
ww_MCLK <= MCLK;
A <= ww_A;
B <= ww_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_H~input_o\ <= NOT \H~input_o\;
\ALT_INV_qt.E0~q\ <= NOT \qt.E0~q\;
\ALT_INV_qt.E2~q\ <= NOT \qt.E2~q\;
\ALT_INV_qt.E3~q\ <= NOT \qt.E3~q\;
\ALT_INV_qt.E1~q\ <= NOT \qt.E1~q\;

-- Location: IOOBUF_X89_Y23_N56
\A~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A~reg0_q\,
	devoe => ww_devoe,
	o => ww_A);

-- Location: IOOBUF_X89_Y23_N5
\B~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B~reg0_q\,
	devoe => ww_devoe,
	o => ww_B);

-- Location: IOIBUF_X89_Y25_N21
\MCLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCLK,
	o => \MCLK~input_o\);

-- Location: CLKCTRL_G10
\MCLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \MCLK~input_o\,
	outclk => \MCLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y23_N21
\H~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H,
	o => \H~input_o\);

-- Location: LABCELL_X88_Y23_N57
\qt~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \qt~11_combout\ = ( \qt.E0~q\ & ( \qt.E3~q\ & ( !\H~input_o\ ) ) ) # ( !\qt.E0~q\ & ( \qt.E3~q\ & ( !\H~input_o\ ) ) ) # ( \qt.E0~q\ & ( !\qt.E3~q\ ) ) # ( !\qt.E0~q\ & ( !\qt.E3~q\ & ( !\H~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_H~input_o\,
	datae => \ALT_INV_qt.E0~q\,
	dataf => \ALT_INV_qt.E3~q\,
	combout => \qt~11_combout\);

-- Location: FF_X88_Y23_N59
\qt.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputCLKENA0_outclk\,
	d => \qt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qt.E0~q\);

-- Location: LABCELL_X88_Y23_N48
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \qt.E0~q\ & ( !\qt.E1~q\ & ( !\H~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_H~input_o\,
	datae => \ALT_INV_qt.E0~q\,
	dataf => \ALT_INV_qt.E1~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X88_Y23_N50
\qt.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qt.E3~q\);

-- Location: LABCELL_X88_Y23_N42
\qt~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \qt~10_combout\ = ( \qt.E0~q\ & ( (\H~input_o\ & !\qt.E3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_H~input_o\,
	datac => \ALT_INV_qt.E3~q\,
	dataf => \ALT_INV_qt.E0~q\,
	combout => \qt~10_combout\);

-- Location: FF_X88_Y23_N44
\qt.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputCLKENA0_outclk\,
	d => \qt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qt.E2~q\);

-- Location: LABCELL_X88_Y23_N45
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( !\qt.E3~q\ & ( (!\H~input_o\ & !\qt.E2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_H~input_o\,
	datac => \ALT_INV_qt.E2~q\,
	dataf => \ALT_INV_qt.E3~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X88_Y23_N47
\qt.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qt.E1~q\);

-- Location: FF_X88_Y23_N52
\A~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputCLKENA0_outclk\,
	asdata => \qt.E1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A~reg0_q\);

-- Location: FF_X88_Y23_N55
\B~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputCLKENA0_outclk\,
	asdata => \qt.E3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B~reg0_q\);

-- Location: LABCELL_X36_Y37_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


