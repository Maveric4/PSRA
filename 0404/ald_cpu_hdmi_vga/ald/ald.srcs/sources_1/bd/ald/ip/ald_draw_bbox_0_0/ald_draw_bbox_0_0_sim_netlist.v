// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Mar 21 12:04:24 2019
// Host        : lsriw running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lsriw/HSVS/OgorekPiotr/7.03/ald_cpu_hdmi_vga/ald/ald.srcs/sources_1/bd/ald/ip/ald_draw_bbox_0_0/ald_draw_bbox_0_0_sim_netlist.v
// Design      : ald_draw_bbox_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ald_draw_bbox_0_0,draw_bbox,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "draw_bbox,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module ald_draw_bbox_0_0
   (clk,
    de_in,
    hsync_in,
    vsync_in,
    rgb_in,
    bbox_0,
    de_out,
    hsync_out,
    vsync_out,
    rgb_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ald_dvi2rgb_0_0_PixelClk, INSERT_VIP 0" *) input clk;
  input de_in;
  input hsync_in;
  input vsync_in;
  input [23:0]rgb_in;
  input [63:0]bbox_0;
  output de_out;
  output hsync_out;
  output vsync_out;
  output [23:0]rgb_out;

  wire [63:0]bbox_0;
  wire clk;
  wire de_in;
  wire de_out;
  wire hsync_in;
  wire hsync_out;
  wire [23:0]rgb_in;
  wire [23:0]rgb_out;
  wire vsync_in;
  wire vsync_out;

  ald_draw_bbox_0_0_draw_bbox inst
       (.bbox_0(bbox_0),
        .clk(clk),
        .de_in(de_in),
        .de_out(de_out),
        .hsync_in(hsync_in),
        .hsync_out(hsync_out),
        .rgb_in(rgb_in),
        .rgb_out(rgb_out),
        .vsync_in(vsync_in),
        .vsync_out(vsync_out));
endmodule

(* ORIG_REF_NAME = "draw_bbox" *) 
module ald_draw_bbox_0_0_draw_bbox
   (rgb_out,
    de_out,
    hsync_out,
    vsync_out,
    rgb_in,
    vsync_in,
    bbox_0,
    clk,
    de_in,
    hsync_in);
  output [23:0]rgb_out;
  output de_out;
  output hsync_out;
  output vsync_out;
  input [23:0]rgb_in;
  input vsync_in;
  input [63:0]bbox_0;
  input clk;
  input de_in;
  input hsync_in;

  wire [63:0]bbox_0;
  wire clk;
  wire de_in;
  wire de_out;
  wire hsync_in;
  wire hsync_out;
  wire [10:0]p_0_in;
  wire [10:0]r_frameH;
  wire \r_frameH[0]_i_1_n_0 ;
  wire \r_frameH[10]_i_1_n_0 ;
  wire \r_frameH[10]_i_2_n_0 ;
  wire \r_frameH[10]_i_3_n_0 ;
  wire \r_frameH[10]_i_4_n_0 ;
  wire \r_frameH[10]_i_5_n_0 ;
  wire \r_frameH[10]_i_6_n_0 ;
  wire \r_frameH[10]_i_7_n_0 ;
  wire \r_frameH[10]_i_8_n_0 ;
  wire \r_frameH[1]_i_1_n_0 ;
  wire \r_frameH[2]_i_1_n_0 ;
  wire \r_frameH[3]_i_1_n_0 ;
  wire \r_frameH[4]_i_1_n_0 ;
  wire \r_frameH[5]_i_1_n_0 ;
  wire \r_frameH[6]_i_1_n_0 ;
  wire \r_frameH[7]_i_1_n_0 ;
  wire \r_frameH[8]_i_1_n_0 ;
  wire \r_frameH[8]_i_2_n_0 ;
  wire \r_frameH[9]_i_1_n_0 ;
  wire r_frameW;
  wire \r_frameW[10]_i_3_n_0 ;
  wire \r_frameW[6]_i_1_n_0 ;
  wire \r_frameW[7]_i_1_n_0 ;
  wire [10:0]r_frameW_reg__0;
  wire [23:0]rgb_in;
  wire [23:0]rgb_out;
  wire vsync_in;
  wire vsync_out;

  ald_draw_bbox_0_0_signle_bbox \genblk1[0].bbox_i 
       (.Q(r_frameW_reg__0),
        .bbox_0(bbox_0),
        .clk(clk),
        .de_in(de_in),
        .de_out(de_out),
        .hsync_in(hsync_in),
        .hsync_out(hsync_out),
        .r_frameH(r_frameH),
        .rgb_in(rgb_in),
        .rgb_out(rgb_out),
        .vsync_in(vsync_in),
        .vsync_out(vsync_out));
  LUT1 #(
    .INIT(2'h1)) 
    \r_frameH[0]_i_1 
       (.I0(r_frameH[0]),
        .O(\r_frameH[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \r_frameH[10]_i_1 
       (.I0(vsync_in),
        .I1(\r_frameH[10]_i_4_n_0 ),
        .I2(\r_frameH[10]_i_5_n_0 ),
        .O(\r_frameH[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    \r_frameH[10]_i_2 
       (.I0(vsync_in),
        .I1(\r_frameH[10]_i_6_n_0 ),
        .I2(r_frameW_reg__0[9]),
        .I3(r_frameW_reg__0[10]),
        .I4(r_frameW_reg__0[8]),
        .I5(de_in),
        .O(\r_frameH[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \r_frameH[10]_i_3 
       (.I0(r_frameH[10]),
        .I1(r_frameH[9]),
        .I2(r_frameH[8]),
        .I3(r_frameH[7]),
        .I4(\r_frameH[10]_i_7_n_0 ),
        .I5(r_frameH[6]),
        .O(\r_frameH[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \r_frameH[10]_i_4 
       (.I0(\r_frameH[10]_i_8_n_0 ),
        .I1(r_frameH[8]),
        .I2(r_frameH[9]),
        .I3(r_frameH[5]),
        .I4(\r_frameH[8]_i_2_n_0 ),
        .O(\r_frameH[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \r_frameH[10]_i_5 
       (.I0(de_in),
        .I1(r_frameW_reg__0[8]),
        .I2(r_frameW_reg__0[10]),
        .I3(r_frameW_reg__0[9]),
        .I4(\r_frameH[10]_i_6_n_0 ),
        .O(\r_frameH[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \r_frameH[10]_i_6 
       (.I0(r_frameW_reg__0[6]),
        .I1(\r_frameW[10]_i_3_n_0 ),
        .I2(r_frameW_reg__0[7]),
        .O(\r_frameH[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r_frameH[10]_i_7 
       (.I0(r_frameH[4]),
        .I1(r_frameH[2]),
        .I2(r_frameH[0]),
        .I3(r_frameH[1]),
        .I4(r_frameH[3]),
        .I5(r_frameH[5]),
        .O(\r_frameH[10]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \r_frameH[10]_i_8 
       (.I0(r_frameH[7]),
        .I1(r_frameH[4]),
        .I2(r_frameH[6]),
        .I3(r_frameH[10]),
        .O(\r_frameH[10]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_frameH[1]_i_1 
       (.I0(r_frameH[0]),
        .I1(r_frameH[1]),
        .O(\r_frameH[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_frameH[2]_i_1 
       (.I0(r_frameH[2]),
        .I1(r_frameH[1]),
        .I2(r_frameH[0]),
        .O(\r_frameH[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F00FF80800000)) 
    \r_frameH[3]_i_1 
       (.I0(r_frameH[1]),
        .I1(r_frameH[0]),
        .I2(r_frameH[2]),
        .I3(vsync_in),
        .I4(\r_frameH[10]_i_5_n_0 ),
        .I5(r_frameH[3]),
        .O(\r_frameH[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_frameH[4]_i_1 
       (.I0(r_frameH[4]),
        .I1(r_frameH[3]),
        .I2(r_frameH[1]),
        .I3(r_frameH[0]),
        .I4(r_frameH[2]),
        .O(\r_frameH[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \r_frameH[5]_i_1 
       (.I0(r_frameH[5]),
        .I1(r_frameH[4]),
        .I2(r_frameH[2]),
        .I3(r_frameH[0]),
        .I4(r_frameH[1]),
        .I5(r_frameH[3]),
        .O(\r_frameH[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \r_frameH[6]_i_1 
       (.I0(r_frameH[6]),
        .I1(r_frameH[5]),
        .I2(\r_frameH[8]_i_2_n_0 ),
        .I3(r_frameH[4]),
        .O(\r_frameH[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \r_frameH[7]_i_1 
       (.I0(r_frameH[7]),
        .I1(r_frameH[6]),
        .I2(r_frameH[4]),
        .I3(\r_frameH[8]_i_2_n_0 ),
        .I4(r_frameH[5]),
        .O(\r_frameH[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \r_frameH[8]_i_1 
       (.I0(r_frameH[8]),
        .I1(r_frameH[7]),
        .I2(r_frameH[5]),
        .I3(\r_frameH[8]_i_2_n_0 ),
        .I4(r_frameH[4]),
        .I5(r_frameH[6]),
        .O(\r_frameH[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_frameH[8]_i_2 
       (.I0(r_frameH[2]),
        .I1(r_frameH[0]),
        .I2(r_frameH[1]),
        .I3(r_frameH[3]),
        .O(\r_frameH[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \r_frameH[9]_i_1 
       (.I0(r_frameH[9]),
        .I1(r_frameH[6]),
        .I2(\r_frameH[10]_i_7_n_0 ),
        .I3(r_frameH[7]),
        .I4(r_frameH[8]),
        .O(\r_frameH[9]_i_1_n_0 ));
  FDRE \r_frameH_reg[0] 
       (.C(clk),
        .CE(\r_frameH[10]_i_2_n_0 ),
        .D(\r_frameH[0]_i_1_n_0 ),
        .Q(r_frameH[0]),
        .R(\r_frameH[10]_i_1_n_0 ));
  FDRE \r_frameH_reg[10] 
       (.C(clk),
        .CE(\r_frameH[10]_i_2_n_0 ),
        .D(\r_frameH[10]_i_3_n_0 ),
        .Q(r_frameH[10]),
        .R(\r_frameH[10]_i_1_n_0 ));
  FDRE \r_frameH_reg[1] 
       (.C(clk),
        .CE(\r_frameH[10]_i_2_n_0 ),
        .D(\r_frameH[1]_i_1_n_0 ),
        .Q(r_frameH[1]),
        .R(\r_frameH[10]_i_1_n_0 ));
  FDRE \r_frameH_reg[2] 
       (.C(clk),
        .CE(\r_frameH[10]_i_2_n_0 ),
        .D(\r_frameH[2]_i_1_n_0 ),
        .Q(r_frameH[2]),
        .R(\r_frameH[10]_i_1_n_0 ));
  FDRE \r_frameH_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_frameH[3]_i_1_n_0 ),
        .Q(r_frameH[3]),
        .R(1'b0));
  FDRE \r_frameH_reg[4] 
       (.C(clk),
        .CE(\r_frameH[10]_i_2_n_0 ),
        .D(\r_frameH[4]_i_1_n_0 ),
        .Q(r_frameH[4]),
        .R(\r_frameH[10]_i_1_n_0 ));
  FDRE \r_frameH_reg[5] 
       (.C(clk),
        .CE(\r_frameH[10]_i_2_n_0 ),
        .D(\r_frameH[5]_i_1_n_0 ),
        .Q(r_frameH[5]),
        .R(\r_frameH[10]_i_1_n_0 ));
  FDRE \r_frameH_reg[6] 
       (.C(clk),
        .CE(\r_frameH[10]_i_2_n_0 ),
        .D(\r_frameH[6]_i_1_n_0 ),
        .Q(r_frameH[6]),
        .R(\r_frameH[10]_i_1_n_0 ));
  FDRE \r_frameH_reg[7] 
       (.C(clk),
        .CE(\r_frameH[10]_i_2_n_0 ),
        .D(\r_frameH[7]_i_1_n_0 ),
        .Q(r_frameH[7]),
        .R(\r_frameH[10]_i_1_n_0 ));
  FDRE \r_frameH_reg[8] 
       (.C(clk),
        .CE(\r_frameH[10]_i_2_n_0 ),
        .D(\r_frameH[8]_i_1_n_0 ),
        .Q(r_frameH[8]),
        .R(\r_frameH[10]_i_1_n_0 ));
  FDRE \r_frameH_reg[9] 
       (.C(clk),
        .CE(\r_frameH[10]_i_2_n_0 ),
        .D(\r_frameH[9]_i_1_n_0 ),
        .Q(r_frameH[9]),
        .R(\r_frameH[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_frameW[0]_i_1 
       (.I0(r_frameW_reg__0[0]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \r_frameW[10]_i_1 
       (.I0(vsync_in),
        .I1(de_in),
        .O(r_frameW));
  LUT6 #(
    .INIT(64'hF0F0F0F078F0F070)) 
    \r_frameW[10]_i_2 
       (.I0(r_frameW_reg__0[6]),
        .I1(r_frameW_reg__0[7]),
        .I2(r_frameW_reg__0[10]),
        .I3(r_frameW_reg__0[9]),
        .I4(r_frameW_reg__0[8]),
        .I5(\r_frameW[10]_i_3_n_0 ),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r_frameW[10]_i_3 
       (.I0(r_frameW_reg__0[4]),
        .I1(r_frameW_reg__0[2]),
        .I2(r_frameW_reg__0[1]),
        .I3(r_frameW_reg__0[0]),
        .I4(r_frameW_reg__0[3]),
        .I5(r_frameW_reg__0[5]),
        .O(\r_frameW[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_frameW[1]_i_1 
       (.I0(r_frameW_reg__0[1]),
        .I1(r_frameW_reg__0[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_frameW[2]_i_1 
       (.I0(r_frameW_reg__0[2]),
        .I1(r_frameW_reg__0[1]),
        .I2(r_frameW_reg__0[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_frameW[3]_i_1 
       (.I0(r_frameW_reg__0[3]),
        .I1(r_frameW_reg__0[0]),
        .I2(r_frameW_reg__0[1]),
        .I3(r_frameW_reg__0[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_frameW[4]_i_1 
       (.I0(r_frameW_reg__0[4]),
        .I1(r_frameW_reg__0[2]),
        .I2(r_frameW_reg__0[1]),
        .I3(r_frameW_reg__0[0]),
        .I4(r_frameW_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \r_frameW[5]_i_1 
       (.I0(r_frameW_reg__0[5]),
        .I1(r_frameW_reg__0[3]),
        .I2(r_frameW_reg__0[0]),
        .I3(r_frameW_reg__0[1]),
        .I4(r_frameW_reg__0[2]),
        .I5(r_frameW_reg__0[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \r_frameW[6]_i_1 
       (.I0(r_frameW_reg__0[6]),
        .I1(\r_frameW[10]_i_3_n_0 ),
        .O(\r_frameW[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \r_frameW[7]_i_1 
       (.I0(r_frameW_reg__0[7]),
        .I1(r_frameW_reg__0[6]),
        .I2(\r_frameW[10]_i_3_n_0 ),
        .O(\r_frameW[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FFFFF00D00000)) 
    \r_frameW[8]_i_1 
       (.I0(r_frameW_reg__0[10]),
        .I1(r_frameW_reg__0[9]),
        .I2(r_frameW_reg__0[6]),
        .I3(\r_frameW[10]_i_3_n_0 ),
        .I4(r_frameW_reg__0[7]),
        .I5(r_frameW_reg__0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \r_frameW[9]_i_1 
       (.I0(r_frameW_reg__0[9]),
        .I1(r_frameW_reg__0[6]),
        .I2(\r_frameW[10]_i_3_n_0 ),
        .I3(r_frameW_reg__0[7]),
        .I4(r_frameW_reg__0[8]),
        .O(p_0_in[9]));
  FDRE \r_frameW_reg[0] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[0]),
        .Q(r_frameW_reg__0[0]),
        .R(r_frameW));
  FDRE \r_frameW_reg[10] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[10]),
        .Q(r_frameW_reg__0[10]),
        .R(r_frameW));
  FDRE \r_frameW_reg[1] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[1]),
        .Q(r_frameW_reg__0[1]),
        .R(r_frameW));
  FDRE \r_frameW_reg[2] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[2]),
        .Q(r_frameW_reg__0[2]),
        .R(r_frameW));
  FDRE \r_frameW_reg[3] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[3]),
        .Q(r_frameW_reg__0[3]),
        .R(r_frameW));
  FDRE \r_frameW_reg[4] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[4]),
        .Q(r_frameW_reg__0[4]),
        .R(r_frameW));
  FDRE \r_frameW_reg[5] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[5]),
        .Q(r_frameW_reg__0[5]),
        .R(r_frameW));
  FDRE \r_frameW_reg[6] 
       (.C(clk),
        .CE(de_in),
        .D(\r_frameW[6]_i_1_n_0 ),
        .Q(r_frameW_reg__0[6]),
        .R(r_frameW));
  FDRE \r_frameW_reg[7] 
       (.C(clk),
        .CE(de_in),
        .D(\r_frameW[7]_i_1_n_0 ),
        .Q(r_frameW_reg__0[7]),
        .R(r_frameW));
  FDRE \r_frameW_reg[8] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[8]),
        .Q(r_frameW_reg__0[8]),
        .R(r_frameW));
  FDRE \r_frameW_reg[9] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[9]),
        .Q(r_frameW_reg__0[9]),
        .R(r_frameW));
endmodule

(* ORIG_REF_NAME = "signle_bbox" *) 
module ald_draw_bbox_0_0_signle_bbox
   (de_out,
    hsync_out,
    vsync_out,
    rgb_out,
    de_in,
    clk,
    hsync_in,
    vsync_in,
    bbox_0,
    rgb_in,
    r_frameH,
    Q);
  output de_out;
  output hsync_out;
  output vsync_out;
  output [23:0]rgb_out;
  input de_in;
  input clk;
  input hsync_in;
  input vsync_in;
  input [63:0]bbox_0;
  input [23:0]rgb_in;
  input [10:0]r_frameH;
  input [10:0]Q;

  wire [10:0]Q;
  wire [63:0]bbox_0;
  wire clk;
  wire de_in;
  wire de_out;
  wire hsync_in;
  wire hsync_out;
  wire \r_b[0]_i_1_n_0 ;
  wire \r_b[1]_i_1_n_0 ;
  wire \r_b[2]_i_1_n_0 ;
  wire \r_b[3]_i_1_n_0 ;
  wire \r_b[4]_i_1_n_0 ;
  wire \r_b[5]_i_1_n_0 ;
  wire \r_b[6]_i_1_n_0 ;
  wire \r_b[7]_i_1_n_0 ;
  wire [10:0]r_frameH;
  wire r_r;
  wire r_r1;
  wire r_r4;
  wire r_r40_in;
  wire r_r40_out;
  wire r_r41_in;
  wire r_r41_out;
  wire r_r42_in;
  wire r_r42_out;
  wire r_r4__10_carry__0_i_1_n_0;
  wire r_r4__10_carry__0_i_2_n_0;
  wire r_r4__10_carry__0_i_3_n_0;
  wire r_r4__10_carry__0_i_4_n_0;
  wire r_r4__10_carry__0_i_5_n_0;
  wire r_r4__10_carry__0_i_6_n_0;
  wire r_r4__10_carry__0_i_7_n_0;
  wire r_r4__10_carry__0_i_8_n_0;
  wire r_r4__10_carry__0_n_0;
  wire r_r4__10_carry__0_n_1;
  wire r_r4__10_carry__0_n_2;
  wire r_r4__10_carry__0_n_3;
  wire r_r4__10_carry_i_1_n_0;
  wire r_r4__10_carry_i_2_n_0;
  wire r_r4__10_carry_i_3_n_0;
  wire r_r4__10_carry_i_4_n_0;
  wire r_r4__10_carry_i_5_n_0;
  wire r_r4__10_carry_i_6_n_0;
  wire r_r4__10_carry_i_7_n_0;
  wire r_r4__10_carry_i_8_n_0;
  wire r_r4__10_carry_n_0;
  wire r_r4__10_carry_n_1;
  wire r_r4__10_carry_n_2;
  wire r_r4__10_carry_n_3;
  wire r_r4__18_carry__0_i_1_n_0;
  wire r_r4__18_carry__0_i_2_n_0;
  wire r_r4__18_carry__0_i_3_n_0;
  wire r_r4__18_carry__0_i_4_n_0;
  wire r_r4__18_carry__0_i_5_n_0;
  wire r_r4__18_carry__0_i_6_n_0;
  wire r_r4__18_carry__0_n_1;
  wire r_r4__18_carry__0_n_2;
  wire r_r4__18_carry__0_n_3;
  wire r_r4__18_carry_i_1_n_0;
  wire r_r4__18_carry_i_2_n_0;
  wire r_r4__18_carry_i_3_n_0;
  wire r_r4__18_carry_i_4_n_0;
  wire r_r4__18_carry_i_5_n_0;
  wire r_r4__18_carry_i_6_n_0;
  wire r_r4__18_carry_i_7_n_0;
  wire r_r4__18_carry_i_8_n_0;
  wire r_r4__18_carry_n_0;
  wire r_r4__18_carry_n_1;
  wire r_r4__18_carry_n_2;
  wire r_r4__18_carry_n_3;
  wire r_r4__26_carry__0_i_1_n_0;
  wire r_r4__26_carry__0_i_2_n_0;
  wire r_r4__26_carry__0_n_3;
  wire r_r4__26_carry_i_1_n_0;
  wire r_r4__26_carry_i_2_n_0;
  wire r_r4__26_carry_i_3_n_0;
  wire r_r4__26_carry_i_4_n_0;
  wire r_r4__26_carry_n_0;
  wire r_r4__26_carry_n_1;
  wire r_r4__26_carry_n_2;
  wire r_r4__26_carry_n_3;
  wire r_r4__32_carry__0_i_1_n_0;
  wire r_r4__32_carry__0_i_2_n_0;
  wire r_r4__32_carry__0_n_3;
  wire r_r4__32_carry_i_1_n_0;
  wire r_r4__32_carry_i_2_n_0;
  wire r_r4__32_carry_i_3_n_0;
  wire r_r4__32_carry_i_4_n_0;
  wire r_r4__32_carry_n_0;
  wire r_r4__32_carry_n_1;
  wire r_r4__32_carry_n_2;
  wire r_r4__32_carry_n_3;
  wire r_r4__38_carry__0_i_1_n_0;
  wire r_r4__38_carry__0_i_2_n_0;
  wire r_r4__38_carry__0_i_3_n_0;
  wire r_r4__38_carry__0_i_4_n_0;
  wire r_r4__38_carry__0_i_5_n_0;
  wire r_r4__38_carry__0_n_2;
  wire r_r4__38_carry__0_n_3;
  wire r_r4__38_carry_i_1_n_0;
  wire r_r4__38_carry_i_2_n_0;
  wire r_r4__38_carry_i_3_n_0;
  wire r_r4__38_carry_i_4_n_0;
  wire r_r4__38_carry_i_5_n_0;
  wire r_r4__38_carry_i_6_n_0;
  wire r_r4__38_carry_i_7_n_0;
  wire r_r4__38_carry_i_8_n_0;
  wire r_r4__38_carry_n_0;
  wire r_r4__38_carry_n_1;
  wire r_r4__38_carry_n_2;
  wire r_r4__38_carry_n_3;
  wire r_r4__45_carry__0_i_1_n_0;
  wire r_r4__45_carry__0_i_2_n_0;
  wire r_r4__45_carry__0_i_3_n_0;
  wire r_r4__45_carry__0_i_4_n_0;
  wire r_r4__45_carry__0_i_5_n_0;
  wire r_r4__45_carry__0_i_6_n_0;
  wire r_r4__45_carry__0_n_1;
  wire r_r4__45_carry__0_n_2;
  wire r_r4__45_carry__0_n_3;
  wire r_r4__45_carry_i_1_n_0;
  wire r_r4__45_carry_i_2_n_0;
  wire r_r4__45_carry_i_3_n_0;
  wire r_r4__45_carry_i_4_n_0;
  wire r_r4__45_carry_i_5_n_0;
  wire r_r4__45_carry_i_6_n_0;
  wire r_r4__45_carry_i_7_n_0;
  wire r_r4__45_carry_i_8_n_0;
  wire r_r4__45_carry_n_0;
  wire r_r4__45_carry_n_1;
  wire r_r4__45_carry_n_2;
  wire r_r4__45_carry_n_3;
  wire r_r4__4_carry__0_i_1_n_0;
  wire r_r4__4_carry__0_i_2_n_0;
  wire r_r4__4_carry__0_n_3;
  wire r_r4__4_carry_i_1_n_0;
  wire r_r4__4_carry_i_2_n_0;
  wire r_r4__4_carry_i_3_n_0;
  wire r_r4__4_carry_i_4_n_0;
  wire r_r4__4_carry_n_0;
  wire r_r4__4_carry_n_1;
  wire r_r4__4_carry_n_2;
  wire r_r4__4_carry_n_3;
  wire r_r4_carry__0_i_1_n_0;
  wire r_r4_carry_i_1_n_0;
  wire r_r4_carry_i_2_n_0;
  wire r_r4_carry_i_3_n_0;
  wire r_r4_carry_i_4_n_0;
  wire r_r4_carry_n_0;
  wire r_r4_carry_n_1;
  wire r_r4_carry_n_2;
  wire r_r4_carry_n_3;
  wire \r_r[0]_i_1_n_0 ;
  wire \r_r[1]_i_1_n_0 ;
  wire \r_r[2]_i_1_n_0 ;
  wire \r_r[3]_i_1_n_0 ;
  wire \r_r[4]_i_1_n_0 ;
  wire \r_r[5]_i_1_n_0 ;
  wire \r_r[6]_i_1_n_0 ;
  wire \r_r[7]_i_2_n_0 ;
  wire \r_r[7]_i_3_n_0 ;
  wire \r_r[7]_i_4_n_0 ;
  wire [23:0]rgb_in;
  wire [23:0]rgb_out;
  wire vsync_in;
  wire vsync_out;
  wire [3:0]NLW_r_r4__10_carry_O_UNCONNECTED;
  wire [3:0]NLW_r_r4__10_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_r_r4__18_carry_O_UNCONNECTED;
  wire [3:0]NLW_r_r4__18_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_r_r4__26_carry_O_UNCONNECTED;
  wire [3:2]NLW_r_r4__26_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_r_r4__26_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_r_r4__32_carry_O_UNCONNECTED;
  wire [3:2]NLW_r_r4__32_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_r_r4__32_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_r_r4__38_carry_O_UNCONNECTED;
  wire [3:3]NLW_r_r4__38_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_r_r4__38_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_r_r4__45_carry_O_UNCONNECTED;
  wire [3:0]NLW_r_r4__45_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_r_r4__4_carry_O_UNCONNECTED;
  wire [3:2]NLW_r_r4__4_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_r_r4__4_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_r_r4_carry_O_UNCONNECTED;
  wire [3:1]NLW_r_r4_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_r_r4_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFEEEEEEEEEEEEE)) 
    \r_b[0]_i_1 
       (.I0(rgb_in[0]),
        .I1(\r_r[7]_i_3_n_0 ),
        .I2(r_r42_out),
        .I3(r_r41_out),
        .I4(r_r42_in),
        .I5(r_r41_in),
        .O(\r_b[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEEEEEEEEE)) 
    \r_b[1]_i_1 
       (.I0(rgb_in[1]),
        .I1(\r_r[7]_i_3_n_0 ),
        .I2(r_r42_out),
        .I3(r_r41_out),
        .I4(r_r42_in),
        .I5(r_r41_in),
        .O(\r_b[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEEEEEEEEE)) 
    \r_b[2]_i_1 
       (.I0(rgb_in[2]),
        .I1(\r_r[7]_i_3_n_0 ),
        .I2(r_r42_out),
        .I3(r_r41_out),
        .I4(r_r42_in),
        .I5(r_r41_in),
        .O(\r_b[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEEEEEEEEE)) 
    \r_b[3]_i_1 
       (.I0(rgb_in[3]),
        .I1(\r_r[7]_i_3_n_0 ),
        .I2(r_r42_out),
        .I3(r_r41_out),
        .I4(r_r42_in),
        .I5(r_r41_in),
        .O(\r_b[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEEEEEEEEE)) 
    \r_b[4]_i_1 
       (.I0(rgb_in[4]),
        .I1(\r_r[7]_i_3_n_0 ),
        .I2(r_r42_out),
        .I3(r_r41_out),
        .I4(r_r42_in),
        .I5(r_r41_in),
        .O(\r_b[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEEEEEEEEE)) 
    \r_b[5]_i_1 
       (.I0(rgb_in[5]),
        .I1(\r_r[7]_i_3_n_0 ),
        .I2(r_r42_out),
        .I3(r_r41_out),
        .I4(r_r42_in),
        .I5(r_r41_in),
        .O(\r_b[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEEEEEEEEE)) 
    \r_b[6]_i_1 
       (.I0(rgb_in[6]),
        .I1(\r_r[7]_i_3_n_0 ),
        .I2(r_r42_out),
        .I3(r_r41_out),
        .I4(r_r42_in),
        .I5(r_r41_in),
        .O(\r_b[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEEEEEEEEE)) 
    \r_b[7]_i_1 
       (.I0(rgb_in[7]),
        .I1(\r_r[7]_i_3_n_0 ),
        .I2(r_r42_out),
        .I3(r_r41_out),
        .I4(r_r42_in),
        .I5(r_r41_in),
        .O(\r_b[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_b_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_b[0]_i_1_n_0 ),
        .Q(rgb_out[0]),
        .R(r_r));
  FDRE #(
    .INIT(1'b0)) 
    \r_b_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_b[1]_i_1_n_0 ),
        .Q(rgb_out[1]),
        .R(r_r));
  FDRE #(
    .INIT(1'b0)) 
    \r_b_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_b[2]_i_1_n_0 ),
        .Q(rgb_out[2]),
        .R(r_r));
  FDRE #(
    .INIT(1'b0)) 
    \r_b_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_b[3]_i_1_n_0 ),
        .Q(rgb_out[3]),
        .R(r_r));
  FDRE #(
    .INIT(1'b0)) 
    \r_b_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_b[4]_i_1_n_0 ),
        .Q(rgb_out[4]),
        .R(r_r));
  FDRE #(
    .INIT(1'b0)) 
    \r_b_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_b[5]_i_1_n_0 ),
        .Q(rgb_out[5]),
        .R(r_r));
  FDRE #(
    .INIT(1'b0)) 
    \r_b_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_b[6]_i_1_n_0 ),
        .Q(rgb_out[6]),
        .R(r_r));
  FDRE #(
    .INIT(1'b0)) 
    \r_b_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_b[7]_i_1_n_0 ),
        .Q(rgb_out[7]),
        .R(r_r));
  FDRE #(
    .INIT(1'b0)) 
    r_de_reg
       (.C(clk),
        .CE(1'b1),
        .D(de_in),
        .Q(de_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF8880)) 
    \r_g[7]_i_1 
       (.I0(r_r41_in),
        .I1(r_r42_in),
        .I2(r_r41_out),
        .I3(r_r42_out),
        .I4(\r_r[7]_i_3_n_0 ),
        .O(r_r1));
  FDRE #(
    .INIT(1'b0)) 
    \r_g_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[8]),
        .Q(rgb_out[8]),
        .R(r_r1));
  FDRE #(
    .INIT(1'b0)) 
    \r_g_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[9]),
        .Q(rgb_out[9]),
        .R(r_r1));
  FDRE #(
    .INIT(1'b0)) 
    \r_g_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[10]),
        .Q(rgb_out[10]),
        .R(r_r1));
  FDRE #(
    .INIT(1'b0)) 
    \r_g_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[11]),
        .Q(rgb_out[11]),
        .R(r_r1));
  FDRE #(
    .INIT(1'b0)) 
    \r_g_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[12]),
        .Q(rgb_out[12]),
        .R(r_r1));
  FDRE #(
    .INIT(1'b0)) 
    \r_g_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[13]),
        .Q(rgb_out[13]),
        .R(r_r1));
  FDRE #(
    .INIT(1'b0)) 
    \r_g_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[14]),
        .Q(rgb_out[14]),
        .R(r_r1));
  FDRE #(
    .INIT(1'b0)) 
    \r_g_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[15]),
        .Q(rgb_out[15]),
        .R(r_r1));
  FDRE #(
    .INIT(1'b0)) 
    r_hsync_reg
       (.C(clk),
        .CE(1'b1),
        .D(hsync_in),
        .Q(hsync_out),
        .R(1'b0));
  CARRY4 r_r4__10_carry
       (.CI(1'b0),
        .CO({r_r4__10_carry_n_0,r_r4__10_carry_n_1,r_r4__10_carry_n_2,r_r4__10_carry_n_3}),
        .CYINIT(1'b0),
        .DI({r_r4__10_carry_i_1_n_0,r_r4__10_carry_i_2_n_0,r_r4__10_carry_i_3_n_0,r_r4__10_carry_i_4_n_0}),
        .O(NLW_r_r4__10_carry_O_UNCONNECTED[3:0]),
        .S({r_r4__10_carry_i_5_n_0,r_r4__10_carry_i_6_n_0,r_r4__10_carry_i_7_n_0,r_r4__10_carry_i_8_n_0}));
  CARRY4 r_r4__10_carry__0
       (.CI(r_r4__10_carry_n_0),
        .CO({r_r4__10_carry__0_n_0,r_r4__10_carry__0_n_1,r_r4__10_carry__0_n_2,r_r4__10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({r_r4__10_carry__0_i_1_n_0,r_r4__10_carry__0_i_2_n_0,r_r4__10_carry__0_i_3_n_0,r_r4__10_carry__0_i_4_n_0}),
        .O(NLW_r_r4__10_carry__0_O_UNCONNECTED[3:0]),
        .S({r_r4__10_carry__0_i_5_n_0,r_r4__10_carry__0_i_6_n_0,r_r4__10_carry__0_i_7_n_0,r_r4__10_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    r_r4__10_carry__0_i_1
       (.I0(bbox_0[31]),
        .I1(bbox_0[30]),
        .O(r_r4__10_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    r_r4__10_carry__0_i_2
       (.I0(bbox_0[29]),
        .I1(bbox_0[28]),
        .O(r_r4__10_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    r_r4__10_carry__0_i_3
       (.I0(bbox_0[27]),
        .I1(Q[10]),
        .I2(bbox_0[26]),
        .O(r_r4__10_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    r_r4__10_carry__0_i_4
       (.I0(Q[9]),
        .I1(bbox_0[25]),
        .I2(bbox_0[24]),
        .I3(Q[8]),
        .O(r_r4__10_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    r_r4__10_carry__0_i_5
       (.I0(bbox_0[30]),
        .I1(bbox_0[31]),
        .O(r_r4__10_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    r_r4__10_carry__0_i_6
       (.I0(bbox_0[28]),
        .I1(bbox_0[29]),
        .O(r_r4__10_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    r_r4__10_carry__0_i_7
       (.I0(bbox_0[27]),
        .I1(bbox_0[26]),
        .I2(Q[10]),
        .O(r_r4__10_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__10_carry__0_i_8
       (.I0(bbox_0[25]),
        .I1(Q[9]),
        .I2(bbox_0[24]),
        .I3(Q[8]),
        .O(r_r4__10_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    r_r4__10_carry_i_1
       (.I0(Q[7]),
        .I1(bbox_0[23]),
        .I2(bbox_0[22]),
        .I3(Q[6]),
        .O(r_r4__10_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    r_r4__10_carry_i_2
       (.I0(Q[5]),
        .I1(bbox_0[21]),
        .I2(bbox_0[20]),
        .I3(Q[4]),
        .O(r_r4__10_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    r_r4__10_carry_i_3
       (.I0(Q[3]),
        .I1(bbox_0[19]),
        .I2(bbox_0[18]),
        .I3(Q[2]),
        .O(r_r4__10_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    r_r4__10_carry_i_4
       (.I0(Q[1]),
        .I1(bbox_0[17]),
        .I2(bbox_0[16]),
        .I3(Q[0]),
        .O(r_r4__10_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__10_carry_i_5
       (.I0(bbox_0[23]),
        .I1(Q[7]),
        .I2(bbox_0[22]),
        .I3(Q[6]),
        .O(r_r4__10_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__10_carry_i_6
       (.I0(bbox_0[21]),
        .I1(Q[5]),
        .I2(bbox_0[20]),
        .I3(Q[4]),
        .O(r_r4__10_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__10_carry_i_7
       (.I0(bbox_0[19]),
        .I1(Q[3]),
        .I2(bbox_0[18]),
        .I3(Q[2]),
        .O(r_r4__10_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__10_carry_i_8
       (.I0(bbox_0[17]),
        .I1(Q[1]),
        .I2(bbox_0[16]),
        .I3(Q[0]),
        .O(r_r4__10_carry_i_8_n_0));
  CARRY4 r_r4__18_carry
       (.CI(1'b0),
        .CO({r_r4__18_carry_n_0,r_r4__18_carry_n_1,r_r4__18_carry_n_2,r_r4__18_carry_n_3}),
        .CYINIT(1'b0),
        .DI({r_r4__18_carry_i_1_n_0,r_r4__18_carry_i_2_n_0,r_r4__18_carry_i_3_n_0,r_r4__18_carry_i_4_n_0}),
        .O(NLW_r_r4__18_carry_O_UNCONNECTED[3:0]),
        .S({r_r4__18_carry_i_5_n_0,r_r4__18_carry_i_6_n_0,r_r4__18_carry_i_7_n_0,r_r4__18_carry_i_8_n_0}));
  CARRY4 r_r4__18_carry__0
       (.CI(r_r4__18_carry_n_0),
        .CO({r_r40_in,r_r4__18_carry__0_n_1,r_r4__18_carry__0_n_2,r_r4__18_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,r_r4__18_carry__0_i_1_n_0,r_r4__18_carry__0_i_2_n_0}),
        .O(NLW_r_r4__18_carry__0_O_UNCONNECTED[3:0]),
        .S({r_r4__18_carry__0_i_3_n_0,r_r4__18_carry__0_i_4_n_0,r_r4__18_carry__0_i_5_n_0,r_r4__18_carry__0_i_6_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    r_r4__18_carry__0_i_1
       (.I0(bbox_0[11]),
        .I1(Q[10]),
        .I2(bbox_0[10]),
        .O(r_r4__18_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_r4__18_carry__0_i_2
       (.I0(Q[9]),
        .I1(bbox_0[9]),
        .I2(Q[8]),
        .I3(bbox_0[8]),
        .O(r_r4__18_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    r_r4__18_carry__0_i_3
       (.I0(bbox_0[15]),
        .I1(bbox_0[14]),
        .O(r_r4__18_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    r_r4__18_carry__0_i_4
       (.I0(bbox_0[13]),
        .I1(bbox_0[12]),
        .O(r_r4__18_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    r_r4__18_carry__0_i_5
       (.I0(bbox_0[11]),
        .I1(bbox_0[10]),
        .I2(Q[10]),
        .O(r_r4__18_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__18_carry__0_i_6
       (.I0(bbox_0[9]),
        .I1(Q[9]),
        .I2(bbox_0[8]),
        .I3(Q[8]),
        .O(r_r4__18_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_r4__18_carry_i_1
       (.I0(Q[7]),
        .I1(bbox_0[7]),
        .I2(Q[6]),
        .I3(bbox_0[6]),
        .O(r_r4__18_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_r4__18_carry_i_2
       (.I0(Q[5]),
        .I1(bbox_0[5]),
        .I2(Q[4]),
        .I3(bbox_0[4]),
        .O(r_r4__18_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_r4__18_carry_i_3
       (.I0(Q[3]),
        .I1(bbox_0[3]),
        .I2(Q[2]),
        .I3(bbox_0[2]),
        .O(r_r4__18_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_r4__18_carry_i_4
       (.I0(Q[1]),
        .I1(bbox_0[1]),
        .I2(Q[0]),
        .I3(bbox_0[0]),
        .O(r_r4__18_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__18_carry_i_5
       (.I0(bbox_0[7]),
        .I1(Q[7]),
        .I2(bbox_0[6]),
        .I3(Q[6]),
        .O(r_r4__18_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__18_carry_i_6
       (.I0(bbox_0[5]),
        .I1(Q[5]),
        .I2(bbox_0[4]),
        .I3(Q[4]),
        .O(r_r4__18_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__18_carry_i_7
       (.I0(bbox_0[3]),
        .I1(Q[3]),
        .I2(bbox_0[2]),
        .I3(Q[2]),
        .O(r_r4__18_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__18_carry_i_8
       (.I0(bbox_0[1]),
        .I1(Q[1]),
        .I2(bbox_0[0]),
        .I3(Q[0]),
        .O(r_r4__18_carry_i_8_n_0));
  CARRY4 r_r4__26_carry
       (.CI(1'b0),
        .CO({r_r4__26_carry_n_0,r_r4__26_carry_n_1,r_r4__26_carry_n_2,r_r4__26_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_r4__26_carry_O_UNCONNECTED[3:0]),
        .S({r_r4__26_carry_i_1_n_0,r_r4__26_carry_i_2_n_0,r_r4__26_carry_i_3_n_0,r_r4__26_carry_i_4_n_0}));
  CARRY4 r_r4__26_carry__0
       (.CI(r_r4__26_carry_n_0),
        .CO({NLW_r_r4__26_carry__0_CO_UNCONNECTED[3:2],r_r41_out,r_r4__26_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_r4__26_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,r_r4__26_carry__0_i_1_n_0,r_r4__26_carry__0_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_r4__26_carry__0_i_1
       (.I0(bbox_0[31]),
        .O(r_r4__26_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    r_r4__26_carry__0_i_2
       (.I0(bbox_0[29]),
        .I1(bbox_0[28]),
        .I2(bbox_0[30]),
        .O(r_r4__26_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h09000009)) 
    r_r4__26_carry_i_1
       (.I0(Q[10]),
        .I1(bbox_0[26]),
        .I2(bbox_0[27]),
        .I3(bbox_0[25]),
        .I4(Q[9]),
        .O(r_r4__26_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_r4__26_carry_i_2
       (.I0(Q[6]),
        .I1(bbox_0[22]),
        .I2(Q[7]),
        .I3(bbox_0[23]),
        .I4(bbox_0[24]),
        .I5(Q[8]),
        .O(r_r4__26_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_r4__26_carry_i_3
       (.I0(Q[4]),
        .I1(bbox_0[20]),
        .I2(Q[5]),
        .I3(bbox_0[21]),
        .I4(bbox_0[19]),
        .I5(Q[3]),
        .O(r_r4__26_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_r4__26_carry_i_4
       (.I0(Q[0]),
        .I1(bbox_0[16]),
        .I2(Q[1]),
        .I3(bbox_0[17]),
        .I4(bbox_0[18]),
        .I5(Q[2]),
        .O(r_r4__26_carry_i_4_n_0));
  CARRY4 r_r4__32_carry
       (.CI(1'b0),
        .CO({r_r4__32_carry_n_0,r_r4__32_carry_n_1,r_r4__32_carry_n_2,r_r4__32_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_r4__32_carry_O_UNCONNECTED[3:0]),
        .S({r_r4__32_carry_i_1_n_0,r_r4__32_carry_i_2_n_0,r_r4__32_carry_i_3_n_0,r_r4__32_carry_i_4_n_0}));
  CARRY4 r_r4__32_carry__0
       (.CI(r_r4__32_carry_n_0),
        .CO({NLW_r_r4__32_carry__0_CO_UNCONNECTED[3:2],r_r42_out,r_r4__32_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_r4__32_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,r_r4__32_carry__0_i_1_n_0,r_r4__32_carry__0_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_r4__32_carry__0_i_1
       (.I0(bbox_0[15]),
        .O(r_r4__32_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    r_r4__32_carry__0_i_2
       (.I0(bbox_0[12]),
        .I1(bbox_0[13]),
        .I2(bbox_0[14]),
        .O(r_r4__32_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h09000009)) 
    r_r4__32_carry_i_1
       (.I0(Q[10]),
        .I1(bbox_0[10]),
        .I2(bbox_0[11]),
        .I3(bbox_0[9]),
        .I4(Q[9]),
        .O(r_r4__32_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_r4__32_carry_i_2
       (.I0(Q[6]),
        .I1(bbox_0[6]),
        .I2(Q[7]),
        .I3(bbox_0[7]),
        .I4(bbox_0[8]),
        .I5(Q[8]),
        .O(r_r4__32_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_r4__32_carry_i_3
       (.I0(Q[4]),
        .I1(bbox_0[4]),
        .I2(Q[5]),
        .I3(bbox_0[5]),
        .I4(bbox_0[3]),
        .I5(Q[3]),
        .O(r_r4__32_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_r4__32_carry_i_4
       (.I0(Q[0]),
        .I1(bbox_0[0]),
        .I2(Q[1]),
        .I3(bbox_0[1]),
        .I4(bbox_0[2]),
        .I5(Q[2]),
        .O(r_r4__32_carry_i_4_n_0));
  CARRY4 r_r4__38_carry
       (.CI(1'b0),
        .CO({r_r4__38_carry_n_0,r_r4__38_carry_n_1,r_r4__38_carry_n_2,r_r4__38_carry_n_3}),
        .CYINIT(1'b0),
        .DI({r_r4__38_carry_i_1_n_0,r_r4__38_carry_i_2_n_0,r_r4__38_carry_i_3_n_0,r_r4__38_carry_i_4_n_0}),
        .O(NLW_r_r4__38_carry_O_UNCONNECTED[3:0]),
        .S({r_r4__38_carry_i_5_n_0,r_r4__38_carry_i_6_n_0,r_r4__38_carry_i_7_n_0,r_r4__38_carry_i_8_n_0}));
  CARRY4 r_r4__38_carry__0
       (.CI(r_r4__38_carry_n_0),
        .CO({NLW_r_r4__38_carry__0_CO_UNCONNECTED[3],r_r41_in,r_r4__38_carry__0_n_2,r_r4__38_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,bbox_0[60],r_r4__38_carry__0_i_1_n_0,r_r4__38_carry__0_i_2_n_0}),
        .O(NLW_r_r4__38_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,r_r4__38_carry__0_i_3_n_0,r_r4__38_carry__0_i_4_n_0,r_r4__38_carry__0_i_5_n_0}));
  LUT3 #(
    .INIT(8'hBA)) 
    r_r4__38_carry__0_i_1
       (.I0(bbox_0[59]),
        .I1(r_frameH[10]),
        .I2(bbox_0[58]),
        .O(r_r4__38_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    r_r4__38_carry__0_i_2
       (.I0(r_frameH[9]),
        .I1(bbox_0[57]),
        .I2(bbox_0[56]),
        .I3(r_frameH[8]),
        .O(r_r4__38_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_r4__38_carry__0_i_3
       (.I0(bbox_0[60]),
        .O(r_r4__38_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    r_r4__38_carry__0_i_4
       (.I0(bbox_0[59]),
        .I1(bbox_0[58]),
        .I2(r_frameH[10]),
        .O(r_r4__38_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__38_carry__0_i_5
       (.I0(bbox_0[56]),
        .I1(r_frameH[8]),
        .I2(bbox_0[57]),
        .I3(r_frameH[9]),
        .O(r_r4__38_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    r_r4__38_carry_i_1
       (.I0(r_frameH[7]),
        .I1(bbox_0[55]),
        .I2(bbox_0[54]),
        .I3(r_frameH[6]),
        .O(r_r4__38_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    r_r4__38_carry_i_2
       (.I0(r_frameH[5]),
        .I1(bbox_0[53]),
        .I2(bbox_0[52]),
        .I3(r_frameH[4]),
        .O(r_r4__38_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    r_r4__38_carry_i_3
       (.I0(r_frameH[3]),
        .I1(bbox_0[51]),
        .I2(bbox_0[50]),
        .I3(r_frameH[2]),
        .O(r_r4__38_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    r_r4__38_carry_i_4
       (.I0(r_frameH[1]),
        .I1(bbox_0[49]),
        .I2(bbox_0[48]),
        .I3(r_frameH[0]),
        .O(r_r4__38_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__38_carry_i_5
       (.I0(bbox_0[55]),
        .I1(r_frameH[7]),
        .I2(bbox_0[54]),
        .I3(r_frameH[6]),
        .O(r_r4__38_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__38_carry_i_6
       (.I0(bbox_0[53]),
        .I1(r_frameH[5]),
        .I2(bbox_0[52]),
        .I3(r_frameH[4]),
        .O(r_r4__38_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__38_carry_i_7
       (.I0(bbox_0[50]),
        .I1(r_frameH[2]),
        .I2(bbox_0[51]),
        .I3(r_frameH[3]),
        .O(r_r4__38_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__38_carry_i_8
       (.I0(bbox_0[49]),
        .I1(r_frameH[1]),
        .I2(bbox_0[48]),
        .I3(r_frameH[0]),
        .O(r_r4__38_carry_i_8_n_0));
  CARRY4 r_r4__45_carry
       (.CI(1'b0),
        .CO({r_r4__45_carry_n_0,r_r4__45_carry_n_1,r_r4__45_carry_n_2,r_r4__45_carry_n_3}),
        .CYINIT(1'b0),
        .DI({r_r4__45_carry_i_1_n_0,r_r4__45_carry_i_2_n_0,r_r4__45_carry_i_3_n_0,r_r4__45_carry_i_4_n_0}),
        .O(NLW_r_r4__45_carry_O_UNCONNECTED[3:0]),
        .S({r_r4__45_carry_i_5_n_0,r_r4__45_carry_i_6_n_0,r_r4__45_carry_i_7_n_0,r_r4__45_carry_i_8_n_0}));
  CARRY4 r_r4__45_carry__0
       (.CI(r_r4__45_carry_n_0),
        .CO({r_r42_in,r_r4__45_carry__0_n_1,r_r4__45_carry__0_n_2,r_r4__45_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,r_r4__45_carry__0_i_1_n_0,r_r4__45_carry__0_i_2_n_0}),
        .O(NLW_r_r4__45_carry__0_O_UNCONNECTED[3:0]),
        .S({r_r4__45_carry__0_i_3_n_0,r_r4__45_carry__0_i_4_n_0,r_r4__45_carry__0_i_5_n_0,r_r4__45_carry__0_i_6_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    r_r4__45_carry__0_i_1
       (.I0(bbox_0[43]),
        .I1(r_frameH[10]),
        .I2(bbox_0[42]),
        .O(r_r4__45_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_r4__45_carry__0_i_2
       (.I0(r_frameH[9]),
        .I1(bbox_0[41]),
        .I2(r_frameH[8]),
        .I3(bbox_0[40]),
        .O(r_r4__45_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    r_r4__45_carry__0_i_3
       (.I0(bbox_0[47]),
        .I1(bbox_0[46]),
        .O(r_r4__45_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    r_r4__45_carry__0_i_4
       (.I0(bbox_0[45]),
        .I1(bbox_0[44]),
        .O(r_r4__45_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    r_r4__45_carry__0_i_5
       (.I0(bbox_0[43]),
        .I1(bbox_0[42]),
        .I2(r_frameH[10]),
        .O(r_r4__45_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__45_carry__0_i_6
       (.I0(bbox_0[40]),
        .I1(r_frameH[8]),
        .I2(bbox_0[41]),
        .I3(r_frameH[9]),
        .O(r_r4__45_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_r4__45_carry_i_1
       (.I0(r_frameH[7]),
        .I1(bbox_0[39]),
        .I2(r_frameH[6]),
        .I3(bbox_0[38]),
        .O(r_r4__45_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_r4__45_carry_i_2
       (.I0(r_frameH[5]),
        .I1(bbox_0[37]),
        .I2(r_frameH[4]),
        .I3(bbox_0[36]),
        .O(r_r4__45_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_r4__45_carry_i_3
       (.I0(r_frameH[3]),
        .I1(bbox_0[35]),
        .I2(r_frameH[2]),
        .I3(bbox_0[34]),
        .O(r_r4__45_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_r4__45_carry_i_4
       (.I0(r_frameH[1]),
        .I1(bbox_0[33]),
        .I2(r_frameH[0]),
        .I3(bbox_0[32]),
        .O(r_r4__45_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__45_carry_i_5
       (.I0(bbox_0[39]),
        .I1(r_frameH[7]),
        .I2(bbox_0[38]),
        .I3(r_frameH[6]),
        .O(r_r4__45_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__45_carry_i_6
       (.I0(bbox_0[37]),
        .I1(r_frameH[5]),
        .I2(bbox_0[36]),
        .I3(r_frameH[4]),
        .O(r_r4__45_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__45_carry_i_7
       (.I0(bbox_0[34]),
        .I1(r_frameH[2]),
        .I2(bbox_0[35]),
        .I3(r_frameH[3]),
        .O(r_r4__45_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_r4__45_carry_i_8
       (.I0(bbox_0[33]),
        .I1(r_frameH[1]),
        .I2(bbox_0[32]),
        .I3(r_frameH[0]),
        .O(r_r4__45_carry_i_8_n_0));
  CARRY4 r_r4__4_carry
       (.CI(1'b0),
        .CO({r_r4__4_carry_n_0,r_r4__4_carry_n_1,r_r4__4_carry_n_2,r_r4__4_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_r4__4_carry_O_UNCONNECTED[3:0]),
        .S({r_r4__4_carry_i_1_n_0,r_r4__4_carry_i_2_n_0,r_r4__4_carry_i_3_n_0,r_r4__4_carry_i_4_n_0}));
  CARRY4 r_r4__4_carry__0
       (.CI(r_r4__4_carry_n_0),
        .CO({NLW_r_r4__4_carry__0_CO_UNCONNECTED[3:2],r_r40_out,r_r4__4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_r4__4_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,r_r4__4_carry__0_i_1_n_0,r_r4__4_carry__0_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_r4__4_carry__0_i_1
       (.I0(bbox_0[47]),
        .O(r_r4__4_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    r_r4__4_carry__0_i_2
       (.I0(bbox_0[44]),
        .I1(bbox_0[45]),
        .I2(bbox_0[46]),
        .O(r_r4__4_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h09000009)) 
    r_r4__4_carry_i_1
       (.I0(r_frameH[10]),
        .I1(bbox_0[42]),
        .I2(bbox_0[43]),
        .I3(bbox_0[41]),
        .I4(r_frameH[9]),
        .O(r_r4__4_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_r4__4_carry_i_2
       (.I0(bbox_0[40]),
        .I1(r_frameH[8]),
        .I2(r_frameH[6]),
        .I3(bbox_0[38]),
        .I4(r_frameH[7]),
        .I5(bbox_0[39]),
        .O(r_r4__4_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_r4__4_carry_i_3
       (.I0(r_frameH[4]),
        .I1(bbox_0[36]),
        .I2(r_frameH[5]),
        .I3(bbox_0[37]),
        .I4(bbox_0[35]),
        .I5(r_frameH[3]),
        .O(r_r4__4_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_r4__4_carry_i_4
       (.I0(bbox_0[34]),
        .I1(r_frameH[2]),
        .I2(r_frameH[0]),
        .I3(bbox_0[32]),
        .I4(r_frameH[1]),
        .I5(bbox_0[33]),
        .O(r_r4__4_carry_i_4_n_0));
  CARRY4 r_r4_carry
       (.CI(1'b0),
        .CO({r_r4_carry_n_0,r_r4_carry_n_1,r_r4_carry_n_2,r_r4_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_r4_carry_O_UNCONNECTED[3:0]),
        .S({r_r4_carry_i_1_n_0,r_r4_carry_i_2_n_0,r_r4_carry_i_3_n_0,r_r4_carry_i_4_n_0}));
  CARRY4 r_r4_carry__0
       (.CI(r_r4_carry_n_0),
        .CO({NLW_r_r4_carry__0_CO_UNCONNECTED[3:1],r_r4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_r4_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,r_r4_carry__0_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_r4_carry__0_i_1
       (.I0(bbox_0[60]),
        .O(r_r4_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h09000009)) 
    r_r4_carry_i_1
       (.I0(r_frameH[10]),
        .I1(bbox_0[58]),
        .I2(bbox_0[59]),
        .I3(bbox_0[57]),
        .I4(r_frameH[9]),
        .O(r_r4_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_r4_carry_i_2
       (.I0(bbox_0[56]),
        .I1(r_frameH[8]),
        .I2(r_frameH[6]),
        .I3(bbox_0[54]),
        .I4(r_frameH[7]),
        .I5(bbox_0[55]),
        .O(r_r4_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_r4_carry_i_3
       (.I0(r_frameH[4]),
        .I1(bbox_0[52]),
        .I2(r_frameH[5]),
        .I3(bbox_0[53]),
        .I4(bbox_0[51]),
        .I5(r_frameH[3]),
        .O(r_r4_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_r4_carry_i_4
       (.I0(bbox_0[50]),
        .I1(r_frameH[2]),
        .I2(r_frameH[0]),
        .I3(bbox_0[48]),
        .I4(r_frameH[1]),
        .I5(bbox_0[49]),
        .O(r_r4_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \r_r[0]_i_1 
       (.I0(rgb_in[16]),
        .I1(\r_r[7]_i_3_n_0 ),
        .I2(r_r42_out),
        .I3(r_r41_out),
        .I4(r_r42_in),
        .I5(r_r41_in),
        .O(\r_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \r_r[1]_i_1 
       (.I0(rgb_in[17]),
        .I1(\r_r[7]_i_3_n_0 ),
        .I2(r_r42_out),
        .I3(r_r41_out),
        .I4(r_r42_in),
        .I5(r_r41_in),
        .O(\r_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \r_r[2]_i_1 
       (.I0(rgb_in[18]),
        .I1(\r_r[7]_i_3_n_0 ),
        .I2(r_r42_out),
        .I3(r_r41_out),
        .I4(r_r42_in),
        .I5(r_r41_in),
        .O(\r_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \r_r[3]_i_1 
       (.I0(rgb_in[19]),
        .I1(\r_r[7]_i_3_n_0 ),
        .I2(r_r42_out),
        .I3(r_r41_out),
        .I4(r_r42_in),
        .I5(r_r41_in),
        .O(\r_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \r_r[4]_i_1 
       (.I0(rgb_in[20]),
        .I1(\r_r[7]_i_3_n_0 ),
        .I2(r_r42_out),
        .I3(r_r41_out),
        .I4(r_r42_in),
        .I5(r_r41_in),
        .O(\r_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \r_r[5]_i_1 
       (.I0(rgb_in[21]),
        .I1(\r_r[7]_i_3_n_0 ),
        .I2(r_r42_out),
        .I3(r_r41_out),
        .I4(r_r42_in),
        .I5(r_r41_in),
        .O(\r_r[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \r_r[6]_i_1 
       (.I0(rgb_in[22]),
        .I1(\r_r[7]_i_3_n_0 ),
        .I2(r_r42_out),
        .I3(r_r41_out),
        .I4(r_r42_in),
        .I5(r_r41_in),
        .O(\r_r[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000E00)) 
    \r_r[7]_i_1 
       (.I0(\r_r[7]_i_3_n_0 ),
        .I1(\r_r[7]_i_4_n_0 ),
        .I2(bbox_0[63]),
        .I3(bbox_0[61]),
        .I4(bbox_0[62]),
        .O(r_r));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \r_r[7]_i_2 
       (.I0(rgb_in[23]),
        .I1(\r_r[7]_i_3_n_0 ),
        .I2(r_r42_out),
        .I3(r_r41_out),
        .I4(r_r42_in),
        .I5(r_r41_in),
        .O(\r_r[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE000)) 
    \r_r[7]_i_3 
       (.I0(r_r40_out),
        .I1(r_r4),
        .I2(r_r40_in),
        .I3(r_r4__10_carry__0_n_0),
        .O(\r_r[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE000)) 
    \r_r[7]_i_4 
       (.I0(r_r42_out),
        .I1(r_r41_out),
        .I2(r_r42_in),
        .I3(r_r41_in),
        .O(\r_r[7]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_r[0]_i_1_n_0 ),
        .Q(rgb_out[16]),
        .S(r_r));
  FDSE #(
    .INIT(1'b0)) 
    \r_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_r[1]_i_1_n_0 ),
        .Q(rgb_out[17]),
        .S(r_r));
  FDSE #(
    .INIT(1'b0)) 
    \r_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_r[2]_i_1_n_0 ),
        .Q(rgb_out[18]),
        .S(r_r));
  FDSE #(
    .INIT(1'b0)) 
    \r_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_r[3]_i_1_n_0 ),
        .Q(rgb_out[19]),
        .S(r_r));
  FDSE #(
    .INIT(1'b0)) 
    \r_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_r[4]_i_1_n_0 ),
        .Q(rgb_out[20]),
        .S(r_r));
  FDSE #(
    .INIT(1'b0)) 
    \r_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_r[5]_i_1_n_0 ),
        .Q(rgb_out[21]),
        .S(r_r));
  FDSE #(
    .INIT(1'b0)) 
    \r_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_r[6]_i_1_n_0 ),
        .Q(rgb_out[22]),
        .S(r_r));
  FDSE #(
    .INIT(1'b0)) 
    \r_r_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_r[7]_i_2_n_0 ),
        .Q(rgb_out[23]),
        .S(r_r));
  FDRE #(
    .INIT(1'b0)) 
    r_vsync_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_in),
        .Q(vsync_out),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
