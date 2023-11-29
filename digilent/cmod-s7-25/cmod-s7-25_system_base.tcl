# create board base ips

vivado_ip_vlvn_version_check "xilinx.com:ip:clk_wiz:6.0"

# create a pll clock IP with a 100 MHz clock
create_ip -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_1
set_property CONFIG.PRIMITIVE MMCM [get_ips clk_wiz_1]
set_property CONFIG.CLKOUT1_REQUESTED_OUT_FREQ 100 [get_ips clk_wiz_1]
set_property CONFIG.USE_LOCKED false [get_ips clk_wiz_1]
set_property CONFIG.PRIM_IN_FREQ 12.000 [get_ips clk_wiz_1]
set_property CONFIG.USE_RESET true [get_ips clk_wiz_1]
set_property CONFIG.RESET_TYPE {ACTIVE_HIGH} [get_ips clk_wiz_1]
set_property CONFIG.RESET_PORT {reset} [get_ips clk_wiz_1]

set_property generate_synth_checkpoint false [get_files clk_wiz_1.xci]

vivado_ip_vlvn_version_check "xilinx.com:ip:proc_sys_reset:5.0"

# create a system reset with
create_ip -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 sys_rstgen
set_property CONFIG.RESET_BOARD_INTERFACE Custom [get_ips sys_rstgen]
set_property CONFIG.C_EXT_RST_WIDTH 1 [get_ips sys_rstgen]
set_property CONFIG.C_AUX_RST_WIDTH 1 [get_ips sys_rstgen]
set_property CONFIG.C_EXT_RESET_HIGH 1 [get_ips sys_rstgen]
set_property CONFIG.C_AUX_RESET_HIGH 0 [get_ips sys_rstgen]

set_property generate_synth_checkpoint false [get_files sys_rstgen.xci]

generate_target all [get_ips]

