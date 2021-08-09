vlib work
vcom ./fifo.vhd
vcom ./fifo_tb.vhd
vsim -novopt -wlf /sim/t1 -wlfdeleteonquit work.fifo_tb
#add wave sim:/fifo_tb/*
do wave.do
run 350 ns
