onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -height 77 /FLASH_Addr_Ctrl_tb/sampling_clk
add wave -noupdate -height 77 /FLASH_Addr_Ctrl_tb/rst
add wave -noupdate -height 77 /FLASH_Addr_Ctrl_tb/count_up
add wave -noupdate -height 77 /FLASH_Addr_Ctrl_tb/read_en
add wave -noupdate -height 77 -radix hexadecimal /FLASH_Addr_Ctrl_tb/flash_mem_address
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {209 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 266
configure wave -valuecolwidth 53
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
WaveRestoreZoom {0 ps} {217 ps}
