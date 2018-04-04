onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate :network_and_tb:clk
add wave -noupdate :network_and_tb:w1
add wave -noupdate :network_and_tb:w2
add wave -noupdate :network_and_tb:w3

add wave -noupdate :network_and_tb:th1
add wave -noupdate :network_and_tb:th2
add wave -noupdate :network_and_tb:th3

add wave -noupdate :network_and_tb:d_in_1
add wave -noupdate :network_and_tb:s_in_1
add wave -noupdate :network_and_tb:o1

add wave -noupdate :network_and_tb:d_in_2
add wave -noupdate :network_and_tb:s_in_2
add wave -noupdate :network_and_tb:o2

add wave -noupdate :network_and_tb:d_out_3
add wave -noupdate :network_and_tb:s_out_3

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 223
configure wave -valuecolwidth 89
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ns} {12 ns}
