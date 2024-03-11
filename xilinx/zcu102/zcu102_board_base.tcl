# board basics

set_msg_config -id "Common 17-55" -new_severity WARNING

reorder_files -fileset constrs_1 -front [get_files zcu102_board_base_constr.tcl]

#create a base axi offset for addresses in the system_base

set address_offset 0x90000000

#BD METHOD
create_bd_design "system_ps"
update_compile_order -fileset sources_1

ip_vlvn_version_check "xilinx.com:ip:zynq_ultra_ps_e:3.4"

create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.4 sys_ps8

set_property CONFIG.PSU__USE__IRQ1 {1} [get_bd_cells sys_ps8]
set_property CONFIG.PSU__USE__S_AXI_GP2 {1} [get_bd_cells sys_ps8]
set_property CONFIG.PSU__USE__S_AXI_GP3 {1} [get_bd_cells sys_ps8]
set_property CONFIG.PSU__SAXIGP2__DATA_WIDTH {64} [get_bd_cells sys_ps8]
set_property CONFIG.PSU__SAXIGP3__DATA_WIDTH {64} [get_bd_cells sys_ps8]
set_property CONFIG.PSU__FPGA_PL0_ENABLE 1 [get_bd_cells sys_ps8]
set_property CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL {IOPLL} [get_bd_cells sys_ps8]
set_property CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ 100 [get_bd_cells sys_ps8]
set_property CONFIG.PSU__FPGA_PL1_ENABLE 1 [get_bd_cells sys_ps8]
set_property CONFIG.PSU__FPGA_PL2_ENABLE 1 [get_bd_cells sys_ps8]
set_property CONFIG.PSU__CRL_APB__PL1_REF_CTRL__SRCSEL {IOPLL} [get_bd_cells sys_ps8]
set_property CONFIG.PSU__CRL_APB__PL1_REF_CTRL__FREQMHZ 250 [get_bd_cells sys_ps8]
set_property CONFIG.PSU__CRL_APB__PL2_REF_CTRL__SRCSEL {IOPLL} [get_bd_cells sys_ps8]
set_property CONFIG.PSU__CRL_APB__PL2_REF_CTRL__FREQMHZ 500 [get_bd_cells sys_ps8]
set_property CONFIG.PSU__SPI0__PERIPHERAL__ENABLE 1 [get_bd_cells sys_ps8]
set_property CONFIG.PSU__SPI0__PERIPHERAL__IO {EMIO} [get_bd_cells sys_ps8]
set_property CONFIG.PSU__SPI0__GRP_SS1__ENABLE 1 [get_bd_cells sys_ps8]
set_property CONFIG.PSU__SPI0__GRP_SS2__ENABLE 1 [get_bd_cells sys_ps8]
set_property CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__FREQMHZ 100 [get_bd_cells sys_ps8]
set_property CONFIG.PSU__SPI1__PERIPHERAL__ENABLE 1 [get_bd_cells sys_ps8]
set_property CONFIG.PSU__SPI1__PERIPHERAL__IO EMIO [get_bd_cells sys_ps8]
set_property CONFIG.PSU__SPI1__GRP_SS1__ENABLE 1 [get_bd_cells sys_ps8]
set_property CONFIG.PSU__SPI1__GRP_SS2__ENABLE 1 [get_bd_cells sys_ps8]
set_property CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__FREQMHZ 100 [get_bd_cells sys_ps8]
set_property CONFIG.PSU__GPIO_EMIO__PERIPHERAL__ENABLE 1 [get_bd_cells sys_ps8]

apply_bd_automation -rule xilinx.com:bd_rule:zynq_ultra_ps_e -config {apply_board_preset 1}  [get_bd_cells sys_ps8]

set_property CONFIG.PSU__USE__IRQ0 {0} [get_bd_cells sys_ps8]

set_property CONFIG.PSU__USE__M_AXI_GP2 {1} [get_bd_cells sys_ps8]
set_property CONFIG.PSU__MAXIGP2__DATA_WIDTH {32} [get_bd_cells sys_ps8]
set_property CONFIG.PSU__USE__M_AXI_GP0 {0} [get_bd_cells sys_ps8]
set_property CONFIG.PSU__USE__M_AXI_GP1 {0} [get_bd_cells sys_ps8]

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

#create ports
create_bd_port -dir O -from 0 -to 0 -type rst peripheral_aresetn
connect_bd_net [get_bd_pins /ps_sys_reset/peripheral_aresetn] [get_bd_ports peripheral_aresetn]

