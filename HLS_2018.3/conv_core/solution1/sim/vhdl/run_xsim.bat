
set PATH=
call C:/F_Software/Vivado2018.3/Vivado/2018.3/bin/xelab xil_defaultlib.apatb_Conv_top glbl -prj Conv.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims -L xpm --initfile "C:/F_Software/Vivado2018.3/Vivado/2018.3/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s Conv -debug wave
call C:/F_Software/Vivado2018.3/Vivado/2018.3/bin/xsim --noieeewarnings Conv -tclbatch Conv.tcl

