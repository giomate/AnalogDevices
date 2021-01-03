//lpm_mult CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" DSP_BLOCK_BALANCING="Auto" LPM_PIPELINE=3 LPM_REPRESENTATION="SIGNED" LPM_WIDTHA=17 LPM_WIDTHB=17 LPM_WIDTHP=34 clock dataa datab result CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48
//VERSION_BEGIN 20.1 cbx_cycloneii 2020:06:05:12:04:51:SJ cbx_lpm_add_sub 2020:06:05:12:04:51:SJ cbx_lpm_mult 2020:06:05:12:04:51:SJ cbx_mgl 2020:06:05:12:11:10:SJ cbx_nadder 2020:06:05:12:04:51:SJ cbx_padd 2020:06:05:12:04:51:SJ cbx_stratix 2020:06:05:12:04:51:SJ cbx_stratixii 2020:06:05:12:04:51:SJ cbx_util_mgl 2020:06:05:12:04:51:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 2020  Intel Corporation. All rights reserved.
//  Your use of Intel Corporation's design tools, logic functions 
//  and other software and tools, and any partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Intel Program License 
//  Subscription Agreement, the Intel Quartus Prime License Agreement,
//  the Intel FPGA IP License Agreement, or other applicable license
//  agreement, including, without limitation, that your use is for
//  the sole purpose of programming logic devices manufactured by
//  Intel and sold by Intel or its authorized distributors.  Please
//  refer to the applicable agreement for further details, at
//  https://fpgasoftware.intel.com/eula.



//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mult_vbn
	( 
	clock,
	dataa,
	datab,
	result) /* synthesis synthesis_clearbox=1 */;
	input   clock;
	input   [16:0]  dataa;
	input   [16:0]  datab;
	output   [33:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg  [16:0]  dataa_input_reg;
	reg  [16:0]  datab_input_reg;
	reg  [33:0]  result_output_reg;
	reg  [33:0]  result_extra0_reg;
	wire signed	[16:0]    dataa_wire;
	wire signed	[16:0]    datab_wire;
	wire signed	[33:0]    result_wire;


	// synopsys translate_off
	initial
		dataa_input_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		dataa_input_reg <= dataa;
	// synopsys translate_off
	initial
		datab_input_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		datab_input_reg <= datab;
	// synopsys translate_off
	initial
		result_output_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		result_output_reg <= result_extra0_reg;
	// synopsys translate_off
	initial
		result_extra0_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		result_extra0_reg <= result_wire[33:0];

	assign dataa_wire = dataa_input_reg;
	assign datab_wire = datab_input_reg;
	assign result_wire = dataa_wire * datab_wire;
	assign result = ({result_output_reg});

endmodule //mult_vbn
//VALID FILE
