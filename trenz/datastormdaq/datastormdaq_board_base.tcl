# a10soc carrier qsys

# hanpilot carrier qsys
package require qsys
# package require quartus::device

# set project_name system_wrapper
# create the system "system_ps_wrapper"
proc do_create_system_ps_wrapper {} {

  set system_type c5soc

  # Instances and instance parameters
    # (disabled instances are intentionally culled)

  add_instance sys_hps altera_hps
  set_instance_parameter_value sys_hps {ABSTRACT_REAL_COMPARE_TEST} {0}
  set_instance_parameter_value sys_hps {ABS_RAM_MEM_INIT_FILENAME} {meminit}
  set_instance_parameter_value sys_hps {ACV_PHY_CLK_ADD_FR_PHASE} {0.0}
  set_instance_parameter_value sys_hps {AC_PACKAGE_DESKEW} {0}
  set_instance_parameter_value sys_hps {AC_ROM_USER_ADD_0} {0_0000_0000_0000}
  set_instance_parameter_value sys_hps {AC_ROM_USER_ADD_1} {0_0000_0000_1000}
  set_instance_parameter_value sys_hps {ADDR_ORDER} {0}
  set_instance_parameter_value sys_hps {ADD_EFFICIENCY_MONITOR} {0}
  set_instance_parameter_value sys_hps {ADD_EXTERNAL_SEQ_DEBUG_NIOS} {0}
  set_instance_parameter_value sys_hps {ADVANCED_CK_PHASES} {0}
  set_instance_parameter_value sys_hps {ADVERTIZE_SEQUENCER_SW_BUILD_FILES} {0}
  set_instance_parameter_value sys_hps {AFI_DEBUG_INFO_WIDTH} {32}
  set_instance_parameter_value sys_hps {ALTMEMPHY_COMPATIBLE_MODE} {0}
  set_instance_parameter_value sys_hps {AP_MODE} {0}
  set_instance_parameter_value sys_hps {AP_MODE_EN} {0}
  set_instance_parameter_value sys_hps {AUTO_PD_CYCLES} {0}
  set_instance_parameter_value sys_hps {AUTO_POWERDN_EN} {0}
  set_instance_parameter_value sys_hps {AVL_DATA_WIDTH_PORT} {32 32 32 32 32 32}
  set_instance_parameter_value sys_hps {AVL_MAX_SIZE} {4}
  set_instance_parameter_value sys_hps {BONDING_OUT_ENABLED} {0}
  set_instance_parameter_value sys_hps {BOOTFROMFPGA_Enable} {0}
  set_instance_parameter_value sys_hps {BSEL} {1}
  set_instance_parameter_value sys_hps {BSEL_EN} {0}
  set_instance_parameter_value sys_hps {BYTE_ENABLE} {1}
  set_instance_parameter_value sys_hps {C2P_WRITE_CLOCK_ADD_PHASE} {0.0}
  set_instance_parameter_value sys_hps {CALIBRATION_MODE} {Skip}
  set_instance_parameter_value sys_hps {CALIB_REG_WIDTH} {8}
  set_instance_parameter_value sys_hps {CAN0_Mode} {N/A}
  set_instance_parameter_value sys_hps {CAN0_PinMuxing} {Unused}
  set_instance_parameter_value sys_hps {CAN1_Mode} {N/A}
  set_instance_parameter_value sys_hps {CAN1_PinMuxing} {Unused}
  set_instance_parameter_value sys_hps {CFG_DATA_REORDERING_TYPE} {INTER_BANK}
  set_instance_parameter_value sys_hps {CFG_REORDER_DATA} {1}
  set_instance_parameter_value sys_hps {CFG_TCCD_NS} {2.5}
  set_instance_parameter_value sys_hps {COMMAND_PHASE} {0.0}
  set_instance_parameter_value sys_hps {CONTROLLER_LATENCY} {5}
  set_instance_parameter_value sys_hps {CORE_DEBUG_CONNECTION} {EXPORT}
  set_instance_parameter_value sys_hps {CPORT_TYPE_PORT} {Bidirectional Bidirectional Bidirectional Bidirectional Bidirectional Bidirectional}
  set_instance_parameter_value sys_hps {CSEL} {0}
  set_instance_parameter_value sys_hps {CSEL_EN} {0}
  set_instance_parameter_value sys_hps {CTI_Enable} {0}
  set_instance_parameter_value sys_hps {CTL_AUTOPCH_EN} {0}
  set_instance_parameter_value sys_hps {CTL_CMD_QUEUE_DEPTH} {8}
  set_instance_parameter_value sys_hps {CTL_CSR_CONNECTION} {INTERNAL_JTAG}
  set_instance_parameter_value sys_hps {CTL_CSR_ENABLED} {0}
  set_instance_parameter_value sys_hps {CTL_CSR_READ_ONLY} {1}
  set_instance_parameter_value sys_hps {CTL_DEEP_POWERDN_EN} {0}
  set_instance_parameter_value sys_hps {CTL_DYNAMIC_BANK_ALLOCATION} {0}
  set_instance_parameter_value sys_hps {CTL_DYNAMIC_BANK_NUM} {4}
  set_instance_parameter_value sys_hps {CTL_ECC_AUTO_CORRECTION_ENABLED} {0}
  set_instance_parameter_value sys_hps {CTL_ECC_ENABLED} {0}
  set_instance_parameter_value sys_hps {CTL_ENABLE_BURST_INTERRUPT} {0}
  set_instance_parameter_value sys_hps {CTL_ENABLE_BURST_TERMINATE} {0}
  set_instance_parameter_value sys_hps {CTL_HRB_ENABLED} {0}
  set_instance_parameter_value sys_hps {CTL_LOOK_AHEAD_DEPTH} {4}
  set_instance_parameter_value sys_hps {CTL_SELF_REFRESH_EN} {0}
  set_instance_parameter_value sys_hps {CTL_USR_REFRESH_EN} {0}
  set_instance_parameter_value sys_hps {CTL_ZQCAL_EN} {0}
  set_instance_parameter_value sys_hps {CUT_NEW_FAMILY_TIMING} {1}
  set_instance_parameter_value sys_hps {DAT_DATA_WIDTH} {32}
  set_instance_parameter_value sys_hps {DEBUGAPB_Enable} {0}
  set_instance_parameter_value sys_hps {DEBUG_MODE} {0}
  set_instance_parameter_value sys_hps {DEVICE_DEPTH} {1}
  set_instance_parameter_value sys_hps {DEVICE_FAMILY_PARAM} {}
  set_instance_parameter_value sys_hps {DISABLE_CHILD_MESSAGING} {0}
  set_instance_parameter_value sys_hps {DISCRETE_FLY_BY} {1}
  set_instance_parameter_value sys_hps {DLL_SHARING_MODE} {None}
  set_instance_parameter_value sys_hps {DMA_Enable} {No No No No No No No No}
  set_instance_parameter_value sys_hps {DQS_DQSN_MODE} {DIFFERENTIAL}
  set_instance_parameter_value sys_hps {DQ_INPUT_REG_USE_CLKN} {0}
  set_instance_parameter_value sys_hps {DUPLICATE_AC} {0}
  set_instance_parameter_value sys_hps {ED_EXPORT_SEQ_DEBUG} {0}
  set_instance_parameter_value sys_hps {EMAC0_Mode} {N/A}
  set_instance_parameter_value sys_hps {EMAC0_PTP} {0}
  set_instance_parameter_value sys_hps {EMAC0_PinMuxing} {Unused}
  set_instance_parameter_value sys_hps {EMAC1_Mode} {RGMII}
  set_instance_parameter_value sys_hps {EMAC1_PTP} {0}
  set_instance_parameter_value sys_hps {EMAC1_PinMuxing} {HPS I/O Set 0}
  set_instance_parameter_value sys_hps {ENABLE_ABS_RAM_MEM_INIT} {0}
  set_instance_parameter_value sys_hps {ENABLE_BONDING} {0}
  set_instance_parameter_value sys_hps {ENABLE_BURST_MERGE} {0}
  set_instance_parameter_value sys_hps {ENABLE_CTRL_AVALON_INTERFACE} {1}
  set_instance_parameter_value sys_hps {ENABLE_DELAY_CHAIN_WRITE} {0}
  set_instance_parameter_value sys_hps {ENABLE_EMIT_BFM_MASTER} {0}
  set_instance_parameter_value sys_hps {ENABLE_EXPORT_SEQ_DEBUG_BRIDGE} {0}
  set_instance_parameter_value sys_hps {ENABLE_EXTRA_REPORTING} {0}
  set_instance_parameter_value sys_hps {ENABLE_ISS_PROBES} {0}
  set_instance_parameter_value sys_hps {ENABLE_NON_DESTRUCTIVE_CALIB} {0}
  set_instance_parameter_value sys_hps {ENABLE_NON_DES_CAL} {0}
  set_instance_parameter_value sys_hps {ENABLE_NON_DES_CAL_TEST} {0}
  set_instance_parameter_value sys_hps {ENABLE_SEQUENCER_MARGINING_ON_BY_DEFAULT} {0}
  set_instance_parameter_value sys_hps {ENABLE_USER_ECC} {0}
  set_instance_parameter_value sys_hps {EXPORT_AFI_HALF_CLK} {0}
  set_instance_parameter_value sys_hps {EXTRA_SETTINGS} {}
  set_instance_parameter_value sys_hps {F2SCLK_COLDRST_Enable} {0}
  set_instance_parameter_value sys_hps {F2SCLK_DBGRST_Enable} {0}
  set_instance_parameter_value sys_hps {F2SCLK_PERIPHCLK_Enable} {0}
  set_instance_parameter_value sys_hps {F2SCLK_SDRAMCLK_Enable} {0}
  set_instance_parameter_value sys_hps {F2SCLK_WARMRST_Enable} {0}
  set_instance_parameter_value sys_hps {F2SDRAM_Type} {AXI-3}
  set_instance_parameter_value sys_hps {F2SDRAM_Width} {32}
  set_instance_parameter_value sys_hps {F2SINTERRUPT_Enable} {1}
  set_instance_parameter_value sys_hps {F2S_Width} {0}
  set_instance_parameter_value sys_hps {FIX_READ_LATENCY} {8}
  set_instance_parameter_value sys_hps {FORCED_NON_LDC_ADDR_CMD_MEM_CK_INVERT} {0}
  set_instance_parameter_value sys_hps {FORCED_NUM_WRITE_FR_CYCLE_SHIFTS} {0}
  set_instance_parameter_value sys_hps {FORCE_DQS_TRACKING} {AUTO}
  set_instance_parameter_value sys_hps {FORCE_MAX_LATENCY_COUNT_WIDTH} {0}
  set_instance_parameter_value sys_hps {FORCE_SEQUENCER_TCL_DEBUG_MODE} {0}
  set_instance_parameter_value sys_hps {FORCE_SHADOW_REGS} {AUTO}
  set_instance_parameter_value sys_hps {FORCE_SYNTHESIS_LANGUAGE} {}
  set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC0_GTX_CLK} {125}
  set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC0_MD_CLK} {2.5}
  set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC1_GTX_CLK} {125}
  set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC1_MD_CLK} {2.5}
  set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C0_CLK} {100}
  set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C1_CLK} {100}
  set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C2_CLK} {100}
  set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C3_CLK} {100}
  set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_QSPI_SCLK_OUT} {100}
  set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_SDIO_CCLK} {100}
  set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_SPIM0_SCLK_OUT} {100}
  set_instance_parameter_value sys_hps {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_SPIM1_SCLK_OUT} {100}
  set_instance_parameter_value sys_hps {GPIO_Enable} {Yes No No No No No No No No Yes No No No No No No No No No No No No No No No No No No No No No No No No No Yes No No No No Yes Yes Yes Yes Yes No No No Yes No No No No Yes Yes Yes Yes Yes Yes Yes No Yes No No No Yes No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No}
  set_instance_parameter_value sys_hps {GP_Enable} {0}
  set_instance_parameter_value sys_hps {HARD_EMIF} {1}
  set_instance_parameter_value sys_hps {HCX_COMPAT_MODE} {0}
  set_instance_parameter_value sys_hps {HHP_HPS} {1}
  set_instance_parameter_value sys_hps {HHP_HPS_SIMULATION} {0}
  set_instance_parameter_value sys_hps {HHP_HPS_VERIFICATION} {0}
  set_instance_parameter_value sys_hps {HLGPI_Enable} {0}
  set_instance_parameter_value sys_hps {HPS_PROTOCOL} {DDR3}
  set_instance_parameter_value sys_hps {I2C0_Mode} {I2C}
  set_instance_parameter_value sys_hps {I2C0_PinMuxing} {HPS I/O Set 1}
  set_instance_parameter_value sys_hps {I2C1_Mode} {I2C}
  set_instance_parameter_value sys_hps {I2C1_PinMuxing} {HPS I/O Set 0}
  set_instance_parameter_value sys_hps {I2C2_Mode} {N/A}
  set_instance_parameter_value sys_hps {I2C2_PinMuxing} {Unused}
  set_instance_parameter_value sys_hps {I2C3_Mode} {N/A}
  set_instance_parameter_value sys_hps {I2C3_PinMuxing} {Unused}
  set_instance_parameter_value sys_hps {INCLUDE_BOARD_DELAY_MODEL} {0}
  set_instance_parameter_value sys_hps {INCLUDE_MULTIRANK_BOARD_DELAY_MODEL} {0}
  set_instance_parameter_value sys_hps {IS_ES_DEVICE} {0}
  set_instance_parameter_value sys_hps {LOANIO_Enable} {No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No}
  set_instance_parameter_value sys_hps {LOCAL_ID_WIDTH} {8}
  set_instance_parameter_value sys_hps {LRDIMM_EXTENDED_CONFIG} {0x000000000000000000}
  set_instance_parameter_value sys_hps {LWH2F_Enable} {true}
  set_instance_parameter_value sys_hps {MARGIN_VARIATION_TEST} {0}
  set_instance_parameter_value sys_hps {MAX_PENDING_RD_CMD} {32}
  set_instance_parameter_value sys_hps {MAX_PENDING_WR_CMD} {16}
  set_instance_parameter_value sys_hps {MEM_ASR} {Manual}
  set_instance_parameter_value sys_hps {MEM_ATCL} {Disabled}
  set_instance_parameter_value sys_hps {MEM_AUTO_LEVELING_MODE} {1}
  set_instance_parameter_value sys_hps {MEM_BANKADDR_WIDTH} {3}
  set_instance_parameter_value sys_hps {MEM_BL} {OTF}
  set_instance_parameter_value sys_hps {MEM_BT} {Sequential}
  set_instance_parameter_value sys_hps {MEM_CK_PHASE} {0.0}
  set_instance_parameter_value sys_hps {MEM_CK_WIDTH} {1}
  set_instance_parameter_value sys_hps {MEM_CLK_EN_WIDTH} {1}
  set_instance_parameter_value sys_hps {MEM_CLK_FREQ} {333.3}
  set_instance_parameter_value sys_hps {MEM_CLK_FREQ_MAX} {800.0}
  set_instance_parameter_value sys_hps {MEM_COL_ADDR_WIDTH} {10}
  set_instance_parameter_value sys_hps {MEM_CS_WIDTH} {1}
  set_instance_parameter_value sys_hps {MEM_DEVICE} {MISSING_MODEL}
  set_instance_parameter_value sys_hps {MEM_DLL_EN} {1}
  set_instance_parameter_value sys_hps {MEM_DQ_PER_DQS} {8}
  set_instance_parameter_value sys_hps {MEM_DQ_WIDTH} {32}
  set_instance_parameter_value sys_hps {MEM_DRV_STR} {RZQ/6}
  set_instance_parameter_value sys_hps {MEM_FORMAT} {DISCRETE}
  set_instance_parameter_value sys_hps {MEM_GUARANTEED_WRITE_INIT} {0}
  set_instance_parameter_value sys_hps {MEM_IF_BOARD_BASE_DELAY} {10}
  set_instance_parameter_value sys_hps {MEM_IF_DM_PINS_EN} {1}
  set_instance_parameter_value sys_hps {MEM_IF_DQSN_EN} {1}
  set_instance_parameter_value sys_hps {MEM_IF_SIM_VALID_WINDOW} {0}
  set_instance_parameter_value sys_hps {MEM_INIT_EN} {0}
  set_instance_parameter_value sys_hps {MEM_INIT_FILE} {}
  set_instance_parameter_value sys_hps {MEM_MIRROR_ADDRESSING} {0}
  set_instance_parameter_value sys_hps {MEM_NUMBER_OF_DIMMS} {1}
  set_instance_parameter_value sys_hps {MEM_NUMBER_OF_RANKS_PER_DEVICE} {1}
  set_instance_parameter_value sys_hps {MEM_NUMBER_OF_RANKS_PER_DIMM} {1}
  set_instance_parameter_value sys_hps {MEM_PD} {DLL off}
  set_instance_parameter_value sys_hps {MEM_RANK_MULTIPLICATION_FACTOR} {1}
  set_instance_parameter_value sys_hps {MEM_ROW_ADDR_WIDTH} {15}
  set_instance_parameter_value sys_hps {MEM_RTT_NOM} {RZQ/6}
  set_instance_parameter_value sys_hps {MEM_RTT_WR} {Dynamic ODT off}
  set_instance_parameter_value sys_hps {MEM_SRT} {Normal}
  set_instance_parameter_value sys_hps {MEM_TCL} {5}
  set_instance_parameter_value sys_hps {MEM_TFAW_NS} {40.0}
  set_instance_parameter_value sys_hps {MEM_TINIT_US} {500}
  set_instance_parameter_value sys_hps {MEM_TMRD_CK} {4}
  set_instance_parameter_value sys_hps {MEM_TRAS_NS} {35.0}
  set_instance_parameter_value sys_hps {MEM_TRCD_NS} {13.75}
  set_instance_parameter_value sys_hps {MEM_TREFI_US} {7.8}
  set_instance_parameter_value sys_hps {MEM_TRFC_NS} {350.0}
  set_instance_parameter_value sys_hps {MEM_TRP_NS} {13.75}
  set_instance_parameter_value sys_hps {MEM_TRRD_NS} {12.0}
  set_instance_parameter_value sys_hps {MEM_TRTP_NS} {12.0}
  set_instance_parameter_value sys_hps {MEM_TWR_NS} {15.0}
  set_instance_parameter_value sys_hps {MEM_TWTR} {4}
  set_instance_parameter_value sys_hps {MEM_USER_LEVELING_MODE} {Leveling}
  set_instance_parameter_value sys_hps {MEM_VENDOR} {JEDEC}
  set_instance_parameter_value sys_hps {MEM_VERBOSE} {1}
  set_instance_parameter_value sys_hps {MEM_VOLTAGE} {1.5V DDR3}
  set_instance_parameter_value sys_hps {MEM_WTCL} {5}
  set_instance_parameter_value sys_hps {MPU_EVENTS_Enable} {0}
  set_instance_parameter_value sys_hps {MRS_MIRROR_PING_PONG_ATSO} {0}
  set_instance_parameter_value sys_hps {MULTICAST_EN} {0}
  set_instance_parameter_value sys_hps {NAND_Mode} {N/A}
  set_instance_parameter_value sys_hps {NAND_PinMuxing} {Unused}
  set_instance_parameter_value sys_hps {NEXTGEN} {1}
  set_instance_parameter_value sys_hps {NIOS_ROM_DATA_WIDTH} {32}
  set_instance_parameter_value sys_hps {NUM_DLL_SHARING_INTERFACES} {1}
  set_instance_parameter_value sys_hps {NUM_EXTRA_REPORT_PATH} {10}
  set_instance_parameter_value sys_hps {NUM_OCT_SHARING_INTERFACES} {1}
  set_instance_parameter_value sys_hps {NUM_OF_PORTS} {1}
  set_instance_parameter_value sys_hps {NUM_PLL_SHARING_INTERFACES} {1}
  set_instance_parameter_value sys_hps {OCT_SHARING_MODE} {None}
  set_instance_parameter_value sys_hps {P2C_READ_CLOCK_ADD_PHASE} {0.0}
  set_instance_parameter_value sys_hps {PACKAGE_DESKEW} {0}
  set_instance_parameter_value sys_hps {PARSE_FRIENDLY_DEVICE_FAMILY_PARAM} {}
  set_instance_parameter_value sys_hps {PARSE_FRIENDLY_DEVICE_FAMILY_PARAM_VALID} {0}
  set_instance_parameter_value sys_hps {PHY_CSR_CONNECTION} {INTERNAL_JTAG}
  set_instance_parameter_value sys_hps {PHY_CSR_ENABLED} {0}
  set_instance_parameter_value sys_hps {PHY_ONLY} {0}
  set_instance_parameter_value sys_hps {PINGPONGPHY_EN} {0}
  set_instance_parameter_value sys_hps {PLL_ADDR_CMD_CLK_DIV_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_ADDR_CMD_CLK_FREQ_PARAM} {0.0}
  set_instance_parameter_value sys_hps {PLL_ADDR_CMD_CLK_FREQ_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_ADDR_CMD_CLK_MULT_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_ADDR_CMD_CLK_PHASE_PS_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_ADDR_CMD_CLK_PHASE_PS_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_AFI_CLK_DIV_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_AFI_CLK_FREQ_PARAM} {0.0}
  set_instance_parameter_value sys_hps {PLL_AFI_CLK_FREQ_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_AFI_CLK_MULT_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_AFI_CLK_PHASE_PS_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_AFI_CLK_PHASE_PS_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_AFI_HALF_CLK_DIV_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_AFI_HALF_CLK_FREQ_PARAM} {0.0}
  set_instance_parameter_value sys_hps {PLL_AFI_HALF_CLK_FREQ_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_AFI_HALF_CLK_MULT_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_AFI_HALF_CLK_PHASE_PS_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_AFI_HALF_CLK_PHASE_PS_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_AFI_PHY_CLK_DIV_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_AFI_PHY_CLK_FREQ_PARAM} {0.0}
  set_instance_parameter_value sys_hps {PLL_AFI_PHY_CLK_FREQ_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_AFI_PHY_CLK_MULT_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_AFI_PHY_CLK_PHASE_PS_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_AFI_PHY_CLK_PHASE_PS_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_C2P_WRITE_CLK_DIV_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_C2P_WRITE_CLK_FREQ_PARAM} {0.0}
  set_instance_parameter_value sys_hps {PLL_C2P_WRITE_CLK_FREQ_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_C2P_WRITE_CLK_MULT_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_C2P_WRITE_CLK_PHASE_PS_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_C2P_WRITE_CLK_PHASE_PS_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_CLK_PARAM_VALID} {0}
  set_instance_parameter_value sys_hps {PLL_CONFIG_CLK_DIV_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_CONFIG_CLK_FREQ_PARAM} {0.0}
  set_instance_parameter_value sys_hps {PLL_CONFIG_CLK_FREQ_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_CONFIG_CLK_MULT_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_CONFIG_CLK_PHASE_PS_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_CONFIG_CLK_PHASE_PS_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_DR_CLK_DIV_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_DR_CLK_FREQ_PARAM} {0.0}
  set_instance_parameter_value sys_hps {PLL_DR_CLK_FREQ_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_DR_CLK_MULT_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_DR_CLK_PHASE_PS_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_DR_CLK_PHASE_PS_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_HR_CLK_DIV_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_HR_CLK_FREQ_PARAM} {0.0}
  set_instance_parameter_value sys_hps {PLL_HR_CLK_FREQ_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_HR_CLK_MULT_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_HR_CLK_PHASE_PS_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_HR_CLK_PHASE_PS_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_LOCATION} {Top_Bottom}
  set_instance_parameter_value sys_hps {PLL_MEM_CLK_DIV_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_MEM_CLK_FREQ_PARAM} {0.0}
  set_instance_parameter_value sys_hps {PLL_MEM_CLK_FREQ_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_MEM_CLK_MULT_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_MEM_CLK_PHASE_PS_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_MEM_CLK_PHASE_PS_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_NIOS_CLK_DIV_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_NIOS_CLK_FREQ_PARAM} {0.0}
  set_instance_parameter_value sys_hps {PLL_NIOS_CLK_FREQ_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_NIOS_CLK_MULT_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_NIOS_CLK_PHASE_PS_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_NIOS_CLK_PHASE_PS_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_P2C_READ_CLK_DIV_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_P2C_READ_CLK_FREQ_PARAM} {0.0}
  set_instance_parameter_value sys_hps {PLL_P2C_READ_CLK_FREQ_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_P2C_READ_CLK_MULT_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_P2C_READ_CLK_PHASE_PS_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_P2C_READ_CLK_PHASE_PS_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_SHARING_MODE} {None}
  set_instance_parameter_value sys_hps {PLL_WRITE_CLK_DIV_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_WRITE_CLK_FREQ_PARAM} {0.0}
  set_instance_parameter_value sys_hps {PLL_WRITE_CLK_FREQ_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {PLL_WRITE_CLK_MULT_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_WRITE_CLK_PHASE_PS_PARAM} {0}
  set_instance_parameter_value sys_hps {PLL_WRITE_CLK_PHASE_PS_SIM_STR_PARAM} {}
  set_instance_parameter_value sys_hps {POWER_OF_TWO_BUS} {0}
  set_instance_parameter_value sys_hps {PRIORITY_PORT} {1 1 1 1 1 1}
  set_instance_parameter_value sys_hps {QSPI_Mode} {1 SS}
  set_instance_parameter_value sys_hps {QSPI_PinMuxing} {HPS I/O Set 0}
  set_instance_parameter_value sys_hps {RATE} {Full}
  set_instance_parameter_value sys_hps {RDIMM_CONFIG} {0000000000000000}
  set_instance_parameter_value sys_hps {READ_DQ_DQS_CLOCK_SOURCE} {INVERTED_DQS_BUS}
  set_instance_parameter_value sys_hps {READ_FIFO_SIZE} {8}
  set_instance_parameter_value sys_hps {REFRESH_BURST_VALIDATION} {0}
  set_instance_parameter_value sys_hps {REFRESH_INTERVAL} {15000}
  set_instance_parameter_value sys_hps {REF_CLK_FREQ} {25.0}
  set_instance_parameter_value sys_hps {REF_CLK_FREQ_MAX_PARAM} {0.0}
  set_instance_parameter_value sys_hps {REF_CLK_FREQ_MIN_PARAM} {0.0}
  set_instance_parameter_value sys_hps {REF_CLK_FREQ_PARAM_VALID} {0}
  set_instance_parameter_value sys_hps {S2FCLK_COLDRST_Enable} {0}
  set_instance_parameter_value sys_hps {S2FCLK_PENDINGRST_Enable} {0}
  set_instance_parameter_value sys_hps {S2FCLK_USER0CLK_Enable} {0}
  set_instance_parameter_value sys_hps {S2FCLK_USER1CLK_Enable} {1}
  set_instance_parameter_value sys_hps {S2FCLK_USER1CLK_FREQ} {100.0}
  set_instance_parameter_value sys_hps {S2FCLK_USER2CLK} {4}
  set_instance_parameter_value sys_hps {S2FCLK_USER2CLK_Enable} {0}
  set_instance_parameter_value sys_hps {S2FCLK_USER2CLK_FREQ} {100.0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_CAN_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_CLOCKPERIPHERAL_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_CTI_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_DMA_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_EMAC_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_FPGAMANAGER_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_GPIO_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_I2CEMAC_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_I2CPERIPHERAL_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_L4TIMER_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_NAND_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_OSCTIMER_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_QSPI_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_SDMMC_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_SPIMASTER_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_SPISLAVE_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_UART_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_USB_Enable} {0}
  set_instance_parameter_value sys_hps {S2FINTERRUPT_WATCHDOG_Enable} {0}
  set_instance_parameter_value sys_hps {S2F_Width} {0}
  set_instance_parameter_value sys_hps {SDIO_Mode} {4-bit Data}
  set_instance_parameter_value sys_hps {SDIO_PinMuxing} {HPS I/O Set 0}
  set_instance_parameter_value sys_hps {SEQUENCER_TYPE} {NIOS}
  set_instance_parameter_value sys_hps {SEQ_MODE} {0}
  set_instance_parameter_value sys_hps {SKIP_MEM_INIT} {1}
  set_instance_parameter_value sys_hps {SOPC_COMPAT_RESET} {0}
  set_instance_parameter_value sys_hps {SPEED_GRADE} {7}
  set_instance_parameter_value sys_hps {SPIM0_Mode} {N/A}
  set_instance_parameter_value sys_hps {SPIM0_PinMuxing} {Unused}
  set_instance_parameter_value sys_hps {SPIM1_Mode} {N/A}
  set_instance_parameter_value sys_hps {SPIM1_PinMuxing} {Unused}
  set_instance_parameter_value sys_hps {SPIS0_Mode} {N/A}
  set_instance_parameter_value sys_hps {SPIS0_PinMuxing} {Unused}
  set_instance_parameter_value sys_hps {SPIS1_Mode} {N/A}
  set_instance_parameter_value sys_hps {SPIS1_PinMuxing} {Unused}
  set_instance_parameter_value sys_hps {STARVE_LIMIT} {10}
  set_instance_parameter_value sys_hps {STM_Enable} {0}
  set_instance_parameter_value sys_hps {TEST_Enable} {0}
  set_instance_parameter_value sys_hps {TIMING_BOARD_AC_EYE_REDUCTION_H} {0.0}
  set_instance_parameter_value sys_hps {TIMING_BOARD_AC_EYE_REDUCTION_SU} {0.0}
  set_instance_parameter_value sys_hps {TIMING_BOARD_AC_SKEW} {0.03}
  set_instance_parameter_value sys_hps {TIMING_BOARD_AC_SLEW_RATE} {1.0}
  set_instance_parameter_value sys_hps {TIMING_BOARD_AC_TO_CK_SKEW} {0.0}
  set_instance_parameter_value sys_hps {TIMING_BOARD_CK_CKN_SLEW_RATE} {2.0}
  set_instance_parameter_value sys_hps {TIMING_BOARD_DELTA_DQS_ARRIVAL_TIME} {0.0}
  set_instance_parameter_value sys_hps {TIMING_BOARD_DELTA_READ_DQS_ARRIVAL_TIME} {0.0}
  set_instance_parameter_value sys_hps {TIMING_BOARD_DERATE_METHOD} {AUTO}
  set_instance_parameter_value sys_hps {TIMING_BOARD_DQS_DQSN_SLEW_RATE} {2.0}
  set_instance_parameter_value sys_hps {TIMING_BOARD_DQ_EYE_REDUCTION} {0.0}
  set_instance_parameter_value sys_hps {TIMING_BOARD_DQ_SLEW_RATE} {1.0}
  set_instance_parameter_value sys_hps {TIMING_BOARD_DQ_TO_DQS_SKEW} {0.0}
  set_instance_parameter_value sys_hps {TIMING_BOARD_ISI_METHOD} {AUTO}
  set_instance_parameter_value sys_hps {TIMING_BOARD_MAX_CK_DELAY} {0.03}
  set_instance_parameter_value sys_hps {TIMING_BOARD_MAX_DQS_DELAY} {0.02}
  set_instance_parameter_value sys_hps {TIMING_BOARD_READ_DQ_EYE_REDUCTION} {0.0}
  set_instance_parameter_value sys_hps {TIMING_BOARD_SKEW_BETWEEN_DIMMS} {0.05}
  set_instance_parameter_value sys_hps {TIMING_BOARD_SKEW_BETWEEN_DQS} {0.08}
  set_instance_parameter_value sys_hps {TIMING_BOARD_SKEW_CKDQS_DIMM_MAX} {0.16}
  set_instance_parameter_value sys_hps {TIMING_BOARD_SKEW_CKDQS_DIMM_MIN} {0.09}
  set_instance_parameter_value sys_hps {TIMING_BOARD_SKEW_WITHIN_DQS} {0.01}
  set_instance_parameter_value sys_hps {TIMING_BOARD_TDH} {0.0}
  set_instance_parameter_value sys_hps {TIMING_BOARD_TDS} {0.0}
  set_instance_parameter_value sys_hps {TIMING_BOARD_TIH} {0.0}
  set_instance_parameter_value sys_hps {TIMING_BOARD_TIS} {0.0}
  set_instance_parameter_value sys_hps {TIMING_TDH} {65}
  set_instance_parameter_value sys_hps {TIMING_TDQSCK} {225}
  set_instance_parameter_value sys_hps {TIMING_TDQSCKDL} {1200}
  set_instance_parameter_value sys_hps {TIMING_TDQSCKDM} {900}
  set_instance_parameter_value sys_hps {TIMING_TDQSCKDS} {450}
  set_instance_parameter_value sys_hps {TIMING_TDQSH} {0.35}
  set_instance_parameter_value sys_hps {TIMING_TDQSQ} {100}
  set_instance_parameter_value sys_hps {TIMING_TDQSS} {0.27}
  set_instance_parameter_value sys_hps {TIMING_TDS} {30}
  set_instance_parameter_value sys_hps {TIMING_TDSH} {0.18}
  set_instance_parameter_value sys_hps {TIMING_TDSS} {0.18}
  set_instance_parameter_value sys_hps {TIMING_TIH} {140}
  set_instance_parameter_value sys_hps {TIMING_TIS} {180}
  set_instance_parameter_value sys_hps {TIMING_TQH} {0.38}
  set_instance_parameter_value sys_hps {TIMING_TQHS} {300}
  set_instance_parameter_value sys_hps {TIMING_TQSH} {0.4}
  set_instance_parameter_value sys_hps {TPIUFPGA_Enable} {0}
  set_instance_parameter_value sys_hps {TPIUFPGA_alt} {0}
  set_instance_parameter_value sys_hps {TRACE_Mode} {N/A}
  set_instance_parameter_value sys_hps {TRACE_PinMuxing} {Unused}
  set_instance_parameter_value sys_hps {TRACKING_ERROR_TEST} {0}
  set_instance_parameter_value sys_hps {TRACKING_WATCH_TEST} {0}
  set_instance_parameter_value sys_hps {TREFI} {35100}
  set_instance_parameter_value sys_hps {TRFC} {350}
  set_instance_parameter_value sys_hps {UART0_Mode} {No Flow Control}
  set_instance_parameter_value sys_hps {UART0_PinMuxing} {HPS I/O Set 0}
  set_instance_parameter_value sys_hps {UART1_Mode} {N/A}
  set_instance_parameter_value sys_hps {UART1_PinMuxing} {Unused}
  set_instance_parameter_value sys_hps {USB0_Mode} {N/A}
  set_instance_parameter_value sys_hps {USB0_PinMuxing} {Unused}
  set_instance_parameter_value sys_hps {USB1_Mode} {SDR}
  set_instance_parameter_value sys_hps {USB1_PinMuxing} {HPS I/O Set 0}
  set_instance_parameter_value sys_hps {USER_DEBUG_LEVEL} {1}
  set_instance_parameter_value sys_hps {USE_AXI_ADAPTOR} {0}
  set_instance_parameter_value sys_hps {USE_FAKE_PHY} {0}
  set_instance_parameter_value sys_hps {USE_MEM_CLK_FREQ} {0}
  set_instance_parameter_value sys_hps {USE_MM_ADAPTOR} {1}
  set_instance_parameter_value sys_hps {USE_SEQUENCER_BFM} {0}
  set_instance_parameter_value sys_hps {WEIGHT_PORT} {0 0 0 0 0 0}
  set_instance_parameter_value sys_hps {WRBUFFER_ADDR_WIDTH} {6}
  set_instance_parameter_value sys_hps {can0_clk_div} {1}
  set_instance_parameter_value sys_hps {can1_clk_div} {1}
  set_instance_parameter_value sys_hps {configure_advanced_parameters} {0}
  set_instance_parameter_value sys_hps {customize_device_pll_info} {0}
  set_instance_parameter_value sys_hps {dbctrl_stayosc1} {1}
  set_instance_parameter_value sys_hps {dbg_at_clk_div} {0}
  set_instance_parameter_value sys_hps {dbg_clk_div} {1}
  set_instance_parameter_value sys_hps {dbg_trace_clk_div} {0}
  set_instance_parameter_value sys_hps {desired_can0_clk_mhz} {100.0}
  set_instance_parameter_value sys_hps {desired_can1_clk_mhz} {100.0}
  set_instance_parameter_value sys_hps {desired_cfg_clk_mhz} {80.0}
  set_instance_parameter_value sys_hps {desired_emac0_clk_mhz} {250.0}
  set_instance_parameter_value sys_hps {desired_emac1_clk_mhz} {250.0}
  set_instance_parameter_value sys_hps {desired_gpio_db_clk_hz} {32000}
  set_instance_parameter_value sys_hps {desired_l4_mp_clk_mhz} {100.0}
  set_instance_parameter_value sys_hps {desired_l4_sp_clk_mhz} {100.0}
  set_instance_parameter_value sys_hps {desired_mpu_clk_mhz} {800.0}
  set_instance_parameter_value sys_hps {desired_nand_clk_mhz} {12.5}
  set_instance_parameter_value sys_hps {desired_qspi_clk_mhz} {400.0}
  set_instance_parameter_value sys_hps {desired_sdmmc_clk_mhz} {200.0}
  set_instance_parameter_value sys_hps {desired_spi_m_clk_mhz} {200.0}
  set_instance_parameter_value sys_hps {desired_usb_mp_clk_mhz} {200.0}
  set_instance_parameter_value sys_hps {device_pll_info_manual} {{320000000 1600000000} {320000000 1000000000} {800000000 400000000 400000000}}
  set_instance_parameter_value sys_hps {eosc1_clk_mhz} {25.0}
  set_instance_parameter_value sys_hps {eosc2_clk_mhz} {25.0}
  set_instance_parameter_value sys_hps {gpio_db_clk_div} {6249}
  set_instance_parameter_value sys_hps {l3_mp_clk_div} {1}
  set_instance_parameter_value sys_hps {l3_sp_clk_div} {1}
  set_instance_parameter_value sys_hps {l4_mp_clk_div} {1}
  set_instance_parameter_value sys_hps {l4_mp_clk_source} {1}
  set_instance_parameter_value sys_hps {l4_sp_clk_div} {1}
  set_instance_parameter_value sys_hps {l4_sp_clk_source} {1}
  set_instance_parameter_value sys_hps {main_pll_c3} {3}
  set_instance_parameter_value sys_hps {main_pll_c4} {3}
  set_instance_parameter_value sys_hps {main_pll_c5} {15}
  set_instance_parameter_value sys_hps {main_pll_m} {63}
  set_instance_parameter_value sys_hps {main_pll_n} {0}
  set_instance_parameter_value sys_hps {nand_clk_source} {2}
  set_instance_parameter_value sys_hps {periph_pll_c0} {3}
  set_instance_parameter_value sys_hps {periph_pll_c1} {3}
  set_instance_parameter_value sys_hps {periph_pll_c2} {1}
  set_instance_parameter_value sys_hps {periph_pll_c3} {19}
  set_instance_parameter_value sys_hps {periph_pll_c4} {4}
  set_instance_parameter_value sys_hps {periph_pll_c5} {9}
  set_instance_parameter_value sys_hps {periph_pll_m} {79}
  set_instance_parameter_value sys_hps {periph_pll_n} {1}
  set_instance_parameter_value sys_hps {periph_pll_source} {0}
  set_instance_parameter_value sys_hps {qspi_clk_source} {1}
  set_instance_parameter_value sys_hps {sdmmc_clk_source} {2}
  set_instance_parameter_value sys_hps {show_advanced_parameters} {0}
  set_instance_parameter_value sys_hps {show_debug_info_as_warning_msg} {0}
  set_instance_parameter_value sys_hps {show_warning_as_error_msg} {0}
  set_instance_parameter_value sys_hps {spi_m_clk_div} {0}
  set_instance_parameter_value sys_hps {usb_mp_clk_div} {0}
  set_instance_parameter_value sys_hps {use_default_mpu_clk} {1}
  
  add_instance sys_clk altera_clock_bridge
  set_instance_parameter_value sys_clk {EXPLICIT_CLOCK_RATE} {50000000.0}
  set_instance_parameter_value sys_clk {NUM_CLOCK_OUTPUTS} {2}
  
  add_instance sys_rst altera_reset_bridge 
  set_instance_parameter_value sys_rst {ACTIVE_LOW_RESET} {1}
  set_instance_parameter_value sys_rst {NUM_RESET_OUTPUTS} {2}
  set_instance_parameter_value sys_rst {SYNCHRONOUS_EDGES} {deassert}
  set_instance_parameter_value sys_rst {USE_RESET_REQUEST} {0}

  add_instance sys_axi_bridge altera_axi_bridge 
  set_instance_parameter_value sys_axi_bridge {ADDR_WIDTH} {18}
  set_instance_parameter_value sys_axi_bridge {AXI_VERSION} {AXI4}
  set_instance_parameter_value sys_axi_bridge {COMBINED_ACCEPTANCE_CAPABILITY} {16}
  set_instance_parameter_value sys_axi_bridge {COMBINED_ISSUING_CAPABILITY} {16}
  set_instance_parameter_value sys_axi_bridge {DATA_WIDTH} {32}
  set_instance_parameter_value sys_axi_bridge {M0_ID_WIDTH} {8}
  set_instance_parameter_value sys_axi_bridge {READ_ACCEPTANCE_CAPABILITY} {16}
  set_instance_parameter_value sys_axi_bridge {READ_ADDR_USER_WIDTH} {32}
  set_instance_parameter_value sys_axi_bridge {READ_DATA_REORDERING_DEPTH} {1}
  set_instance_parameter_value sys_axi_bridge {READ_DATA_USER_WIDTH} {32}
  set_instance_parameter_value sys_axi_bridge {READ_ISSUING_CAPABILITY} {16}
  set_instance_parameter_value sys_axi_bridge {S0_ID_WIDTH} {12}
  set_instance_parameter_value sys_axi_bridge {USE_M0_ARBURST} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_ARCACHE} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_ARID} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_ARLEN} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_ARLOCK} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_ARQOS} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_ARREGION} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_ARSIZE} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_ARUSER} {0}
  set_instance_parameter_value sys_axi_bridge {USE_M0_AWBURST} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_AWCACHE} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_AWID} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_AWLEN} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_AWLOCK} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_AWQOS} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_AWREGION} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_AWSIZE} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_AWUSER} {0}
  set_instance_parameter_value sys_axi_bridge {USE_M0_BID} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_BRESP} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_BUSER} {0}
  set_instance_parameter_value sys_axi_bridge {USE_M0_RID} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_RLAST} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_RRESP} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_RUSER} {0}
  set_instance_parameter_value sys_axi_bridge {USE_M0_WSTRB} {1}
  set_instance_parameter_value sys_axi_bridge {USE_M0_WUSER} {0}
  set_instance_parameter_value sys_axi_bridge {USE_PIPELINE} {1}
  set_instance_parameter_value sys_axi_bridge {USE_S0_ARCACHE} {1}
  set_instance_parameter_value sys_axi_bridge {USE_S0_ARLOCK} {1}
  set_instance_parameter_value sys_axi_bridge {USE_S0_ARPROT} {1}
  set_instance_parameter_value sys_axi_bridge {USE_S0_ARQOS} {1}
  set_instance_parameter_value sys_axi_bridge {USE_S0_ARREGION} {1}
  set_instance_parameter_value sys_axi_bridge {USE_S0_ARUSER} {0}
  set_instance_parameter_value sys_axi_bridge {USE_S0_AWCACHE} {1}
  set_instance_parameter_value sys_axi_bridge {USE_S0_AWLOCK} {1}
  set_instance_parameter_value sys_axi_bridge {USE_S0_AWPROT} {1}
  set_instance_parameter_value sys_axi_bridge {USE_S0_AWQOS} {1}
  set_instance_parameter_value sys_axi_bridge {USE_S0_AWREGION} {1}
  set_instance_parameter_value sys_axi_bridge {USE_S0_AWUSER} {0}
  set_instance_parameter_value sys_axi_bridge {USE_S0_BRESP} {1}
  set_instance_parameter_value sys_axi_bridge {USE_S0_BUSER} {0}
  set_instance_parameter_value sys_axi_bridge {USE_S0_RRESP} {1}
  set_instance_parameter_value sys_axi_bridge {USE_S0_RUSER} {0}
  set_instance_parameter_value sys_axi_bridge {USE_S0_WLAST} {1}
  set_instance_parameter_value sys_axi_bridge {USE_S0_WUSER} {0}
  set_instance_parameter_value sys_axi_bridge {WRITE_ACCEPTANCE_CAPABILITY} {16}
  set_instance_parameter_value sys_axi_bridge {WRITE_ADDR_USER_WIDTH} {32}
  set_instance_parameter_value sys_axi_bridge {WRITE_DATA_USER_WIDTH} {32}
  set_instance_parameter_value sys_axi_bridge {WRITE_ISSUING_CAPABILITY} {16}
  set_instance_parameter_value sys_axi_bridge {WRITE_RESP_USER_WIDTH} {32}

  add_instance sys_irq_bridge altera_irq_bridge
  set_instance_parameter_value sys_irq_bridge {IRQ_N} {0}
  set_instance_parameter_value sys_irq_bridge {IRQ_WIDTH} {4}
  
  add_instance sys_gpio_bd altera_avalon_pio
  set_instance_parameter_value sys_gpio_bd {bitClearingEdgeCapReg} {0}
  set_instance_parameter_value sys_gpio_bd {bitModifyingOutReg} {0}
  set_instance_parameter_value sys_gpio_bd {captureEdge} {0}
  set_instance_parameter_value sys_gpio_bd {direction} {InOut}
  set_instance_parameter_value sys_gpio_bd {edgeType} {RISING}
  set_instance_parameter_value sys_gpio_bd {generateIRQ} {1}
  set_instance_parameter_value sys_gpio_bd {irqType} {LEVEL}
  set_instance_parameter_value sys_gpio_bd {resetValue} {0.0}
  set_instance_parameter_value sys_gpio_bd {simDoTestBenchWiring} {0}
  set_instance_parameter_value sys_gpio_bd {simDrivenValue} {0.0}
  set_instance_parameter_value sys_gpio_bd {width} {32}

  add_instance sys_gpio_in altera_avalon_pio
  set_instance_parameter_value sys_gpio_in {bitClearingEdgeCapReg} {0}
  set_instance_parameter_value sys_gpio_in {bitModifyingOutReg} {0}
  set_instance_parameter_value sys_gpio_in {captureEdge} {0}
  set_instance_parameter_value sys_gpio_in {direction} {Input}
  set_instance_parameter_value sys_gpio_in {edgeType} {RISING}
  set_instance_parameter_value sys_gpio_in {generateIRQ} {1}
  set_instance_parameter_value sys_gpio_in {irqType} {LEVEL}
  set_instance_parameter_value sys_gpio_in {resetValue} {0.0}
  set_instance_parameter_value sys_gpio_in {simDoTestBenchWiring} {0}
  set_instance_parameter_value sys_gpio_in {simDrivenValue} {0.0}
  set_instance_parameter_value sys_gpio_in {width} {32}

  add_instance sys_gpio_out altera_avalon_pio
  set_instance_parameter_value sys_gpio_out {bitClearingEdgeCapReg} {0}
  set_instance_parameter_value sys_gpio_out {bitModifyingOutReg} {0}
  set_instance_parameter_value sys_gpio_out {captureEdge} {0}
  set_instance_parameter_value sys_gpio_out {direction} {Output}
  set_instance_parameter_value sys_gpio_out {edgeType} {RISING}
  set_instance_parameter_value sys_gpio_out {generateIRQ} {0}
  set_instance_parameter_value sys_gpio_out {irqType} {LEVEL}
  set_instance_parameter_value sys_gpio_out {resetValue} {0.0}
  set_instance_parameter_value sys_gpio_out {simDoTestBenchWiring} {0}
  set_instance_parameter_value sys_gpio_out {simDrivenValue} {0.0}
  set_instance_parameter_value sys_gpio_out {width} {32}
  
  add_instance spi_0 altera_avalon_spi
  set_instance_parameter_value spi_0 {clockPhase} {0}
  set_instance_parameter_value spi_0 {clockPolarity} {0}
  set_instance_parameter_value spi_0 {dataWidth} {8}
  set_instance_parameter_value spi_0 {disableAvalonFlowControl} {0}
  set_instance_parameter_value spi_0 {insertDelayBetweenSlaveSelectAndSClk} {0}
  set_instance_parameter_value spi_0 {insertSync} {0}
  set_instance_parameter_value spi_0 {lsbOrderedFirst} {0}
  set_instance_parameter_value spi_0 {masterSPI} {1}
  set_instance_parameter_value spi_0 {numberOfSlaves} {1}
  set_instance_parameter_value spi_0 {syncRegDepth} {2}
  set_instance_parameter_value spi_0 {targetClockRate} {10000000.0}
  set_instance_parameter_value spi_0 {targetSlaveSelectToSClkDelay} {0.0}

  # connections and connection parameters
  add_connection sys_clk.out_clk_1 spi_0.clk clock

  add_connection sys_clk.out_clk_1 sys_axi_bridge.clk clock

  add_connection sys_clk.out_clk_1 sys_gpio_bd.clk clock

  add_connection sys_clk.out_clk_1 sys_gpio_in.clk clock

  add_connection sys_clk.out_clk_1 sys_gpio_out.clk clock

  add_connection sys_clk.out_clk_1 sys_hps.f2h_sdram0_clock clock

  add_connection sys_clk.out_clk_1 sys_hps.h2f_lw_axi_clock clock

  add_connection sys_clk.out_clk_1 sys_irq_bridge.clk clock

  add_connection sys_clk.out_clk_1 sys_rst.clk clock

  add_connection sys_hps.f2h_irq0 spi_0.irq interrupt
  set_connection_parameter_value sys_hps.f2h_irq0/spi_0.irq irqNumber {7}

  add_connection sys_hps.f2h_irq0 sys_gpio_bd.irq interrupt
  set_connection_parameter_value sys_hps.f2h_irq0/sys_gpio_bd.irq irqNumber {6}

  add_connection sys_hps.f2h_irq0 sys_gpio_in.irq interrupt
  set_connection_parameter_value sys_hps.f2h_irq0/sys_gpio_in.irq irqNumber {5}

  add_connection sys_hps.f2h_irq0 sys_irq_bridge.sender0_irq interrupt
  set_connection_parameter_value sys_hps.f2h_irq0/sys_irq_bridge.sender0_irq irqNumber {0}

  add_connection sys_hps.f2h_irq0 sys_irq_bridge.sender1_irq interrupt
  set_connection_parameter_value sys_hps.f2h_irq0/sys_irq_bridge.sender1_irq irqNumber {1}

  add_connection sys_hps.f2h_irq0 sys_irq_bridge.sender2_irq interrupt
  set_connection_parameter_value sys_hps.f2h_irq0/sys_irq_bridge.sender2_irq irqNumber {2}

  add_connection sys_hps.f2h_irq0 sys_irq_bridge.sender3_irq interrupt
  set_connection_parameter_value sys_hps.f2h_irq0/sys_irq_bridge.sender3_irq irqNumber {3}

  add_connection sys_hps.h2f_lw_axi_master spi_0.spi_control_port avalon
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/spi_0.spi_control_port arbitrationPriority {1}
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/spi_0.spi_control_port baseAddress {0x0040}
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/spi_0.spi_control_port defaultConnection {0}

  add_connection sys_hps.h2f_lw_axi_master sys_axi_bridge.s0 avalon
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_axi_bridge.s0 arbitrationPriority {1}
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_axi_bridge.s0 baseAddress {0x00040000}
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_axi_bridge.s0 defaultConnection {0}

  add_connection sys_hps.h2f_lw_axi_master sys_gpio_bd.s1 avalon
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_bd.s1 arbitrationPriority {1}
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_bd.s1 baseAddress {0x0010}
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_bd.s1 defaultConnection {0}

  add_connection sys_hps.h2f_lw_axi_master sys_gpio_in.s1 avalon
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_in.s1 arbitrationPriority {1}
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_in.s1 baseAddress {0x0000}
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_in.s1 defaultConnection {0}

  add_connection sys_hps.h2f_lw_axi_master sys_gpio_out.s1 avalon
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_out.s1 arbitrationPriority {1}
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_out.s1 baseAddress {0x0020}
  set_connection_parameter_value sys_hps.h2f_lw_axi_master/sys_gpio_out.s1 defaultConnection {0}

  add_connection sys_rst.out_reset_1 spi_0.reset reset

  add_connection sys_rst.out_reset_1 sys_axi_bridge.clk_reset reset

  add_connection sys_rst.out_reset_1 sys_gpio_bd.reset reset

  add_connection sys_rst.out_reset_1 sys_gpio_in.reset reset

  add_connection sys_rst.out_reset_1 sys_gpio_out.reset reset

  add_connection sys_rst.out_reset_1 sys_irq_bridge.clk_reset reset

  # exported interfaces
  add_interface irq interrupt receiver
  set_interface_property irq EXPORT_OF sys_irq_bridge.receiver_irq
  add_interface m_axi altera_axi4 master
  set_interface_property m_axi EXPORT_OF sys_axi_bridge.m0
  add_interface s_axi_aresetn reset source
  set_interface_property s_axi_aresetn EXPORT_OF sys_rst.out_reset
  add_interface s_axi_clk clock source
  set_interface_property s_axi_clk EXPORT_OF sys_clk.out_clk
  add_interface sys_clk clock sink
  set_interface_property sys_clk EXPORT_OF sys_clk.in_clk
  add_interface sys_delay_clk clock source
  set_interface_property sys_delay_clk EXPORT_OF sys_hps.h2f_user1_clock
  add_interface sys_gpio_bd conduit end
  set_interface_property sys_gpio_bd EXPORT_OF sys_gpio_bd.external_connection
  add_interface sys_gpio_in conduit end
  set_interface_property sys_gpio_in EXPORT_OF sys_gpio_in.external_connection
  add_interface sys_gpio_out conduit end
  set_interface_property sys_gpio_out EXPORT_OF sys_gpio_out.external_connection
  add_interface sys_hps_ddr conduit end
  set_interface_property sys_hps_ddr EXPORT_OF sys_hps.memory
  add_interface sys_hps_dma_data altera_axi slave
  set_interface_property sys_hps_dma_data EXPORT_OF sys_hps.f2h_sdram0_data
  add_interface sys_hps_fpga_irq1 interrupt receiver
  set_interface_property sys_hps_fpga_irq1 EXPORT_OF sys_hps.f2h_irq1
  add_interface sys_hps_io conduit end
  set_interface_property sys_hps_io EXPORT_OF sys_hps.hps_io
  add_interface sys_hps_out_rstn reset source
  set_interface_property sys_hps_out_rstn EXPORT_OF sys_hps.h2f_reset
  add_interface sys_rstn reset sink
  set_interface_property sys_rstn EXPORT_OF sys_rst.in_reset
  add_interface sys_spi conduit end
  set_interface_property sys_spi EXPORT_OF spi_0.external
}

create_system system_ps_wrapper
set_project_property DEVICE_FAMILY {Cyclone V}
set_project_property DEVICE 5CSEMA5F31C8

do_create_system_ps_wrapper

# foreach {param value} {} { set ad_project_params($param) $value }

# interconnect requirements
set_interconnect_requirement {$system} {qsys_mm.clockCrossingAdapter} {HANDSHAKE}
set_interconnect_requirement {$system} {qsys_mm.enableEccProtection} {FALSE}
set_interconnect_requirement {$system} {qsys_mm.insertDefaultSlave} {FALSE}
set_interconnect_requirement {$system} {qsys_mm.maxAdditionalLatency} {1}

# sync_sysinfo_parameters

save_system {system_ps_wrapper.qsys}
