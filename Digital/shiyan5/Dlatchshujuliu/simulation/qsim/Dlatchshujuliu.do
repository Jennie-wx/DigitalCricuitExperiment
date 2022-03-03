onerror {quit -f}
vlib work
vlog -work work Dlatchshujuliu.vo
vlog -work work Dlatchshujuliu.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Dlatchshujuliu_vlg_vec_tst
vcd file -direction Dlatchshujuliu.msim.vcd
vcd add -internal Dlatchshujuliu_vlg_vec_tst/*
vcd add -internal Dlatchshujuliu_vlg_vec_tst/i1/*
add wave /*
run -all