create_bd_port -dir O -type clk pl_clk0
connect_bd_net [get_bd_pins /sys_ps8/pl_clk0] [get_bd_ports pl_clk0]

create_bd_port -dir O -type clk pl_clk1
connect_bd_net [get_bd_pins /sys_ps8/pl_clk1] [get_bd_ports pl_clk1]

create_bd_port -dir O -type clk pl_clk2
connect_bd_net [get_bd_pins /sys_ps8/pl_clk2] [get_bd_ports pl_clk2]

create_bd_port -dir I -from 94 -to 0 gpio_i
connect_bd_net [get_bd_pins /sys_ps8/emio_gpio_i] [get_bd_ports gpio_i]

create_bd_port -dir O -from 94 -to 0 gpio_o
connect_bd_net [get_bd_pins /sys_ps8/emio_gpio_o] [get_bd_ports gpio_o]

create_bd_port -dir O -from 94 -to 0 gpio_t
connect_bd_net [get_bd_pins /sys_ps8/emio_gpio_t] [get_bd_ports gpio_t]

connect_bd_net [get_bd_pins sys_ps8/pl_resetn0] [get_bd_pins ps_sys_reset/ext_reset_in]

connect_bd_net [get_bd_pins sys_ps8/pl_clk0] [get_bd_pins ps_sys_reset/slowest_sync_clk]

create_bd_port -dir I -type clk -freq_hz 100000000 S_AXI_HP0_ACLK
connect_bd_net [get_bd_pins /sys_ps8/saxihp0_fpd_aclk] [get_bd_ports S_AXI_HP0_ACLK]

create_bd_port -dir I -type clk -freq_hz 100000000 S_AXI_HP1_ACLK
connect_bd_net [get_bd_pins /sys_ps8/saxihp1_fpd_aclk] [get_bd_ports S_AXI_HP1_ACLK]

connect_bd_net [get_bd_pins sys_ps8/maxihpm0_lpd_aclk] [get_bd_pins sys_ps8/pl_clk0]

create_bd_port -dir I -from 7 -to 0 -type intr pl_ps_irq1
set_property CONFIG.SENSITIVITY EDGE_RISING [get_bd_ports pl_ps_irq1]
connect_bd_net [get_bd_ports pl_ps_irq1] [get_bd_pins sys_ps8/pl_ps_irq1]

create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_HP1
set_property -dict [list CONFIG.ID_WIDTH [get_property CONFIG.ID_WIDTH [get_bd_intf_pins sys_ps8/S_AXI_HP1_FPD]] CONFIG.DATA_WIDTH [get_property CONFIG.DATA_WIDTH [get_bd_intf_pins sys_ps8/S_AXI_HP1_FPD]] CONFIG.ADDR_WIDTH [get_property CONFIG.ADDR_WIDTH [get_bd_intf_pins sys_ps8/S_AXI_HP1_FPD]] CONFIG.AWUSER_WIDTH [get_property CONFIG.AWUSER_WIDTH [get_bd_intf_pins sys_ps8/S_AXI_HP1_FPD]] CONFIG.ARUSER_WIDTH [get_property CONFIG.ARUSER_WIDTH [get_bd_intf_pins sys_ps8/S_AXI_HP1_FPD]] CONFIG.HAS_REGION [get_property CONFIG.HAS_REGION [get_bd_intf_pins sys_ps8/S_AXI_HP1_FPD]] CONFIG.NUM_READ_OUTSTANDING [get_property CONFIG.NUM_READ_OUTSTANDING [get_bd_intf_pins sys_ps8/S_AXI_HP1_FPD]] CONFIG.NUM_WRITE_OUTSTANDING [get_property CONFIG.NUM_WRITE_OUTSTANDING [get_bd_intf_pins sys_ps8/S_AXI_HP1_FPD]]] [get_bd_intf_ports S_AXI_HP1]
connect_bd_intf_net [get_bd_intf_pins sys_ps8/S_AXI_HP1_FPD] [get_bd_intf_ports S_AXI_HP1]

