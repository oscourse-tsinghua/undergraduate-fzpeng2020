create_clock -period 83.33 -name clk {get_ports clk}
create_clock -period 20.0 -name clk_50 {get_ports clk_50}
derive_pll_clocks
derive_clock_uncertainty