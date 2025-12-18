
# constraints

set_property -dict  {PACKAGE_PIN  AV40  IOSTANDARD  LVCMOS18} [get_ports reset]

# clocks

set_property -dict  {PACKAGE_PIN  E19   IOSTANDARD  LVDS} [get_ports clk_p]
set_property -dict  {PACKAGE_PIN  E18   IOSTANDARD  LVDS} [get_ports clk_n]

create_clock -period 5.000 -name board_clk_200mhz -waveform {0.000 2.500} -add [get_ports clk_p]


# uart

set_property -dict  {PACKAGE_PIN  AU33  IOSTANDARD  LVCMOS18} [get_ports uart_tx]
set_property -dict  {PACKAGE_PIN  AU36  IOSTANDARD  LVCMOS18} [get_ports uart_rx]
set_property -dict  {PACKAGE_PIN  AR34  IOSTANDARD  LVCMOS18} [get_ports uart_cts]
set_property -dict  {PACKAGE_PIN  AT32  IOSTANDARD  LVCMOS18} [get_ports uart_rts]

# sw & led

set_property -dict  {PACKAGE_PIN  AV30   IOSTANDARD  LVCMOS18} [get_ports dip_switches[0]]
set_property -dict  {PACKAGE_PIN  AY33   IOSTANDARD  LVCMOS18} [get_ports dip_switches[1]]
set_property -dict  {PACKAGE_PIN  BA31   IOSTANDARD  LVCMOS18} [get_ports dip_switches[2]]
set_property -dict  {PACKAGE_PIN  BA32   IOSTANDARD  LVCMOS18} [get_ports dip_switches[3]]
set_property -dict  {PACKAGE_PIN  AW30   IOSTANDARD  LVCMOS18} [get_ports dip_switches[4]]
set_property -dict  {PACKAGE_PIN  AY30   IOSTANDARD  LVCMOS18} [get_ports dip_switches[5]]
set_property -dict  {PACKAGE_PIN  BA30   IOSTANDARD  LVCMOS18} [get_ports dip_switches[6]]
set_property -dict  {PACKAGE_PIN  BB31   IOSTANDARD  LVCMOS18} [get_ports dip_switches[7]]

set_property -dict  {PACKAGE_PIN  AM39   IOSTANDARD  LVCMOS18} [get_ports leds[0]]
set_property -dict  {PACKAGE_PIN  AN39   IOSTANDARD  LVCMOS18} [get_ports leds[1]]
set_property -dict  {PACKAGE_PIN  AR37   IOSTANDARD  LVCMOS18} [get_ports leds[2]]
set_property -dict  {PACKAGE_PIN  AT37   IOSTANDARD  LVCMOS18} [get_ports leds[3]]
set_property -dict  {PACKAGE_PIN  AR35   IOSTANDARD  LVCMOS18} [get_ports leds[4]]
set_property -dict  {PACKAGE_PIN  AP41   IOSTANDARD  LVCMOS18} [get_ports leds[5]]
set_property -dict  {PACKAGE_PIN  AP42   IOSTANDARD  LVCMOS18} [get_ports leds[6]]
set_property -dict  {PACKAGE_PIN  AU39   IOSTANDARD  LVCMOS18} [get_ports leds[7]]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 3 [current_design]
set_property BITSTREAM.CONFIG.BPI_PAGE_SIZE 1 [current_design]
set_property BITSTREAM.CONFIG.BPI_SYNC_MODE DISABLE [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN DISABLE [current_design]
set_property BITSTREAM.CONFIG.BPI_1ST_READ_CYCLE 1 [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]
set_property CONFIG_MODE BPI16 [current_design]
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property PROGRAM.HW_CFGMEM_PART mt28gu01gaax1e-bpi-x16 [current_design]
