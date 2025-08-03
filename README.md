# AFRL Util Board Functions
### Base of board generation files.
---

![image](img/AFRL.png)

---

   author: Jay Convertino   
   
   date: 2023.09.19
   
   details: Various generation files for development board discriptions and creation.
   
   license: MIT   
   
---

### VERSION
#### Current
  - V0.0.1 - initial release

#### Previous
  - none

### DEPENDENCIES
#### Build
See each fusesoc core file for all dependencies.

  - AFRL:utility:tcl_helper_check:1.0.0

### FOLDERS
  - board_files : Vivado board files to add development boards.
  - digilent : Configurations for Digilent branded development boards (includes Zed).
  - intel : Configurations for Intel branded developement boards.
  - lattice : Configurations for Lattice branded developement boards.
  - terasic : Configurations for Terasic branded developement boards.
  - xilinx : Configurations for Xilinx branded developement boards.

### CORES (Update with grep -Rh 'name:\|description:' | awk '{print "- "$0}')
- name: AFRL:utility:terasic_hanpilot_board_base:1.0.0
  - description: Files to help generate base hanpilot board items
- name: AFRL:utility:vivado_board_support_packages:1.0.0
  - description: Various files that describe AMD(Xilinx) based fpga boards
- name: AFRL:utility:digilent_cmod-s7-25_board_base_constr:1.0.0
  - description: Files to help generate base cmod-s7 board items
- name: AFRL:utility:digilent_cmod-s7-25_board_base:1.0.0
  - description: Files to help generate base cmod-s7 board items
- name: AFRL:utility:digilent_arty-a7-35_board_base_constr:1.0.0
  - description: Files to help generate base arty board items
- name: AFRL:utility:digilent_arty-a7-35_board_base:1.0.0
  - description: Files to help generate base arty board items
- name: AFRL:utility:digilent_zed_board_base:1.0.0
  - description: Files to help generate zed board base PS system.
- name: AFRL:utility:digilent_zed_board_base_constr:1.0.0
  - description: Files to help generate zed board base PS system.
- name: AFRL:utility:digilent_nexys-a7-100t_board_base:1.0.0
  - description: Files to help generate base nexys-a7 board items
- name: AFRL:utility:digilent_nexys-a7-100t_board_base_constr:1.0.0
  - description: Constraint files only
- name: AFRL:utility:digilent_nexys-a7-100t_board_base_ddr_cfg:1.0.0
  - description: Files for AXI DDR config
- name: AFRL:utility:digilent_nexys-a7-100t_board_base_ddr_native_cfg:1.0.0
  - description: Files for native DDR config
- name: AFRL:utility:intel_a10soc_board_base:1.0.0
  - description: Files to help generate base a10soc board items
- name: AFRL:utility:xilinx_zc702_board_base:1.0.0
  - description: Files to help generate base zc702 board items
- name: AFRL:utility:xilinx_zc702_board_base_constr:1.0.0
  - description: Files to help generate base zc702 board items
- name: AFRL:utility:xilinx_zc706_board_base:1.0.0
  - description: Files to help generate base zc706 board items
- name: AFRL:utility:xilinx_zc706_board_base_constr:1.0.0
  - description: Files to help generate base zc706 board items
- name: AFRL:utility:xilinx_vc707_board_base:1.0.0
  - description: Files to help generate base vc707 board items
- name: AFRL:utility:xilinx_vc707_board_base_constr:1.0.0
  - description: Files to help generate base vc707 board items
- name: AFRL:utility:xilinx_vc707_board_base_ddr_cfg:1.0.0
  - description: Files for AXI DDR config
- name: AFRL:utility:xilinx_zcu102_board_base:1.0.0
  - description: Files to help generate base zcu102 board items
- name: AFRL:utility:xilinx_zcu102_board_base_constr:1.0.0
  - description: Files to help generate base zcu102 board items
- name: AFRL:utility:xilinx_kc705_board_base:1.0.0
  - description: Files to help generate base kc705 board items
- name: AFRL:utility:xilinx_kc705_board_base_constr:1.0.0
  - description: Files to help generate base kc705 board items
- name: AFRL:utility:xilinx_kc705_board_base_ddr_cfg:1.0.0
  - description: Files for AXI DDR config
- name: AFRL:utility:lattice_crosslink-nx_eval_board_base_constr:1.0.0
  - description: Files to help generate base crosslink-nx eval constraints
- name: AFRL:utility:lattice_crosslink-nx_eval_board_base:1.0.0
  - description: Files to help generate base crosslink-nx eval

