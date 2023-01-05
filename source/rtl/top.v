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
  
  input         mipi_phy_clk_hs_p,
  input         mipi_phy_clk_hs_n,
  input         mipi_phy_clk_lp_p,
  input         mipi_phy_clk_lp_n,
  input[3:0]    mipi_phy_data_hs_p,
  input[3:0]    mipi_phy_data_hs_n,
  input[3:0]    mipi_phy_data_lp_p,
  input[3:0]    mipi_phy_data_lp_n,

  inout         mipi_scl,
  inout         mipi_sda,
  inout         mipi_rst,
  output        mipi_clk,
  
  inout         hdmi_scl,
  inout         hdmi_sda,
  
  //inout [0:0]cam_gpio_tri_io,
  output        hdmi_clk,
  output[23:0]  hdmi_d,
  output        hdmi_de,
  output        hdmi_hs,
  output        hdmi_vs,

  input[3:0]    slide_button,
  input[1:0]    key,

  output[55:0]  con9,
  output[7:0]   pmod,

  output [3:0] core_usr_led,

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

wire        mipi_iic_scl_i;
wire        mipi_iic_scl_o;
wire        mipi_iic_scl_t;
wire        mipi_iic_sda_i;
wire        mipi_iic_sda_o;
wire        mipi_iic_sda_t;

wire        hdmi_iic_scl_i;
wire        hdmi_iic_scl_o;
wire        hdmi_iic_scl_t;
wire        hdmi_iic_sda_i;
wire        hdmi_iic_sda_o;
wire        hdmi_iic_sda_t;

wire [0:0]  gpio_mio_tri_i_0;
wire [0:0]  gpio_mio_tri_o_0;
wire [0:0]  gpio_mio_tri_t_0;
    
wire        clk_300m;
wire        locked;
wire        mipi_rst_o_vio;
wire        mipi_rst_t_vio;

//vio_0  vio_inst(
//.clk(clk_50m),
//.probe_in0(gpio_mio_tri_i_0),

//.probe_out0(mipi_rst_o_vio),
//.probe_out1(mipi_rst_t_vio)
//);

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

assign core_usr_led = {4{led_cnt[26]}};

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

   clk_wiz_0 clk_wiz_inst
   (
   // Clock out ports  
   .clk_25m(mipi_clk),
   // Status and control signals               
   .reset(1'b0), 
   .locked(locked),
  // Clock in ports
   .clk_in1(clk_50m)
   );

 IOBUF gpio_mio_tri_iobuf_0 (
    .I(gpio_mio_tri_o_0 | mipi_rst_o_vio),
    .IO(mipi_rst),
    .O(gpio_mio_tri_i_0),
    .T(gpio_mio_tri_t_0 | mipi_rst_t_vio));

 IOBUF mipi_iic_scl_iobuf(
  .I(mipi_iic_scl_o),
  .IO(mipi_scl),
  .O(mipi_iic_scl_i),
  .T(mipi_iic_scl_t)
);
  IOBUF mipi_iic_sda_iobuf(
  .I(mipi_iic_sda_o),
  .IO(mipi_sda),
  .O(mipi_iic_sda_i),
  .T(mipi_iic_sda_t)
); 

IOBUF hdmi_iic_scl_iobuf
   (.I(hdmi_iic_scl_o),
    .IO(hdmi_scl),
    .O(hdmi_iic_scl_i),
    .T(hdmi_iic_scl_t));
IOBUF hdmi_iic_sda_iobuf
   (.I(hdmi_iic_sda_o),
    .IO(hdmi_sda),
    .O(hdmi_iic_sda_i),
    .T(hdmi_iic_sda_t));
//IBUFDS #(
//        .DIFF_TERM("FALSE"),       // Differential Termination
//        .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE" 
//        .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
//     ) IBUFDS_hs (
//        .O(dphy_hs_clock_clk),  // Buffer output
//        .I(mipi_phy_clk_hs_p),  // Diff_p buffer input (connect directly to top-level port)
//        .IB(mipi_phy_clk_hs_n) // Diff_n buffer input (connect directly to top-level port)
//     );



ms7035 ms7035_i(
//  .mipi_dsi_clk_hs_n(mipi_dsi_clk_hs_n),
//  .mipi_dsi_clk_hs_p(mipi_dsi_clk_hs_p),
//  .mipi_dsi_clk_lp_n(mipi_dsi_clk_lp_n),
//  .mipi_dsi_clk_lp_p(mipi_dsi_clk_lp_p),
//  .mipi_dsi_data_hs_n(mipi_dsi_data_hs_n),
//  .mipi_dsi_data_hs_p(mipi_dsi_data_hs_p),
//  .mipi_dsi_data_lp_n(mipi_dsi_data_lp_n),
//  .mipi_dsi_data_lp_p(mipi_dsi_data_lp_p),
 //   .clk_50m_in(clk_50m),
 //   .reset_in(1'b0),
  
 //  .hdmi_out_data(hdmi_d),
 //  .hdmi_out_de(hdmi_de),
 //  .hdmi_out_hs(hdmi_hs),
 //  .hdmi_out_vs(hdmi_vs),
 //  .hdmi_clk(hdmi_clk),
 //  .gpio_mio_tri_i(gpio_mio_tri_i_0),
 //  .gpio_mio_tri_o(gpio_mio_tri_o_0),
 //  .gpio_mio_tri_t(gpio_mio_tri_t_0),
        
  .mipi_phy_clk_hs_n(mipi_phy_clk_hs_n),
  .mipi_phy_clk_hs_p(mipi_phy_clk_hs_p),
  .mipi_phy_clk_lp_n(mipi_phy_clk_lp_n),
  .mipi_phy_clk_lp_p(mipi_phy_clk_lp_p),
  .mipi_phy_data_hs_n(mipi_phy_data_hs_n),
  .mipi_phy_data_hs_p(mipi_phy_data_hs_p),
  .mipi_phy_data_lp_n(mipi_phy_data_lp_n),
  .mipi_phy_data_lp_p(mipi_phy_data_lp_p),
  
  .mipi_iic_scl_i(mipi_iic_scl_i),
  .mipi_iic_scl_o(mipi_iic_scl_o),
  .mipi_iic_scl_t(mipi_iic_scl_t),
  .mipi_iic_sda_i(mipi_iic_sda_i),
  .mipi_iic_sda_o(mipi_iic_sda_o),
  .mipi_iic_sda_t(mipi_iic_sda_t)

  //.hdmi_iic_scl_i(hdmi_iic_scl_i),
  //.hdmi_iic_scl_o(hdmi_iic_scl_o),
  //.hdmi_iic_scl_t(hdmi_iic_scl_t),
  //.hdmi_iic_sda_i(hdmi_iic_sda_i),
  //.hdmi_iic_sda_o(hdmi_iic_sda_o),
  //.hdmi_iic_sda_t(hdmi_iic_sda_t)
);

//vio_slide_button vio_slide_button_inst(
//  .clk(clk_50m),
//  .probe_in0(slide_button[0]),
//  .probe_in1(slide_button[1]),
//  .probe_in2(slide_button[2]),
//  .probe_in3(slide_button[3])
//  );

// ila_0 ila_inst (
//        .clk(clk_300m),

//        .probe0(mipi_phy_data_lp_n),
//        .probe1(mipi_phy_data_lp_p),
//        .probe2(mipi_phy_clk_lp_n),
//        .probe3(mipi_phy_clk_lp_p),
//        .probe4(mipi_phy_data_hs_p),
//        .probe5(mipi_phy_data_hs_n)
       
//    );

endmodule
