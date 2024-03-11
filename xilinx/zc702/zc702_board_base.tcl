# board basics

set_msg_config -id "Common 17-55" -new_severity WARNING

reorder_files -fileset constrs_1 -front [get_files zc702_board_base_constr.tcl]

set address_offset 0x70000000

#BD METHOD
create_bd_design "system_ps"
update_compile_order -fileset sources_1

ip_vlvn_version_check "xilinx.com:ip:processing_system7:5.5"

create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 ps_sys_7
set_property CONFIG.preset {ZC702} [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_TTC0_PERIPHERAL_ENABLE 0 [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_EN_CLK1_PORT 1 [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_EN_RST1_PORT 1 [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ 100.0 [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ 200.0 [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_USE_FABRIC_INTERRUPT 1 [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_USE_S_AXI_HP0 1 [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_USE_S_AXI_HP1 1 [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_IRQ_F2P_INTR 1 [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE 1 [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_GPIO_EMIO_GPIO_IO 64 [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_IRQ_F2P_INTR 1 [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_IRQ_F2P_MODE REVERSE [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_SPI0_PERIPHERAL_ENABLE 1 [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_SPI0_SPI0_IO {EMIO} [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_SPI1_PERIPHERAL_ENABLE 1 [get_bd_cells ps_sys_7]
set_property CONFIG.PCW_SPI1_SPI1_IO {EMIO} [get_bd_cells ps_sys_7]

ip_vlvn_version_check "xilinx.com:ip:proc_sys_reset:5.0"

create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 ps_sys_reset
set_property CONFIG.RESET_BOARD_INTERFACE Custom [get_bd_cells ps_sys_reset]
set_property CONFIG.C_EXT_RST_WIDTH 1 [get_bd_cells ps_sys_reset]
set_property CONFIG.C_AUX_RST_WIDTH 1 [get_bd_cells ps_sys_reset]


ip_vlvn_version_check "xilinx.com:ip:axi_interconnect:2.1"

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect
set_property CONFIG.ENABLE_ADVANCED_OPTIONS {1} [get_bd_cells axi_interconnect]
set_property CONFIG.XBAR_DATA_WIDTH.VALUE_SRC USER [get_bd_cells axi_interconnect]
set_property CONFIG.NUM_MI {1} [get_bd_cells axi_interconnect]

connect_bd_net [get_bd_pins ps_sys_7/FCLK_RESET0_N] [get_bd_pins ps_sys_reset/ext_reset_in]
connect_bd_net [get_bd_pins ps_sys_7/FCLK_CLK0] [get_bd_pins ps_sys_reset/slowest_sync_clk]

#create ports
make_bd_pins_external  [get_bd_pins ps_sys_reset/peripheral_aresetn]
set_property name peripheral_aresetn [get_bd_ports peripheral_aresetn_0]

make_bd_intf_pins_external  [get_bd_intf_pins ps_sys_7/DDR]
set_property name DDR [get_bd_intf_ports DDR_0]

make_bd_intf_pins_external  [get_bd_intf_pins ps_sys_7/FIXED_IO]
set_property name FIXED_IO [get_bd_intf_ports FIXED_IO_0]

create_bd_port -dir I -from 63 -to 0 GPIO_I
connect_bd_net [get_bd_pins /ps_sys_7/GPIO_I] [get_bd_ports GPIO_I]

create_bd_port -dir O -from 63 -to 0 GPIO_O
connect_bd_net [get_bd_pins /ps_sys_7/GPIO_O] [get_bd_ports GPIO_O]

create_bd_port -dir O -from 63 -to 0 GPIO_T
connect_bd_net [get_bd_pins /ps_sys_7/GPIO_T] [get_bd_ports GPIO_T]

# create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:usbctrl_rtl:1.0 USB0
# connect_bd_intf_net [get_bd_intf_pins ps_sys_7/USBIND_0] [get_bd_intf_ports USB0]

# create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_GP0
# set_property -dict [list CONFIG.PROTOCOL [get_property CONFIG.PROTOCOL [get_bd_intf_pins ps_sys_7/M_AXI_GP0]] CONFIG.HAS_REGION [get_property CONFIG.HAS_REGION [get_bd_intf_pins ps_sys_7/M_AXI_GP0]] CONFIG.NUM_READ_OUTSTANDING [get_property CONFIG.NUM_READ_OUTSTANDING [get_bd_intf_pins ps_sys_7/M_AXI_GP0]] CONFIG.NUM_WRITE_OUTSTANDING [get_property CONFIG.NUM_WRITE_OUTSTANDING [get_bd_intf_pins ps_sys_7/M_AXI_GP0]]] [get_bd_intf_ports M_AXI_GP0]
# connect_bd_intf_net [get_bd_intf_pins ps_sys_7/M_AXI_GP0] [get_bd_intf_ports M_AXI_GP0]

create_bd_port -dir O -type clk FCLK_CLK1
connect_bd_net [get_bd_pins /ps_sys_7/FCLK_CLK1] [get_bd_ports FCLK_CLK1]

# create_bd_port -dir I -type clk -freq_hz 100000000 M_AXI_GP0_ACLK
# connect_bd_net [get_bd_pins /ps_sys_7/M_AXI_GP0_ACLK] [get_bd_ports M_AXI_GP0_ACLK]

create_bd_port -dir I -type clk -freq_hz 100000000 S_AXI_HP0_ACLK
connect_bd_net [get_bd_pins /ps_sys_7/S_AXI_HP0_ACLK] [get_bd_ports S_AXI_HP0_ACLK]

create_bd_port -dir I -type clk -freq_hz 100000000 S_AXI_HP1_ACLK
connect_bd_net [get_bd_pins /ps_sys_7/S_AXI_HP1_ACLK] [get_bd_ports S_AXI_HP1_ACLK]


# set_property CONFIG.ASSOCIATED_BUSIF {S_AXI_HP0} [get_bd_ports /FCLK_CLK0]
#
# set_property CONFIG.ASSOCIATED_BUSIF {S_AXI_HP1} [get_bd_ports /FCLK_CLK0]

create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_HP1
set_property -dict [list CONFIG.DATA_WIDTH [get_property CONFIG.DATA_WIDTH [get_bd_intf_pins ps_sys_7/S_AXI_HP1]] CONFIG.PROTOCOL [get_property CONFIG.PROTOCOL [get_bd_intf_pins ps_sys_7/S_AXI_HP1]] CONFIG.ID_WIDTH [get_property CONFIG.ID_WIDTH [get_bd_intf_pins ps_sys_7/S_AXI_HP1]] CONFIG.HAS_REGION [get_property CONFIG.HAS_REGION [get_bd_intf_pins ps_sys_7/S_AXI_HP1]] CONFIG.NUM_READ_OUTSTANDING [get_property CONFIG.NUM_READ_OUTSTANDING [get_bd_intf_pins ps_sys_7/S_AXI_HP1]] CONFIG.NUM_WRITE_OUTSTANDING [get_property CONFIG.NUM_WRITE_OUTSTANDING [get_bd_intf_pins ps_sys_7/S_AXI_HP1]] CONFIG.MAX_BURST_LENGTH [get_property CONFIG.MAX_BURST_LENGTH [get_bd_intf_pins ps_sys_7/S_AXI_HP1]]] [get_bd_intf_ports S_AXI_HP1]
connect_bd_intf_net [get_bd_intf_pins ps_sys_7/S_AXI_HP1] [get_bd_intf_ports S_AXI_HP1]

create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_HP0
set_property -dict [list CONFIG.DATA_WIDTH [get_property CONFIG.DATA_WIDTH [get_bd_intf_pins ps_sys_7/S_AXI_HP0]] CONFIG.PROTOCOL [get_property CONFIG.PROTOCOL [get_bd_intf_pins ps_sys_7/S_AXI_HP0]] CONFIG.ID_WIDTH [get_property CONFIG.ID_WIDTH [get_bd_intf_pins ps_sys_7/S_AXI_HP0]] CONFIG.HAS_REGION [get_property CONFIG.HAS_REGION [get_bd_intf_pins ps_sys_7/S_AXI_HP0]] CONFIG.NUM_READ_OUTSTANDING [get_property CONFIG.NUM_READ_OUTSTANDING [get_bd_intf_pins ps_sys_7/S_AXI_HP0]] CONFIG.NUM_WRITE_OUTSTANDING [get_property CONFIG.NUM_WRITE_OUTSTANDING [get_bd_intf_pins ps_sys_7/S_AXI_HP0]] CONFIG.MAX_BURST_LENGTH [get_property CONFIG.MAX_BURST_LENGTH [get_bd_intf_pins ps_sys_7/S_AXI_HP0]]] [get_bd_intf_ports S_AXI_HP0]
connect_bd_intf_net [get_bd_intf_pins ps_sys_7/S_AXI_HP0] [get_bd_intf_ports S_AXI_HP0]

set_property CONFIG.SUPPORTS_NARROW_BURST 0 [get_bd_intf_ports /S_AXI_HP0]

set_property CONFIG.SUPPORTS_NARROW_BURST 0 [get_bd_intf_ports /S_AXI_HP1]

create_bd_port -dir I -from 15 -to 0 -type intr IRQ_F2P
connect_bd_net [get_bd_pins /ps_sys_7/IRQ_F2P] [get_bd_ports IRQ_F2P]

create_bd_port -dir I SPI0_SCLK_I
connect_bd_net [get_bd_pins /ps_sys_7/SPI0_SCLK_I] [get_bd_ports SPI0_SCLK_I]

create_bd_port -dir O SPI0_SCLK_O
connect_bd_net [get_bd_pins /ps_sys_7/SPI0_SCLK_O] [get_bd_ports SPI0_SCLK_O]

create_bd_port -dir I SPI0_MOSI_I
connect_bd_net [get_bd_pins /ps_sys_7/SPI0_MOSI_I] [get_bd_ports SPI0_MOSI_I]

create_bd_port -dir O SPI0_MOSI_O
connect_bd_net [get_bd_pins /ps_sys_7/SPI0_MOSI_O] [get_bd_ports SPI0_MOSI_O]

create_bd_port -dir I SPI0_MISO_I
connect_bd_net [get_bd_pins /ps_sys_7/SPI0_MISO_I] [get_bd_ports SPI0_MISO_I]

create_bd_port -dir I SPI0_SS_I
connect_bd_net [get_bd_pins /ps_sys_7/SPI0_SS_I] [get_bd_ports SPI0_SS_I]

create_bd_port -dir O SPI0_SS_O
connect_bd_net [get_bd_pins /ps_sys_7/SPI0_SS_O] [get_bd_ports SPI0_SS_O]

create_bd_port -dir O SPI0_SS1_O
connect_bd_net [get_bd_pins /ps_sys_7/SPI0_SS1_O] [get_bd_ports SPI0_SS1_O]

create_bd_port -dir O SPI0_SS2_O
connect_bd_net [get_bd_pins /ps_sys_7/SPI0_SS2_O] [get_bd_ports SPI0_SS2_O]

create_bd_port -dir I SPI1_SCLK_I
connect_bd_net [get_bd_pins /ps_sys_7/SPI1_SCLK_I] [get_bd_ports SPI1_SCLK_I]

create_bd_port -dir O SPI1_SCLK_O
connect_bd_net [get_bd_pins /ps_sys_7/SPI1_SCLK_O] [get_bd_ports SPI1_SCLK_O]

create_bd_port -dir I SPI1_MOSI_I
connect_bd_net [get_bd_pins /ps_sys_7/SPI1_MOSI_I] [get_bd_ports SPI1_MOSI_I]

create_bd_port -dir O SPI1_MOSI_O
connect_bd_net [get_bd_pins /ps_sys_7/SPI1_MOSI_O] [get_bd_ports SPI1_MOSI_O]

create_bd_port -dir I SPI1_MISO_I
connect_bd_net [get_bd_pins /ps_sys_7/SPI1_MISO_I] [get_bd_ports SPI1_MISO_I]

create_bd_port -dir I SPI1_SS_I
connect_bd_net [get_bd_pins /ps_sys_7/SPI1_SS_I] [get_bd_ports SPI1_SS_I]

create_bd_port -dir O SPI1_SS_O
connect_bd_net [get_bd_pins /ps_sys_7/SPI1_SS_O] [get_bd_ports SPI1_SS_O]

create_bd_port -dir O SPI1_SS1_O
connect_bd_net [get_bd_pins /ps_sys_7/SPI1_SS1_O] [get_bd_ports SPI1_SS1_O]

create_bd_port -dir O SPI1_SS2_O
connect_bd_net [get_bd_pins /ps_sys_7/SPI1_SS2_O] [get_bd_ports SPI1_SS2_O]

create_bd_port -dir O -type clk FCLK_CLK0
connect_bd_net [get_bd_pins /ps_sys_7/FCLK_CLK0] [get_bd_ports FCLK_CLK0]

connect_bd_net [get_bd_pins ps_sys_7/FCLK_CLK0] [get_bd_pins axi_interconnect/ACLK]

connect_bd_net [get_bd_pins axi_interconnect/S00_ACLK] [get_bd_pins ps_sys_7/FCLK_CLK0]

connect_bd_net [get_bd_pins axi_interconnect/M00_ACLK] [get_bd_pins ps_sys_7/FCLK_CLK0]

connect_bd_net [get_bd_pins ps_sys_7/M_AXI_GP0_ACLK] [get_bd_pins ps_sys_7/FCLK_CLK0]

connect_bd_net [get_bd_pins axi_interconnect/M00_ARESETN] [get_bd_pins ps_sys_reset/peripheral_aresetn]

connect_bd_net [get_bd_pins axi_interconnect/S00_ARESETN] [get_bd_pins ps_sys_reset/peripheral_aresetn]

connect_bd_net [get_bd_pins axi_interconnect/ARESETN] [get_bd_pins ps_sys_reset/peripheral_aresetn]

connect_bd_intf_net [get_bd_intf_pins ps_sys_7/M_AXI_GP0] -boundary_type upper [get_bd_intf_pins axi_interconnect/S00_AXI]

create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI

set_property CONFIG.PROTOCOL [get_property CONFIG.PROTOCOL [get_bd_intf_pins ps_sys_7/M_AXI_GP0]] [get_bd_intf_ports M_AXI]
set_property CONFIG.HAS_REGION [get_property CONFIG.HAS_REGION [get_bd_intf_pins ps_sys_7/M_AXI_GP0]] [get_bd_intf_ports M_AXI]
set_property CONFIG.NUM_READ_OUTSTANDING [get_property CONFIG.NUM_READ_OUTSTANDING [get_bd_intf_pins ps_sys_7/M_AXI_GP0]] [get_bd_intf_ports M_AXI]
set_property CONFIG.NUM_WRITE_OUTSTANDING [get_property CONFIG.NUM_WRITE_OUTSTANDING [get_bd_intf_pins ps_sys_7/M_AXI_GP0]] [get_bd_intf_ports M_AXI]

set_property CONFIG.PROTOCOL AXI4LITE [get_bd_intf_ports /M_AXI]

# connect_bd_net [get_bd_pins ps_sys_7/S_AXI_HP0_ACLK] [get_bd_pins ps_sys_7/FCLK_CLK0]
#
# connect_bd_net [get_bd_pins ps_sys_7/S_AXI_HP1_ACLK] [get_bd_pins ps_sys_7/FCLK_CLK0]

connect_bd_intf_net [get_bd_intf_pins axi_interconnect/M00_AXI] [get_bd_intf_ports M_AXI]

set_property CONFIG.ASSOCIATED_BUSIF {M_AXI} [get_bd_ports /FCLK_CLK0]

assign_bd_address

set_property offset 0x40000000 [get_bd_addr_segs {ps_sys_7/Data/SEG_M_AXI_Reg}]
set_property range 1G [get_bd_addr_segs {ps_sys_7/Data/SEG_M_AXI_Reg}]

regenerate_bd_layout

make_wrapper -files [get_files system_ps.bd] -top -import -fileset sources_1

set_property synth_checkpoint_mode None [get_files system_ps.bd]

update_compile_order -fileset sources_1
