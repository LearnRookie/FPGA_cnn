# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
CHin { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
Hin { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
Win { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
CHout { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
Kx { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
Ky { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
Sx { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
Sy { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
mode { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
relu_en { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
feature_in { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 96
	offset_end 107
}
W { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 108
	offset_end 119
}
bias { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 120
	offset_end 131
}
feature_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 132
	offset_end 143
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


