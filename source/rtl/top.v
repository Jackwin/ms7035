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
  // input   rst�???????
  input         mipi_phy_clk_hs_p,
  input         mipi_phy_clk_hs_n,
  input         mipi_phy_clk_lp_p,
  input         mipi_phy_clk_lp_n,
  input[1:0]    mipi_phy_data_hs_p,
  input[1:0]    mipi_phy_data_hs_n,
  input[1:0]    mipi_phy_data_lp_p,
  input[1:0]    mipi_phy_data_lp_n,

  input[3:0]    slide_button,
  input[1:0]    key,

  output[55:0]  con9,
  output[7:0]   pmod,

  output [3:0]  usr_led
   
);

reg [27:0]  led_cnt;

reg [13:0]  delay_cnt0;
reg [13:0]  delay_cnt1;
reg [1:0]   key_reg;
reg         key0_value;
reg         key1_value;
reg         key0_value_r;
reg         key1_value_r;

reg         key0_value_rising;
reg         key1_value_rising;
reg [3:0]   usr_led_r;

reg[1:0]    led_mode;

reg [55:0]  con9_reg;
reg [7:0]   pmod_reg;

always @(posedge clk_50m) begin
    led_cnt <= led_cnt + 1'd1;
end

always @(posedge clk_50m) begin
  if (key[0]) begin
    delay_cnt0 <= delay_cnt0 + 1'd1;
  end else 
    delay_cnt0 <= 'h0;

  if (key[0] & delay_cnt0[13]) begin
      key0_value <= 1'b1;
  end else begin
      key0_value <= 1'b0;
  end
end

always @(posedge clk_50m) begin
  if (key[1]) begin
    delay_cnt1 <= delay_cnt1 + 1'd1;
  end else 
    delay_cnt1 <= 'h0;

  if (key[1] & delay_cnt1[12]) begin
      key1_value <= 1'b1;
  end else begin
      key1_value <= 1'b0;
  end
end

always @(posedge clk_50m )begin
  key0_value_r <= key0_value;
  key1_value_r <= key1_value;

  key0_value_rising <= ~key0_value_r & key0_value;
  key1_value_rising <= ~key1_value_r & key1_value;

  if (key0_value_rising) begin
    led_mode <= 2'd1;
  end else if (key1_value_rising) begin
    led_mode <= 2'd2;
  end else begin
    led_mode <= led_mode;
  end
end

always @(posedge clk_50m) begin
  case(led_mode)
  2'd0: begin
    usr_led_r <= {4{led_cnt[26]}};
  end
  2'd1, 2'd3: begin
    usr_led_r[0] <= ~led_cnt[27] & led_cnt[26];
    usr_led_r[1] <= led_cnt[27] & ~led_cnt[26];
    usr_led_r[2] <= led_cnt[27] & led_cnt[26];
    usr_led_r[3] <= ~led_cnt[27] & ~led_cnt[26];
  end
  2'd2: begin
    usr_led_r[3] <= ~led_cnt[27] & led_cnt[26];
    usr_led_r[2] <= led_cnt[27] & ~led_cnt[26];
    usr_led_r[1] <= led_cnt[27] & led_cnt[26];
    usr_led_r[0] <= ~led_cnt[27] & ~led_cnt[26];
  end
  endcase
end

always @(posedge clk_50m) begin
  if (slide_button[0]) begin
    con9_reg <= {56{1'b1}};
    pmod_reg <= {8{1'b1}};
  end else begin
    con9_reg <= {56{1'b0}};
    pmod_reg <= {8{1'b0}};
  end
end

assign usr_led = usr_led_r;
assign con9 = con9_reg;
assign pmod = pmod_reg;


ms7035 ms7035_i(
  .mipi_phy_clk_hs_n(mipi_phy_clk_hs_n),
  .mipi_phy_clk_hs_p(mipi_phy_clk_hs_p),
  .mipi_phy_clk_lp_n(mipi_phy_clk_lp_n),
  .mipi_phy_clk_lp_p(mipi_phy_clk_lp_p),
  .mipi_phy_data_hs_n(mipi_phy_data_hs_n),
  .mipi_phy_data_hs_p(mipi_phy_data_hs_p),
  .mipi_phy_data_lp_n(mipi_phy_data_lp_n),
  .mipi_phy_data_lp_p(mipi_phy_data_lp_p)
);

vio_slide_button vio_slide_button_inst(
  .clk(clk_50m),
  .probe_in0(slide_button[0]),
  .probe_in1(slide_button[1]),
  .probe_in2(slide_button[2]),
  .probe_in3(slide_button[3])
  );

endmodule
