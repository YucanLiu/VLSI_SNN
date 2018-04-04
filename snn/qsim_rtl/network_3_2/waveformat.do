onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate :network_3_2_tb:clk

add wave -noupdate :network_3_2_tb:data_in_1
add wave -noupdate :network_3_2_tb:sign_in_1
add wave -noupdate :network_3_2_tb:o1
add wave -noupdate :network_3_2_tb:data_in_2
add wave -noupdate :network_3_2_tb:sign_in_2
add wave -noupdate :network_3_2_tb:o2
add wave -noupdate :network_3_2_tb:data_in_3
add wave -noupdate :network_3_2_tb:sign_in_3
add wave -noupdate :network_3_2_tb:o3

add wave -noupdate :network_3_2_tb:weight_1
add wave -noupdate :network_3_2_tb:weight_2
add wave -noupdate :network_3_2_tb:weight_3
add wave -noupdate :network_3_2_tb:weight_4
add wave -noupdate :network_3_2_tb:weight_5

add wave -noupdate :network_3_2_tb:data_out_4
add wave -noupdate :network_3_2_tb:sign_out_4
add wave -noupdate :network_3_2_tb:data_out_5
add wave -noupdate :network_3_2_tb:sign_out_5

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
