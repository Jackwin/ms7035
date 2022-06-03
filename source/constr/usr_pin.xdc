# CAD-MS7035 V1.0.0
# D17 -> IO_L7N_T1_12 -> BANK 12 AD10
# D18 -> IO_L3N_T0_DQS_12 ->  AA10
# D19 -> IO_L12P_T1_MRCC_33 -> J4
# D20 -> IO_L12N_T1_MRCC_33 -> J3

# CAD-MS7035 V1.0.1
# D17 -> IO_L7N_T1_12 -> BANK 12 AD10
# D18 -> IO_L3N_T0_DQS_12 ->  AA10
# D19 -> IO_L19P_T3_12 -> Y17
# D20 -> IO_L19N_T3_VREF_12 -> AA17



set_property PACKAGE_PIN AD10 [get_ports {usr_led[0]}]
set_property PACKAGE_PIN AA10 [get_ports {usr_led[1]}]
# CAD-MS7035 V1.0.0
# set_property PACKAGE_PIN J4 [get_ports {usr_led[2]}]
# set_property PACKAGE_PIN J3 [get_ports {usr_led[3]}]
# set_property IOSTANDARD LVCMOS18 [get_ports {usr_led[*]}

# CAD-MS7035 V1.0.1
set_property PACKAGE_PIN Y17 [get_ports {usr_led[2]}]
set_property PACKAGE_PIN AA17 [get_ports {usr_led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {usr_led[*]}]


set_property PACKAGE_PIN V18 [get_ports {core_usr_led[3]}]
set_property PACKAGE_PIN V19 [get_ports {core_usr_led[2]}]
set_property PACKAGE_PIN W17 [get_ports {core_usr_led[1]}]
set_property PACKAGE_PIN W14 [get_ports {core_usr_led[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {core_usr_led[*]}]


# user led12 IO_L10P_T1_AD11P_35 LVCMOS18
# user led17 IO_L18P_T2_13 LVCMOS33
# user led22 IO_L12N_T1_MRCC_13 LVCMOS33
# evaluation board
# set_property IOSTANDARD LVCMOS18 [get_ports usr_led12]
# set_property PACKAGE_PIN G16 [get_ports usr_led12]

# set_property IOSTANDARD LVCMOS33 [get_ports usr_led17]
# set_property PACKAGE_PIN AE18 [get_ports usr_led17]

# set_property IOSTANDARD LVCMOS33 [get_ports usr_led22]
# set_property PACKAGE_PIN AC24 [get_ports usr_led22]

# CAD-MS7035
# D17 -> IO_L7N_T1_12 -> BANK 12 AD10
# D18 -> IO_L3N_T0_DQS_12 ->  AA10
# D19 -> IO_L12P_T1_MRCC_33 -> J4
# D20 -> IO_L12N_T1_MRCC_33 -> J3

#set_property PACKAGE_PIN AD10 [get_ports {usr_led[0]}]
#set_property PACKAGE_PIN AA10 [get_ports {usr_led[1]}]
#set_property PACKAGE_PIN J4 [get_ports {usr_led[2]}]
#set_property PACKAGE_PIN J3 [get_ports {usr_led[3]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {usr_led[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {usr_led[1]}]

#set_property IOSTANDARD LVCMOS18 [get_ports {usr_led[2]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {usr_led[3]}]


# CAD-MS7035
#SW3<1> -> IO_L21N_T3_DQS_12 -> AC16
#SW3<2> ->IO_L21P_T3_DQS_12 -> AC17
#SW3<3> ->IO_L20N_T3_12 -> AB16
#SW3<4> ->IO_L20P_T3_12 -> AB17

set_property PACKAGE_PIN AC16 [get_ports {slide_button[0]}]
set_property PACKAGE_PIN AC17 [get_ports {slide_button[1]}]
set_property PACKAGE_PIN AB16 [get_ports {slide_button[2]}]
set_property PACKAGE_PIN AB17 [get_ports {slide_button[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {slide_button[*]}]

#CAD-MS7035 push button v1.0.0
#KEY-1 IO_L12N_T1_MRCC_12 -> AD13
#KEY-2 IO_L23P_T3_33 -> N7

#CAD-MS7035 push button v1.0.1
#KEY-1 IO_L12N_T1_MRCC_12 -> AD13
#KEY-2 IO_L17P_T2_12 -> AE16

set_property PACKAGE_PIN AD13 [get_ports {key[0]}]
#CAD-MS7035 push button v1.0.0
# set_property PACKAGE_PIN N7 [get_ports {key[1]}]

#CAD-MS7035 push button v1.0.1
set_property PACKAGE_PIN AE16 [get_ports {key[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {key[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key[1]}]