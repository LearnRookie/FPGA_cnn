############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project conv_core
set_top Conv
add_files ../HLS_2022.1/conv_core.h
add_files ../HLS_2022.1/conv_core.cpp
add_files -tb ../HLS_2022.1/main.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_export -display_name Conv_full_dsp32 -format ip_catalog -rtl verilog -vivado_phys_opt place -vivado_report_level 0
#source "./conv_core/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -tool xsim
export_design -rtl verilog -format ip_catalog -display_name "Conv_full_dsp32"
