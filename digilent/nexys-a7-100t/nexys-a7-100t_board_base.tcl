# create board base ips

set_msg_config -id "Common 17-55" -new_severity WARNING

ip_vlvn_version_check "xilinx.com:ip:clk_wiz:6.0"

# create a pll clock IP with a 100 MHz clock
create_ip -vlnv xilinx.com:ip:clk_wiz:6.0 -module_name clk_wiz_1
set_property CONFIG.PRIMITIVE MMCM [get_ips clk_wiz_1]
set_property CONFIG.CLKOUT1_REQUESTED_OUT_FREQ 100 [get_ips clk_wiz_1]
set_property CONFIG.USE_LOCKED false [get_ips clk_wiz_1]
set_property CONFIG.PRIM_IN_FREQ 100.000 [get_ips clk_wiz_1]
set_property CONFIG.USE_RESET true [get_ips clk_wiz_1]
set_property CONFIG.RESET_TYPE {ACTIVE_LOW} [get_ips clk_wiz_1]
set_property CONFIG.RESET_PORT {resetn} [get_ips clk_wiz_1]

set_property generate_synth_checkpoint false [get_files clk_wiz_1.xci]

ip_vlvn_version_check "xilinx.com:ip:proc_sys_reset:5.0"

# create a system reset with
create_ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 -module_name sys_rstgen
set_property CONFIG.RESET_BOARD_INTERFACE Custom [get_ips sys_rstgen]
set_property CONFIG.C_EXT_RST_WIDTH 8 [get_ips sys_rstgen]
set_property CONFIG.C_AUX_RST_WIDTH 8 [get_ips sys_rstgen]
set_property CONFIG.C_EXT_RESET_HIGH 0 [get_ips sys_rstgen]
set_property CONFIG.C_AUX_RESET_HIGH 0 [get_ips sys_rstgen]

set_property generate_synth_checkpoint false [get_files sys_rstgen.xci]

generate_target all [get_ips]
