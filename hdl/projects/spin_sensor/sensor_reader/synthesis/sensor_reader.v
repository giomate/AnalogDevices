// sensor_reader.v

// Generated using ACDS version 20.1 711

`timescale 1 ps / 1 ps
module sensor_reader (
		input  wire  clk_clk,       //   clk.clk
		input  wire  reset_reset_n  // reset.reset_n
	);

	wire    spin_sensor_receiver_0_clk_out_clk; // spin_sensor_receiver_0:l_clk_out -> spin_sensor_receiver_0:clk_in
	wire    rst_controller_reset_out_reset;     // rst_controller:reset_out -> spin_sensor_receiver_0:s_axi_aresetn

	spin_sensor_top #(
		.FPGA_TECHNOLOGY ("CYCLONE5")
	) spin_sensor_receiver_0 (
		.s_axi_awvalid (),                                   // altera_axi4lite_slave.awvalid
		.s_axi_awaddr  (),                                   //                      .awaddr
		.s_axi_awprot  (),                                   //                      .awprot
		.s_axi_awready (),                                   //                      .awready
		.s_axi_wvalid  (),                                   //                      .wvalid
		.s_axi_wdata   (),                                   //                      .wdata
		.s_axi_wstrb   (),                                   //                      .wstrb
		.s_axi_wready  (),                                   //                      .wready
		.s_axi_bvalid  (),                                   //                      .bvalid
		.s_axi_bresp   (),                                   //                      .bresp
		.s_axi_bready  (),                                   //                      .bready
		.s_axi_arvalid (),                                   //                      .arvalid
		.s_axi_araddr  (),                                   //                      .araddr
		.s_axi_arprot  (),                                   //                      .arprot
		.s_axi_arready (),                                   //                      .arready
		.s_axi_rvalid  (),                                   //                      .rvalid
		.s_axi_rdata   (),                                   //                      .rdata
		.s_axi_rresp   (),                                   //                      .rresp
		.s_axi_rready  (),                                   //                      .rready
		.s_axi_aclk    (clk_clk),                            //           s_axi_clock.clk
		.s_axi_aresetn (~rst_controller_reset_out_reset),    //           s_axi_reset.reset_n
		.rx_clk_p_in   (),                                   //               data_if.rx_clk_p
		.frame_p_in    (),                                   //                      .frame_p
		.data_p_in     (),                                   //                      .data_p
		.data_n_in     (),                                   //                      .data_n
		.frame_n_in    (),                                   //                      .frame_n
		.rx_clk_n_in   (),                                   //                      .rx_clk_n
		.re_data_out   (),                                   //           iq_data_out.real
		.im_data_out   (),                                   //                      .im
		.l_clk_out     (spin_sensor_receiver_0_clk_out_clk), //               clk_out.clk
		.rst_out       (),                                   //          reset_source.reset
		.clk_in        (spin_sensor_receiver_0_clk_out_clk)  //          device_clock.clk
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                 // reset_in0.reset
		.clk            (clk_clk),                        //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

endmodule
