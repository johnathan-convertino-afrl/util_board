# create board base ips

vivado_version_check "2022.2.2"

# create a pll clock IP with a 100 MHz clock
create_ip -name clk_wiz -vendor xilinx.com -library ip -version 6.0 -module_name clk_wiz_1
set_property CONFIG.PRIMITIVE MMCM [get_ips clk_wiz_1]
set_property CONFIG.CLKOUT1_REQUESTED_OUT_FREQ 100 [get_ips clk_wiz_1]
set_property CONFIG.USE_LOCKED false [get_ips clk_wiz_1]
set_property CONFIG.PRIM_IN_FREQ 100.000 [get_ips clk_wiz_1]
set_property CONFIG.USE_RESET true [get_ips clk_wiz_1]
set_property CONFIG.RESET_TYPE {ACTIVE_HIGH} [get_ips clk_wiz_1]
set_property CONFIG.RESET_PORT {reset} [get_ips clk_wiz_1]

# create a system reset with
create_ip -name proc_sys_reset -vendor xilinx.com -library ip -version 5.0 -module_name sys_rstgen
set_property CONFIG.RESET_BOARD_INTERFACE Custom [get_ips sys_rstgen]
set_property CONFIG.C_EXT_RST_WIDTH 1 [get_ips sys_rstgen]
set_property CONFIG.C_AUX_RST_WIDTH 1 [get_ips sys_rstgen]
set_property CONFIG.C_EXT_RESET_HIGH 1 [get_ips sys_rstgen]
set_property CONFIG.C_AUX_RESET_HIGH 0 [get_ips sys_rstgen]

generate_target all [get_ips]
