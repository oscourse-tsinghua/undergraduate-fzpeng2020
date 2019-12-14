# Copyright (C) 2018  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details.

# Quartus Prime Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition
# File: F:\undergraduate_thesis\wishbone_cyc10\wishbone_cycy10_soc.tcl
# Generated on: Sun Nov 24 10:59:28 2019

package require ::quartus::project

set_location_assignment PIN_T2 -to uart_txd_o
set_location_assignment PIN_R1 -to uart_rxd_i
set_location_assignment PIN_M6 -to led[7]
set_location_assignment PIN_J1 -to led[6]
set_location_assignment PIN_J2 -to led[5]
set_location_assignment PIN_G1 -to led[4]
set_location_assignment PIN_G2 -to led[3]
set_location_assignment PIN_D1 -to led[2]
set_location_assignment PIN_C2 -to led[1]
set_location_assignment PIN_B1 -to led[0]
set_location_assignment PIN_D15 -to rst_n
set_location_assignment PIN_E1 -to clk
set_location_assignment PIN_C11 -to sdr_addr_o[11]
set_location_assignment PIN_C6 -to sdr_addr_o[10]
set_location_assignment PIN_E10 -to sdr_addr_o[9]
set_location_assignment PIN_C14 -to sdr_addr_o[8]
set_location_assignment PIN_E11 -to sdr_addr_o[7]
set_location_assignment PIN_F9 -to sdr_addr_o[6]
set_location_assignment PIN_D11 -to sdr_addr_o[5]
set_location_assignment PIN_E9 -to sdr_addr_o[4]
set_location_assignment PIN_D9 -to sdr_addr_o[3]
set_location_assignment PIN_D6 -to sdr_addr_o[2]
set_location_assignment PIN_E6 -to sdr_addr_o[1]
set_location_assignment PIN_D8 -to sdr_addr_o[0]
set_location_assignment PIN_E7 -to sdr_ba_o[1]
set_location_assignment PIN_E8 -to sdr_ba_o[0]
set_location_assignment PIN_C9 -to sdr_cas_n_o
set_location_assignment PIN_A10 -to sdr_cke_o
set_location_assignment PIN_B10 -to sdr_clk_o
set_location_assignment PIN_A2 -to sdr_cs_n_o
set_location_assignment PIN_A11 -to sdr_dqm_o[1]
set_location_assignment PIN_C8 -to sdr_dqm_o[0]
set_location_assignment PIN_A3 -to sdr_ras_n_o
set_location_assignment PIN_B3 -to sdr_we_n_o
set_location_assignment PIN_B12 -to sdr_dq_io[15]
set_location_assignment PIN_B13 -to sdr_dq_io[14]
set_location_assignment PIN_A12 -to sdr_dq_io[13]
set_location_assignment PIN_A14 -to sdr_dq_io[12]
set_location_assignment PIN_A13 -to sdr_dq_io[11]
set_location_assignment PIN_B14 -to sdr_dq_io[10]
set_location_assignment PIN_B11 -to sdr_dq_io[9]
set_location_assignment PIN_A15 -to sdr_dq_io[8]
set_location_assignment PIN_B4 -to sdr_dq_io[7]
set_location_assignment PIN_A7 -to sdr_dq_io[6]
set_location_assignment PIN_A4 -to sdr_dq_io[5]
set_location_assignment PIN_B6 -to sdr_dq_io[4]
set_location_assignment PIN_B5 -to sdr_dq_io[3]
set_location_assignment PIN_B7 -to sdr_dq_io[2]
set_location_assignment PIN_A5 -to sdr_dq_io[1]
set_location_assignment PIN_A6 -to sdr_dq_io[0]