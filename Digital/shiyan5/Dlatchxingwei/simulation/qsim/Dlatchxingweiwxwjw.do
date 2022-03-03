onerror {quit -f}
vlib work
vlog -work work Dlatchxingweiwxwjw.vo
vlog -work work Dlatchxingweiwxwjw.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Dlatchxingweiwxwjw_vlg_vec_tst
vcd file -direction Dlatchxingweiwxwjw.msim.vcd
vcd add -internal Dlatchxingweiwxwjw_vlg_vec_tst/*
vcd add -internal Dlatchxingweiwxwjw_vlg_vec_tst/i1/*
add wave /*
run -all
