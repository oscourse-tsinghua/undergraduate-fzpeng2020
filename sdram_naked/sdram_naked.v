`include "defines.v"
module sdram_naked (
	input  wire 		   clk_50,
	input  wire 			rst_n,
	`ifndef Simulation
	output wire 			sdr_clk_o,
   output wire 			sdr_cs_n_o,
   output wire		   	sdr_cke_o,
   output wire 			sdr_ras_n_o,
   output wire 			sdr_cas_n_o,
   output wire 			sdr_we_n_o,
   output wire [1:0] 	sdr_dqm_o,
   output wire [1:0] 	sdr_ba_o,
   output wire	[11:0]   sdr_addr_o,
   inout  wire	[15:0]   sdr_dq_io,
	`endif

	input  wire 			uart_rxd_i,
	output wire 			uart_txd_o
	
);

	wire [12:0] sdr_addr_13_to_12;

	wire cpu_clk;
	wire lock;
	wire reset_n;
	wire wishbone_clk;
	assign reset_n = lock & rst_n;
	wire sdram_clk;

	wire	[31:0] m0_data_i;
	wire	[31:0] m0_data_o;
	wire	[31:0] m0_addr_i;
	wire	[3:0]  m0_sel_i;
	wire       	 m0_we_i;
	wire       	 m0_cyc_i;
	wire       	 m0_stb_i;
	wire       	 m0_ack_o;
	
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
	
	
	sdram_naked_master sdram_naked_master0 (
		.clk									(wishbone_clk),
		.rst_n								(reset_n),
		.wishbone_addr_o					(m0_addr_i),
		.wishbone_data_o					(m0_data_i),
		.wishbone_we_o						(m0_we_i),
		.wishbone_sel_o					(m0_sel_i),
		.wishbone_stb_o					(m0_stb_i),
		.wishbone_cyc_o					(m0_cyc_i),
		.wishbone_data_i					(m0_data_o),
		.wishbone_ack_i					(m0_ack_o)
	);

	
	ip_pll_sdram ip_pll_sdram0(
		.areset(!rst_n),
		.inclk0(clk_50),
		.c0(wishbone_clk), //20Mhz
		.c1(cpu_clk),		 //10Mhz	
		.c2(sdram_clk),	 //150Mhz
		.c3(sdr_clk_o),	 //150Mhz -68degree
		.locked(lock)
	);

	wishbone_uart_lite #(
		.ClkFreq(20000000),
		.BoundRate(115200)
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
	);
	
	`ifndef Simulation
	
	wire [21:0]	avalon_sdram_address;
	wire [1:0]	avalon_sdram_byteenable_n;
	wire 	   	avalon_sdram_chipselect;
	wire [15:0]	avalon_sdram_writedata;
	wire 			avalon_sdram_read_n;
	wire 			avalon_sdram_write_n;
	wire [15:0]	avalon_sdram_readdata;
	wire 			avalon_sdram_readdatavalid;
	wire 			avalon_sdram_waitrequest;
		
	wb32_avalon16 wb32_avalon16 (
		.clk									(wishbone_clk),	
		.sdram_clk							(sdram_clk),
		.reset_n								(reset_n),	
		
		.wishbone_addr_i					(s0_addr_o),
		.wishbone_data_i					(s0_data_o),
		.wishbone_we_i						(s0_we_o),
		.wishbone_sel_i					(s0_sel_o),
		.wishbone_stb_i					(s0_stb_o),
		.wishbone_cyc_i					(s0_cyc_o),
		.wishbone_data_o					(s0_data_i),
		.wishbone_ack_o					(s0_ack_i),
	
		.avalon_sdram_address_o         (avalon_sdram_address),
		.avalon_sdram_byteenable_n_o    (avalon_sdram_byteenable_n),
		.avalon_sdram_chipselect_o      (avalon_sdram_chipselect),
		.avalon_sdram_writedata_o       (avalon_sdram_writedata),
		.avalon_sdram_read_n_o          (avalon_sdram_read_n),
		.avalon_sdram_write_n_o         (avalon_sdram_write_n),
		.avalon_sdram_readdata_i        (avalon_sdram_readdata),
		.avalon_sdram_readdatavalid_i   (avalon_sdram_readdatavalid),
		.avalon_sdram_waitrequest_i     (avalon_sdram_waitrequest)
		
	);
	
	sdram sdram0 (
		.clk_clk                      (sdram_clk),                    					
		.reset_reset_n                (reset_n),               		  					
		.sdram_addr                   (sdr_addr_o),                   					
		.sdram_ba                     (sdr_ba_o),                     					
		.sdram_cas_n                  (sdr_cas_n_o),                  					
		.sdram_cke                    (sdr_cke_o),                    					
		.sdram_cs_n                   (sdr_cs_n_o),                   					
		.sdram_dq                     (sdr_dq_io),                    					
		.sdram_dqm                    (sdr_dqm_o),                    					
		.sdram_ras_n                  (sdr_ras_n_o),                  					
		.sdram_we_n                   (sdr_we_n_o),                   					
		.avalon_sdram_address         (avalon_sdram_address),      
		.avalon_sdram_byteenable_n    (avalon_sdram_byteenable_n),  
		.avalon_sdram_chipselect      (avalon_sdram_chipselect),    
		.avalon_sdram_writedata       (avalon_sdram_writedata),     
		.avalon_sdram_read_n          (avalon_sdram_read_n),        
		.avalon_sdram_write_n         (avalon_sdram_write_n),       
		.avalon_sdram_readdata        (avalon_sdram_readdata),      
		.avalon_sdram_readdatavalid   (avalon_sdram_readdatavalid), 
		.avalon_sdram_waitrequest     (avalon_sdram_waitrequest)    
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
		.m1_data_i(`ZeroWord),
		.m1_data_o(),
		.m1_addr_i(`ZeroWord),
		.m1_sel_i(4'b0000),
		.m1_we_i(1'b0), 
		.m1_cyc_i(1'b0), 
		.m1_stb_i(1'b0),
		.m1_ack_o(), 
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
		.s3_data_i(),
		.s3_data_o(),
		.s3_addr_o(),
		.s3_sel_o(),
		.s3_we_o(),
		.s3_cyc_o(),
		.s3_stb_o(),
		.s3_ack_i(1'b0),
		.s3_err_i(1'b0), 
		.s3_rty_i(1'b0),

		// Slave 4 Interface
		.s4_data_i(),
		.s4_data_o(),
		.s4_addr_o(),
		.s4_sel_o(),
		.s4_we_o(),
		.s4_cyc_o(),
		.s4_stb_o(),
		.s4_ack_i(1'b0),
		.s4_err_i(1'b0), 
		.s4_rty_i(1'b0),

		// Slave 5 Interface
		.s5_data_i(),
		.s5_data_o(),
		.s5_addr_o(),
		.s5_sel_o(),
		.s5_we_o(), 
		.s5_cyc_o(), 
		.s5_stb_o(),
		.s5_ack_i(1'b0), 
		.s5_err_i(1'b0), 
		.s5_rty_i(1'b0),

		// Slave 6 Interface
		.s6_data_i(),
		.s6_data_o(),
		.s6_addr_o(),
		.s6_sel_o(),
		.s6_we_o(), 
		.s6_cyc_o(), 
		.s6_stb_o(),
		.s6_ack_i(1'b0), 
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