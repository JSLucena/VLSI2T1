onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fifo_tb/clk
add wave -noupdate /fifo_tb/rst
add wave -noupdate /fifo_tb/wr_en
add wave -noupdate /fifo_tb/rd_en
add wave -noupdate /fifo_tb/sts_error
add wave -noupdate /fifo_tb/sts_full
add wave -noupdate /fifo_tb/sts_high
add wave -noupdate /fifo_tb/sts_low
add wave -noupdate /fifo_tb/sts_empty
add wave -noupdate -radix hexadecimal /fifo_tb/wr_data
add wave -noupdate -radix hexadecimal /fifo_tb/rd_data
add wave -noupdate -radix hexadecimal /fifo_tb/DUV/rd_pointer
add wave -noupdate -radix hexadecimal /fifo_tb/DUV/wr_pointer
add wave -noupdate /fifo_tb/DUV/lastOp
add wave -noupdate -radix hexadecimal -childformat {{/fifo_tb/DUV/mem(0) -radix hexadecimal} {/fifo_tb/DUV/mem(1) -radix hexadecimal} {/fifo_tb/DUV/mem(2) -radix hexadecimal} {/fifo_tb/DUV/mem(3) -radix hexadecimal} {/fifo_tb/DUV/mem(4) -radix hexadecimal} {/fifo_tb/DUV/mem(5) -radix hexadecimal} {/fifo_tb/DUV/mem(6) -radix hexadecimal} {/fifo_tb/DUV/mem(7) -radix hexadecimal}} -expand -subitemconfig {/fifo_tb/DUV/mem(0) {-height 17 -radix hexadecimal} /fifo_tb/DUV/mem(1) {-height 17 -radix hexadecimal} /fifo_tb/DUV/mem(2) {-height 17 -radix hexadecimal} /fifo_tb/DUV/mem(3) {-height 17 -radix hexadecimal} /fifo_tb/DUV/mem(4) {-height 17 -radix hexadecimal} /fifo_tb/DUV/mem(5) {-height 17 -radix hexadecimal} /fifo_tb/DUV/mem(6) {-height 17 -radix hexadecimal} /fifo_tb/DUV/mem(7) {-height 17 -radix hexadecimal}} /fifo_tb/DUV/mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {60 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {52 ns} {252 ns}
