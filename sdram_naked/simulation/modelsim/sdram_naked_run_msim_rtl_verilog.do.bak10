transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/ip_pll {F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/ip_pll/ip_pll_sdram.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax/wb_conmax_defines.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked {F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/defines.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/db {F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/db/ip_pll_sdram_altpll.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked {F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wishbone_uart_lite.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked {F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/sdram_naked.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax/wb_conmax_top.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax/wb_conmax_slave_if.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax/wb_conmax_rf.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax/wb_conmax_pri_enc.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax/wb_conmax_pri_dec.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax/wb_conmax_msel.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax/wb_conmax_master_if.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax {F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/wb_conmax/wb_conmax_arb.v}
vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked {F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/sdram_naked_master.v}

vlog -vlog01compat -work work +incdir+F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked {F:/undergraduate_thesis/undergraduate-fzpeng2020/sdram_naked/sdram_naked_tst.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclone10lp_ver -L rtl_work -L work -voptargs="+acc"  sdram_naked_tst

add wave *
view structure
view signals
run -all
