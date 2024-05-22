# a10soc carrier qsys

# hanpilot carrier qsys
package require qsys
# package require quartus::device

# set project_name system_wrapper
# create the system "system_ps_wrapper"
proc do_create_system_ps_wrapper {} {

  set system_type a10soc

#   add_instance sys_clk clock_source
#   add_interface sys_clk clock sink
#   set_interface_property sys_clk EXPORT_OF sys_clk.out_clk_1_in
#   add_interface sys_rstn reset sink
#   set_interface_property sys_rstn EXPORT_OF sys_clk.out_clk_1_in_reset
#   set_instance_parameter_value sys_clk {clockFrequency} {100000000.0}
#   set_instance_parameter_value sys_clk {clockFrequencyKnown} {1}
#   set_instance_parameter_value sys_clk {resetSynchronousEdges} {DEASSERT}

  # hps
  # round-about way - qsys-script doesn't support {*}?


  variable  hps_io_list

  proc set_hps_io {io_index io_type} {

    global hps_io_list
    lappend hps_io_list $io_type
  }

  set_hps_io  IO_DEDICATED_04   SDMMC:D0
  set_hps_io  IO_DEDICATED_05   SDMMC:CMD
  set_hps_io  IO_DEDICATED_06   SDMMC:CCLK
  set_hps_io  IO_DEDICATED_07   SDMMC:D1
  set_hps_io  IO_DEDICATED_08   SDMMC:D2
  set_hps_io  IO_DEDICATED_09   SDMMC:D3
  set_hps_io  IO_DEDICATED_10   NONE
  set_hps_io  IO_DEDICATED_11   NONE
  set_hps_io  IO_DEDICATED_12   SDMMC:D4
  set_hps_io  IO_DEDICATED_13   SDMMC:D5
  set_hps_io  IO_DEDICATED_14   SDMMC:D6
  set_hps_io  IO_DEDICATED_15   SDMMC:D7
  set_hps_io  IO_DEDICATED_16   UART1:TX
  set_hps_io  IO_DEDICATED_17   UART1:RX
  set_hps_io  IO_SHARED_Q1_01   USB0:CLK
  set_hps_io  IO_SHARED_Q1_02   USB0:STP
  set_hps_io  IO_SHARED_Q1_03   USB0:DIR
  set_hps_io  IO_SHARED_Q1_04   USB0:DATA0
  set_hps_io  IO_SHARED_Q1_05   USB0:DATA1
  set_hps_io  IO_SHARED_Q1_06   USB0:NXT
  set_hps_io  IO_SHARED_Q1_07   USB0:DATA2
  set_hps_io  IO_SHARED_Q1_08   USB0:DATA3
  set_hps_io  IO_SHARED_Q1_09   USB0:DATA4
  set_hps_io  IO_SHARED_Q1_10   USB0:DATA5
  set_hps_io  IO_SHARED_Q1_11   USB0:DATA6
  set_hps_io  IO_SHARED_Q1_12   USB0:DATA7
  set_hps_io  IO_SHARED_Q2_01   EMAC0:TX_CLK
  set_hps_io  IO_SHARED_Q2_02   EMAC0:TX_CTL
  set_hps_io  IO_SHARED_Q2_03   EMAC0:RX_CLK
  set_hps_io  IO_SHARED_Q2_04   EMAC0:RX_CTL
  set_hps_io  IO_SHARED_Q2_05   EMAC0:TXD0
  set_hps_io  IO_SHARED_Q2_06   EMAC0:TXD1
  set_hps_io  IO_SHARED_Q2_07   EMAC0:RXD0
  set_hps_io  IO_SHARED_Q2_08   EMAC0:RXD1
  set_hps_io  IO_SHARED_Q2_09   EMAC0:TXD2
  set_hps_io  IO_SHARED_Q2_10   EMAC0:TXD3
  set_hps_io  IO_SHARED_Q2_11   EMAC0:RXD2
  set_hps_io  IO_SHARED_Q2_12   EMAC0:RXD3
  set_hps_io  IO_SHARED_Q3_01   NONE
  set_hps_io  IO_SHARED_Q3_02   NONE
  set_hps_io  IO_SHARED_Q3_03   NONE
  set_hps_io  IO_SHARED_Q3_04   NONE
  set_hps_io  IO_SHARED_Q3_05   NONE
  set_hps_io  IO_SHARED_Q3_06   GPIO
  set_hps_io  IO_SHARED_Q3_07   NONE
  set_hps_io  IO_SHARED_Q3_08   NONE
  set_hps_io  IO_SHARED_Q3_09   NONE
  set_hps_io  IO_SHARED_Q3_10   NONE
  set_hps_io  IO_SHARED_Q3_11   MDIO0:MDIO
  set_hps_io  IO_SHARED_Q3_12   MDIO0:MDC
  set_hps_io  IO_SHARED_Q4_01   I2C1:SDA
  set_hps_io  IO_SHARED_Q4_02   I2C1:SCL
  set_hps_io  IO_SHARED_Q4_03   GPIO
  set_hps_io  IO_SHARED_Q4_04   NONE
  set_hps_io  IO_SHARED_Q4_05   GPIO
  set_hps_io  IO_SHARED_Q4_06   GPIO
  set_hps_io  IO_SHARED_Q4_07   NONE
  set_hps_io  IO_SHARED_Q4_08   NONE
  set_hps_io  IO_SHARED_Q4_09   NONE
  set_hps_io  IO_SHARED_Q4_10   NONE
  set_hps_io  IO_SHARED_Q4_11   NONE
  set_hps_io  IO_SHARED_Q4_12   NONE

  add_instance sys_hps altera_arria10_hps
  set_instance_parameter_value sys_hps {MPU_EVENTS_Enable} {0}
  set_instance_parameter_value sys_hps {F2S_Width} {0}
  set_instance_parameter_value sys_hps {S2F_Width} {0}
  set_instance_parameter_value sys_hps {LWH2F_Enable} {1}
  set_instance_parameter_value sys_hps {F2SDRAM_PORT_CONFIG} {5}
  set_instance_parameter_value sys_hps {F2SDRAM0_ENABLED} {1}
  set_instance_parameter_value sys_hps {F2SDRAM2_ENABLED} {0}
  set_instance_parameter_value sys_hps {F2SINTERRUPT_Enable} {1}
  set_instance_parameter_value sys_hps {HPS_IO_Enable} $hps_io_list
  set_instance_parameter_value sys_hps {SDMMC_PinMuxing} {IO}
  set_instance_parameter_value sys_hps {SDMMC_Mode} {8-bit}
  set_instance_parameter_value sys_hps {USB0_PinMuxing} {IO}
  set_instance_parameter_value sys_hps {USB0_Mode} {default}
  set_instance_parameter_value sys_hps {EMAC0_PinMuxing} {IO}
  set_instance_parameter_value sys_hps {EMAC0_Mode} {RGMII_with_MDIO}
  set_instance_parameter_value sys_hps {UART1_PinMuxing} {IO}
  set_instance_parameter_value sys_hps {UART1_Mode} {No_flow_control}
  set_instance_parameter_value sys_hps {I2C1_PinMuxing} {IO}
  set_instance_parameter_value sys_hps {I2C1_Mode} {default}
  set_instance_parameter_value sys_hps {F2H_COLD_RST_Enable} {1}
  set_instance_parameter_value sys_hps {H2F_USER0_CLK_Enable} {1}
  set_instance_parameter_value sys_hps {H2F_USER0_CLK_FREQ} {200}
#   set_instance_parameter_value sys_hps {H2F_USER1_CLK_Enable} {1}
#   set_instance_parameter_value sys_hps {H2F_USER1_CLK_FREQ} {250}
  set_instance_parameter_value sys_hps {CLK_SDMMC_SOURCE} {1}


  # clock-&-reset
  add_instance sys_clk altera_clock_bridge
  set_instance_parameter_value sys_clk EXPLICIT_CLOCK_RATE {100000000.0}
  set_instance_parameter_value sys_clk NUM_CLOCK_OUTPUTS {2}

  add_instance sys_rst altera_reset_bridge
  set_instance_parameter_value sys_rst ACTIVE_LOW_RESET {1}
  set_instance_parameter_value sys_rst NUM_RESET_OUTPUTS {2}
  set_instance_parameter_value sys_rst SYNCHRONOUS_EDGES {deassert}
  set_instance_parameter_value sys_rst SYNC_RESET {0}
  set_instance_parameter_value sys_rst USE_RESET_REQUEST {0}

  add_instance sys_axi_bridge altera_axi_bridge
  set_instance_parameter_value sys_axi_bridge AXI_VERSION {AXI4-Lite}
  set_instance_parameter_value sys_axi_bridge DATA_WIDTH {32}
  set_instance_parameter_value sys_axi_bridge ADDR_WIDTH {18}

  add_instance sys_irq_bridge altera_irq_bridge
  set_instance_parameter_value sys_irq_bridge IRQ_WIDTH {4}

  add_interface sys_hps_dma_data conduit end
  set_interface_property sys_hps_dma_data EXPORT_OF sys_hps.f2sdram0_data

  add_interface sys_clk clock sink
  set_interface_property sys_clk EXPORT_OF sys_clk.in_clk
  add_interface sys_rstn reset sink
  set_interface_property sys_rstn EXPORT_OF sys_rst.in_reset
  add_interface s_axi_clk clock source
  set_interface_property s_axi_clk EXPORT_OF sys_clk.out_clk
  add_connection sys_clk.out_clk_1 sys_rst.clk
  add_connection sys_rst.out_reset_1 sys_axi_bridge.clk_reset
  add_connection sys_clk.out_clk_1 sys_axi_bridge.clk
  add_connection sys_hps.h2f_lw_axi_master sys_axi_bridge.s0
  add_interface m_axi conduit end
  set_interface_property m_axi EXPORT_OF sys_axi_bridge.m0
  add_interface s_axi_aresetn reset source
  set_interface_property s_axi_aresetn EXPORT_OF sys_rst.out_reset
  add_interface sys_hps_rstn reset sink
  set_interface_property sys_hps_rstn EXPORT_OF sys_hps.f2h_cold_reset_req
  add_interface sys_hps_out_rstn reset source
  set_interface_property sys_hps_out_rstn EXPORT_OF sys_hps.h2f_reset
  add_connection sys_clk.out_clk_1 sys_hps.h2f_lw_axi_clock
  add_connection sys_rst.out_reset_1 sys_hps.h2f_lw_axi_reset
  add_interface sys_hps_io conduit end
  set_interface_property sys_hps_io EXPORT_OF sys_hps.hps_io
  add_interface sys_hps_fpga_irq1 conduit end
  set_interface_property sys_hps_fpga_irq1 EXPORT_OF sys_hps.f2h_irq1
  add_connection sys_clk.out_clk_1 sys_hps.f2sdram0_clock
  add_connection sys_rst.out_reset_1 sys_hps.f2sdram0_reset
  add_interface sys_delay_clk clock source
  set_interface_property sys_delay_clk EXPORT_OF sys_hps.h2f_user0_clock
  set_interface_property irq  EXPORT_OF sys_irq_bridge.receiver_irq
  add_connection sys_rst.out_reset_1 sys_irq_bridge.clk_reset
  add_connection sys_clk.out_clk_1 sys_irq_bridge.clk

  # ddr4 interface

  add_instance sys_hps_ddr4_cntrl altera_emif_a10_hps
  set_instance_parameter_value sys_hps_ddr4_cntrl {PROTOCOL_ENUM} {PROTOCOL_DDR4}
  set_instance_parameter_value sys_hps_ddr4_cntrl {PHY_DDR4_MEM_CLK_FREQ_MHZ} {1066.667}
  set_instance_parameter_value sys_hps_ddr4_cntrl {PHY_DDR4_DEFAULT_REF_CLK_FREQ} {0}
  set_instance_parameter_value sys_hps_ddr4_cntrl {PHY_DDR4_USER_REF_CLK_FREQ_MHZ} {133.333}
  set_instance_parameter_value sys_hps_ddr4_cntrl {MEM_DDR4_BANK_GROUP_WIDTH} {1}
  set_instance_parameter_value sys_hps_ddr4_cntrl {MEM_DDR4_ALERT_N_PLACEMENT_ENUM} {DDR4_ALERT_N_PLACEMENT_DATA_LANES}
  set_instance_parameter_value sys_hps_ddr4_cntrl {MEM_DDR4_ALERT_N_DQS_GROUP} {3}
  set_instance_parameter_value sys_hps_ddr4_cntrl {MEM_DDR4_READ_DBI} {1}
  set_instance_parameter_value sys_hps_ddr4_cntrl {MEM_DDR4_TCL} {20}
  set_instance_parameter_value sys_hps_ddr4_cntrl {MEM_DDR4_WTCL} {18}
  set_instance_parameter_value sys_hps_ddr4_cntrl {MEM_DDR4_RTT_NOM_ENUM} {DDR4_RTT_NOM_RZQ_6}
  set_instance_parameter_value sys_hps_ddr4_cntrl {PHY_DDR4_DEFAULT_IO} {0}
  set_instance_parameter_value sys_hps_ddr4_cntrl {PHY_DDR4_USER_AC_IO_STD_ENUM} {IO_STD_SSTL_12}
  set_instance_parameter_value sys_hps_ddr4_cntrl {PHY_DDR4_USER_AC_MODE_ENUM} {OUT_OCT_40_CAL}
  set_instance_parameter_value sys_hps_ddr4_cntrl {PHY_DDR4_USER_CK_IO_STD_ENUM} {IO_STD_SSTL_12}
  set_instance_parameter_value sys_hps_ddr4_cntrl {PHY_DDR4_USER_CK_MODE_ENUM} {OUT_OCT_40_CAL}
  set_instance_parameter_value sys_hps_ddr4_cntrl {PHY_DDR4_USER_DATA_IO_STD_ENUM} {IO_STD_POD_12}
  set_instance_parameter_value sys_hps_ddr4_cntrl {PHY_DDR4_USER_DATA_OUT_MODE_ENUM} {OUT_OCT_34_CAL}
  set_instance_parameter_value sys_hps_ddr4_cntrl {PHY_DDR4_USER_DATA_IN_MODE_ENUM} {IN_OCT_60_CAL}
  set_instance_parameter_value sys_hps_ddr4_cntrl {PHY_DDR4_USER_PLL_REF_CLK_IO_STD_ENUM} {IO_STD_LVDS_NO_OCT}
  set_instance_parameter_value sys_hps_ddr4_cntrl {PHY_DDR4_USER_RZQ_IO_STD_ENUM} {IO_STD_CMOS_12}
  set_instance_parameter_value sys_hps_ddr4_cntrl {MEM_DDR4_SPEEDBIN_ENUM} {DDR4_SPEEDBIN_2666}
  set_instance_parameter_value sys_hps_ddr4_cntrl {MEM_DDR4_TRCD_NS} {14.25}
  set_instance_parameter_value sys_hps_ddr4_cntrl {MEM_DDR4_TRP_NS} {14.25}
  set_instance_parameter_value sys_hps_ddr4_cntrl {MEM_DDR4_TRRD_S_CYC} {7}
  set_instance_parameter_value sys_hps_ddr4_cntrl {MEM_DDR4_TRRD_L_CYC} {8}
  set_instance_parameter_value sys_hps_ddr4_cntrl {MEM_DDR4_TFAW_NS} {30.0}
  set_instance_parameter_value sys_hps_ddr4_cntrl {MEM_DDR4_TWTR_S_CYC} {4}
  set_instance_parameter_value sys_hps_ddr4_cntrl {MEM_DDR4_TWTR_L_CYC} {10}
  set_instance_parameter_value sys_hps_ddr4_cntrl {MEM_DDR4_LRDIMM_VREFDQ_VALUE} {1D}
  set_instance_parameter_value sys_hps_ddr4_cntrl {DIAG_DDR4_SKIP_CA_LEVEL} {0}
  set_instance_parameter_value sys_hps_ddr4_cntrl {SHORT_QSYS_INTERFACE_NAMES} {0}

  add_interface sys_hps_ddr_rstn reset sink
  set_interface_property sys_hps_ddr_rstn EXPORT_OF sys_hps_ddr4_cntrl.global_reset_reset_sink
  add_connection sys_hps_ddr4_cntrl.hps_emif_conduit_end sys_hps.emif
  add_interface sys_hps_ddr conduit end
  set_interface_property sys_hps_ddr EXPORT_OF sys_hps_ddr4_cntrl.mem_conduit_end
  add_interface sys_hps_ddr_oct conduit end
  set_interface_property sys_hps_ddr_oct EXPORT_OF sys_hps_ddr4_cntrl.oct_conduit_end
  add_interface sys_hps_ddr_ref_clk clock sink
  set_interface_property sys_hps_ddr_ref_clk EXPORT_OF sys_hps_ddr4_cntrl.pll_ref_clk_clock_sink

  # gpio-bd

  add_instance sys_gpio_bd altera_avalon_pio
  set_instance_parameter_value sys_gpio_bd {direction} {InOut}
  set_instance_parameter_value sys_gpio_bd {generateIRQ} {1}
  set_instance_parameter_value sys_gpio_bd {width} {32}

  add_connection sys_rst.out_reset_1 sys_gpio_bd.reset
  add_connection sys_clk.out_clk_1 sys_gpio_bd.clk
  add_interface sys_gpio_bd conduit end
  set_interface_property sys_gpio_bd EXPORT_OF sys_gpio_bd.external_connection

  # gpio-in

  add_instance sys_gpio_in altera_avalon_pio
  set_instance_parameter_value sys_gpio_in {direction} {Input}
  set_instance_parameter_value sys_gpio_in {generateIRQ} {1}
  set_instance_parameter_value sys_gpio_in {width} {32}

  add_connection sys_rst.out_reset_1 sys_gpio_in.reset
  add_connection sys_clk.out_clk_1 sys_gpio_in.clk
  add_interface sys_gpio_in conduit end
  set_interface_property sys_gpio_in EXPORT_OF sys_gpio_in.external_connection

  # gpio-out

  add_instance sys_gpio_out altera_avalon_pio
  set_instance_parameter_value sys_gpio_out {direction} {Output}
  set_instance_parameter_value sys_gpio_out {generateIRQ} {0}
  set_instance_parameter_value sys_gpio_out {width} {32}

  add_connection sys_rst.out_reset_1 sys_gpio_out.reset
  add_connection sys_clk.out_clk_1 sys_gpio_out.clk
  add_interface sys_gpio_out conduit end
  set_interface_property sys_gpio_out EXPORT_OF sys_gpio_out.external_connection

  # spi

  add_instance sys_spi altera_avalon_spi
  set_instance_parameter_value sys_spi {clockPhase} {0}
  set_instance_parameter_value sys_spi {clockPolarity} {0}
  set_instance_parameter_value sys_spi {dataWidth} {8}
  set_instance_parameter_value sys_spi {masterSPI} {1}
  set_instance_parameter_value sys_spi {numberOfSlaves} {8}
  set_instance_parameter_value sys_spi {targetClockRate} {10000000.0}

  add_connection sys_rst.out_reset_1 sys_spi.reset
  add_connection sys_clk.out_clk_1 sys_spi.clk
  add_interface sys_spi conduit end
  set_interface_property sys_spi EXPORT_OF sys_spi.external

  # base-addresses

  add_connection sys_hps.h2f_lw_axi_master sys_gpio_bd.s1
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_bd.s1 baseAddress 0x00000010

  add_connection sys_hps.h2f_lw_axi_master sys_gpio_in.s1
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_in.s1 baseAddress 0x00000000

  add_connection sys_hps.h2f_lw_axi_master sys_gpio_out.s1
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_out.s1 baseAddress 0x00000020

  add_connection sys_hps.h2f_lw_axi_master sys_spi.spi_control_port
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_spi.spi_control_port baseAddress 0x00000040

  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_axi_bridge.s0 baseAddress 0x00040000

  # interrupts

  add_connection sys_hps.f2h_irq0 sys_gpio_in.irq
  set_connection_parameter_value sys_hps.f2h_irq0/sys_gpio_in.irq irqNumber 5

  add_connection sys_hps.f2h_irq0 sys_gpio_bd.irq
  set_connection_parameter_value sys_hps.f2h_irq0/sys_gpio_bd.irq irqNumber 6

  add_connection sys_hps.f2h_irq0 sys_spi.irq
  set_connection_parameter_value sys_hps.f2h_irq0/sys_spi.irq irqNumber 7

  add_connection sys_hps.f2h_irq0 sys_irq_bridge.sender0_irq
  add_connection sys_hps.f2h_irq0 sys_irq_bridge.sender1_irq
  add_connection sys_hps.f2h_irq0 sys_irq_bridge.sender2_irq
  add_connection sys_hps.f2h_irq0 sys_irq_bridge.sender3_irq

  # architecture specific global variables

  set xcvr_reconfig_addr_width 10
}

