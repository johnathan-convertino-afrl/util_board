create_bd_design "system_wrapper"

create_bd_cell -type module -reference VexRiscvAxi4LinuxPlicClint VexRiscv

create_bd_cell -type ip -vlnv xilinx.com:ip:debug_bridge:3.0 debug_bridge_0

set_property -dict [list \
  CONFIG.C_DEBUG_MODE {7} \
  CONFIG.C_NUM_BS_MASTER {1} \
] [get_bd_cells debug_bridge_0]

create_bd_cell -type ip -vlnv xilinx.com:ip:bscan_jtag:1.0 bscan_jtag_0

connect_bd_intf_net [get_bd_intf_pins bscan_jtag_0/S_BSCAN] [get_bd_intf_pins debug_bridge_0/m0_bscan]
connect_bd_net [get_bd_pins bscan_jtag_0/JTAG_TMS] [get_bd_pins VexRiscv/jtag_tms]
connect_bd_net [get_bd_pins bscan_jtag_0/JTAG_TDO] [get_bd_pins VexRiscv/jtag_tdo]
connect_bd_net [get_bd_pins bscan_jtag_0/JTAG_TDI] [get_bd_pins VexRiscv/jtag_tdi]
connect_bd_net [get_bd_pins bscan_jtag_0/JTAG_TCK] [get_bd_pins VexRiscv/jtag_tck]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0
set_property location {3.5 759 -83} [get_bd_cells axi_interconnect_0]
set_property -dict [list \
  CONFIG.NUM_MI {7} \
  CONFIG.NUM_SI {2} \
] [get_bd_cells axi_interconnect_0]
connect_bd_intf_net [get_bd_intf_pins VexRiscv/dBusAxi] -boundary_type upper [get_bd_intf_pins axi_interconnect_0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins VexRiscv/iBusAxi] -boundary_type upper [get_bd_intf_pins axi_interconnect_0/S01_AXI]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins VexRiscv/plic]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins axi_interconnect_0/M01_AXI] [get_bd_intf_pins VexRiscv/clint]

create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 MAXI
set_property -dict [list CONFIG.NUM_READ_OUTSTANDING [get_property CONFIG.NUM_READ_OUTSTANDING [get_bd_intf_pins axi_interconnect_0/xbar/M06_AXI]] CONFIG.NUM_WRITE_OUTSTANDING [get_property CONFIG.NUM_WRITE_OUTSTANDING [get_bd_intf_pins axi_interconnect_0/xbar/M06_AXI]]] [get_bd_intf_ports MAXI]
connect_bd_intf_net [get_bd_intf_pins axi_interconnect_0/M06_AXI] [get_bd_intf_ports MAXI]

set_property CONFIG.PROTOCOL AXI4LITE [get_bd_intf_ports /MAXI]

# SEE ad hdl vc707 gen tcl for memory creation

#add spi
#add UART
#add GPIO
