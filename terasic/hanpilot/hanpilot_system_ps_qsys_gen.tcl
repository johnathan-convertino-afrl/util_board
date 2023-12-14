# hanpilot carrier qsys
package require qsys
package require quartus::device

# set project_name system_wrapper

source qsys_ip_gen/hanpilot_system_qsys.tcl

set mmu_enabled 1

# set_module_property NAME {system_ps_wrapper}
set_project_property DEVICE_FAMILY {Arria 10}
set_project_property DEVICE 10AS066K3F40E2SG

system_ps_base

# foreach {param value} {} { set ad_project_params($param) $value }

set_domain_assignment {$system} {qsys_mm.maxAdditionalLatency} {4}
set_domain_assignment {$system} {qsys_mm.clockCrossingAdapter} {AUTO}
set_domain_assignment {$system} {qsys_mm.burstAdapterImplementation} {PER_BURST_TYPE_CONVERTER}

save_system {system_ps_wrapper.qsys}
