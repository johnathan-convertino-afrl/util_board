
# constraints
# gpio (switches, leds and such)

# S1 DIP
set_property  -dict {PACKAGE_PIN  AN13   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[0]]           ; ## PL_USER_SW1
set_property  -dict {PACKAGE_PIN  AU12   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[1]]           ; ## PL_USER_SW2
set_property  -dict {PACKAGE_PIN  AW11   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[2]]           ; ## PL_USER_SW3
set_property  -dict {PACKAGE_PIN  AV11   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[3]]           ; ## PL_USER_SW4

# PB push button
set_property  -dict {PACKAGE_PIN  AV12   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[4]]           ; ## PL_USER_PB
set_property  -dict {PACKAGE_PIN  AV10   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[5]]           ; ## PL_USER_PB
set_property  -dict {PACKAGE_PIN  AW9    IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[6]]           ; ## PL_USER_PB
set_property  -dict {PACKAGE_PIN  AT12   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[7]]           ; ## PL_USER_PB

# LEDS
set_property  -dict {PACKAGE_PIN  AR11   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[0]]           ; ## PL_USER_LED1
set_property  -dict {PACKAGE_PIN  AW10   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[1]]           ; ## PL_USER_LED2
set_property  -dict {PACKAGE_PIN  AT11   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[2]]           ; ## PL_USER_LED3
set_property  -dict {PACKAGE_PIN  AU10   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[3]]           ; ## PL_USER_LED4
set_property  -dict {PACKAGE_PIN  AM8    IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[4]]           ; ## PL_USER_RGB0
set_property  -dict {PACKAGE_PIN  AM7    IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[5]]           ; ## PL_USER_RGB0
set_property  -dict {PACKAGE_PIN  AN8    IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[6]]           ; ## PL_USER_RGB0
set_property  -dict {PACKAGE_PIN  AR12   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[7]]           ; ## PL_USER_RGB1
set_property  -dict {PACKAGE_PIN  AP8    IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[8]]           ; ## PL_USER_RGB1
set_property  -dict {PACKAGE_PIN  AT10   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[9]]           ; ## PL_USER_RGB1

# Define SPI clock
create_clock -name spi0_clk      -period 40   [get_pins -hier */EMIOSPI0SCLKO]
create_clock -name spi1_clk      -period 40   [get_pins -hier */EMIOSPI1SCLKO]
