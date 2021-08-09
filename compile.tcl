vlib work
vcom ./fifo.vhd
vcom ./fifo_tb.vhd
#vsim -novopt -wlf /sim/t1 -wlfdeleteonquit work.fifo_sync
#add wave sim:/fifo_sync/*
