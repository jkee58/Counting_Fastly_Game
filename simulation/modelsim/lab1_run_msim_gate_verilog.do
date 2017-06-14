transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {lab1.vo}

vlog -vlog01compat -work work +incdir+C:/Users/JeongKee\ Lim/Desktop/final {C:/Users/JeongKee Lim/Desktop/final/Click_Game_tb.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L cyclonev_ver -L lpm_ver -L sgate_ver -L cyclonev_hssi_ver -L altera_mf_ver -L cyclonev_pcie_hip_ver -L gate_work -L work -voptargs="+acc"  Click_Game_tb

add wave *
view structure
view signals
run 1000 us
