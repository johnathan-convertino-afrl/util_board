
# constraints
# gpio (switches, leds and such)

# S1 DIP
set_property  -dict {PACKAGE_PIN  D20   IOSTANDARD LVCMOS33} [get_ports gpio_bd_i[0]]           ; ## PL_USER_SW1
set_property  -dict {PACKAGE_PIN  A25   IOSTANDARD LVCMOS33} [get_ports gpio_bd_i[1]]           ; ## PL_USER_SW2
set_property  -dict {PACKAGE_PIN  B32   IOSTANDARD LVCMOS33} [get_ports gpio_bd_i[2]]           ; ## PL_USER_SW3
set_property  -dict {PACKAGE_PIN  D19   IOSTANDARD LVCMOS33} [get_ports gpio_bd_i[3]]           ; ## PL_USER_SW4

# PB3 push button
set_property  -dict {PACKAGE_PIN  D19   IOSTANDARD LVCMOS33} [get_ports gpio_bd_i[4]]           ; ## PL_USER_PB

# D10, D9, D8, D7 LEDS. Direct drive with 330R resistor.
set_property  -dict {PACKAGE_PIN  AG14  IOSTANDARD LVCMOS33} [get_ports gpio_bd_o[0]]           ; ## PL_USER_LED1_G
set_property  -dict {PACKAGE_PIN  AF13  IOSTANDARD LVCMOS33} [get_ports gpio_bd_o[1]]           ; ## PL_USER_LED2_G
set_property  -dict {PACKAGE_PIN  AE13  IOSTANDARD LVCMOS33} [get_ports gpio_bd_o[2]]           ; ## PL_USER_LED3_R
set_property  -dict {PACKAGE_PIN  AJ14  IOSTANDARD LVCMOS33} [get_ports gpio_bd_o[3]]           ; ## PL_USER_LED4_R

# Define SPI clock
create_clock -name spi0_clk      -period 40   [get_pins -hier */EMIOSPI0SCLKO]
create_clock -name spi1_clk      -period 40   [get_pins -hier */EMIOSPI1SCLKO]