set_module_property FILE {system_ps_wrapper.qsys}
set_module_property GENERATION_ID {0x00000000}
set_module_property NAME {system_ps_wrapper}

set_module_property BONUS_DATA {<?xml version="1.0" encoding="UTF-8"?>
  <bonusData>
  <element __value="sys_axi_bridge">
    <datum __value="_sortIndex" value="3" type="int" />
  </element>
  <element __value="sys_clk">
    <datum __value="_sortIndex" value="1" type="int" />
  </element>
  <element __value="sys_gpio_bd">
    <datum __value="_sortIndex" value="5" type="int" />
  </element>
  <element __value="sys_gpio_in">
    <datum __value="_sortIndex" value="6" type="int" />
  </element>
  <element __value="sys_gpio_out">
    <datum __value="_sortIndex" value="7" type="int" />
  </element>
  <element __value="sys_hps">
    <datum __value="_sortIndex" value="0" type="int" />
  </element>
  <element __value="sys_hps_ddr4_cntrl">
    <datum __value="_sortIndex" value="4" type="int" />
  </element>
  <element __value="sys_rst">
    <datum __value="_sortIndex" value="2" type="int" />
  </element>
  <element __value="sys_spi">
    <datum __value="_sortIndex" value="8" type="int" />
  </element>
  </bonusData>
}

create_system system_ps_wrapper
set_project_property DEVICE_FAMILY {Arria 10}
set_project_property DEVICE 10AS066N3F40E2SG

do_create_system_ps_wrapper

# foreach {param value} {} { set ad_project_params($param) $value }

set_domain_assignment {$system} {qsys_mm.maxAdditionalLatency} {4}
set_domain_assignment {$system} {qsys_mm.clockCrossingAdapter} {AUTO}
set_domain_assignment {$system} {qsys_mm.burstAdapterImplementation} {PER_BURST_TYPE_CONVERTER}

sync_sysinfo_parameters

save_system {system_ps_wrapper.qsys}
