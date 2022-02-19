# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/vivado_projects/clock/clock.cache/wt [current_project]
set_property parent.project_path D:/vivado_projects/clock/clock.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo d:/vivado_projects/clock/clock.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  D:/vivado_projects/clock/clock.srcs/sources_1/new/debounce.vhd
  D:/vivado_projects/clock/clock.srcs/sources_1/imports/clock/time_cnt.vhd
  D:/vivado_projects/clock/clock.srcs/sources_1/imports/clock/displ7seg_blink.vhd
  D:/vivado_projects/clock/clock.srcs/sources_1/imports/clock/control.vhd
  D:/vivado_projects/clock/clock.srcs/sources_1/imports/clock/clock.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/vivado_projects/clock/clock.srcs/constrs_1/imports/clock/Nexys4DDR_Master.xdc
set_property used_in_implementation false [get_files D:/vivado_projects/clock/clock.srcs/constrs_1/imports/clock/Nexys4DDR_Master.xdc]


synth_design -top clock -part xc7a100tcsg324-1 -flatten_hierarchy none -directive RuntimeOptimized -fsm_extraction off


write_checkpoint -force -noxdef clock.dcp

catch { report_utilization -file clock_utilization_synth.rpt -pb clock_utilization_synth.pb }
