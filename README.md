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
  - avnet
  - board_files
  - digilent
  - intel
  - terasic
  - xilinx


<!-- helpful info for installing board_files from new xhub tcl store -->
<!--      enable_beta_device xcvm*
    xhub::refresh_catalog [xhub::get_xstores xilinx_board_store]
    xhub::install [xhub::get_xitems xilinx.com:xilinx_board_store:vmk180_es:*] -quiet
    set_param board.repoPaths [get_property LOCAL_ROOT_DIR [xhub::get_xstores xilinx_board_store]]-->
