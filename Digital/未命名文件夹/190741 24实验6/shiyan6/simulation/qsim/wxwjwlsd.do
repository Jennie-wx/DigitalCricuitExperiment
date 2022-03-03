onerror {quit -f}
vlib work
vlog -work work wxwjwlsd.vo
vlog -work work wxwjwlsd.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.wxwjwlsd_vlg_vec_tst
vcd file -direction wxwjwlsd.msim.vcd
vcd add -internal wxwjwlsd_vlg_vec_tst/*
vcd add -internal wxwjwlsd_vlg_vec_tst/i1/*
add wave /*
run -all
