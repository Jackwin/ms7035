#bank 34  IO_L19P_T3_34
set_property PACKAGE_PIN C4  [get_ports hdmi_clk]
# IO_L24P_T3_34
set_property PACKAGE_PIN B2 [get_ports {hdmi_d[0]}]
# IO_L22N_T3_34
set_property PACKAGE_PIN A3 [get_ports {hdmi_d[1]}]
# IO_L22P_T3_34
set_property PACKAGE_PIN A4 [get_ports {hdmi_d[2]}]
# IO_L23P_T3_34
set_property PACKAGE_PIN C2 [get_ports {hdmi_d[3]}]
#IO_L23N_T3_34
set_property PACKAGE_PIN B1 [get_ports {hdmi_d[4]}]

#IO_L2P_T0_34
set_property PACKAGE_PIN G6 [get_ports {hdmi_d[5]}]
#IO_L2N_T0_34
set_property PACKAGE_PIN G5 [get_ports {hdmi_d[6]}]
#IO_L7P_T1_34
set_property PACKAGE_PIN F5 [get_ports {hdmi_d[7]}]
#IO_L7N_T1_34
set_property PACKAGE_PIN E5 [get_ports {hdmi_d[8]}]

# IO_L19N_T3_VREF_34
set_property PACKAGE_PIN C3 [get_ports {hdmi_d[9]}]
#IO_L4N_T0_34
set_property PACKAGE_PIN H6 [get_ports {hdmi_d[10]}]
# IO_L4P_T0_34
set_property PACKAGE_PIN H7 [get_ports {hdmi_d[11]}]
# IO_L20N_T3_34
set_property PACKAGE_PIN B4 [get_ports {hdmi_d[12]}]
# IO_L20P_T3_34
set_property PACKAGE_PIN B5 [get_ports {hdmi_d[13]}]

# IO_L14P_T2_SRCC_34
set_property PACKAGE_PIN D6 [get_ports {hdmi_d[14]}]
# IO_L14N_T2_SRCC_34
set_property PACKAGE_PIN C6 [get_ports {hdmi_d[15]}]
# IO_L6P_T0_34
set_property PACKAGE_PIN J8 [get_ports {hdmi_d[16]}]
# O_L6N_T0_VREF_34
set_property PACKAGE_PIN H8 [get_ports {hdmi_d[17]}]

# IO_L3P_T0_DQS_PUDC_B_34
set_property PACKAGE_PIN H9 [get_ports {hdmi_d[18]}]
# IO_L3N_T0_DQS_34
set_property PACKAGE_PIN G9 [get_ports {hdmi_d[19]}]
# IO_L5N_T0_34
set_property PACKAGE_PIN J9 [get_ports {hdmi_d[20]}]
# IO_L5P_T0_34
set_property PACKAGE_PIN J10 [get_ports {hdmi_d[21]}]

# IO_L1P_T0_34
set_property PACKAGE_PIN J11 [get_ports {hdmi_d[22]}]
# IO_L1N_T0_34
set_property PACKAGE_PIN H11 [get_ports {hdmi_d[23]}]
# O_L24N_T3_34
set_property PACKAGE_PIN A2 [get_ports hdmi_de]
# IO_L21N_T3_DQS_34
set_property PACKAGE_PIN A5 [get_ports hdmi_hs]
# IO_L21P_T3_DQS_34
set_property PACKAGE_PIN B6 [get_ports hdmi_vs]
#CAD-MS7035 v1.0.0
# # IO_L4N_T0_33 
# set_property PACKAGE_PIN D1 [get_ports hdmi_scl]
# # IO_L4P_T0_33
# set_property PACKAGE_PIN C1 [get_ports hdmi_sda]
# IO_L17P_T2_33
#set_property PACKAGE_PIN N4 [get_ports hdmi_int]

#CAD-MS7035 v1.0.1
# # IO_L4P_T0_33 
# set_property PACKAGE_PIN C1 [get_ports hdmi_scl]
# IO_L4N_T0_33
# set_property PACKAGE_PIN D1 [get_ports hdmi_sda]

set_property PACKAGE_PIN D1 [get_ports hdmi_scl]
set_property PACKAGE_PIN C1 [get_ports hdmi_sda]

set_property IOSTANDARD LVCMOS18 [get_ports hdmi_scl]
set_property IOSTANDARD LVCMOS18 [get_ports hdmi_sda]

#set_property IOSTANDARD LVCMOS18 [get_ports hdmi_int]

set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_d[*]}]
set_property IOSTANDARD LVCMOS18 [get_ports hdmi_clk]
set_property IOSTANDARD LVCMOS18 [get_ports hdmi_de]
set_property IOSTANDARD LVCMOS18 [get_ports hdmi_vs]
set_property IOSTANDARD LVCMOS18 [get_ports hdmi_hs]

set_property PULLUP true [get_ports hdmi_scl]
set_property PULLUP true [get_ports hdmi_sda]
#set_property PULLUP true [get_ports hdmi_int]

set_property SLEW FAST [get_ports {hdmi_d[*]}]
set_property DRIVE 8 [get_ports {hdmi_d[*]}]
set_property SLEW FAST [get_ports hdmi_clk]
set_property SLEW FAST [get_ports hdmi_de]
set_property SLEW FAST [get_ports hdmi_hs]
set_property SLEW FAST [get_ports hdmi_scl]
set_property SLEW FAST [get_ports hdmi_sda]
set_property SLEW FAST [get_ports hdmi_vs]