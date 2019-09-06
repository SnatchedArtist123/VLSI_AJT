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

-- DATE "09/01/2019 15:01:24"

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

ENTITY 	CORRI IS
    PORT (
	CLK : IN std_logic;
	DIR : IN std_logic;
	RST : IN std_logic;
	LEDS : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END CORRI;

-- Design Ports Information
-- LEDS[0]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[1]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[3]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[4]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[5]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[6]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDS[7]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIR	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CORRI IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_DIR : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_LEDS : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \DIR~input_o\ : std_logic;
SIGNAL \corrimiento~3_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \corrimiento~2_combout\ : std_logic;
SIGNAL \corrimiento~1_combout\ : std_logic;
SIGNAL \corrimiento~0_combout\ : std_logic;
SIGNAL corrimiento : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_RST~input_o\ : std_logic;
SIGNAL \ALT_INV_DIR~input_o\ : std_logic;
SIGNAL ALT_INV_corrimiento : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_DIR <= DIR;
ww_RST <= RST;
LEDS <= ww_LEDS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
\ALT_INV_DIR~input_o\ <= NOT \DIR~input_o\;
ALT_INV_corrimiento(3) <= NOT corrimiento(3);
ALT_INV_corrimiento(2) <= NOT corrimiento(2);
ALT_INV_corrimiento(1) <= NOT corrimiento(1);
ALT_INV_corrimiento(0) <= NOT corrimiento(0);

-- Location: IOOBUF_X89_Y4_N79
\LEDS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_corrimiento(0),
	devoe => ww_devoe,
	o => ww_LEDS(0));

-- Location: IOOBUF_X89_Y9_N56
\LEDS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => corrimiento(1),
	devoe => ww_devoe,
	o => ww_LEDS(1));

-- Location: IOOBUF_X89_Y8_N5
\LEDS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => corrimiento(2),
	devoe => ww_devoe,
	o => ww_LEDS(2));

-- Location: IOOBUF_X89_Y6_N56
\LEDS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_corrimiento(3),
	devoe => ww_devoe,
	o => ww_LEDS(3));

-- Location: IOOBUF_X89_Y4_N45
\LEDS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_corrimiento(0),
	devoe => ww_devoe,
	o => ww_LEDS(4));

-- Location: IOOBUF_X89_Y9_N39
\LEDS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => corrimiento(1),
	devoe => ww_devoe,
	o => ww_LEDS(5));

-- Location: IOOBUF_X89_Y8_N22
\LEDS[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => corrimiento(2),
	devoe => ww_devoe,
	o => ww_LEDS(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDS[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_corrimiento(3),
	devoe => ww_devoe,
	o => ww_LEDS(7));

-- Location: IOIBUF_X89_Y25_N21
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G10
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y6_N21
\DIR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIR,
	o => \DIR~input_o\);

-- Location: LABCELL_X88_Y6_N57
\corrimiento~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrimiento~3_combout\ = ( corrimiento(2) & ( corrimiento(0) & ( !\DIR~input_o\ ) ) ) # ( !corrimiento(2) & ( corrimiento(0) ) ) # ( !corrimiento(2) & ( !corrimiento(0) & ( \DIR~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000011111111111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIR~input_o\,
	datae => ALT_INV_corrimiento(2),
	dataf => ALT_INV_corrimiento(0),
	combout => \corrimiento~3_combout\);

-- Location: IOIBUF_X89_Y6_N38
\RST~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: FF_X88_Y6_N59
\corrimiento[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \corrimiento~3_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrimiento(3));

-- Location: LABCELL_X88_Y6_N36
\corrimiento~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrimiento~2_combout\ = ( corrimiento(1) & ( corrimiento(3) & ( \DIR~input_o\ ) ) ) # ( corrimiento(1) & ( !corrimiento(3) ) ) # ( !corrimiento(1) & ( !corrimiento(3) & ( !\DIR~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DIR~input_o\,
	datae => ALT_INV_corrimiento(1),
	dataf => ALT_INV_corrimiento(3),
	combout => \corrimiento~2_combout\);

-- Location: FF_X88_Y6_N38
\corrimiento[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \corrimiento~2_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrimiento(2));

-- Location: LABCELL_X88_Y6_N3
\corrimiento~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrimiento~1_combout\ = ( corrimiento(2) & ( corrimiento(0) & ( !\DIR~input_o\ ) ) ) # ( corrimiento(2) & ( !corrimiento(0) ) ) # ( !corrimiento(2) & ( !corrimiento(0) & ( \DIR~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIR~input_o\,
	datae => ALT_INV_corrimiento(2),
	dataf => ALT_INV_corrimiento(0),
	combout => \corrimiento~1_combout\);

-- Location: FF_X88_Y6_N5
\corrimiento[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \corrimiento~1_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrimiento(1));

-- Location: LABCELL_X88_Y6_N48
\corrimiento~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \corrimiento~0_combout\ = ( corrimiento(1) & ( corrimiento(3) & ( \DIR~input_o\ ) ) ) # ( !corrimiento(1) & ( corrimiento(3) ) ) # ( !corrimiento(1) & ( !corrimiento(3) & ( !\DIR~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DIR~input_o\,
	datae => ALT_INV_corrimiento(1),
	dataf => ALT_INV_corrimiento(3),
	combout => \corrimiento~0_combout\);

-- Location: FF_X88_Y6_N50
\corrimiento[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \corrimiento~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => corrimiento(0));

-- Location: LABCELL_X48_Y56_N3
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


