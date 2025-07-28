
# constraints

# ddr

set_property -dict  {PACKAGE_PIN  AF11  IOSTANDARD SSTL15} [get_ports {ddr3_1_p[0]}]
set_property -dict  {PACKAGE_PIN  AE8   IOSTANDARD SSTL15} [get_ports {ddr3_1_p[1]}]
set_property -dict  {PACKAGE_PIN  AE11  IOSTANDARD SSTL15} [get_ports {ddr3_1_n[0]}]
set_property -dict  {PACKAGE_PIN  AE10  IOSTANDARD SSTL15} [get_ports {ddr3_1_n[1]}]
set_property -dict  {PACKAGE_PIN  AC10  IOSTANDARD SSTL15} [get_ports {ddr3_1_n[2]}]

set_property INTERNAL_VREF 0.75 [get_iobanks 33]

set_property slave_banks {32 34} [get_iobanks 33]

