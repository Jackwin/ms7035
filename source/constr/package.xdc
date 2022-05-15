
set_property VCCAUX_IO DONTCARE [get_ports clk_50m]
set_property IOSTANDARD LVCMOS18 [get_ports clk_50m]
# evaluable board
# set_property PACKAGE_PIN AC23 [get_ports clk_50m]
# CAD-MS7035 IO_L12P_T1_MRCC_12
set_property PACKAGE_PIN AC13 [get_ports clk_50m]



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

# set_property PACKAGE_PIN AD10 [get_ports {usr_led[0]}]
# set_property PACKAGE_PIN AA10 [get_ports {usr_led[1]}]
# set_property PACKAGE_PIN J4 [get_ports {usr_led[2]}]
# set_property PACKAGE_PIN J3 [get_ports {usr_led[3]}]

# set_property IOSTANDARD LVCMOS33 [get_ports {usr_led[0]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {usr_led[1]}]

# set_property IOSTANDARD LVCMOS18 [get_ports {usr_led[2]}]
# set_property IOSTANDARD LVCMOS18 [get_ports {usr_led[3]}]


# CAD-MS7035
#SW3<1> -> IO_L21N_T3_DQS_12 -> AC16
#SW3<2> ->IO_L21P_T3_DQS_12 -> AC17
#SW3<3> ->IO_L20N_T3_12 -> AB16
#SW3<4> ->IO_L20P_T3_12 -> AB17

# set_property PACKAGE_PIN AC16 [get_ports {slide_button[0]}]
# set_property PACKAGE_PIN AC17 [get_ports {slide_button[1]}]
# set_property PACKAGE_PIN AB16 [get_ports {slide_button[2]}]
# set_property PACKAGE_PIN AB17 [get_ports {slide_button[3]}]

# set_property IOSTANDARD LVCMOS33 [get_ports {slide_button[*]}]

#CAD-MS7035 push button
#KEY-1 IO_L12N_T1_MRCC_12 -> AD13
#KEY-2 IO_L23P_T3_33 -> N7
# set_property PACKAGE_PIN AD13 [get_ports {key[0]}]
# set_property PACKAGE_PIN N7 [get_ports {key[1]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {key[0]}]
# set_property IOSTANDARD LVCMOS18 [get_ports {key[1]}]

## MIPI-0
#set_property -dict {PACKAGE_PIN N4 IOSTANDARD HSUL_12} [get_ports mipi_phy_clk_lp_p]
#set_property -dict {PACKAGE_PIN M4 IOSTANDARD HSUL_12} [get_ports mipi_phy_clk_lp_n]

#set_property -dict {PACKAGE_PIN N3 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_p[0]}]
#set_property -dict {PACKAGE_PIN N2 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_n[0]}]

#set_property -dict {PACKAGE_PIN D1 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_p[1]}]
#set_property -dict {PACKAGE_PIN C1 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_n[1]}]

#set_property -dict {PACKAGE_PIN C8 IOSTANDARD LVDS} [get_ports mipi_phy_clk_hs_p]
#set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVDS} [get_ports mipi_phy_clk_hs_n]

#set_property -dict {PACKAGE_PIN F8 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_p[0]}]
#set_property -dict {PACKAGE_PIN E7 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_n[0]}]

#set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_p[1]}]
#set_property -dict {PACKAGE_PIN A7 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_n[1]}]

##MIPI-1
set_property -dict {PACKAGE_PIN J1 IOSTANDARD HSUL_12} [get_ports mipi_phy_clk_lp_p]
set_property -dict {PACKAGE_PIN H1 IOSTANDARD HSUL_12} [get_ports mipi_phy_clk_lp_n]

set_property -dict {PACKAGE_PIN K2 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_p[0]}]
set_property -dict {PACKAGE_PIN K1 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_n[0]}]

set_property -dict {PACKAGE_PIN H2 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_p[1]}]
set_property -dict {PACKAGE_PIN G1 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_n[1]}]

set_property -dict {PACKAGE_PIN G7 IOSTANDARD LVDS} [get_ports mipi_phy_clk_hs_p]
set_property -dict {PACKAGE_PIN F7 IOSTANDARD LVDS} [get_ports mipi_phy_clk_hs_n]

set_property -dict {PACKAGE_PIN E6 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_p[0]}]
set_property -dict {PACKAGE_PIN D5 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_n[0]}]

set_property -dict {PACKAGE_PIN A9 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_p[1]}]
set_property -dict {PACKAGE_PIN A8 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_n[1]}]


