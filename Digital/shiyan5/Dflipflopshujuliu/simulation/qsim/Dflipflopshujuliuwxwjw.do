onerror {quit -f}
vlib work
vlog -work work Dflipflopshujuliuwxwjw.vo
vlog -work work Dflipflopshujuliuwxwjw.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Dflipflopshujuliuwxwjw_vlg_vec_tst
vcd file -direction Dflipflopshujuliuwxwjw.msim.vcd
vcd add -internal Dflipflopshujuliuwxwjw_vlg_vec_tst/*
vcd add -internal Dflipflopshujuliuwxwjw_vlg_vec_tst/i1/*
add wave /*
run -all
