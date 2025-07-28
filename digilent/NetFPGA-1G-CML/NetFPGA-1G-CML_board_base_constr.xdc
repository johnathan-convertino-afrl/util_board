## constraints

#### This file is a general .xdc for the NetFPGA-1G-CML
#### To use it in a project:
#### - uncomment the lines corresponding to used pins
#### - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock Signal
set_property -dict { PACKAGE_PIN AA2  IOSTANDARD LVDS} [get_ports { clk_n }];
set_property -dict { PACKAGE_PIN AA3  IOSTANDARD LVDS} [get_ports { clk_p }];

create_clock -period 5.000 -name board_clk_200mhz -waveform {0.000 2.500} -add [get_ports clk_p]

## Buttons
set_property -dict { PACKAGE_PIN W6    IOSTANDARD LVCMOS15 } [get_ports { {push_buttons[0]}}];
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { {push_buttons[1]}}];
set_property -dict { PACKAGE_PIN AC6   IOSTANDARD LVCMOS15 } [get_ports { {push_buttons[2]}}];
set_property -dict { PACKAGE_PIN AB6   IOSTANDARD LVCMOS15 } [get_ports { {push_buttons[3]}}];

set_property -dict { PACKAGE_PIN AA8   IOSTANDARD LVCMOS18 } [get_ports { resetn }];

## LEDs
set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { leds[0] }];
set_property -dict { PACKAGE_PIN AF14  IOSTANDARD LVCMOS18 } [get_ports { leds[1] }];
set_property -dict { PACKAGE_PIN F17   IOSTANDARD LVCMOS33 } [get_ports { leds[2] }];
set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS18 } [get_ports { leds[3] }];

## PMOD Header JA
set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { pmod_ja[0] }];
set_property -dict { PACKAGE_PIN E23   IOSTANDARD LVCMOS33 } [get_ports { pmod_ja[1] }];
set_property -dict { PACKAGE_PIN D25   IOSTANDARD LVCMOS33 } [get_ports { pmod_ja[2] }];
set_property -dict { PACKAGE_PIN F23   IOSTANDARD LVCMOS33 } [get_ports { pmod_ja[3] }];
set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports { pmod_ja[4] }];
set_property -dict { PACKAGE_PIN G22   IOSTANDARD LVCMOS33 } [get_ports { pmod_ja[5] }];
set_property -dict { PACKAGE_PIN D24   IOSTANDARD LVCMOS33 } [get_ports { pmod_ja[6] }];
set_property -dict { PACKAGE_PIN E21   IOSTANDARD LVCMOS33 } [get_ports { pmod_ja[7] }];

## PMOD Header JB
set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports { pmod_jb[0] }];
set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { pmod_jb[1] }];
set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { pmod_jb[2] }];
set_property -dict { PACKAGE_PIN G19   IOSTANDARD LVCMOS33 } [get_ports { pmod_jb[3] }];
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { pmod_jb[4] }];
set_property -dict { PACKAGE_PIN J21   IOSTANDARD LVCMOS33 } [get_ports { pmod_jb[5] }];
set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports { pmod_jb[6] }];
set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { pmod_jb[7] }]; 