create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_HP0
set_property -dict [list CONFIG.ID_WIDTH [get_property CONFIG.ID_WIDTH [get_bd_intf_pins sys_ps8/S_AXI_HP0_FPD]] CONFIG.DATA_WIDTH [get_property CONFIG.DATA_WIDTH [get_bd_intf_pins sys_ps8/S_AXI_HP0_FPD]] CONFIG.ADDR_WIDTH [get_property CONFIG.ADDR_WIDTH [get_bd_intf_pins sys_ps8/S_AXI_HP0_FPD]] CONFIG.AWUSER_WIDTH [get_property CONFIG.AWUSER_WIDTH [get_bd_intf_pins sys_ps8/S_AXI_HP0_FPD]] CONFIG.ARUSER_WIDTH [get_property CONFIG.ARUSER_WIDTH [get_bd_intf_pins sys_ps8/S_AXI_HP0_FPD]] CONFIG.HAS_REGION [get_property CONFIG.HAS_REGION [get_bd_intf_pins sys_ps8/S_AXI_HP0_FPD]] CONFIG.NUM_READ_OUTSTANDING [get_property CONFIG.NUM_READ_OUTSTANDING [get_bd_intf_pins sys_ps8/S_AXI_HP0_FPD]] CONFIG.NUM_WRITE_OUTSTANDING [get_property CONFIG.NUM_WRITE_OUTSTANDING [get_bd_intf_pins sys_ps8/S_AXI_HP0_FPD]]] [get_bd_intf_ports S_AXI_HP0]
connect_bd_intf_net [get_bd_intf_pins sys_ps8/S_AXI_HP0_FPD] [get_bd_intf_ports S_AXI_HP0]

create_bd_port -dir I spi0_sclk_i
connect_bd_net [get_bd_pins /sys_ps8/emio_spi0_sclk_i] [get_bd_ports spi0_sclk_i]

create_bd_port -dir O spi0_sclk_o
connect_bd_net [get_bd_pins /sys_ps8/emio_spi0_sclk_o] [get_bd_ports spi0_sclk_o]

create_bd_port -dir O spi0_sclk_t
connect_bd_net [get_bd_pins /sys_ps8/emio_spi0_sclk_t] [get_bd_ports spi0_sclk_t]

create_bd_port -dir I spi0_m_i
connect_bd_net [get_bd_pins /sys_ps8/emio_spi0_m_i] [get_bd_ports spi0_m_i]

create_bd_port -dir O spi0_m_o
connect_bd_net [get_bd_pins /sys_ps8/emio_spi0_m_o] [get_bd_ports spi0_m_o]

create_bd_port -dir O spi0_mo_t
connect_bd_net [get_bd_pins /sys_ps8/emio_spi0_mo_t] [get_bd_ports spi0_mo_t]

create_bd_port -dir I spi0_s_i
connect_bd_net [get_bd_pins /sys_ps8/emio_spi0_s_i] [get_bd_ports spi0_s_i]

create_bd_port -dir O spi0_s_o
connect_bd_net [get_bd_pins /sys_ps8/emio_spi0_s_o] [get_bd_ports spi0_s_o]

create_bd_port -dir O spi0_so_t
connect_bd_net [get_bd_pins /sys_ps8/emio_spi0_so_t] [get_bd_ports spi0_so_t]

create_bd_port -dir I spi0_ss_i_n
connect_bd_net [get_bd_pins /sys_ps8/emio_spi0_ss_i_n] [get_bd_ports spi0_ss_i_n]

create_bd_port -dir O spi0_ss_o_n
connect_bd_net [get_bd_pins /sys_ps8/emio_spi0_ss_o_n] [get_bd_ports spi0_ss_o_n]

create_bd_port -dir O spi0_ss1_o_n
connect_bd_net [get_bd_pins /sys_ps8/emio_spi0_ss1_o_n] [get_bd_ports spi0_ss1_o_n]

create_bd_port -dir O spi0_ss2_o_n
connect_bd_net [get_bd_pins /sys_ps8/emio_spi0_ss2_o_n] [get_bd_ports spi0_ss2_o_n]

create_bd_port -dir O spi0_ss_n_t
connect_bd_net [get_bd_pins /sys_ps8/emio_spi0_ss_n_t] [get_bd_ports spi0_ss_n_t]

create_bd_port -dir I spi1_sclk_i
connect_bd_net [get_bd_pins /sys_ps8/emio_spi1_sclk_i] [get_bd_ports spi1_sclk_i]

create_bd_port -dir O spi1_sclk_o
connect_bd_net [get_bd_pins /sys_ps8/emio_spi1_sclk_o] [get_bd_ports spi1_sclk_o]

create_bd_port -dir O spi1_sclk_t
connect_bd_net [get_bd_pins /sys_ps8/emio_spi1_sclk_t] [get_bd_ports spi1_sclk_t]

create_bd_port -dir I spi1_m_i
connect_bd_net [get_bd_pins /sys_ps8/emio_spi1_m_i] [get_bd_ports spi1_m_i]

create_bd_port -dir O spi1_m_o
connect_bd_net [get_bd_pins /sys_ps8/emio_spi1_m_o] [get_bd_ports spi1_m_o]

