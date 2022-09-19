-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "09/17/2022 14:41:47"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	OAC_Lab2 IS
    PORT (
	pin_name7 : OUT std_logic;
	pin_name1 : IN std_logic;
	pin_name2 : IN std_logic;
	pin_name8 : IN std_logic_vector(1 DOWNTO 0)
	);
END OAC_Lab2;

-- Design Ports Information
-- pin_name7	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name8[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name8[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF OAC_Lab2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin_name7 : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_pin_name2 : std_logic;
SIGNAL ww_pin_name8 : std_logic_vector(1 DOWNTO 0);
SIGNAL \pin_name7~output_o\ : std_logic;
SIGNAL \pin_name8[1]~input_o\ : std_logic;
SIGNAL \pin_name8[0]~input_o\ : std_logic;
SIGNAL \pin_name1~input_o\ : std_logic;
SIGNAL \pin_name2~input_o\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;

BEGIN

pin_name7 <= ww_pin_name7;
ww_pin_name1 <= pin_name1;
ww_pin_name2 <= pin_name2;
ww_pin_name8 <= pin_name8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N2
\pin_name7~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	devoe => ww_devoe,
	o => \pin_name7~output_o\);

-- Location: IOIBUF_X10_Y0_N8
\pin_name8[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name8(1),
	o => \pin_name8[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\pin_name8[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name8(0),
	o => \pin_name8[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\pin_name1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name1,
	o => \pin_name1~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\pin_name2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2,
	o => \pin_name2~input_o\);

-- Location: LCCOMB_X9_Y1_N16
\inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = (\pin_name8[1]~input_o\ & (((\pin_name1~input_o\ & \pin_name2~input_o\)))) # (!\pin_name8[1]~input_o\ & ((\pin_name1~input_o\ & ((\pin_name8[0]~input_o\) # (!\pin_name2~input_o\))) # 
-- (!\pin_name1~input_o\ & ((\pin_name2~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name8[1]~input_o\,
	datab => \pin_name8[0]~input_o\,
	datac => \pin_name1~input_o\,
	datad => \pin_name2~input_o\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

ww_pin_name7 <= \pin_name7~output_o\;
END structure;