# # BANK 35
# NET "IO_L1P_T0_AD0P_35" LOC = "F12";
# NET "IO_L1N_T0_AD0N_35" LOC = "E12";
# NET "IO_L2P_T0_AD8P_35" LOC = "E10";
# NET "IO_L2N_T0_AD8N_35" LOC = "D10";
# NET "IO_L3P_T0_DQS_AD1P_35" LOC = "G10";
# NET "IO_L3N_T0_DQS_AD1N_35" LOC = "F10";
# NET "IO_L4P_T0_35" LOC = "E11";
# NET "IO_L4N_T0_35" LOC = "D11";
# NET "IO_L5P_T0_AD9P_35" LOC = "G12";
# NET "IO_L5N_T0_AD9N_35" LOC = "G11";
# NET "IO_L6P_T0_35" LOC = "F13";
# NET "IO_L6N_T0_VREF_35" LOC = "E13";
# NET "IO_L7P_T1_AD2P_35" LOC = "H13";
# NET "IO_L7N_T1_AD2N_35" LOC = "H12";
# NET "IO_L8P_T1_AD10P_35" LOC = "K13";
# NET "IO_L8N_T1_AD10N_35" LOC = "J13";
# NET "IO_L9P_T1_DQS_AD3P_35" LOC = "K15";
# NET "IO_L9N_T1_DQS_AD3N_35" LOC = "J15";
# NET "IO_L10P_T1_AD11P_35" LOC = "G16";
# NET "IO_L10N_T1_AD11N_35" LOC = "G15";
# NET "IO_L11P_T1_SRCC_35" LOC = "G14";
# NET "IO_L11N_T1_SRCC_35" LOC = "F14";
# NET "IO_L12P_T1_MRCC_35" LOC = "J14";
# NET "IO_L12N_T1_MRCC_35" LOC = "H14";
# NET "IO_L13P_T2_MRCC_35" LOC = "D15";
# NET "IO_L13N_T2_MRCC_35" LOC = "D14";
# NET "IO_L14P_T2_AD4P_SRCC_35" LOC = "F15";
# NET "IO_L14N_T2_AD4N_SRCC_35" LOC = "E15";
# NET "IO_L15P_T2_DQS_AD12P_35" LOC = "C17";
# NET "IO_L15N_T2_DQS_AD12N_35" LOC = "C16";
# NET "IO_L16P_T2_35" LOC = "E16";
# NET "IO_L16N_T2_35" LOC = "D16";
# NET "IO_L17P_T2_AD5P_35" LOC = "B16";
# NET "IO_L17N_T2_AD5N_35" LOC = "B15";
# NET "IO_L18P_T2_AD13P_35" LOC = "B17";
# NET "IO_L18N_T2_AD13N_35" LOC = "A17";
# NET "IO_L19P_T3_35" LOC = "D13";
# NET "IO_L19N_T3_VREF_35" LOC = "C13";
# NET "IO_L20P_T3_AD6P_35" LOC = "C14";
# NET "IO_L20N_T3_AD6N_35" LOC = "B14";
# NET "IO_L21P_T3_DQS_AD14P_35" LOC = "A15";
# NET "IO_L21N_T3_DQS_AD14N_35" LOC = "A14";
# NET "IO_L22P_T3_AD7P_35" LOC = "C12";
# NET "IO_L22N_T3_AD7N_35" LOC = "B12";
# NET "IO_L23P_T3_35" LOC = "C11";
# NET "IO_L23N_T3_35" LOC = "B11";
# NET "IO_L24P_T3_AD15P_35" LOC = "A13";
# NET "IO_L24N_T3_AD15N_35" LOC = "A12";

# # Set the bank voltage for IO Bank 35 to 3.3V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];

