`timescale 1ns/100ps

//import sensor_reader_pkg::*;

module spin_sensor_top #(
	parameter  FPGA_TECHNOLOGY= "CYCLONE5"
	)

(

	 input           clk_in,
	 
	input           rx_clk_p_in,
	input           rx_clk_n_in,
	input           frame_p_in,
	input           frame_n_in,
	input   [5:0]  data_p_in,
	input   [5:0]  data_n_in,
	
	// ensm control

  output          enable,
  output          txnrx,
	
	//dac
	 input           dac_sync_in,
  output          dac_sync_out,

  // tdd sync

  input           tdd_sync,
  output          tdd_sync_cntr,
  
   // axi interface

  input           s_axi_aclk,
  input           s_axi_aresetn,
  input           s_axi_awvalid,
  input   [15:0]  s_axi_awaddr,
  input   [ 2:0]  s_axi_awprot,
  output          s_axi_awready,
  input           s_axi_wvalid,
  input   [31:0]  s_axi_wdata,
  input   [ 3:0]  s_axi_wstrb,
  output          s_axi_wready,
  output          s_axi_bvalid,
  output  [ 1:0]  s_axi_bresp,
  input           s_axi_bready,
  input           s_axi_arvalid,
  input   [15:0]  s_axi_araddr,
  input   [ 2:0]  s_axi_arprot,
  output          s_axi_arready,
  output          s_axi_rvalid,
  output  [31:0]  s_axi_rdata,
  output  [ 1:0]  s_axi_rresp,
  input           s_axi_rready,
  
  output          l_clk_out,
  output          rst_out,
  
  // gpio

 // input           up_enable,
 // input           up_txnrx,
//  input   [31:0]  up_dac_gpio_in,
 // output  [31:0]  up_dac_gpio_out,
 // input   [31:0]  up_adc_gpio_in,
 // output  [31:0]  up_adc_gpio_out,
	
	
	output   [15:0]  re_data_out,
	output   [15:0]  im_data_out
	);
	
//	wire          enable='d0;
//	wire				txnrx='d0;
	
//	wire 		dac_sync_in='d0;
	wire		 dac_dudf='d0;
	wire 			adc_dovf='d0;
	

	
	reg   [15:0]  adc_data_i_out;
	reg   [15:0]  adc_data_q_out;
	
		
	wire          l_clk;
 	wire          rst;
	
	wire          adc_enable_i0;
  wire          adc_valid_i0;
  wire  [15:0]  adc_data_i0;
  wire          adc_enable_q0;
  wire          adc_valid_q0;
  wire  [15:0]  adc_data_q0;

	
	 // internal signals

  reg   [15:0]  dac_data_i0=16'h0000;
  
   // gpio

  wire           up_enable;
  wire           up_txnrx;
  wire   [31:0]  up_dac_gpio_in;
  wire  [31:0]  up_dac_gpio_out;
  wire   [31:0]  up_adc_gpio_in;
  wire  [31:0]  up_adc_gpio_out;
	
	
	localparam CYCLONE5 = 101;
	
	
	
	
	axi_ad9361 #(
		.CMOS_OR_LVDS_N (0),
		.MODE_1R1T (0),
		.ADC_DATAPATH_DISABLE (0),
		.FPGA_TECHNOLOGY(CYCLONE5),
		.TDD_DISABLE (0))
	if_axi_ad9361(
		.clk(clk_in),
		.l_clk(l_clk_out),
		.rst(rst_out),
		
		.enable (enable),
		.txnrx(txnrx),
		
		.dac_sync_in(dac_sync_in),
	
		.rx_clk_in_p(rx_clk_p_in),
		.rx_clk_in_n(rx_clk_n_in),
		.rx_frame_in_p(frame_p_in),
		.rx_frame_in_n(frame_n_in),
		.rx_data_in_p(data_p_in),
		.rx_data_in_n(data_n_in),
			
		.s_axi_aclk(s_axi_aclk),
		.s_axi_aresetn(s_axi_aresetn),
		.s_axi_awvalid(s_axi_awvalid),
		.s_axi_awaddr(s_axi_awaddr),
		.s_axi_awprot(s_axi_awprot),
		.s_axi_awready(s_axi_awready),
		.s_axi_wvalid(s_axi_wvalid),
		.s_axi_wdata(s_axi_wdata),
		.s_axi_wstrb(s_axi_wstrb),
		.s_axi_wready(s_axi_wready),
		.s_axi_bvalid(s_axi_bvalid),
		.s_axi_bresp(s_axi_bresp),
		.s_axi_bready(s_axi_bready),
		.s_axi_arvalid(s_axi_arvalid),
		.s_axi_araddr(s_axi_aradd),
		.s_axi_arprot(s_axi_arprot),
		.s_axi_arready(s_axi_arready),
		.s_axi_rvalid(s_axi_rvalid),
		.s_axi_rdata(s_axi_rdata),
		.s_axi_rresp(s_axi_rresp),
		.s_axi_rready(s_axi_rready),
		
		.adc_dovf(adc_dovf),
		.dac_dunf(dac_dunf),
		
		.adc_enable_i0(adc_enable_i0),
		.adc_valid_i0(adc_valid_i0),
		.adc_data_i0(adc_data_i0),
		.adc_enable_q0(adc_enable_q0),
      .adc_valid_q0(adc_valid_q0),
		.adc_data_q0(adc_data_q0),
		
		
		.up_enable(up_enable),
		.up_txnrx(up_txnrx),
		.up_dac_gpio_in(up_dac_gpio_in),
		.up_dac_gpio_out(up_dac_gpio_out),
		.up_adc_gpio_in(up_adc_gpio_in),
		.up_adc_gpio_out(up_adc_gpio_out)
		);
		
		
		
		
		
		always @(posedge l_clk_out) begin
			if(adc_valid_i0==1'b1) begin
				adc_data_i_out<=adc_data_i0;
				
			end else if(adc_valid_q0==1'b1) begin
				adc_data_q_out<=adc_data_q0;
			end
		end
		
		assign re_data_out=adc_data_i_out;
		assign im_data_out=adc_data_q_out;

  endmodule
		
	