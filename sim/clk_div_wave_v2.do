onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group i/o /Clk_Freq_Divider_v2_tb/inclk
add wave -noupdate -expand -group i/o /Clk_Freq_Divider_v2_tb/outclk_N_equ_1
add wave -noupdate -expand -group i/o /Clk_Freq_Divider_v2_tb/outclk_N_equ_2
add wave -noupdate -expand -group i/o /Clk_Freq_Divider_v2_tb/outclk_N_equ_3
add wave -noupdate -expand -group i/o /Clk_Freq_Divider_v2_tb/outclk_N_equ_4
add wave -noupdate -expand -group i/o /Clk_Freq_Divider_v2_tb/outclk_N_equ_5
add wave -noupdate /Clk_Freq_Divider_v2_tb/CFD_DUT37936/outclk
add wave -noupdate -expand -group {clk div N=1} /Clk_Freq_Divider_v2_tb/CFD_DUT1/next_clk
add wave -noupdate -expand -group {clk div N=1} /Clk_Freq_Divider_v2_tb/CFD_DUT1/count_compare
add wave -noupdate -expand -group {clk div N=1} /Clk_Freq_Divider_v2_tb/CFD_DUT1/reset
add wave -noupdate -expand -group {counter N=1} /Clk_Freq_Divider_v2_tb/CFD_DUT1/clk_period_counter/rst
add wave -noupdate -expand -group {counter N=1} /Clk_Freq_Divider_v2_tb/CFD_DUT1/clk_period_counter/count_to
add wave -noupdate -expand -group {counter N=1} /Clk_Freq_Divider_v2_tb/CFD_DUT1/clk_period_counter/current_count
add wave -noupdate -expand -group {clk div N=2} /Clk_Freq_Divider_v2_tb/CFD_DUT2/next_clk
add wave -noupdate -expand -group {clk div N=2} /Clk_Freq_Divider_v2_tb/CFD_DUT2/count_compare
add wave -noupdate -expand -group {clk div N=2} /Clk_Freq_Divider_v2_tb/CFD_DUT2/reset
add wave -noupdate -expand -group {counter N=2} /Clk_Freq_Divider_v2_tb/CFD_DUT2/clk_period_counter/rst
add wave -noupdate -expand -group {counter N=2} /Clk_Freq_Divider_v2_tb/CFD_DUT2/clk_period_counter/count_to
add wave -noupdate -expand -group {counter N=2} /Clk_Freq_Divider_v2_tb/CFD_DUT2/clk_period_counter/current_count
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {475 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 396
configure wave -valuecolwidth 71
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
WaveRestoreZoom {0 ps} {711 ps}
