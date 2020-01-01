transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax/wb_conmax_defines.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/defines.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10 {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/ip_rom.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10 {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/ip_pll.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/db {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/db/ip_pll_altpll.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10 {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wishbone_soc.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10 {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/rom_wishbone.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10 {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/ram_wishbone.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10 {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/phy_bus_addr_conv.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax/wb_conmax_top.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax/wb_conmax_slave_if.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax/wb_conmax_rf.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax/wb_conmax_pri_enc.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax/wb_conmax_pri_dec.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax/wb_conmax_msel.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax/wb_conmax_master_if.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wb_conmax/wb_conmax_arb.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/wishbone_bus_if.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/regfile.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/pc_reg.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/openriscv.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/mmu_conv.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/mem_wb.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/mem.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/llbit_reg.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/if_id.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/id_ex.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/id.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/ex_mem.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/ex.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/div.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/ctrl.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/cpu/csr.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10 {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/led_wishbone.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10 {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/wishbone_uart_lite.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10 {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/config_string_and_timer.v}

vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/simulation/modelsim {F:/undergraduate_thesis/undergraduate-fzpeng2020/wishbone_cyc10/simulation/modelsim/wishbone_soc.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclone10lp_ver -L rtl_work -L work -voptargs="+acc"  wishbone_soc_vlg_tst

add wave *
view structure
view signals
run -all
