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
