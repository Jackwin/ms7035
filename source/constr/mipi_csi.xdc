##MIPI-1
# IO_L7P_T1_33
set_property -dict {PACKAGE_PIN J1 IOSTANDARD HSUL_12} [get_ports mipi_phy_clk_lp_p]
#IO_L7N_T1_33
set_property -dict {PACKAGE_PIN H1 IOSTANDARD HSUL_12} [get_ports mipi_phy_clk_lp_n]

# IO_L10P_T1_33  ch3
set_property -dict {PACKAGE_PIN H2 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_p[3]}]
#IO_L10N_T1_33
set_property -dict {PACKAGE_PIN G1 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_n[3]}]

# IO_L3P_T0_DQS_33  ch1
set_property -dict {PACKAGE_PIN G2 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_p[1]}]
#IO_L3N_T0_DQS_33 
set_property -dict {PACKAGE_PIN F2 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_n[1]}]

#IO_L9P_T1_DQS_33  ch0
set_property -dict {PACKAGE_PIN K2 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_p[0]}]
#IO_L9N_T1_DQS_33
set_property -dict {PACKAGE_PIN K1 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_n[0]}]

# IO_L15P_T2_DQS_33  ch2
set_property -dict {PACKAGE_PIN N3 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_p[2]}]
# IO_L15N_T2_DQS_33
set_property -dict {PACKAGE_PIN N2 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_n[2]}]

# IO_L12P_T1_MRCC_34
set_property -dict {PACKAGE_PIN G7 IOSTANDARD LVDS} [get_ports mipi_phy_clk_hs_p]
# IO_L12N_T1_MRCC_34
set_property -dict {PACKAGE_PIN F7 IOSTANDARD LVDS} [get_ports mipi_phy_clk_hs_n]
# IO_18P_T2_34
set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_p[3]}]
# IO_18N_T2_34
set_property -dict {PACKAGE_PIN A7 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_n[3]}]
# IO_L9P_T1_DQS_34
set_property -dict {PACKAGE_PIN F9 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_p[1]}]
#IO_L9N_T1_DQS_34
set_property -dict {PACKAGE_PIN E8 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_n[1]}]

# IO_L10P_T1_34
set_property -dict {PACKAGE_PIN E6 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_p[0]}]

#IO_L10N_T1_34
set_property -dict {PACKAGE_PIN D5 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_n[0]}]

# IO_L11P_T1_SRCC_34
set_property -dict {PACKAGE_PIN F8 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_p[2]}]

# IO_L11N_T1_SRCC_34
set_property -dict {PACKAGE_PIN E7 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_n[2]}]

set_property PACKAGE_PIN D9 [get_ports mipi_scl]
set_property PACKAGE_PIN D8 [get_ports mipi_sda]
## leapord 
set_property PACKAGE_PIN C9 [get_ports mipi_rst]
#set_property PACKAGE_PIN A10 [get_ports mipi_rst]

set_property PACKAGE_PIN B9 [get_ports mipi_clk]

#set_property PACKAGE_PIN A10 [get_ports {cam_gpio_tri_io[0]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {cam_gpio_tri_io[0]}]
#set_property PULLUP true [get_ports {cam_gpio_tri_io[0]}]

set_property IOSTANDARD LVCMOS18 [get_ports mipi_scl]
set_property IOSTANDARD LVCMOS18 [get_ports mipi_sda]
set_property IOSTANDARD LVCMOS18 [get_ports mipi_rst]
set_property IOSTANDARD LVCMOS18 [get_ports mipi_clk]

#set_property PULLUP true [get_ports mipi_scl]
#set_property PULLUP true [get_ports mipi_sda]
#set_property PULLUP true [get_ports mipi_rst]