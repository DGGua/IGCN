############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project IGCN
set_top IGCN
add_files IGCN/igcn.cpp
add_files -tb IGCN/test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z045-ffv900-3}
create_clock -period 10 -name default
source "./IGCN/solution1/directives.tcl"
csim_design -profile
csynth_design
cosim_design
export_design -format ip_catalog
