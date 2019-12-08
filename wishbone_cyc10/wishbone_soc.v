//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2014 leishangwen@163.com                       ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
// Module:  openriscv_min_sopc
// File:    openriscv_min_sopc.v
// Author:  Lei Silei, shyoshyo
// E-mail:  leishangwen@163.com, shyoshyo@qq.com
// Description: 基于OpenMIPS处理器的一个简单SOPC，用于验证具备了
//              wishbone总线接口的openmips，该SOPC包含openmips、
//              wb_conmax、GPIO controller、flash controller，uart 
//              controller，以及用来仿真flash的模块flashmem，在其中
//              存储指令，用来仿真外部ram的模块datamem，在其中存储
//              数据，并且具有wishbone总线接口    
// Revision: 1.0
//////////////////////////////////////////////////////////////////////

`include "cpu/defines.v"

module wishbone_soc(
	input wire clk,
	input wire rst_n,

	// Flash
	/*
	output wire[22:0] flash_addr,
	inout wire[15:0] flash_data,
	output wire[0:7] flash_signal,
*/
	`ifndef Simulation
	output wire sdr_clk_o,
   output wire sdr_cs_n_o,
   output wire sdr_cke_o,
   output wire sdr_ras_n_o,
   output wire sdr_cas_n_o,
   output wire sdr_we_n_o,
   output wire[1:0] sdr_dqm_o,
   output wire[1:0] sdr_ba_o,
   output wire[11:0] sdr_addr_o,
   inout wire[15:0] sdr_dq_io,
	`endif
	// UART
	input wire uart_rxd_i,
	output wire uart_txd_o,

	output wire [7:0]led
);

	wire [12:0] sdr_addr_13_to_12;
	assign sdr_addr_o = sdr_addr_13_to_12[11:0];
	// CPU 时钟
	wire cpu_clk;
	wire lock;
	wire reset_n;
	// wishbone 时钟
	wire wishbone_clk;
	assign reset_n = lock & rst_n;
	assign sdr_clk_o = wishbone_clk;
	
	ip_pll ip_pll0(
		.areset(!rst_n),
		.inclk0(clk),
		.c0(wishbone_clk), //30Mhz
		.c1(cpu_clk),		 //10Mhz		
		.locked(lock)
	);
	
	wire[31:0] pc_o;

	wire timer_int;
	wire software_int;
	wire uart_int;

	// dwishbone
	wire[`WishboneDataBus] m0_data_i;
	wire[`WishboneDataBus] m0_data_o;
	wire[`WishboneAddrBus] m0_addr_i;
	wire[`PhyAddrBus] m0_addr_phy_i;
	wire[`WishboneSelBus]  m0_sel_i;
	wire       m0_we_i;
	wire       m0_cyc_i;
	wire       m0_stb_i;
	wire       m0_ack_o;

	// iwishbone
	wire[`WishboneDataBus] m1_data_i;
	wire[`WishboneDataBus] m1_data_o;
	wire[`WishboneAddrBus] m1_addr_i;
	wire[`PhyAddrBus] m1_addr_phy_i;
	wire[`WishboneSelBus]  m1_sel_i;
	wire       m1_we_i;
	wire       m1_cyc_i;
	wire       m1_stb_i;
	wire       m1_ack_o;

	phy_bus_addr_conv phy_bus_addr_conv0(
		.rst_n(reset_n),

		.phy_addr_i(m0_addr_phy_i),
		.bus_addr_o(m0_addr_i)
	);

	phy_bus_addr_conv phy_bus_addr_conv1(
		.rst_n(reset_n),

		.phy_addr_i(m1_addr_phy_i),
		.bus_addr_o(m1_addr_i)
	);

	openriscv openriscv0(
		.clk(cpu_clk),
		.wishbone_clk(wishbone_clk),
		.rst_n(reset_n),

		.iwishbone_data_i(m1_data_o),
		.iwishbone_ack_i(m1_ack_o),
		.iwishbone_addr_o(m1_addr_phy_i),
		.iwishbone_data_o(m1_data_i),
		.iwishbone_we_o(m1_we_i),
		.iwishbone_sel_o(m1_sel_i),
		.iwishbone_stb_o(m1_stb_i),
		.iwishbone_cyc_o(m1_cyc_i), 

		.timer_int_i(timer_int),
		.software_int_i(software_int),
		.external_int_i(1'b0),

		.dwishbone_data_i(m0_data_o),
		.dwishbone_ack_i(m0_ack_o),
		.dwishbone_addr_o(m0_addr_phy_i),
		.dwishbone_data_o(m0_data_i),
		.dwishbone_we_o(m0_we_i),
		.dwishbone_sel_o(m0_sel_i),
		.dwishbone_stb_o(m0_stb_i),
		.dwishbone_cyc_o(m0_cyc_i),

		.pc_o(pc_o)
	);


	wire[31:0] s0_data_i;
	wire[31:0] s0_data_o;
	wire[31:0] s0_addr_o;
	wire[3:0]  s0_sel_o;
	wire       s0_we_o; 
	wire       s0_cyc_o; 
	wire       s0_stb_o;
	wire       s0_ack_i;
	
	wire[31:0] s1_data_i;
	wire[31:0] s1_data_o;
	wire[31:0] s1_addr_o;
	wire[3:0]  s1_sel_o;
	wire       s1_we_o; 
	wire       s1_cyc_o; 
	wire       s1_stb_o;
	wire       s1_ack_i;
	
	wishbone_uart_lite #(
		.ClkFreq(25000000),
	`ifdef Simulation
		.BoundRate(2500000)
	`else
		.BoundRate(115200)
	`endif
	) wishbone_uart_lite0(
		.clk(wishbone_clk),
		.resetn(reset_n),	
		.wishbone_addr_i(s1_addr_o),
		.wishbone_data_i(s1_data_o),
		.wishbone_we_i(s1_we_o),
		.wishbone_sel_i(s1_sel_o),
		.wishbone_stb_i(s1_stb_o),
		.wishbone_cyc_i(s1_cyc_o),
		.wishbone_data_o(s1_data_i),
		.wishbone_ack_o(s1_ack_i),

		.ser_tx(uart_txd_o),
		.ser_rx(uart_rxd_i)
		/*.stx_pad_o(uart_txd_o),
		.srx_pad_i(uart_rxd_i),
		.dsr_pad_i(1'b0), 
		.ri_pad_i(1'b0), 
		.dcd_pad_i(1'b0),
		.rts_pad_o(),
		.dtr_pad_o()*/
	);
	/*
	//连接 bootloader
	wire[31:0] s2_data_i;
	wire[31:0] s2_data_o;
	wire[31:0] s2_addr_o;
	wire[3:0]  s2_sel_o;
	wire       s2_we_o;
	wire       s2_cyc_o;
	wire       s2_stb_o;
	wire       s2_ack_i;

	bootloader bootloader0(
		.clk(wishbone_clk),
		.rst_n(reset_n),

		.wishbone_addr_i(s2_addr_o),
		.wishbone_data_i(s2_data_o),
		.wishbone_we_i(s2_we_o),
		.wishbone_sel_i(s2_sel_o),
		.wishbone_stb_i(s2_stb_o),
		.wishbone_cyc_i(s2_cyc_o),

		.wishbone_data_o(s2_data_i),
		.wishbone_ack_o(s2_ack_i)
	);
	*/

	//连接 config_string, timer
	wire[31:0] s3_data_i;
	wire[31:0] s3_data_o;
	wire[31:0] s3_addr_o;
	wire[3:0]  s3_sel_o;
	wire       s3_we_o; 
	wire       s3_cyc_o; 
	wire       s3_stb_o;
	wire       s3_ack_i;

	config_string_and_timer config_string_and_timer0(
		.clk(wishbone_clk),
		.cpu_clk(cpu_clk),
		.rst_n(reset_n),

		.wishbone_addr_i(s3_addr_o),
		.wishbone_data_i(s3_data_o),
		.wishbone_we_i(s3_we_o),
		.wishbone_sel_i(s3_sel_o),
		.wishbone_stb_i(s3_stb_o),
		.wishbone_cyc_i(s3_cyc_o),

		.wishbone_data_o(s3_data_i),
		.wishbone_ack_o(s3_ack_i),

		.timer_int_o(timer_int),
		.software_int_o(software_int)
	);

	// 连接flash
	wire[31:0] s4_data_i;
	wire[31:0] s4_data_o;
	wire[31:0] s4_addr_o;
	wire[3:0]  s4_sel_o;
	wire       s4_we_o; 
	wire       s4_cyc_o; 
	wire       s4_stb_o;
	wire       s4_ack_i;

	rom_wishbone rom_wishbone0(
		.clk(wishbone_clk),
		.rst_n(reset_n),

		.wishbone_addr_i(s4_addr_o),
		.wishbone_data_i(s4_data_o),
		.wishbone_we_i(s4_we_o),
		.wishbone_sel_i(s4_sel_o),
		.wishbone_stb_i(s4_stb_o),
		.wishbone_cyc_i(s4_cyc_o),
		.wishbone_data_o(s4_data_i),
		.wishbone_ack_o(s4_ack_i)
		
		/*
		.signal(flash_signal),
		.flash_data(flash_data),
		.flash_addr(flash_addr)
		*/
	);
	
	wire[31:0] s5_data_i;
	wire[31:0] s5_data_o;
	wire[31:0] s5_addr_o;
	wire[3:0]  s5_sel_o;
	wire       s5_we_o; 
	wire       s5_cyc_o; 
	wire       s5_stb_o;
	wire       s5_ack_i;
	
	led_wishbone led_wishbone0(
		.clk(wishbone_clk),
		.rst_n(reset_n),

		.wishbone_addr_i(s5_addr_o),
		.wishbone_data_i(s5_data_o),
		.wishbone_we_i(s5_we_o),
		.wishbone_sel_i(s5_sel_o),
		.wishbone_stb_i(s5_stb_o),
		.wishbone_cyc_i(s5_cyc_o),
		.wishbone_data_o(s5_data_i),
		.wishbone_ack_o(s5_ack_i),
		.led(led)
		/*
		.signal(flash_signal),
		.flash_data(flash_data),
		.flash_addr(flash_addr)
		*/
	);

	wire[31:0] s6_data_i;
	wire[31:0] s6_data_o;
	wire[31:0] s6_addr_o;
	wire[3:0]  s6_sel_o;
	wire       s6_we_o; 
	wire       s6_cyc_o; 
	wire       s6_stb_o;
	wire       s6_ack_i;	

	`ifdef Simulation
	ram_wishbone ram_wishbone0(
		.clk(wishbone_clk),		// max. 50 MHz
		.rst_n(reset_n),	
		.wishbone_addr_i(s0_addr_o),
		.wishbone_data_i(s0_data_o),
		.wishbone_we_i(s0_we_o),
		.wishbone_sel_i(s0_sel_o),
		.wishbone_stb_i(s0_stb_o),
		.wishbone_cyc_i(s0_cyc_o),
		.wishbone_data_o(s0_data_i),
		.wishbone_ack_o(s0_ack_i)
		);
	`else
	sdrc_top sdrc_top0(
     .wb_rst_i(~reset_n),
     .wb_clk_i(wishbone_clk),
                    
     .wb_stb_i(s0_stb_o),
     .wb_ack_o(s0_ack_i),
     .wb_addr_i({s0_addr_o[25:2],2'b00}),
     .wb_we_i(s0_we_o),
     .wb_dat_i(s0_data_o),
     .wb_sel_i(s0_sel_o),
     .wb_dat_o(s0_data_i),
     .wb_cyc_i(s0_cyc_o),
     .wb_cti_i(3'b000),
		
		//Interface to SDRAMs
     .sdram_clk(sdr_clk_o),
     .sdram_resetn(reset_n),
     .sdr_cs_n(sdr_cs_n_o),
     .sdr_cke(sdr_cke_o),
     .sdr_ras_n(sdr_ras_n_o),
     .sdr_cas_n(sdr_cas_n_o),
     .sdr_we_n(sdr_we_n_o),
     .sdr_dqm(sdr_dqm_o),
     .sdr_ba(sdr_ba_o),
     .sdr_addr(sdr_addr_13_to_12),
     .sdr_dq(sdr_dq_io),
      
		//
		//Parameters
     .sdr_init_done(sdram_init_done),
     .cfg_req_depth(2'b11),
     .cfg_sdr_en(1'b1),
     .cfg_sdr_mode_reg(13'b0000000110001),
     .cfg_sdr_tras_d(4'b1000),
     .cfg_sdr_trp_d(4'b0010),
     .cfg_sdr_trcd_d(4'b0010),
     .cfg_sdr_cas(3'b100),
     .cfg_sdr_trcar_d(4'b1010),
     .cfg_sdr_twr_d(4'b0010),
     .cfg_sdr_rfsh(12'b011101010011),
	  .cfg_sdr_rfmax(3'b100),
	  .cfg_sdr_width(2'b01),
     .cfg_colbits(2'b00)
  );
	`endif
	// bus arbiter
	wb_conmax_top wb_conmax_top0(
		.clk_i(wishbone_clk),
		.rst_i(~reset_n),

		// Master 0 Interface
		.m0_data_i(m0_data_i),
		.m0_data_o(m0_data_o),
		.m0_addr_i(m0_addr_i),
		.m0_sel_i(m0_sel_i),
		.m0_we_i(m0_we_i), 
		.m0_cyc_i(m0_cyc_i), 
		.m0_stb_i(m0_stb_i),
		.m0_ack_o(m0_ack_o),
		.m0_err_o(), 
		.m0_rty_o(),

		// Master 1 Interface
		.m1_data_i(m1_data_i),
		.m1_data_o(m1_data_o),
		.m1_addr_i(m1_addr_i),
		.m1_sel_i(m1_sel_i),
		.m1_we_i(m1_we_i), 
		.m1_cyc_i(m1_cyc_i), 
		.m1_stb_i(m1_stb_i),
		.m1_ack_o(m1_ack_o), 
		.m1_err_o(), 
		.m1_rty_o(),

		// Master 2 Interface
		.m2_data_i(`ZeroWord),
		.m2_data_o(),
		.m2_addr_i(`ZeroWord),
		.m2_sel_i(4'b0000),
		.m2_we_i(1'b0), 
		.m2_cyc_i(1'b0), 
		.m2_stb_i(1'b0),
		.m2_ack_o(), 
		.m2_err_o(), 
		.m2_rty_o(),

		// Master 3 Interface
		.m3_data_i(`ZeroWord),
		.m3_data_o(),
		.m3_addr_i(`ZeroWord),
		.m3_sel_i(4'b0000),
		.m3_we_i(1'b0), 
		.m3_cyc_i(1'b0), 
		.m3_stb_i(1'b0),
		.m3_ack_o(), 
		.m3_err_o(), 
		.m3_rty_o(),

		// Master 4 Interface
		.m4_data_i(`ZeroWord),
		.m4_data_o(),
		.m4_addr_i(`ZeroWord),
		.m4_sel_i(4'b0000),
		.m4_we_i(1'b0), 
		.m4_cyc_i(1'b0), 
		.m4_stb_i(1'b0),
		.m4_ack_o(), 
		.m4_err_o(), 
		.m4_rty_o(),

		// Master 5 Interface
		.m5_data_i(`ZeroWord),
		.m5_data_o(),
		.m5_addr_i(`ZeroWord),
		.m5_sel_i(4'b0000),
		.m5_we_i(1'b0), 
		.m5_cyc_i(1'b0), 
		.m5_stb_i(1'b0),
		.m5_ack_o(), 
		.m5_err_o(), 
		.m5_rty_o(),

		// Master 6 Interface
		.m6_data_i(`ZeroWord),
		.m6_data_o(),
		.m6_addr_i(`ZeroWord),
		.m6_sel_i(4'b0000),
		.m6_we_i(1'b0), 
		.m6_cyc_i(1'b0), 
		.m6_stb_i(1'b0),
		.m6_ack_o(), 
		.m6_err_o(), 
		.m6_rty_o(),

		// Master 7 Interface
		.m7_data_i(`ZeroWord),
		.m7_data_o(),
		.m7_addr_i(`ZeroWord),
		.m7_sel_i(4'b0000),
		.m7_we_i(1'b0), 
		.m7_cyc_i(1'b0), 
		.m7_stb_i(1'b0),
		.m7_ack_o(), 
		.m7_err_o(), 
		.m7_rty_o(),

		// Slave 0 Interface
		.s0_data_i(s0_data_i),
		.s0_data_o(s0_data_o),
		.s0_addr_o(s0_addr_o),
		.s0_sel_o(s0_sel_o),
		.s0_we_o(s0_we_o), 
		.s0_cyc_o(s0_cyc_o), 
		.s0_stb_o(s0_stb_o),
		.s0_ack_i(s0_ack_i), 
		.s0_err_i(1'b0), 
		.s0_rty_i(1'b0),

		// Slave 1 Interface
		.s1_data_i(s1_data_i),
		.s1_data_o(s1_data_o),
		.s1_addr_o(s1_addr_o),
		.s1_sel_o(s1_sel_o),
		.s1_we_o(s1_we_o),
		.s1_cyc_o(s1_cyc_o),
		.s1_stb_o(s1_stb_o),
		.s1_ack_i(s1_ack_i),
		.s1_err_i(1'b0), 
		.s1_rty_i(1'b0),

		// Slave 2 Interface
		.s2_data_i(),
		.s2_data_o(),
		.s2_addr_o(),
		.s2_sel_o(),
		.s2_we_o(), 
		.s2_cyc_o(), 
		.s2_stb_o(),
		.s2_ack_i(1'b0), 
		.s2_err_i(1'b0), 
		.s2_rty_i(1'b0),


		// Slave 3 Interface
		.s3_data_i(s3_data_i),
		.s3_data_o(s3_data_o),
		.s3_addr_o(s3_addr_o),
		.s3_sel_o(s3_sel_o),
		.s3_we_o(s3_we_o),
		.s3_cyc_o(s3_cyc_o),
		.s3_stb_o(s3_stb_o),
		.s3_ack_i(s3_ack_i),
		.s3_err_i(1'b0), 
		.s3_rty_i(1'b0),

		// Slave 4 Interface
		.s4_data_i(s4_data_i),
		.s4_data_o(s4_data_o),
		.s4_addr_o(s4_addr_o),
		.s4_sel_o(s4_sel_o),
		.s4_we_o(s4_we_o),
		.s4_cyc_o(s4_cyc_o),
		.s4_stb_o(s4_stb_o),
		.s4_ack_i(s4_ack_i),
		.s4_err_i(1'b0), 
		.s4_rty_i(1'b0),

		// Slave 5 Interface
		.s5_data_i(s5_data_i),
		.s5_data_o(s5_data_o),
		.s5_addr_o(s5_addr_o),
		.s5_sel_o(s5_sel_o),
		.s5_we_o(s5_we_o), 
		.s5_cyc_o(s5_cyc_o), 
		.s5_stb_o(s5_stb_o),
		.s5_ack_i(s5_ack_i), 
		.s5_err_i(1'b0), 
		.s5_rty_i(1'b0),

		// Slave 6 Interface
		.s6_data_i(s6_data_i),
		.s6_data_o(s6_data_o),
		.s6_addr_o(s6_addr_o),
		.s6_sel_o(s6_sel_o),
		.s6_we_o(s6_we_o), 
		.s6_cyc_o(s6_cyc_o), 
		.s6_stb_o(s6_stb_o),
		.s6_ack_i(s6_ack_i), 
		.s6_err_i(1'b0), 
		.s6_rty_i(1'b0),

		// Slave 7 Interface
		.s7_data_i(),
		.s7_data_o(),
		.s7_addr_o(),
		.s7_sel_o(),
		.s7_we_o(), 
		.s7_cyc_o(), 
		.s7_stb_o(),
		.s7_ack_i(1'b0), 
		.s7_err_i(1'b0), 
		.s7_rty_i(1'b0),

		// Slave 8 Interface
		.s8_data_i(),
		.s8_data_o(),
		.s8_addr_o(),
		.s8_sel_o(),
		.s8_we_o(), 
		.s8_cyc_o(), 
		.s8_stb_o(),
		.s8_ack_i(1'b0), 
		.s8_err_i(1'b0), 
		.s8_rty_i(1'b0),

		// Slave 9 Interface
		.s9_data_i(),
		.s9_data_o(),
		.s9_addr_o(),
		.s9_sel_o(),
		.s9_we_o(), 
		.s9_cyc_o(), 
		.s9_stb_o(),
		.s9_ack_i(1'b0), 
		.s9_err_i(1'b0), 
		.s9_rty_i(1'b0),

		// Slave 10 Interface
		.s10_data_i(),
		.s10_data_o(),
		.s10_addr_o(),
		.s10_sel_o(),
		.s10_we_o(), 
		.s10_cyc_o(), 
		.s10_stb_o(),
		.s10_ack_i(1'b0), 
		.s10_err_i(1'b0), 
		.s10_rty_i(1'b0),

		// Slave 11 Interface
		.s11_data_i(),
		.s11_data_o(),
		.s11_addr_o(),
		.s11_sel_o(),
		.s11_we_o(), 
		.s11_cyc_o(), 
		.s11_stb_o(),
		.s11_ack_i(1'b0), 
		.s11_err_i(1'b0), 
		.s11_rty_i(1'b0),

		// Slave 12 Interface
		.s12_data_i(),
		.s12_data_o(),
		.s12_addr_o(),
		.s12_sel_o(),
		.s12_we_o(), 
		.s12_cyc_o(), 
		.s12_stb_o(),
		.s12_ack_i(1'b0), 
		.s12_err_i(1'b0), 
		.s12_rty_i(1'b0),

		// Slave 13 Interface
		.s13_data_i(),
		.s13_data_o(),
		.s13_addr_o(),
		.s13_sel_o(),
		.s13_we_o(), 
		.s13_cyc_o(), 
		.s13_stb_o(),
		.s13_ack_i(1'b0), 
		.s13_err_i(1'b0), 
		.s13_rty_i(1'b0),

		// Slave 14 Interface
		.s14_data_i(),
		.s14_data_o(),
		.s14_addr_o(),
		.s14_sel_o(),
		.s14_we_o(), 
		.s14_cyc_o(), 
		.s14_stb_o(),
		.s14_ack_i(1'b0), 
		.s14_err_i(1'b0), 
		.s14_rty_i(1'b0),

		// Slave 15 Interface
		.s15_data_i(),
		.s15_data_o(),
		.s15_addr_o(),
		.s15_sel_o(),
		.s15_we_o(),
		.s15_cyc_o(), 
		.s15_stb_o(),
		.s15_ack_i(1'b0), 
		.s15_err_i(1'b0), 
		.s15_rty_i(1'b0)
	);

endmodule