create_bd_port -dir O spi1_mo_t
connect_bd_net [get_bd_pins /sys_ps8/emio_spi1_mo_t] [get_bd_ports spi1_mo_t]

create_bd_port -dir I spi1_s_i
connect_bd_net [get_bd_pins /sys_ps8/emio_spi1_s_i] [get_bd_ports spi1_s_i]

create_bd_port -dir O spi1_s_o
connect_bd_net [get_bd_pins /sys_ps8/emio_spi1_s_o] [get_bd_ports spi1_s_o]

create_bd_port -dir O spi1_so_t
connect_bd_net [get_bd_pins /sys_ps8/emio_spi1_so_t] [get_bd_ports spi1_so_t]

create_bd_port -dir I spi1_ss_i_n
connect_bd_net [get_bd_pins /sys_ps8/emio_spi1_ss_i_n] [get_bd_ports spi1_ss_i_n]

create_bd_port -dir O spi1_ss_o_n
connect_bd_net [get_bd_pins /sys_ps8/emio_spi1_ss_o_n] [get_bd_ports spi1_ss_o_n]

create_bd_port -dir O spi1_ss1_o_n
connect_bd_net [get_bd_pins /sys_ps8/emio_spi1_ss1_o_n] [get_bd_ports spi1_ss1_o_n]

create_bd_port -dir O spi1_ss2_o_n
connect_bd_net [get_bd_pins /sys_ps8/emio_spi1_ss2_o_n] [get_bd_ports spi1_ss2_o_n]

create_bd_port -dir O spi1_ss_n_t
connect_bd_net [get_bd_pins /sys_ps8/emio_spi1_ss_n_t] [get_bd_ports spi1_ss_n_t]

connect_bd_net [get_bd_pins axi_interconnect/ACLK] [get_bd_pins sys_ps8/pl_clk0]
connect_bd_net [get_bd_pins axi_interconnect/S00_ACLK] [get_bd_pins sys_ps8/pl_clk0]
connect_bd_net [get_bd_pins axi_interconnect/M00_ACLK] [get_bd_pins sys_ps8/pl_clk0]

connect_bd_net [get_bd_pins axi_interconnect/S00_ARESETN] [get_bd_pins axi_interconnect/ARESETN] -boundary_type upper
connect_bd_net [get_bd_pins axi_interconnect/M00_ARESETN] [get_bd_pins axi_interconnect/S00_ARESETN] -boundary_type upper
connect_bd_net [get_bd_pins ps_sys_reset/peripheral_aresetn] [get_bd_pins axi_interconnect/M00_ARESETN]

connect_bd_intf_net -boundary_type upper [get_bd_intf_pins axi_interconnect/S00_AXI] [get_bd_intf_pins sys_ps8/M_AXI_HPM0_LPD]

create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI
set_property -dict [list CONFIG.ADDR_WIDTH [get_property CONFIG.ADDR_WIDTH [get_bd_intf_pins sys_ps8/M_AXI_HPM0_LPD]] CONFIG.HAS_REGION [get_property CONFIG.HAS_REGION [get_bd_intf_pins sys_ps8/M_AXI_HPM0_LPD]] CONFIG.NUM_READ_OUTSTANDING [get_property CONFIG.NUM_READ_OUTSTANDING [get_bd_intf_pins sys_ps8/M_AXI_HPM0_LPD]] CONFIG.NUM_WRITE_OUTSTANDING [get_property CONFIG.NUM_WRITE_OUTSTANDING [get_bd_intf_pins sys_ps8/M_AXI_HPM0_LPD]]] [get_bd_intf_ports M_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_interconnect/M00_AXI] [get_bd_intf_ports M_AXI]

set_property CONFIG.PROTOCOL AXI4LITE [get_bd_intf_ports /M_AXI]
# set_property CONFIG.ADDR_WIDTH 32 [get_bd_intf_ports /M_AXI]

set_property CONFIG.FREQ_HZ [expr {1000000 * [get_property CONFIG.PSU__CRL_APB__PL0_REF_CTRL__ACT_FREQMHZ [get_bd_cells sys_ps8]]}] [get_bd_intf_ports /M_AXI]

assign_bd_address

set_property range 512M [get_bd_addr_segs {sys_ps8/Data/SEG_M_AXI_Reg}]

regenerate_bd_layout

make_wrapper -files [get_files system_ps.bd] -top -import -fileset sources_1

set_property synth_checkpoint_mode None [get_files system_ps.bd]

update_compile_order -fileset sources_1

