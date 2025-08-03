
# constraints
# gpio (switches, leds and such)

# SW14 DIP
set_property  -dict {PACKAGE_PIN  AF16   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[0]]           ; ## PL_USER_SW0
set_property  -dict {PACKAGE_PIN  AF17   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[1]]           ; ## PL_USER_SW1
set_property  -dict {PACKAGE_PIN  AH15   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[2]]           ; ## PL_USER_SW2
set_property  -dict {PACKAGE_PIN  AH16   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[3]]           ; ## PL_USER_SW3
set_property  -dict {PACKAGE_PIN  AH17   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[4]]           ; ## PL_USER_SW4
set_property  -dict {PACKAGE_PIN  AG17   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[5]]           ; ## PL_USER_SW5
set_property  -dict {PACKAGE_PIN  AJ15   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[6]]           ; ## PL_USER_SW6
set_property  -dict {PACKAGE_PIN  AJ16   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[7]]           ; ## PL_USER_SW7

# push buttons
set_property  -dict {PACKAGE_PIN  AW3   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[8]]            ; ## PL_USER_SW_N
set_property  -dict {PACKAGE_PIN  AW4   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[9]]            ; ## PL_USER_SW_E
set_property  -dict {PACKAGE_PIN  AW5   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[10]]           ; ## PL_USER_SW_C
set_property  -dict {PACKAGE_PIN  AW6   IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[11]]           ; ## PL_USER_SW_W
set_property  -dict {PACKAGE_PIN  E8    IOSTANDARD LVCMOS18} [get_ports gpio_bd_i[12]]           ; ## PL_USER_SW_S

# PL LED
set_property  -dict {PACKAGE_PIN  AR13   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[0]]           ; ## PL_USER_LED0
set_property  -dict {PACKAGE_PIN  AP13   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[1]]           ; ## PL_USER_LED1
set_property  -dict {PACKAGE_PIN  AR16   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[2]]           ; ## PL_USER_LED2
set_property  -dict {PACKAGE_PIN  AP16   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[3]]           ; ## PL_USER_LED3
set_property  -dict {PACKAGE_PIN  AP15   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[4]]           ; ## PL_USER_LED4
set_property  -dict {PACKAGE_PIN  AN16   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[5]]           ; ## PL_USER_LED5
set_property  -dict {PACKAGE_PIN  AN17   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[6]]           ; ## PL_USER_LED6
set_property  -dict {PACKAGE_PIN  AV15   IOSTANDARD LVCMOS18} [get_ports gpio_bd_o[7]]           ; ## PL_USER_LED7

# Define SPI clock
create_clock -name spi0_clk      -period 40   [get_pins -hier */EMIOSPI0SCLKO]
create_clock -name spi1_clk      -period 40   [get_pins -hier */EMIOSPI1SCLKO]
