//altlvds_rx BUFFER_IMPLEMENTATION="RAM" CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" COMMON_RX_TX_PLL="ON" CYCLONEII_M4K_COMPATIBILITY="ON" DATA_ALIGN_ROLLOVER=4 DATA_RATE="500.0 Mbps" DESERIALIZATION_FACTOR=4 DEVICE_FAMILY="Cyclone V" DPA_INITIAL_PHASE_VALUE=0 DPLL_LOCK_COUNT=0 DPLL_LOCK_WINDOW=0 ENABLE_DPA_ALIGN_TO_RISING_EDGE_ONLY="OFF" ENABLE_DPA_CALIBRATION="ON" ENABLE_DPA_INITIAL_PHASE_SELECTION="OFF" ENABLE_DPA_MODE="OFF" ENABLE_DPA_PLL_CALIBRATION="OFF" ENABLE_SOFT_CDR_MODE="OFF" IMPLEMENT_IN_LES="OFF" INCLOCK_BOOST=0 INCLOCK_DATA_ALIGNMENT="EDGE_ALIGNED" INCLOCK_PERIOD=4000 INCLOCK_PHASE_SHIFT=0 INPUT_DATA_RATE=500 NUMBER_OF_CHANNELS=7 OUTCLOCK_RESOURCE="Global Clock" PLL_OPERATION_MODE="NORMAL" PORT_RX_CHANNEL_DATA_ALIGN="PORT_UNUSED" PORT_RX_DATA_ALIGN="PORT_UNUSED" REFCLK_FREQUENCY="250.000000 MHz" REGISTERED_OUTPUT="ON" RX_ALIGN_DATA_REG="RISING_EDGE" SIM_DPA_IS_NEGATIVE_PPM_DRIFT="OFF" SIM_DPA_NET_PPM_VARIATION=0 SIM_DPA_OUTPUT_CLOCK_PHASE_SHIFT=0 USE_CORECLOCK_INPUT="OFF" USE_DPLL_RAWPERROR="OFF" USE_EXTERNAL_PLL="OFF" USE_NO_PHASE_SHIFT="ON" X_ON_BITSLIP="ON" pll_areset rx_in rx_inclock rx_locked rx_out rx_outclock ACF_BLOCK_RAM_AND_MLAB_EQUIVALENT_PAUSED_READ_CAPABILITIES="CARE" CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48 LOW_POWER_MODE="AUTO" ALTERA_INTERNAL_OPTIONS=AUTO_SHIFT_REGISTER_RECOGNITION=OFF
//VERSION_BEGIN 20.1 cbx_altaccumulate 2020:06:05:12:04:51:SJ cbx_altclkbuf 2020:06:05:12:04:51:SJ cbx_altddio_in 2020:06:05:12:04:51:SJ cbx_altddio_out 2020:06:05:12:04:51:SJ cbx_altera_syncram_nd_impl 2020:06:05:12:04:51:SJ cbx_altiobuf_bidir 2020:06:05:12:04:51:SJ cbx_altiobuf_in 2020:06:05:12:04:51:SJ cbx_altiobuf_out 2020:06:05:12:04:51:SJ cbx_altlvds_rx 2020:06:05:12:04:51:SJ cbx_altpll 2020:06:05:12:04:51:SJ cbx_altsyncram 2020:06:05:12:04:51:SJ cbx_arriav 2020:06:05:12:04:49:SJ cbx_cyclone 2020:06:05:12:04:51:SJ cbx_cycloneii 2020:06:05:12:04:51:SJ cbx_lpm_add_sub 2020:06:05:12:04:51:SJ cbx_lpm_compare 2020:06:05:12:04:51:SJ cbx_lpm_counter 2020:06:05:12:04:51:SJ cbx_lpm_decode 2020:06:05:12:04:51:SJ cbx_lpm_mux 2020:06:05:12:04:51:SJ cbx_lpm_shiftreg 2020:06:05:12:04:51:SJ cbx_maxii 2020:06:05:12:04:51:SJ cbx_mgl 2020:06:05:12:11:10:SJ cbx_nadder 2020:06:05:12:04:51:SJ cbx_stratix 2020:06:05:12:04:51:SJ cbx_stratixii 2020:06:05:12:04:51:SJ cbx_stratixiii 2020:06:05:12:04:51:SJ cbx_stratixv 2020:06:05:12:04:51:SJ cbx_util_mgl 2020:06:05:12:04:51:SJ  VERSION_END
//CBXI_INSTANCE_NAME="spin_sensor_top_axi_ad9361_if_axi_ad9361_axi_ad9361_lvds_if_i_dev_if_axi_ad9361_lvds_if_c5_i_axi_ad9361_lvds_if_c5_altlvds_rx_i_altlvds_rx"
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




