onerror {quit -f}
vlib work
vlog -work work 1.vo
vlog -work work 1.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.1_vlg_vec_tst
vcd file -direction 1.msim.vcd
vcd add -internal 1_vlg_vec_tst/*
vcd add -internal 1_vlg_vec_tst/i1/*
add wave /*
run -all
