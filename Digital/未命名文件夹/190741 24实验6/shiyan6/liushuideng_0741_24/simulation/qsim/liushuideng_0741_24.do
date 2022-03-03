onerror {quit -f}
vlib work
vlog -work work liushuideng_0741_24.vo
vlog -work work liushuideng_0741_24.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.liushuideng_0741_24_vlg_vec_tst
vcd file -direction liushuideng_0741_24.msim.vcd
vcd add -internal liushuideng_0741_24_vlg_vec_tst/*
vcd add -internal liushuideng_0741_24_vlg_vec_tst/i1/*
add wave /*
run -all
