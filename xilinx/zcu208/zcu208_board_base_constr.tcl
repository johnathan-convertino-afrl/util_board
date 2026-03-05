
# constraints
# gpio (switches, leds and such)

# SW14 DIP
set_property  -dict {PACKAGE_PIN  M18    IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[0]]           ; ## PL_USER_SW0
set_property  -dict {PACKAGE_PIN  L14    IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[1]]           ; ## PL_USER_SW1
set_property  -dict {PACKAGE_PIN  AF15   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[2]]           ; ## PL_USER_SW2
set_property  -dict {PACKAGE_PIN  AP15   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[3]]           ; ## PL_USER_SW3
set_property  -dict {PACKAGE_PIN  N21    IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[4]]           ; ## PL_USER_SW4
set_property  -dict {PACKAGE_PIN  N20    IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[5]]           ; ## PL_USER_SW5
set_property  -dict {PACKAGE_PIN  AW5    IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[6]]           ; ## PL_USER_SW6
set_property  -dict {PACKAGE_PIN  AW6    IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[7]]           ; ## PL_USER_SW7


# PL LED
set_property  -dict {PACKAGE_PIN  AR19   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[0]]           ; ## PL_USER_LED0
set_property  -dict {PACKAGE_PIN  AT17   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[1]]           ; ## PL_USER_LED1
set_property  -dict {PACKAGE_PIN  AR17   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[2]]           ; ## PL_USER_LED2
set_property  -dict {PACKAGE_PIN  AU19   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[3]]           ; ## PL_USER_LED3
set_property  -dict {PACKAGE_PIN  AU20   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[4]]           ; ## PL_USER_LED4
set_property  -dict {PACKAGE_PIN  AW21   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[5]]           ; ## PL_USER_LED5
set_property  -dict {PACKAGE_PIN  AV21   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[6]]           ; ## PL_USER_LED6
set_property  -dict {PACKAGE_PIN  AV17   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[7]]           ; ## PL_USER_LED7

# Define SPI clock
create_clock -name spi0_clk      -period 40   [get_pins -hier */EMIOSPI0SCLKO]
create_clock -name spi1_clk      -period 40   [get_pins -hier */EMIOSPI1SCLKO]
