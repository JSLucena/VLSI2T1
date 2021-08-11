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
add wave -noupdate -radix decimal /fifo_tb/DUV/rd_pointer
add wave -noupdate -radix decimal /fifo_tb/DUV/wr_pointer
add wave -noupdate /fifo_tb/DUV/lastOp
add wave -noupdate -radix hexadecimal -childformat {{/fifo_tb/DUV/mem(0) -radix hexadecimal} {/fifo_tb/DUV/mem(1) -radix hexadecimal} {/fifo_tb/DUV/mem(2) -radix hexadecimal} {/fifo_tb/DUV/mem(3) -radix hexadecimal} {/fifo_tb/DUV/mem(4) -radix hexadecimal} {/fifo_tb/DUV/mem(5) -radix hexadecimal} {/fifo_tb/DUV/mem(6) -radix hexadecimal} {/fifo_tb/DUV/mem(7) -radix hexadecimal} {/fifo_tb/DUV/mem(8) -radix hexadecimal} {/fifo_tb/DUV/mem(9) -radix hexadecimal} {/fifo_tb/DUV/mem(10) -radix hexadecimal} {/fifo_tb/DUV/mem(11) -radix hexadecimal} {/fifo_tb/DUV/mem(12) -radix hexadecimal} {/fifo_tb/DUV/mem(13) -radix hexadecimal} {/fifo_tb/DUV/mem(14) -radix hexadecimal} {/fifo_tb/DUV/mem(15) -radix hexadecimal} {/fifo_tb/DUV/mem(16) -radix hexadecimal} {/fifo_tb/DUV/mem(17) -radix hexadecimal} {/fifo_tb/DUV/mem(18) -radix hexadecimal} {/fifo_tb/DUV/mem(19) -radix hexadecimal} {/fifo_tb/DUV/mem(20) -radix hexadecimal} {/fifo_tb/DUV/mem(21) -radix hexadecimal} {/fifo_tb/DUV/mem(22) -radix hexadecimal} {/fifo_tb/DUV/mem(23) -radix hexadecimal} {/fifo_tb/DUV/mem(24) -radix hexadecimal} {/fifo_tb/DUV/mem(25) -radix hexadecimal} {/fifo_tb/DUV/mem(26) -radix hexadecimal} {/fifo_tb/DUV/mem(27) -radix hexadecimal} {/fifo_tb/DUV/mem(28) -radix hexadecimal} {/fifo_tb/DUV/mem(29) -radix hexadecimal} {/fifo_tb/DUV/mem(30) -radix hexadecimal} {/fifo_tb/DUV/mem(31) -radix hexadecimal} {/fifo_tb/DUV/mem(32) -radix hexadecimal} {/fifo_tb/DUV/mem(33) -radix hexadecimal} {/fifo_tb/DUV/mem(34) -radix hexadecimal} {/fifo_tb/DUV/mem(35) -radix hexadecimal} {/fifo_tb/DUV/mem(36) -radix hexadecimal} {/fifo_tb/DUV/mem(37) -radix hexadecimal} {/fifo_tb/DUV/mem(38) -radix hexadecimal} {/fifo_tb/DUV/mem(39) -radix hexadecimal} {/fifo_tb/DUV/mem(40) -radix hexadecimal} {/fifo_tb/DUV/mem(41) -radix hexadecimal} {/fifo_tb/DUV/mem(42) -radix hexadecimal} {/fifo_tb/DUV/mem(43) -radix hexadecimal} {/fifo_tb/DUV/mem(44) -radix hexadecimal} {/fifo_tb/DUV/mem(45) -radix hexadecimal} {/fifo_tb/DUV/mem(46) -radix hexadecimal} {/fifo_tb/DUV/mem(47) -radix hexadecimal} {/fifo_tb/DUV/mem(48) -radix hexadecimal} {/fifo_tb/DUV/mem(49) -radix hexadecimal} {/fifo_tb/DUV/mem(50) -radix hexadecimal} {/fifo_tb/DUV/mem(51) -radix hexadecimal} {/fifo_tb/DUV/mem(52) -radix hexadecimal} {/fifo_tb/DUV/mem(53) -radix hexadecimal} {/fifo_tb/DUV/mem(54) -radix hexadecimal} {/fifo_tb/DUV/mem(55) -radix hexadecimal} {/fifo_tb/DUV/mem(56) -radix hexadecimal} {/fifo_tb/DUV/mem(57) -radix hexadecimal} {/fifo_tb/DUV/mem(58) -radix hexadecimal} {/fifo_tb/DUV/mem(59) -radix hexadecimal} {/fifo_tb/DUV/mem(60) -radix hexadecimal} {/fifo_tb/DUV/mem(61) -radix hexadecimal} {/fifo_tb/DUV/mem(62) -radix hexadecimal} {/fifo_tb/DUV/mem(63) -radix hexadecimal}} -expand -subitemconfig {/fifo_tb/DUV/mem(0) {-height 17 -radix hexadecimal} /fifo_tb/DUV/mem(1) {-height 17 -radix hexadecimal} /fifo_tb/DUV/mem(2) {-height 17 -radix hexadecimal} /fifo_tb/DUV/mem(3) {-height 17 -radix hexadecimal} /fifo_tb/DUV/mem(4) {-height 17 -radix hexadecimal} /fifo_tb/DUV/mem(5) {-height 17 -radix hexadecimal} /fifo_tb/DUV/mem(6) {-height 17 -radix hexadecimal} /fifo_tb/DUV/mem(7) {-height 17 -radix hexadecimal} /fifo_tb/DUV/mem(8) {-radix hexadecimal} /fifo_tb/DUV/mem(9) {-radix hexadecimal} /fifo_tb/DUV/mem(10) {-radix hexadecimal} /fifo_tb/DUV/mem(11) {-radix hexadecimal} /fifo_tb/DUV/mem(12) {-radix hexadecimal} /fifo_tb/DUV/mem(13) {-radix hexadecimal} /fifo_tb/DUV/mem(14) {-radix hexadecimal} /fifo_tb/DUV/mem(15) {-radix hexadecimal} /fifo_tb/DUV/mem(16) {-radix hexadecimal} /fifo_tb/DUV/mem(17) {-radix hexadecimal} /fifo_tb/DUV/mem(18) {-radix hexadecimal} /fifo_tb/DUV/mem(19) {-radix hexadecimal} /fifo_tb/DUV/mem(20) {-radix hexadecimal} /fifo_tb/DUV/mem(21) {-radix hexadecimal} /fifo_tb/DUV/mem(22) {-radix hexadecimal} /fifo_tb/DUV/mem(23) {-radix hexadecimal} /fifo_tb/DUV/mem(24) {-radix hexadecimal} /fifo_tb/DUV/mem(25) {-radix hexadecimal} /fifo_tb/DUV/mem(26) {-radix hexadecimal} /fifo_tb/DUV/mem(27) {-radix hexadecimal} /fifo_tb/DUV/mem(28) {-radix hexadecimal} /fifo_tb/DUV/mem(29) {-radix hexadecimal} /fifo_tb/DUV/mem(30) {-radix hexadecimal} /fifo_tb/DUV/mem(31) {-radix hexadecimal} /fifo_tb/DUV/mem(32) {-radix hexadecimal} /fifo_tb/DUV/mem(33) {-radix hexadecimal} /fifo_tb/DUV/mem(34) {-radix hexadecimal} /fifo_tb/DUV/mem(35) {-radix hexadecimal} /fifo_tb/DUV/mem(36) {-radix hexadecimal} /fifo_tb/DUV/mem(37) {-radix hexadecimal} /fifo_tb/DUV/mem(38) {-radix hexadecimal} /fifo_tb/DUV/mem(39) {-radix hexadecimal} /fifo_tb/DUV/mem(40) {-radix hexadecimal} /fifo_tb/DUV/mem(41) {-radix hexadecimal} /fifo_tb/DUV/mem(42) {-radix hexadecimal} /fifo_tb/DUV/mem(43) {-radix hexadecimal} /fifo_tb/DUV/mem(44) {-radix hexadecimal} /fifo_tb/DUV/mem(45) {-radix hexadecimal} /fifo_tb/DUV/mem(46) {-radix hexadecimal} /fifo_tb/DUV/mem(47) {-radix hexadecimal} /fifo_tb/DUV/mem(48) {-radix hexadecimal} /fifo_tb/DUV/mem(49) {-radix hexadecimal} /fifo_tb/DUV/mem(50) {-radix hexadecimal} /fifo_tb/DUV/mem(51) {-radix hexadecimal} /fifo_tb/DUV/mem(52) {-radix hexadecimal} /fifo_tb/DUV/mem(53) {-radix hexadecimal} /fifo_tb/DUV/mem(54) {-radix hexadecimal} /fifo_tb/DUV/mem(55) {-radix hexadecimal} /fifo_tb/DUV/mem(56) {-radix hexadecimal} /fifo_tb/DUV/mem(57) {-radix hexadecimal} /fifo_tb/DUV/mem(58) {-radix hexadecimal} /fifo_tb/DUV/mem(59) {-radix hexadecimal} /fifo_tb/DUV/mem(60) {-radix hexadecimal} /fifo_tb/DUV/mem(61) {-radix hexadecimal} /fifo_tb/DUV/mem(62) {-radix hexadecimal} /fifo_tb/DUV/mem(63) {-radix hexadecimal}} /fifo_tb/DUV/mem
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
WaveRestoreZoom {685 ns} {885 ns}
