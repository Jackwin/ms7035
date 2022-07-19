##MIPI-1
# IO_L7P_T1_33
set_property -dict {PACKAGE_PIN J1 IOSTANDARD HSUL_12} [get_ports mipi_phy_clk_lp_p]
#IO_L7N_T1_33
set_property -dict {PACKAGE_PIN H1 IOSTANDARD HSUL_12} [get_ports mipi_phy_clk_lp_n]

# IO_L10P_T1_33
set_property -dict {PACKAGE_PIN H2 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_p[0]}]
#IO_L10N_T1_33
set_property -dict {PACKAGE_PIN G1 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_n[0]}]
# IO_L3P_T0_DQS_33
set_property -dict {PACKAGE_PIN G2 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_p[1]}]
#IO_L3N_T0_DQS_33 
set_property -dict {PACKAGE_PIN F2 IOSTANDARD HSUL_12} [get_ports {mipi_phy_data_lp_n[1]}]

# IO_L12P_T1_MRCC_34
set_property -dict {PACKAGE_PIN G7 IOSTANDARD LVDS} [get_ports mipi_phy_clk_hs_p]
# IO_L12N_T1_MRCC_34
set_property -dict {PACKAGE_PIN F7 IOSTANDARD LVDS} [get_ports mipi_phy_clk_hs_n]
# IO_18P_T2_34
set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_p[0]}]
# IO_18N_T2_34
set_property -dict {PACKAGE_PIN A7 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_n[0]}]
# IO_L9P_T1_DQS_34
set_property -dict {PACKAGE_PIN F9 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_p[1]}]

#IO_L9N_T1_DQS_34
set_property -dict {PACKAGE_PIN E8 IOSTANDARD LVDS} [get_ports {mipi_phy_data_hs_n[1]}]

set_property PACKAGE_PIN D9 [get_ports mipi_scl]
set_property PACKAGE_PIN D8 [get_ports mipi_sda]
set_property PACKAGE_PIN C9 [get_ports mipi_rst]

set_property IOSTANDARD LVCMOS18 [get_ports mipi_scl]
set_property IOSTANDARD LVCMOS18 [get_ports mipi_sda]
set_property IOSTANDARD LVCMOS18 [get_ports mipi_rst]

set_property PULLUP true [get_ports mipi_scl]
set_property PULLUP true [get_ports mipi_sda]
set_property PULLUP true [get_ports mipi_rst]