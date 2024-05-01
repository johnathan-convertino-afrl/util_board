# AFRL Util Board Functions
### Base of board generation files.
---

   author: Jay Convertino   
   
   date: 2023.09.19
   
   details: Various generation files for development board discriptions and creation.
   
   license: MIT   
   
---

### Version
#### Current
  - V0.0.1 - initial release

#### Previous
  - none

### Dependencies
#### Build
  - AFRL:utility:tcl_helper_check:1.0.0

### Folders
  - board_files : Vivado board files to add development boards.
  - digilent : Configurations for Digilent branded development boards (includes Zed).
  - intel : Configurations for Intel branded developement boards.
  - terasic : Configurations for Terasic branded developement boards.
  - xilinx : Configurations for Xilinx branded developement boards.

### Cores
  - AFRL:utility:terasic_hanpilot_board_base:1.0.0 : Support board ARM core.
  - AFRL:utility:vivado_board_support_packages:1.0.0 : Board Support Packages for Vivado to add varous development boards.
  - AFRL:utility:digilent_cmod-s7-25_board_base_constr:1.0.0 : Base constraints
  - AFRL:utility:digilent_cmod-s7-25_board_base:1.0.0 : Support a base PLL and reset core.
  - AFRL:utility:digilent_arty-a7-35_board_base_constr:1.0.0 : Base constraints
  - AFRL:utility:digilent_arty-a7-35_board_base:1.0.0 : Support a base PLL and reset core.
  - AFRL:utility:digilent_zed_board_base:1.0.0 : Support board ARM core.
  - AFRL:utility:digilent_zed_board_base_constr:1.0.0 : Base constraints
  - AFRL:utility:digilent_nexys-a7-100t_board_base:1.0.0 : Support a base PLL and reset core.
  - AFRL:utility:digilent_nexys-a7-100t_board_base_constr:1.0.0 : Base constraints
  - AFRL:utility:digilent_nexys-a7-100t_board_base_ddr_cfg:1.0.0 : Base DDR config for AXI interface.
  - AFRL:utility:digilent_nexys-a7-100t_board_base_ddr_native_cfg:1.0.0 : Base DDR config for Native interface.
  - AFRL:utility:intel_a10soc_board_base:1.0.0 : Support board ARM core.
  - AFRL:utility:xilinx_zc702_board_base:1.0.0 : Support board ARM core.
  - AFRL:utility:xilinx_zc702_board_base_constr:1.0.0 : Base constraints
  - AFRL:utility:xilinx_zc706_board_base:1.0.0 : Support board ARM core.
  - AFRL:utility:xilinx_zc706_board_base_constr:1.0.0 : Base constraints
  - AFRL:utility:xilinx_vc707_board_base:1.0.0 : Support board with base cores.
  - AFRL:utility:xilinx_vc707_board_base_constr:1.0.0 : Base constraints
  - AFRL:utility:xilinx_vc707_board_base_ddr_cfg:1.0.0 : Base DDR config for AXI interface
  - AFRL:utility:xilinx_zcu102_board_base:1.0.0 : Support board ARM64 core.
  - AFRL:utility:xilinx_zcu102_board_base_constr:1.0.0 : Base contraints
  - AFRL:utility:xilinx_kc705_board_base:1.0.0 : Supoort board with base cores.
  - AFRL:utility:xilinx_kc705_board_base_constr:1.0.0 : Base constraints
  - AFRL:utility:xilinx_kc705_board_base_ddr_cfg:1.0.0 : Base DDR config for AXI interface