# # bank34
# NET "IO_L1P_T0_34" LOC = "J11";
# NET "IO_L1N_T0_34" LOC = "H11";
# NET "IO_L2P_T0_34" LOC = "G6";
# NET "IO_L2N_T0_34" LOC = "G5";
# NET "IO_L3P_T0_DQS_PUDC_B_34" LOC = "H9";
# NET "IO_L3N_T0_DQS_34" LOC = "G9";
# NET "IO_L4P_T0_34" LOC = "H7";
# NET "IO_L4N_T0_34" LOC = "H6";
# NET "IO_L5P_T0_34" LOC = "J10";
# NET "IO_L5N_T0_34" LOC = "J9";
# NET "IO_L6P_T0_34" LOC = "J8";
# NET "IO_L6N_T0_VREF_34" LOC = "H8";
# NET "IO_L7P_T1_34" LOC = "F5";
# NET "IO_L7N_T1_34" LOC = "E5";
# NET "IO_L8P_T1_34" LOC = "D9";
# NET "IO_L8N_T1_34" LOC = "D8";
# NET "IO_L9P_T1_DQS_34" LOC = "F9";
# NET "IO_L9N_T1_DQS_34" LOC = "E8";
# NET "IO_L10P_T1_34" LOC = "E6";
# NET "IO_L10N_T1_34" LOC = "D5";
# NET "IO_L11P_T1_SRCC_34" LOC = "F8";
# NET "IO_L11N_T1_SRCC_34" LOC = "E7";
# NET "IO_L12P_T1_MRCC_34" LOC = "G7";
# NET "IO_L12N_T1_MRCC_34" LOC = "F7";
# NET "IO_L13P_T2_MRCC_34" LOC = "C8";
# NET "IO_L13N_T2_MRCC_34" LOC = "C7";
# NET "IO_L14P_T2_SRCC_34" LOC = "D6";
# NET "IO_L14N_T2_SRCC_34" LOC = "C6";
# NET "IO_L15P_T2_DQS_34" LOC = "C9";
# NET "IO_L15N_T2_DQS_34" LOC = "B9";
# NET "IO_L16P_T2_34" LOC = "B10";
# NET "IO_L16N_T2_34" LOC = "A10";
# NET "IO_L17P_T2_34" LOC = "A9";
# NET "IO_L17N_T2_34" LOC = "A8";
# NET "IO_L18P_T2_34" LOC = "B7";
# NET "IO_L18N_T2_34" LOC = "A7";
# NET "IO_L19P_T3_34" LOC = "C4";
# NET "IO_L19N_T3_VREF_34" LOC = "C3";
# NET "IO_L20P_T3_34" LOC = "B5";
# NET "IO_L20N_T3_34" LOC = "B4";
# NET "IO_L21P_T3_DQS_34" LOC = "B6";
# NET "IO_L21N_T3_DQS_34" LOC = "A5";
# NET "IO_L22P_T3_34" LOC = "A4";
# NET "IO_L22N_T3_34" LOC = "A3";
# NET "IO_L23P_T3_34" LOC = "C2";
# NET "IO_L23N_T3_34" LOC = "B1";
# NET "IO_L24P_T3_34" LOC = "B2";
# NET "IO_L24N_T3_34" LOC = "A2";

# # BANK 13
# NET "IO_L1P_T0_13" LOC = "AA25";
# NET "IO_L1N_T0_13" LOC = "AB25";
# NET "IO_L2P_T0_13" LOC = "AB26";
# NET "IO_L2N_T0_13" LOC = "AC26";
# NET "IO_L3P_T0_DQS_13" LOC = "AE25";
# NET "IO_L3N_T0_DQS_13" LOC = "AE26";
# NET "IO_L4P_T0_13" LOC = "AD25";
# NET "IO_L4N_T0_13" LOC = "AD26";
# NET "IO_L5P_T0_13" LOC = "AF24";
# NET "IO_L5N_T0_13" LOC = "AF25";
# NET "IO_L6P_T0_13" LOC = "AA24";
# NET "IO_L6N_T0_VREF_13" LOC = "AB24";
# NET "IO_L7P_T1_13" LOC = "AE22";
# NET "IO_L7N_T1_13" LOC = "AF22";
# NET "IO_L8P_T1_13" LOC = "AE23";
# NET "IO_L8N_T1_13" LOC = "AF23";
# NET "IO_L9P_T1_DQS_13" LOC = "AB21";
# NET "IO_L9N_T1_DQS_13" LOC = "AB22";
# NET "IO_L10P_T1_13" LOC = "AA22";
# NET "IO_L10N_T1_13" LOC = "AA23";
# NET "IO_L11P_T1_SRCC_13" LOC = "AD23";
# NET "IO_L11N_T1_SRCC_13" LOC = "AD24";
# NET "IO_L12P_T1_MRCC_13" LOC = "AC23";
# NET "IO_L12N_T1_MRCC_13" LOC = "AC24";
# NET "IO_L13P_T2_MRCC_13" LOC = "AD20";
# NET "IO_L13N_T2_MRCC_13" LOC = "AD21";
# NET "IO_L14P_T2_SRCC_13" LOC = "AC21";
# NET "IO_L14N_T2_SRCC_13" LOC = "AC22";
# NET "IO_L15P_T2_DQS_13" LOC = "AF19";
# NET "IO_L15N_T2_DQS_13" LOC = "AF20";
# NET "IO_L16P_T2_13" LOC = "AE20";
# NET "IO_L16N_T2_13" LOC = "AE21";
# NET "IO_L17P_T2_13" LOC = "AD18";
# NET "IO_L17N_T2_13" LOC = "AD19";
# NET "IO_L18P_T2_13" LOC = "AE18";
# NET "IO_L18N_T2_13" LOC = "AF18";
# NET "IO_L19P_T3_13" LOC = "W20";
# NET "IO_L19N_T3_VREF_13" LOC = "Y20";
# NET "IO_L20P_T3_13" LOC = "AA20";
# NET "IO_L20N_T3_13" LOC = "AB20";
# NET "IO_L21P_T3_DQS_13" LOC = "AC18";
# NET "IO_L21N_T3_DQS_13" LOC = "AC19";
# NET "IO_L22P_T3_13" LOC = "AA19";
# NET "IO_L22N_T3_13" LOC = "AB19";
# NET "IO_L23P_T3_13" LOC = "W18";
# NET "IO_L23N_T3_13" LOC = "W19";
# NET "IO_L24P_T3_13" LOC = "Y18";
# NET "IO_L24N_T3_13" LOC = "AA18";
# NET "PL_LED4" LOC = "V18";

