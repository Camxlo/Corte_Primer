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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "09/05/2023 17:43:01"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sum4bits_test IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Cin : IN std_logic;
	Dis_0 : OUT std_logic_vector(6 DOWNTO 0);
	Dis_1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END sum4bits_test;

-- Design Ports Information
-- Cin	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_0[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_0[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_0[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_0[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_0[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_0[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_1[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_1[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_1[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_1[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_1[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_1[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sum4bits_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Dis_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Dis_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \Dis_0[0]~output_o\ : std_logic;
SIGNAL \Dis_0[1]~output_o\ : std_logic;
SIGNAL \Dis_0[2]~output_o\ : std_logic;
SIGNAL \Dis_0[3]~output_o\ : std_logic;
SIGNAL \Dis_0[4]~output_o\ : std_logic;
SIGNAL \Dis_0[5]~output_o\ : std_logic;
SIGNAL \Dis_0[6]~output_o\ : std_logic;
SIGNAL \Dis_1[0]~output_o\ : std_logic;
SIGNAL \Dis_1[1]~output_o\ : std_logic;
SIGNAL \Dis_1[2]~output_o\ : std_logic;
SIGNAL \Dis_1[3]~output_o\ : std_logic;
SIGNAL \Dis_1[4]~output_o\ : std_logic;
SIGNAL \Dis_1[5]~output_o\ : std_logic;
SIGNAL \Dis_1[6]~output_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A10|A1|Cout~0_combout\ : std_logic;
SIGNAL \A10|A2|HA2|Sum~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A10|A2|Cout~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A10|A3|HA2|Sum~combout\ : std_logic;
SIGNAL \A10|A1|HA2|Sum~0_combout\ : std_logic;
SIGNAL \A10|A3|Cout~0_combout\ : std_logic;
SIGNAL \A11|Mux2~0_combout\ : std_logic;
SIGNAL \A11|Mux3~0_combout\ : std_logic;
SIGNAL \A11|Mux4~0_combout\ : std_logic;
SIGNAL \A12|Mux6~0_combout\ : std_logic;
SIGNAL \A10|A0|HA1|Sum~combout\ : std_logic;
SIGNAL \A11|Mux5~0_combout\ : std_logic;
SIGNAL \A11|Mux5~1_combout\ : std_logic;
SIGNAL \A12|Mux5~0_combout\ : std_logic;
SIGNAL \A12|Mux4~0_combout\ : std_logic;
SIGNAL \A12|Mux3~0_combout\ : std_logic;
SIGNAL \A12|Mux2~0_combout\ : std_logic;
SIGNAL \A12|Mux1~0_combout\ : std_logic;
SIGNAL \A12|Mux0~0_combout\ : std_logic;
SIGNAL \A11|Mux0~2_combout\ : std_logic;
SIGNAL \A11|Mux0~3_combout\ : std_logic;
SIGNAL \A11|Mux1~0_combout\ : std_logic;
SIGNAL \A11|Mux1~1_combout\ : std_logic;
SIGNAL \A13|Mux5~0_combout\ : std_logic;
SIGNAL \A13|Mux0~0_combout\ : std_logic;
SIGNAL \A13|Mux0~1_combout\ : std_logic;
SIGNAL \A11|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \A12|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
Dis_0 <= ww_Dis_0;
Dis_1 <= ww_Dis_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\A11|ALT_INV_Mux0~3_combout\ <= NOT \A11|Mux0~3_combout\;
\A12|ALT_INV_Mux6~0_combout\ <= NOT \A12|Mux6~0_combout\;

-- Location: IOOBUF_X26_Y29_N16
\Dis_0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A12|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Dis_0[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\Dis_0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A12|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Dis_0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\Dis_0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A12|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Dis_0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\Dis_0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A12|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Dis_0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\Dis_0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A12|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Dis_0[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\Dis_0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A12|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Dis_0[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\Dis_0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A12|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Dis_0[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\Dis_1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A11|ALT_INV_Mux0~3_combout\,
	devoe => ww_devoe,
	o => \Dis_1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\Dis_1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A13|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Dis_1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\Dis_1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A11|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \Dis_1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\Dis_1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Dis_1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\Dis_1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A13|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Dis_1[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\Dis_1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Dis_1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\Dis_1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Dis_1[6]~output_o\);

-- Location: IOIBUF_X0_Y25_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y26_N18
\A10|A1|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A10|A1|Cout~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \A10|A1|Cout~0_combout\);

-- Location: LCCOMB_X1_Y26_N12
\A10|A2|HA2|Sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A10|A2|HA2|Sum~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (\A10|A1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A10|A1|Cout~0_combout\,
	combout => \A10|A2|HA2|Sum~0_combout\);

-- Location: IOIBUF_X0_Y26_N8
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X1_Y26_N14
\A10|A2|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A10|A2|Cout~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\A10|A1|Cout~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \A10|A1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A10|A1|Cout~0_combout\,
	combout => \A10|A2|Cout~0_combout\);

-- Location: IOIBUF_X0_Y23_N8
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X1_Y26_N16
\A10|A3|HA2|Sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A10|A3|HA2|Sum~combout\ = \B[3]~input_o\ $ (\A10|A2|Cout~0_combout\ $ (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A10|A2|Cout~0_combout\,
	datac => \A[3]~input_o\,
	combout => \A10|A3|HA2|Sum~combout\);

-- Location: LCCOMB_X1_Y26_N8
\A10|A1|HA2|Sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A10|A1|HA2|Sum~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \A10|A1|HA2|Sum~0_combout\);

-- Location: LCCOMB_X1_Y26_N2
\A10|A3|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A10|A3|Cout~0_combout\ = (\B[3]~input_o\ & ((\A10|A2|Cout~0_combout\) # (\A[3]~input_o\))) # (!\B[3]~input_o\ & (\A10|A2|Cout~0_combout\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A10|A2|Cout~0_combout\,
	datac => \A[3]~input_o\,
	combout => \A10|A3|Cout~0_combout\);

-- Location: LCCOMB_X1_Y26_N24
\A11|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A11|Mux2~0_combout\ = (\A10|A3|HA2|Sum~combout\ & (!\A10|A1|HA2|Sum~0_combout\ & (\A10|A2|HA2|Sum~0_combout\ $ (!\A10|A3|Cout~0_combout\)))) # (!\A10|A3|HA2|Sum~combout\ & (!\A10|A2|HA2|Sum~0_combout\ & (\A10|A1|HA2|Sum~0_combout\ & 
-- \A10|A3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A10|A2|HA2|Sum~0_combout\,
	datab => \A10|A3|HA2|Sum~combout\,
	datac => \A10|A1|HA2|Sum~0_combout\,
	datad => \A10|A3|Cout~0_combout\,
	combout => \A11|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y26_N28
\A11|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A11|Mux3~0_combout\ = (\A10|A2|HA2|Sum~0_combout\ & (!\A10|A3|Cout~0_combout\ & ((\A10|A1|HA2|Sum~0_combout\) # (!\A10|A3|HA2|Sum~combout\)))) # (!\A10|A2|HA2|Sum~0_combout\ & (\A10|A3|Cout~0_combout\ & ((\A10|A3|HA2|Sum~combout\) # 
-- (!\A10|A1|HA2|Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A10|A2|HA2|Sum~0_combout\,
	datab => \A10|A3|HA2|Sum~combout\,
	datac => \A10|A1|HA2|Sum~0_combout\,
	datad => \A10|A3|Cout~0_combout\,
	combout => \A11|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y26_N6
\A11|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A11|Mux4~0_combout\ = (\A10|A3|HA2|Sum~combout\ & ((\A10|A2|HA2|Sum~0_combout\ & (!\A10|A1|HA2|Sum~0_combout\ & !\A10|A3|Cout~0_combout\)) # (!\A10|A2|HA2|Sum~0_combout\ & (\A10|A1|HA2|Sum~0_combout\ & \A10|A3|Cout~0_combout\)))) # 
-- (!\A10|A3|HA2|Sum~combout\ & (\A10|A1|HA2|Sum~0_combout\ $ (((!\A10|A2|HA2|Sum~0_combout\ & \A10|A3|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A10|A2|HA2|Sum~0_combout\,
	datab => \A10|A3|HA2|Sum~combout\,
	datac => \A10|A1|HA2|Sum~0_combout\,
	datad => \A10|A3|Cout~0_combout\,
	combout => \A11|Mux4~0_combout\);

-- Location: LCCOMB_X15_Y26_N16
\A12|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A12|Mux6~0_combout\ = \A11|Mux2~0_combout\ $ (((\A11|Mux3~0_combout\) # (\A11|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A11|Mux2~0_combout\,
	datac => \A11|Mux3~0_combout\,
	datad => \A11|Mux4~0_combout\,
	combout => \A12|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y26_N10
\A10|A0|HA1|Sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A10|A0|HA1|Sum~combout\ = \A[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \A10|A0|HA1|Sum~combout\);

-- Location: LCCOMB_X1_Y26_N4
\A11|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A11|Mux5~0_combout\ = ((\A[3]~input_o\ & (!\A10|A2|Cout~0_combout\ & !\B[3]~input_o\)) # (!\A[3]~input_o\ & ((!\B[3]~input_o\) # (!\A10|A2|Cout~0_combout\)))) # (!\A10|A1|HA2|Sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A10|A2|Cout~0_combout\,
	datac => \A10|A1|HA2|Sum~0_combout\,
	datad => \B[3]~input_o\,
	combout => \A11|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y26_N30
\A11|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A11|Mux5~1_combout\ = (\A10|A0|HA1|Sum~combout\ & (((\A11|Mux5~0_combout\) # (!\A10|A2|HA2|Sum~0_combout\)) # (!\A10|A3|HA2|Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A10|A0|HA1|Sum~combout\,
	datab => \A10|A3|HA2|Sum~combout\,
	datac => \A11|Mux5~0_combout\,
	datad => \A10|A2|HA2|Sum~0_combout\,
	combout => \A11|Mux5~1_combout\);

-- Location: LCCOMB_X15_Y26_N2
\A12|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A12|Mux5~0_combout\ = (\A11|Mux5~1_combout\ & ((\A11|Mux4~0_combout\) # (\A11|Mux2~0_combout\ $ (!\A11|Mux3~0_combout\)))) # (!\A11|Mux5~1_combout\ & ((\A11|Mux3~0_combout\ & (\A11|Mux2~0_combout\)) # (!\A11|Mux3~0_combout\ & ((\A11|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A11|Mux5~1_combout\,
	datab => \A11|Mux2~0_combout\,
	datac => \A11|Mux3~0_combout\,
	datad => \A11|Mux4~0_combout\,
	combout => \A12|Mux5~0_combout\);

-- Location: LCCOMB_X15_Y26_N28
\A12|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A12|Mux4~0_combout\ = (\A11|Mux5~1_combout\) # ((\A11|Mux4~0_combout\ & (\A11|Mux2~0_combout\)) # (!\A11|Mux4~0_combout\ & ((\A11|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A11|Mux5~1_combout\,
	datab => \A11|Mux2~0_combout\,
	datac => \A11|Mux3~0_combout\,
	datad => \A11|Mux4~0_combout\,
	combout => \A12|Mux4~0_combout\);

-- Location: LCCOMB_X15_Y26_N6
\A12|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A12|Mux3~0_combout\ = (\A11|Mux5~1_combout\ & ((\A11|Mux2~0_combout\) # (\A11|Mux3~0_combout\ $ (!\A11|Mux4~0_combout\)))) # (!\A11|Mux5~1_combout\ & ((\A11|Mux4~0_combout\ & (\A11|Mux2~0_combout\)) # (!\A11|Mux4~0_combout\ & ((\A11|Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A11|Mux5~1_combout\,
	datab => \A11|Mux2~0_combout\,
	datac => \A11|Mux3~0_combout\,
	datad => \A11|Mux4~0_combout\,
	combout => \A12|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y26_N24
\A12|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A12|Mux2~0_combout\ = (\A11|Mux3~0_combout\ & (((\A11|Mux2~0_combout\)))) # (!\A11|Mux3~0_combout\ & (\A11|Mux4~0_combout\ & ((\A11|Mux2~0_combout\) # (!\A11|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A11|Mux5~1_combout\,
	datab => \A11|Mux2~0_combout\,
	datac => \A11|Mux3~0_combout\,
	datad => \A11|Mux4~0_combout\,
	combout => \A12|Mux2~0_combout\);

-- Location: LCCOMB_X15_Y26_N26
\A12|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A12|Mux1~0_combout\ = (\A11|Mux2~0_combout\ & (((\A11|Mux3~0_combout\) # (\A11|Mux4~0_combout\)))) # (!\A11|Mux2~0_combout\ & (\A11|Mux3~0_combout\ & (\A11|Mux5~1_combout\ $ (\A11|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A11|Mux5~1_combout\,
	datab => \A11|Mux2~0_combout\,
	datac => \A11|Mux3~0_combout\,
	datad => \A11|Mux4~0_combout\,
	combout => \A12|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y26_N12
\A12|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A12|Mux0~0_combout\ = (\A11|Mux4~0_combout\ & (((\A11|Mux2~0_combout\)))) # (!\A11|Mux4~0_combout\ & (\A11|Mux3~0_combout\ $ (((\A11|Mux5~1_combout\ & !\A11|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A11|Mux5~1_combout\,
	datab => \A11|Mux2~0_combout\,
	datac => \A11|Mux3~0_combout\,
	datad => \A11|Mux4~0_combout\,
	combout => \A12|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y26_N0
\A11|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A11|Mux0~2_combout\ = (\A10|A3|HA2|Sum~combout\ & (((!\A10|A2|HA2|Sum~0_combout\) # (!\A10|A1|HA2|Sum~0_combout\)) # (!\A10|A0|HA1|Sum~combout\))) # (!\A10|A3|HA2|Sum~combout\ & (((\A10|A2|HA2|Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A10|A0|HA1|Sum~combout\,
	datab => \A10|A3|HA2|Sum~combout\,
	datac => \A10|A1|HA2|Sum~0_combout\,
	datad => \A10|A2|HA2|Sum~0_combout\,
	combout => \A11|Mux0~2_combout\);

-- Location: LCCOMB_X1_Y26_N22
\A11|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A11|Mux0~3_combout\ = (\A11|Mux0~2_combout\ & ((\B[3]~input_o\ & ((\A10|A2|Cout~0_combout\) # (\A[3]~input_o\))) # (!\B[3]~input_o\ & (\A10|A2|Cout~0_combout\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A10|A2|Cout~0_combout\,
	datac => \A[3]~input_o\,
	datad => \A11|Mux0~2_combout\,
	combout => \A11|Mux0~3_combout\);

-- Location: LCCOMB_X1_Y26_N26
\A11|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A11|Mux1~0_combout\ = (\A10|A3|Cout~0_combout\ & (!\A10|A0|HA1|Sum~combout\ & (\A10|A1|HA2|Sum~0_combout\ & \A10|A2|HA2|Sum~0_combout\))) # (!\A10|A3|Cout~0_combout\ & (((\A10|A1|HA2|Sum~0_combout\) # (\A10|A2|HA2|Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A10|A0|HA1|Sum~combout\,
	datab => \A10|A3|Cout~0_combout\,
	datac => \A10|A1|HA2|Sum~0_combout\,
	datad => \A10|A2|HA2|Sum~0_combout\,
	combout => \A11|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y26_N20
\A11|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A11|Mux1~1_combout\ = (\A10|A3|HA2|Sum~combout\ & (((\A11|Mux1~0_combout\)))) # (!\A10|A3|HA2|Sum~combout\ & (!\A10|A2|HA2|Sum~0_combout\ & ((\A10|A3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A10|A2|HA2|Sum~0_combout\,
	datab => \A10|A3|HA2|Sum~combout\,
	datac => \A11|Mux1~0_combout\,
	datad => \A10|A3|Cout~0_combout\,
	combout => \A11|Mux1~1_combout\);

-- Location: LCCOMB_X26_Y26_N24
\A13|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A13|Mux5~0_combout\ = (\A11|Mux0~3_combout\) # (\A11|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A11|Mux0~3_combout\,
	datad => \A11|Mux1~1_combout\,
	combout => \A13|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y26_N26
\A13|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A13|Mux0~0_combout\ = (!\A11|Mux0~3_combout\ & \A11|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A11|Mux0~3_combout\,
	datad => \A11|Mux1~1_combout\,
	combout => \A13|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y26_N20
\A13|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A13|Mux0~1_combout\ = (\A11|Mux0~3_combout\ & !\A11|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A11|Mux0~3_combout\,
	datad => \A11|Mux1~1_combout\,
	combout => \A13|Mux0~1_combout\);

-- Location: IOIBUF_X32_Y29_N1
\Cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

ww_Dis_0(0) <= \Dis_0[0]~output_o\;

ww_Dis_0(1) <= \Dis_0[1]~output_o\;

ww_Dis_0(2) <= \Dis_0[2]~output_o\;

ww_Dis_0(3) <= \Dis_0[3]~output_o\;

ww_Dis_0(4) <= \Dis_0[4]~output_o\;

ww_Dis_0(5) <= \Dis_0[5]~output_o\;

ww_Dis_0(6) <= \Dis_0[6]~output_o\;

ww_Dis_1(0) <= \Dis_1[0]~output_o\;

ww_Dis_1(1) <= \Dis_1[1]~output_o\;

ww_Dis_1(2) <= \Dis_1[2]~output_o\;

ww_Dis_1(3) <= \Dis_1[3]~output_o\;

ww_Dis_1(4) <= \Dis_1[4]~output_o\;

ww_Dis_1(5) <= \Dis_1[5]~output_o\;

ww_Dis_1(6) <= \Dis_1[6]~output_o\;
END structure;