//altclkctrl CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" CLOCK_TYPE="Global Clock" DEVICE_FAMILY="Cyclone V" inclk outclk
//VERSION_BEGIN 20.1 cbx_altclkbuf 2020:06:05:12:04:51:SJ cbx_cycloneii 2020:06:05:12:04:51:SJ cbx_lpm_add_sub 2020:06:05:12:04:51:SJ cbx_lpm_compare 2020:06:05:12:04:51:SJ cbx_lpm_decode 2020:06:05:12:04:51:SJ cbx_lpm_mux 2020:06:05:12:04:51:SJ cbx_mgl 2020:06:05:12:11:10:SJ cbx_nadder 2020:06:05:12:04:51:SJ cbx_stratix 2020:06:05:12:04:51:SJ cbx_stratixii 2020:06:05:12:04:51:SJ cbx_stratixiii 2020:06:05:12:04:51:SJ cbx_stratixv 2020:06:05:12:04:51:SJ  VERSION_END

//synthesis_resources = cyclonev_clkena 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  axi_ad9361_lvds_if_c5_rx_altclkctrl
	( 
	inclk,
	outclk) /* synthesis synthesis_clearbox=1 */;
	input   [3:0]  inclk;
	output   outclk;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   [3:0]  inclk;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  wire_sd17_outclk;
	wire [1:0]  clkselect;
	wire ena;

	cyclonev_clkena   sd17
	( 
	.ena(ena),
	.enaout(),
	.inclk(inclk[0]),
	.outclk(wire_sd17_outclk));
	defparam
		sd17.clock_type = "Global Clock",
		sd17.ena_register_mode = "always enabled",
		sd17.lpm_type = "cyclonev_clkena";
	assign
		clkselect = {2{1'b0}},
		ena = 1'b1,
		outclk = wire_sd17_outclk;
endmodule //axi_ad9361_lvds_if_c5_rx_altclkctrl

//synthesis_resources = cyclonev_clkena 1 cyclonev_ir_fifo_userdes 14 generic_pll 3 reg 28 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"AUTO_SHIFT_REGISTER_RECOGNITION=OFF;REMOVE_DUPLICATE_REGISTERS=OFF;{-to pll_sclk} PLL_COMPENSATION_MODE=LVDS;-name SOURCE_MULTICYCLE 4 -from lvds_rx_deserialiser_rx_out_wire* -to rxreg*;-name SOURCE_MULTICYCLE_HOLD 4 -from lvds_rx_deserialiser_rx_out_wire* -to rxreg*"} *)
module  axi_ad9361_lvds_if_c5_rx_lvds_rx
	( 
	pll_areset,
	rx_in,
	rx_inclock,
	rx_locked,
	rx_out,
	rx_outclock) /* synthesis synthesis_clearbox=1 */;
	input   pll_areset;
	input   [6:0]  rx_in;
	input   rx_inclock;
	output   rx_locked;
	output   [27:0]  rx_out;
	output   rx_outclock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   pll_areset;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  wire_rx_outclock_buf_outclk;
	wire  wire_sd1_bslipout;
	wire  [9:0]   wire_sd10_rxout;
	wire  wire_sd11_bslipout;
	wire  [9:0]   wire_sd12_rxout;
	wire  wire_sd13_bslipout;
	wire  [9:0]   wire_sd14_rxout;
	wire  [9:0]   wire_sd2_rxout;
	wire  wire_sd3_bslipout;
	wire  [9:0]   wire_sd4_rxout;
	wire  wire_sd5_bslipout;
	wire  [9:0]   wire_sd6_rxout;
	wire  wire_sd7_bslipout;
	wire  [9:0]   wire_sd8_rxout;
	wire  wire_sd9_bslipout;
	(* ALTERA_ATTRIBUTE = {"PRESERVE_REGISTER=ON"} *)
	reg	[27:0]	rxreg;
	wire  wire_pll_ena_outclk;
	wire  wire_pll_fclk_outclk;
	wire  wire_pll_sclk_fboutclk;
	wire  wire_pll_sclk_locked;
	wire  wire_pll_sclk_outclk;
	wire  [27:0]  lvds_rx_deserialiser_rx_out_wire;
	wire  outclock;
	wire  pll_locked_out;

	axi_ad9361_lvds_if_c5_rx_altclkctrl   rx_outclock_buf
	( 
	.inclk({{3{1'b0}}, wire_pll_sclk_outclk}),
	.outclk(wire_rx_outclock_buf_outclk));
	cyclonev_ir_fifo_userdes   sd1
	( 
	.bslipmax(),
	.bslipout(wire_sd1_bslipout),
	.dinfiforx({{1{1'b0}}, rx_in[0]}),
	.dout(),
	.loaden(wire_pll_ena_outclk),
	.lvdsmodeen(),
	.lvdstxsel(),
	.rstn(pll_areset),
	.rxout(),
	.scanout(),
	.txout(),
	.writeclk(wire_pll_fclk_outclk)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.bslipctl(1'b0),
	.bslipin(1'b0),
	.dynfifomode({3{1'b0}}),
	.readclk(1'b0),
	.readenable(1'b0),
	.regscan(1'b0),
	.regscanovrd(1'b0),
	.scanin(1'b0),
	.tstclk(1'b0),
	.txin({10{1'b0}}),
	.writeenable(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.observablefout1(),
	.observablefout2(),
	.observablefout3(),
	.observablefout4(),
	.observableout(),
	.observablewaddrcnt()
	// synopsys translate_on
	);
	defparam
		sd1.a_rb_bslipcfg = 4,
		sd1.a_rb_fifo_mode = "bslip_mode",
		sd1.lpm_type = "cyclonev_ir_fifo_userdes";
	cyclonev_ir_fifo_userdes   sd10
	( 
	.bslipin(wire_sd9_bslipout),
	.bslipmax(),
	.bslipout(),
	.dout(),
	.loaden(wire_pll_ena_outclk),
	.lvdsmodeen(),
	.lvdstxsel(),
	.rstn(pll_areset),
	.rxout(wire_sd10_rxout),
	.scanout(),
	.txout(),
	.writeclk(wire_pll_fclk_outclk)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.bslipctl(1'b0),
	.dinfiforx({2{1'b0}}),
	.dynfifomode({3{1'b0}}),
	.readclk(1'b0),
	.readenable(1'b0),
	.regscan(1'b0),
	.regscanovrd(1'b0),
	.scanin(1'b0),
	.tstclk(1'b0),
	.txin({10{1'b0}}),
	.writeenable(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.observablefout1(),
	.observablefout2(),
	.observablefout3(),
	.observablefout4(),
	.observableout(),
	.observablewaddrcnt()
	// synopsys translate_on
	);
	defparam
		sd10.a_rb_data_width = 4,
		sd10.a_rb_fifo_mode = "deserializer_mode",
		sd10.lpm_type = "cyclonev_ir_fifo_userdes";
	cyclonev_ir_fifo_userdes   sd11
	( 
	.bslipmax(),
	.bslipout(wire_sd11_bslipout),
	.dinfiforx({{1{1'b0}}, rx_in[5]}),
	.dout(),
	.loaden(wire_pll_ena_outclk),
	.lvdsmodeen(),
	.lvdstxsel(),
	.rstn(pll_areset),
	.rxout(),
	.scanout(),
	.txout(),
	.writeclk(wire_pll_fclk_outclk)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.bslipctl(1'b0),
	.bslipin(1'b0),
	.dynfifomode({3{1'b0}}),
	.readclk(1'b0),
	.readenable(1'b0),
	.regscan(1'b0),
	.regscanovrd(1'b0),
	.scanin(1'b0),
	.tstclk(1'b0),
	.txin({10{1'b0}}),
	.writeenable(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.observablefout1(),
	.observablefout2(),
	.observablefout3(),
	.observablefout4(),
	.observableout(),
	.observablewaddrcnt()
	// synopsys translate_on
	);
	defparam
		sd11.a_rb_bslipcfg = 4,
		sd11.a_rb_fifo_mode = "bslip_mode",
		sd11.lpm_type = "cyclonev_ir_fifo_userdes";
	cyclonev_ir_fifo_userdes   sd12
	( 
	.bslipin(wire_sd11_bslipout),
	.bslipmax(),
	.bslipout(),
	.dout(),
	.loaden(wire_pll_ena_outclk),
	.lvdsmodeen(),
	.lvdstxsel(),
	.rstn(pll_areset),
	.rxout(wire_sd12_rxout),
	.scanout(),
	.txout(),
	.writeclk(wire_pll_fclk_outclk)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.bslipctl(1'b0),
	.dinfiforx({2{1'b0}}),
	.dynfifomode({3{1'b0}}),
	.readclk(1'b0),
	.readenable(1'b0),
	.regscan(1'b0),
	.regscanovrd(1'b0),
	.scanin(1'b0),
	.tstclk(1'b0),
	.txin({10{1'b0}}),
	.writeenable(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.observablefout1(),
	.observablefout2(),
	.observablefout3(),
	.observablefout4(),
	.observableout(),
	.observablewaddrcnt()
	// synopsys translate_on
	);
	defparam
		sd12.a_rb_data_width = 4,
		sd12.a_rb_fifo_mode = "deserializer_mode",
		sd12.lpm_type = "cyclonev_ir_fifo_userdes";
	cyclonev_ir_fifo_userdes   sd13
	( 
	.bslipmax(),
	.bslipout(wire_sd13_bslipout),
	.dinfiforx({{1{1'b0}}, rx_in[6]}),
	.dout(),
	.loaden(wire_pll_ena_outclk),
	.lvdsmodeen(),
	.lvdstxsel(),
	.rstn(pll_areset),
	.rxout(),
	.scanout(),
	.txout(),
	.writeclk(wire_pll_fclk_outclk)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.bslipctl(1'b0),
	.bslipin(1'b0),
	.dynfifomode({3{1'b0}}),
	.readclk(1'b0),
	.readenable(1'b0),
	.regscan(1'b0),
	.regscanovrd(1'b0),
	.scanin(1'b0),
	.tstclk(1'b0),
	.txin({10{1'b0}}),
	.writeenable(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.observablefout1(),
	.observablefout2(),
	.observablefout3(),
	.observablefout4(),
	.observableout(),
	.observablewaddrcnt()
	// synopsys translate_on
	);
	defparam
		sd13.a_rb_bslipcfg = 4,
		sd13.a_rb_fifo_mode = "bslip_mode",
		sd13.lpm_type = "cyclonev_ir_fifo_userdes";
	cyclonev_ir_fifo_userdes   sd14
	( 
	.bslipin(wire_sd13_bslipout),
	.bslipmax(),
	.bslipout(),
	.dout(),
	.loaden(wire_pll_ena_outclk),
	.lvdsmodeen(),
	.lvdstxsel(),
	.rstn(pll_areset),
	.rxout(wire_sd14_rxout),
	.scanout(),
	.txout(),
	.writeclk(wire_pll_fclk_outclk)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.bslipctl(1'b0),
	.dinfiforx({2{1'b0}}),
	.dynfifomode({3{1'b0}}),
	.readclk(1'b0),
	.readenable(1'b0),
	.regscan(1'b0),
	.regscanovrd(1'b0),
	.scanin(1'b0),
	.tstclk(1'b0),
	.txin({10{1'b0}}),
	.writeenable(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.observablefout1(),
	.observablefout2(),
	.observablefout3(),
	.observablefout4(),
	.observableout(),
	.observablewaddrcnt()
	// synopsys translate_on
	);
	defparam
		sd14.a_rb_data_width = 4,
		sd14.a_rb_fifo_mode = "deserializer_mode",
		sd14.lpm_type = "cyclonev_ir_fifo_userdes";
	cyclonev_ir_fifo_userdes   sd2
	( 
	.bslipin(wire_sd1_bslipout),
	.bslipmax(),
	.bslipout(),
	.dout(),
	.loaden(wire_pll_ena_outclk),
	.lvdsmodeen(),
	.lvdstxsel(),
	.rstn(pll_areset),
	.rxout(wire_sd2_rxout),
	.scanout(),
	.txout(),
	.writeclk(wire_pll_fclk_outclk)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.bslipctl(1'b0),
	.dinfiforx({2{1'b0}}),
	.dynfifomode({3{1'b0}}),
	.readclk(1'b0),
	.readenable(1'b0),
	.regscan(1'b0),
	.regscanovrd(1'b0),
	.scanin(1'b0),
	.tstclk(1'b0),
	.txin({10{1'b0}}),
	.writeenable(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.observablefout1(),
	.observablefout2(),
	.observablefout3(),
	.observablefout4(),
	.observableout(),
	.observablewaddrcnt()
	// synopsys translate_on
	);
	defparam
		sd2.a_rb_data_width = 4,
		sd2.a_rb_fifo_mode = "deserializer_mode",
		sd2.lpm_type = "cyclonev_ir_fifo_userdes";
	cyclonev_ir_fifo_userdes   sd3
	( 
	.bslipmax(),
	.bslipout(wire_sd3_bslipout),
	.dinfiforx({{1{1'b0}}, rx_in[1]}),
	.dout(),
	.loaden(wire_pll_ena_outclk),
	.lvdsmodeen(),
	.lvdstxsel(),
	.rstn(pll_areset),
	.rxout(),
	.scanout(),
	.txout(),
	.writeclk(wire_pll_fclk_outclk)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.bslipctl(1'b0),
	.bslipin(1'b0),
	.dynfifomode({3{1'b0}}),
	.readclk(1'b0),
	.readenable(1'b0),
	.regscan(1'b0),
	.regscanovrd(1'b0),
	.scanin(1'b0),
	.tstclk(1'b0),
	.txin({10{1'b0}}),
	.writeenable(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.observablefout1(),
	.observablefout2(),
	.observablefout3(),
	.observablefout4(),
	.observableout(),
	.observablewaddrcnt()
	// synopsys translate_on
	);
	defparam
		sd3.a_rb_bslipcfg = 4,
		sd3.a_rb_fifo_mode = "bslip_mode",
		sd3.lpm_type = "cyclonev_ir_fifo_userdes";
	cyclonev_ir_fifo_userdes   sd4
	( 
	.bslipin(wire_sd3_bslipout),
	.bslipmax(),
	.bslipout(),
	.dout(),
	.loaden(wire_pll_ena_outclk),
	.lvdsmodeen(),
	.lvdstxsel(),
	.rstn(pll_areset),
	.rxout(wire_sd4_rxout),
	.scanout(),
	.txout(),
	.writeclk(wire_pll_fclk_outclk)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.bslipctl(1'b0),
	.dinfiforx({2{1'b0}}),
	.dynfifomode({3{1'b0}}),
	.readclk(1'b0),
	.readenable(1'b0),
	.regscan(1'b0),
	.regscanovrd(1'b0),
	.scanin(1'b0),
	.tstclk(1'b0),
	.txin({10{1'b0}}),
	.writeenable(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.observablefout1(),
	.observablefout2(),
	.observablefout3(),
	.observablefout4(),
	.observableout(),
	.observablewaddrcnt()
	// synopsys translate_on
	);
	defparam
		sd4.a_rb_data_width = 4,
		sd4.a_rb_fifo_mode = "deserializer_mode",
		sd4.lpm_type = "cyclonev_ir_fifo_userdes";
	cyclonev_ir_fifo_userdes   sd5
	( 
	.bslipmax(),
	.bslipout(wire_sd5_bslipout),
	.dinfiforx({{1{1'b0}}, rx_in[2]}),
	.dout(),
	.loaden(wire_pll_ena_outclk),
	.lvdsmodeen(),
	.lvdstxsel(),
	.rstn(pll_areset),
	.rxout(),
	.scanout(),
	.txout(),
	.writeclk(wire_pll_fclk_outclk)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.bslipctl(1'b0),
	.bslipin(1'b0),
	.dynfifomode({3{1'b0}}),
	.readclk(1'b0),
	.readenable(1'b0),
	.regscan(1'b0),
	.regscanovrd(1'b0),
	.scanin(1'b0),
	.tstclk(1'b0),
	.txin({10{1'b0}}),
	.writeenable(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.observablefout1(),
	.observablefout2(),
	.observablefout3(),
	.observablefout4(),
	.observableout(),
	.observablewaddrcnt()
	// synopsys translate_on
	);
	defparam
		sd5.a_rb_bslipcfg = 4,
		sd5.a_rb_fifo_mode = "bslip_mode",
		sd5.lpm_type = "cyclonev_ir_fifo_userdes";
	cyclonev_ir_fifo_userdes   sd6
	( 
	.bslipin(wire_sd5_bslipout),
	.bslipmax(),
	.bslipout(),
	.dout(),
	.loaden(wire_pll_ena_outclk),
	.lvdsmodeen(),
	.lvdstxsel(),
	.rstn(pll_areset),
	.rxout(wire_sd6_rxout),
	.scanout(),
	.txout(),
	.writeclk(wire_pll_fclk_outclk)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.bslipctl(1'b0),
	.dinfiforx({2{1'b0}}),
	.dynfifomode({3{1'b0}}),
	.readclk(1'b0),
	.readenable(1'b0),
	.regscan(1'b0),
	.regscanovrd(1'b0),
	.scanin(1'b0),
	.tstclk(1'b0),
	.txin({10{1'b0}}),
	.writeenable(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.observablefout1(),
	.observablefout2(),
	.observablefout3(),
	.observablefout4(),
	.observableout(),
	.observablewaddrcnt()
	// synopsys translate_on
	);
	defparam
		sd6.a_rb_data_width = 4,
		sd6.a_rb_fifo_mode = "deserializer_mode",
		sd6.lpm_type = "cyclonev_ir_fifo_userdes";
	cyclonev_ir_fifo_userdes   sd7
	( 
	.bslipmax(),
	.bslipout(wire_sd7_bslipout),
	.dinfiforx({{1{1'b0}}, rx_in[3]}),
	.dout(),
	.loaden(wire_pll_ena_outclk),
	.lvdsmodeen(),
	.lvdstxsel(),
	.rstn(pll_areset),
	.rxout(),
	.scanout(),
	.txout(),
	.writeclk(wire_pll_fclk_outclk)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.bslipctl(1'b0),
	.bslipin(1'b0),
	.dynfifomode({3{1'b0}}),
	.readclk(1'b0),
	.readenable(1'b0),
	.regscan(1'b0),
	.regscanovrd(1'b0),
	.scanin(1'b0),
	.tstclk(1'b0),
	.txin({10{1'b0}}),
	.writeenable(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.observablefout1(),
	.observablefout2(),
	.observablefout3(),
	.observablefout4(),
	.observableout(),
	.observablewaddrcnt()
	// synopsys translate_on
	);
	defparam
		sd7.a_rb_bslipcfg = 4,
		sd7.a_rb_fifo_mode = "bslip_mode",
		sd7.lpm_type = "cyclonev_ir_fifo_userdes";
	cyclonev_ir_fifo_userdes   sd8
	( 
	.bslipin(wire_sd7_bslipout),
	.bslipmax(),
	.bslipout(),
	.dout(),
	.loaden(wire_pll_ena_outclk),
	.lvdsmodeen(),
	.lvdstxsel(),
	.rstn(pll_areset),
	.rxout(wire_sd8_rxout),
	.scanout(),
	.txout(),
	.writeclk(wire_pll_fclk_outclk)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.bslipctl(1'b0),
	.dinfiforx({2{1'b0}}),
	.dynfifomode({3{1'b0}}),
	.readclk(1'b0),
	.readenable(1'b0),
	.regscan(1'b0),
	.regscanovrd(1'b0),
	.scanin(1'b0),
	.tstclk(1'b0),
	.txin({10{1'b0}}),
	.writeenable(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.observablefout1(),
	.observablefout2(),
	.observablefout3(),
	.observablefout4(),
	.observableout(),
	.observablewaddrcnt()
	// synopsys translate_on
	);
	defparam
		sd8.a_rb_data_width = 4,
		sd8.a_rb_fifo_mode = "deserializer_mode",
		sd8.lpm_type = "cyclonev_ir_fifo_userdes";
	cyclonev_ir_fifo_userdes   sd9
	( 
	.bslipmax(),
	.bslipout(wire_sd9_bslipout),
	.dinfiforx({{1{1'b0}}, rx_in[4]}),
	.dout(),
	.loaden(wire_pll_ena_outclk),
	.lvdsmodeen(),
	.lvdstxsel(),
	.rstn(pll_areset),
	.rxout(),
	.scanout(),
	.txout(),
	.writeclk(wire_pll_fclk_outclk)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.bslipctl(1'b0),
	.bslipin(1'b0),
	.dynfifomode({3{1'b0}}),
	.readclk(1'b0),
	.readenable(1'b0),
	.regscan(1'b0),
	.regscanovrd(1'b0),
	.scanin(1'b0),
	.tstclk(1'b0),
	.txin({10{1'b0}}),
	.writeenable(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.observablefout1(),
	.observablefout2(),
	.observablefout3(),
	.observablefout4(),
	.observableout(),
	.observablewaddrcnt()
	// synopsys translate_on
	);
	defparam
		sd9.a_rb_bslipcfg = 4,
		sd9.a_rb_fifo_mode = "bslip_mode",
		sd9.lpm_type = "cyclonev_ir_fifo_userdes";
	// synopsys translate_off
	initial
		rxreg = 0;
	// synopsys translate_on
	always @ ( posedge outclock)
		  rxreg <= lvds_rx_deserialiser_rx_out_wire;
	generic_pll   pll_ena
	( 
	.fbclk(wire_pll_sclk_fboutclk),
	.fboutclk(),
	.locked(),
	.outclk(wire_pll_ena_outclk),
	.refclk(rx_inclock),
	.rst(pll_areset));
	defparam
		pll_ena.duty_cycle = 25,
		pll_ena.output_clock_frequency = "125.000000 MHz",
		pll_ena.phase_shift = "4000 ps",
		pll_ena.reference_clock_frequency = "250.000000 MHz",
		pll_ena.lpm_type = "generic_pll";
	generic_pll   pll_fclk
	( 
	.fbclk(wire_pll_sclk_fboutclk),
	.fboutclk(),
	.locked(),
	.outclk(wire_pll_fclk_outclk),
	.refclk(rx_inclock),
	.rst(pll_areset));
	defparam
		pll_fclk.output_clock_frequency = "500.000000 MHz",
		pll_fclk.phase_shift = "1000 ps",
		pll_fclk.reference_clock_frequency = "250.000000 MHz",
		pll_fclk.lpm_type = "generic_pll";
	generic_pll   pll_sclk
	( 
	.fbclk(wire_pll_sclk_fboutclk),
	.fboutclk(wire_pll_sclk_fboutclk),
	.locked(wire_pll_sclk_locked),
	.outclk(wire_pll_sclk_outclk),
	.refclk(rx_inclock),
	.rst(pll_areset));
	defparam
		pll_sclk.output_clock_frequency = "125.000000 MHz",
		pll_sclk.phase_shift = "7000 ps",
		pll_sclk.reference_clock_frequency = "250.000000 MHz",
		pll_sclk.lpm_type = "generic_pll";
	assign
		lvds_rx_deserialiser_rx_out_wire = {wire_sd14_rxout[3:0], wire_sd12_rxout[3:0], wire_sd10_rxout[3:0], wire_sd8_rxout[3:0], wire_sd6_rxout[3:0], wire_sd4_rxout[3:0], wire_sd2_rxout[3:0]},
		outclock = wire_rx_outclock_buf_outclk,
		pll_locked_out = wire_pll_sclk_locked,
		rx_locked = pll_locked_out,
		rx_out = rxreg,
		rx_outclock = outclock;
endmodule //axi_ad9361_lvds_if_c5_rx_lvds_rx
//VALID FILE
