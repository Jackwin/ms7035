`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/22 22:26:48
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input   clk_50m,
    // input   rst，

    output  usr_led12,
    output  usr_led17,
    output  usr_led22
);

reg [26:0]  led_cnt;

always @(posedge clk_50m) begin
    led_cnt <= led_cnt + 1'd1;
end

assign usr_led12 = led_cnt[26];
assign usr_led17 = led_cnt[26];
assign usr_led22 = led_cnt[26];

  ms7035 ms7035_i(
    mipi_phy_clk_hs_n(mipi_phy_clk_hs_n),
    mipi_phy_clk_hs_p(mipi_phy_clk_hs_p),
    mipi_phy_clk_lp_n(mipi_phy_clk_lp_n),
    mipi_phy_clk_lp_p(mipi_phy_clk_lp_p),
    mipi_phy_data_hs_n(mipi_phy_data_hs_n),
    mipi_phy_data_hs_p(mipi_phy_data_hs_p),
    mipi_phy_data_lp_n(mipi_phy_data_lp_n),
    mipi_phy_data_lp_p(mipi_phy_data_lp_p)
  );

endmodule
