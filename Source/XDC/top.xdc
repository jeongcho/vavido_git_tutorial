set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]


create_clock -period 25.000 -name clk -waveform {0.000 12.500} [get_ports clk]
set_input_delay -clock [get_clocks clk] -min -add_delay 0.000 [get_ports {A[*]}]
set_input_delay -clock [get_clocks clk] -max -add_delay 6.000 [get_ports {A[*]}]
set_input_delay -clock [get_clocks clk] -min -add_delay 0.000 [get_ports {B[*]}]
set_input_delay -clock [get_clocks clk] -max -add_delay 6.000 [get_ports {B[*]}]
set_output_delay -clock [get_clocks clk] -min -add_delay 0.000 [get_ports {Q[*]}]
set_output_delay -clock [get_clocks clk] -max -add_delay 13.000 [get_ports {Q[*]}]

set_property IOSTANDARD LVCMOS18 [get_ports A*]
set_property IOSTANDARD LVCMOS18 [get_ports B*]
set_property IOSTANDARD LVCMOS18 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports Q*]

set_property PACKAGE_PIN N19 [get_ports {Q[7]}]
set_property PACKAGE_PIN P19 [get_ports {Q[6]}]
set_property PACKAGE_PIN N17 [get_ports {Q[5]}]
set_property PACKAGE_PIN P18 [get_ports {Q[4]}]
set_property PACKAGE_PIN R19 [get_ports {Q[3]}]
set_property PACKAGE_PIN W18 [get_ports {B[1]}]
set_property PACKAGE_PIN T19 [get_ports {Q[2]}]
set_property PACKAGE_PIN U14 [get_ports {A[0]}]
set_property PACKAGE_PIN U16 [get_ports {A[5]}]
set_property PACKAGE_PIN V14 [get_ports {A[4]}]
set_property PACKAGE_PIN W14 [get_ports {A[3]}]
set_property PACKAGE_PIN U19 [get_ports {Q[1]}]
set_property PACKAGE_PIN V19 [get_ports {Q[0]}]
set_property PACKAGE_PIN R17 [get_ports {B[7]}]
set_property PACKAGE_PIN U18 [get_ports {B[3]}]
set_property PACKAGE_PIN W17 [get_ports {B[2]}]
set_property PACKAGE_PIN U15 [get_ports {A[6]}]
set_property PACKAGE_PIN T17 [get_ports {B[6]}]
set_property PACKAGE_PIN V17 [get_ports {A[7]}]
set_property PACKAGE_PIN W15 [get_ports {A[2]}]
set_property PACKAGE_PIN U17 [get_ports {B[4]}]
set_property PACKAGE_PIN W16 [get_ports {A[1]}]
set_property PACKAGE_PIN V16 [get_ports {B[0]}]
set_property PACKAGE_PIN T18 [get_ports {B[5]}]
set_property PACKAGE_PIN P17 [get_ports clk]
