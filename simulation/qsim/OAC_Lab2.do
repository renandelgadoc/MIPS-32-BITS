onerror {exit -code 1}
vlib work
vlog -work work OAC_Lab2.vo
vlog -work work Waveform13.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.OAC_Lab2_vlg_vec_tst -voptargs="+acc"
vcd file -direction OAC_Lab2.msim.vcd
vcd add -internal OAC_Lab2_vlg_vec_tst/*
vcd add -internal OAC_Lab2_vlg_vec_tst/i1/*
run -all
quit -f
