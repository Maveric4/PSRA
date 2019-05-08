connect -url tcp:127.0.0.1:3121
source /home/lsriw/PSRA/DG/lab3/lab3_dziala/ald/ald.sdk/ald_wrapper_hw_platform_2/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279786305A"} -index 0
loadhw -hw /home/lsriw/PSRA/DG/lab3/lab3_dziala/ald/ald.sdk/ald_wrapper_hw_platform_2/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279786305A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279786305A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279786305A"} -index 0
dow /home/lsriw/PSRA/DG/lab3/lab3_dziala/ald/ald.sdk/hello_world2/Debug/hello_world2.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279786305A"} -index 0
con