# # bank 33
# NET "IO_L1P_T0_33" LOC = "G4";
# NET "IO_L1N_T0_33" LOC = "F4";
# NET "IO_L2P_T0_33" LOC = "D4";
# NET "IO_L2N_T0_33" LOC = "D3";
# NET "IO_L3P_T0_DQS_33" LOC = "G2";
# NET "IO_L3N_T0_DQS_33" LOC = "F2";
# NET "IO_L4P_T0_33" LOC = "D1";
# NET "IO_L4N_T0_33" LOC = "C1";
# NET "IO_L5P_T0_33" LOC = "E2";
# NET "IO_L5N_T0_33" LOC = "E1";
# NET "IO_L6P_T0_33" LOC = "F3";
# NET "IO_L6N_T0_VREF_33" LOC = "E3";
# NET "IO_L7P_T1_33" LOC = "J1";
# NET "IO_L7N_T1_33" LOC = "H1";
# NET "IO_L8P_T1_33" LOC = "H4";
# NET "IO_L8N_T1_33" LOC = "H3";
# NET "IO_L9P_T1_DQS_33" LOC = "K2";
# NET "IO_L9N_T1_DQS_33" LOC = "K1";
# NET "IO_L10P_T1_33" LOC = "H2";
# NET "IO_L10N_T1_33" LOC = "G1";
# NET "IO_L11P_T1_SRCC_33" LOC = "L3";
# NET "IO_L11N_T1_SRCC_33" LOC = "K3";
# NET "IO_L12P_T1_MRCC_33" LOC = "J4";
# NET "IO_L12N_T1_MRCC_33" LOC = "J3";
# NET "IO_L13P_T2_MRCC_33" LOC = "M6";
# NET "IO_L13N_T2_MRCC_33" LOC = "M5";
# NET "IO_L14P_T2_SRCC_33" LOC = "L5";
# NET "IO_L14N_T2_SRCC_33" LOC = "L4";
# NET "IO_L15P_T2_DQS_33" LOC = "N3";
# NET "IO_L15N_T2_DQS_33" LOC = "N2";
# NET "IO_L16P_T2_33" LOC = "M2";
# NET "IO_L16N_T2_33" LOC = "L2";
# NET "IO_L17P_T2_33" LOC = "N4";
# NET "IO_L17N_T2_33" LOC = "M4";
# NET "IO_L18P_T2_33" LOC = "N1";
# NET "IO_L18N_T2_33" LOC = "M1";
# NET "IO_L19P_T3_33" LOC = "M7";
# NET "IO_L19N_T3_VREF_33" LOC = "L7";
# NET "IO_L20P_T3_33" LOC = "K5";
# NET "IO_L20N_T3_33" LOC = "J5";
# NET "IO_L21P_T3_DQS_33" LOC = "M8";
# NET "IO_L21N_T3_DQS_33" LOC = "L8";
# NET "IO_L22P_T3_33" LOC = "K6";
# NET "IO_L22N_T3_33" LOC = "J6";
# NET "IO_L23P_T3_33" LOC = "N7";
# NET "IO_L23N_T3_33" LOC = "N6";
# NET "IO_L24P_T3_33" LOC = "K8";
# NET "IO_L24N_T3_33" LOC = "K7";