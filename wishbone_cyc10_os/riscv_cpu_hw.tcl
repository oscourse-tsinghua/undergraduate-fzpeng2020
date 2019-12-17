# TCL File Generated by Component Editor 18.0
# Tue Dec 17 09:42:29 CST 2019
# DO NOT MODIFY


# 
# riscv_cpu "riscv_cpu" v1.0
#  2019.12.17.09:42:29
# ZhipengFan
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module riscv_cpu
# 
set_module_property DESCRIPTION ZhipengFan
set_module_property NAME riscv_cpu
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME riscv_cpu
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL openriscv
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file csr.v VERILOG PATH cpu/csr.v
add_fileset_file ctrl.v VERILOG PATH cpu/ctrl.v
add_fileset_file defines.v VERILOG PATH cpu/defines.v
add_fileset_file div.v VERILOG PATH cpu/div.v
add_fileset_file ex.v VERILOG PATH cpu/ex.v
add_fileset_file ex_mem.v VERILOG PATH cpu/ex_mem.v
add_fileset_file id.v VERILOG PATH cpu/id.v
add_fileset_file id_ex.v VERILOG PATH cpu/id_ex.v
add_fileset_file if_id.v VERILOG PATH cpu/if_id.v
add_fileset_file llbit_reg.v VERILOG PATH cpu/llbit_reg.v
add_fileset_file mem.v VERILOG PATH cpu/mem.v
add_fileset_file mem_wb.v VERILOG PATH cpu/mem_wb.v
add_fileset_file mmu_conv.v VERILOG PATH cpu/mmu_conv.v
add_fileset_file openriscv.v VERILOG PATH cpu/openriscv.v TOP_LEVEL_FILE
add_fileset_file pc_reg.v VERILOG PATH cpu/pc_reg.v
add_fileset_file regfile.v VERILOG PATH cpu/regfile.v
add_fileset_file wishbone_bus_if.v VERILOG PATH cpu/wishbone_bus_if.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point altera_axi4lite_master
# 
add_interface altera_axi4lite_master axi4lite start
set_interface_property altera_axi4lite_master associatedClock clock
set_interface_property altera_axi4lite_master associatedReset ""
set_interface_property altera_axi4lite_master readIssuingCapability 1
set_interface_property altera_axi4lite_master writeIssuingCapability 1
set_interface_property altera_axi4lite_master combinedIssuingCapability 1
set_interface_property altera_axi4lite_master ENABLED true
set_interface_property altera_axi4lite_master EXPORT_OF ""
set_interface_property altera_axi4lite_master PORT_NAME_MAP ""
set_interface_property altera_axi4lite_master CMSIS_SVD_VARIABLES ""
set_interface_property altera_axi4lite_master SVD_ADDRESS_GROUP ""

add_interface_port altera_axi4lite_master rst_n beginbursttransfer Output 1
add_interface_port altera_axi4lite_master timer_int_i beginbursttransfer Output 1
add_interface_port altera_axi4lite_master external_int_i beginbursttransfer Output 1
add_interface_port altera_axi4lite_master software_int_i beginbursttransfer Output 1
add_interface_port altera_axi4lite_master wishbone_clk beginbursttransfer Output 1
add_interface_port altera_axi4lite_master iwishbone_data_i writebyteenable_n Input 32
add_interface_port altera_axi4lite_master iwishbone_ack_i beginbursttransfer Output 1
add_interface_port altera_axi4lite_master iwishbone_addr_o readdata Output 34
add_interface_port altera_axi4lite_master iwishbone_data_o readdata Output 32
add_interface_port altera_axi4lite_master iwishbone_we_o writeresponsevalid_n Output 1
add_interface_port altera_axi4lite_master iwishbone_sel_o readdata Output 4
add_interface_port altera_axi4lite_master iwishbone_stb_o writeresponsevalid_n Output 1
add_interface_port altera_axi4lite_master iwishbone_cyc_o writeresponsevalid_n Output 1
add_interface_port altera_axi4lite_master dwishbone_data_i writebyteenable_n Input 32
add_interface_port altera_axi4lite_master dwishbone_ack_i beginbursttransfer Output 1
add_interface_port altera_axi4lite_master dwishbone_addr_o readdata Output 34
add_interface_port altera_axi4lite_master dwishbone_data_o readdata Output 32
add_interface_port altera_axi4lite_master dwishbone_we_o writeresponsevalid_n Output 1
add_interface_port altera_axi4lite_master dwishbone_sel_o readdata Output 4
add_interface_port altera_axi4lite_master dwishbone_stb_o writeresponsevalid_n Output 1
add_interface_port altera_axi4lite_master dwishbone_cyc_o writeresponsevalid_n Output 1

