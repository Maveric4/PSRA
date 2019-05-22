// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Apr  4 13:58:59 2019
// Host        : lsriw running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lsriw/HSVS/0404/ald_cpu_hdmi_vga/ald/ald.srcs/sources_1/bd/ald/ip/ald_write_video_bram_0_0/ald_write_video_bram_0_0_sim_netlist.v
// Design      : ald_write_video_bram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ald_write_video_bram_0_0,write_video_bram,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "write_video_bram,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module ald_write_video_bram_0_0
   (clk,
    de_in,
    hsync_in,
    vsync_in,
    rgb_in,
    addrb,
    dinb,
    enb,
    rst,
    web);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ald_dvi2rgb_0_0_PixelClk, INSERT_VIP 0" *) input clk;
  input de_in;
  input hsync_in;
  input vsync_in;
  input [23:0]rgb_in;
  output [11:0]addrb;
  output [31:0]dinb;
  output enb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output rst;
  output web;

  wire \<const0> ;
  wire \<const1> ;
  wire [11:0]addrb;
  wire clk;
  wire de_in;
  wire [23:0]\^dinb ;
  wire [23:0]rgb_in;
  wire vsync_in;
  wire web;

  assign dinb[31] = \<const0> ;
  assign dinb[30] = \<const0> ;
  assign dinb[29] = \<const0> ;
  assign dinb[28] = \<const0> ;
  assign dinb[27] = \<const0> ;
  assign dinb[26] = \<const0> ;
  assign dinb[25] = \<const0> ;
  assign dinb[24] = \<const0> ;
  assign dinb[23:0] = \^dinb [23:0];
  assign enb = \<const1> ;
  assign rst = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  ald_write_video_bram_0_0_write_video_bram inst
       (.addrb(addrb),
        .clk(clk),
        .de_in(de_in),
        .dinb(\^dinb ),
        .rgb_in(rgb_in),
        .vsync_in(vsync_in),
        .web(web));
endmodule

(* ORIG_REF_NAME = "write_video_bram" *) 
module ald_write_video_bram_0_0_write_video_bram
   (dinb,
    addrb,
    web,
    vsync_in,
    clk,
    rgb_in,
    de_in);
  output [23:0]dinb;
  output [11:0]addrb;
  output web;
  input vsync_in;
  input clk;
  input [23:0]rgb_in;
  input de_in;

  wire [11:0]addrb;
  wire clk;
  wire de_in;
  wire [23:0]dinb;
  wire [10:0]p_0_in;
  wire [10:0]r_frameH;
  wire \r_frameH[0]_i_1_n_0 ;
  wire \r_frameH[10]_i_10_n_0 ;
  wire \r_frameH[10]_i_1_n_0 ;
  wire \r_frameH[10]_i_2_n_0 ;
  wire \r_frameH[10]_i_3_n_0 ;
  wire \r_frameH[10]_i_4_n_0 ;
  wire \r_frameH[10]_i_5_n_0 ;
  wire \r_frameH[10]_i_6_n_0 ;
  wire \r_frameH[10]_i_7_n_0 ;
  wire \r_frameH[10]_i_8_n_0 ;
  wire \r_frameH[10]_i_9_n_0 ;
  wire \r_frameH[1]_i_1_n_0 ;
  wire \r_frameH[2]_i_1_n_0 ;
  wire \r_frameH[3]_i_1_n_0 ;
  wire \r_frameH[4]_i_1_n_0 ;
  wire \r_frameH[5]_i_1_n_0 ;
  wire \r_frameH[6]_i_1_n_0 ;
  wire \r_frameH[7]_i_1_n_0 ;
  wire \r_frameH[8]_i_1_n_0 ;
  wire \r_frameH[9]_i_1_n_0 ;
  wire r_frameW;
  wire \r_frameW[10]_i_3_n_0 ;
  wire \r_frameW[6]_i_1_n_0 ;
  wire \r_frameW[7]_i_1_n_0 ;
  wire \r_frameW_reg_n_0_[0] ;
  wire \r_frameW_reg_n_0_[10] ;
  wire \r_frameW_reg_n_0_[1] ;
  wire \r_frameW_reg_n_0_[2] ;
  wire \r_frameW_reg_n_0_[3] ;
  wire \r_frameW_reg_n_0_[4] ;
  wire \r_frameW_reg_n_0_[5] ;
  wire \r_frameW_reg_n_0_[6] ;
  wire \r_frameW_reg_n_0_[7] ;
  wire \r_frameW_reg_n_0_[8] ;
  wire \r_frameW_reg_n_0_[9] ;
  wire reg_addrb;
  wire \reg_addrb[11]_i_2_n_0 ;
  wire \reg_addrb[11]_i_4_n_0 ;
  wire \reg_addrb[11]_i_5_n_0 ;
  wire \reg_addrb[3]_i_2_n_0 ;
  wire \reg_addrb_reg[11]_i_3_n_1 ;
  wire \reg_addrb_reg[11]_i_3_n_2 ;
  wire \reg_addrb_reg[11]_i_3_n_3 ;
  wire \reg_addrb_reg[11]_i_3_n_4 ;
  wire \reg_addrb_reg[11]_i_3_n_5 ;
  wire \reg_addrb_reg[11]_i_3_n_6 ;
  wire \reg_addrb_reg[11]_i_3_n_7 ;
  wire \reg_addrb_reg[3]_i_1_n_0 ;
  wire \reg_addrb_reg[3]_i_1_n_1 ;
  wire \reg_addrb_reg[3]_i_1_n_2 ;
  wire \reg_addrb_reg[3]_i_1_n_3 ;
  wire \reg_addrb_reg[3]_i_1_n_4 ;
  wire \reg_addrb_reg[3]_i_1_n_5 ;
  wire \reg_addrb_reg[3]_i_1_n_6 ;
  wire \reg_addrb_reg[3]_i_1_n_7 ;
  wire \reg_addrb_reg[7]_i_1_n_0 ;
  wire \reg_addrb_reg[7]_i_1_n_1 ;
  wire \reg_addrb_reg[7]_i_1_n_2 ;
  wire \reg_addrb_reg[7]_i_1_n_3 ;
  wire \reg_addrb_reg[7]_i_1_n_4 ;
  wire \reg_addrb_reg[7]_i_1_n_5 ;
  wire \reg_addrb_reg[7]_i_1_n_6 ;
  wire \reg_addrb_reg[7]_i_1_n_7 ;
  wire reg_web_i_1_n_0;
  wire [23:0]rgb_in;
  wire vsync_in;
  wire web;
  wire [3:3]\NLW_reg_addrb_reg[11]_i_3_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \r_frameH[0]_i_1 
       (.I0(r_frameH[0]),
        .O(\r_frameH[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0CAA)) 
    \r_frameH[10]_i_1 
       (.I0(vsync_in),
        .I1(\r_frameH[10]_i_4_n_0 ),
        .I2(\r_frameH[10]_i_5_n_0 ),
        .I3(\r_frameH[10]_i_6_n_0 ),
        .O(\r_frameH[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_frameH[10]_i_10 
       (.I0(\r_frameW_reg_n_0_[8] ),
        .I1(\r_frameW_reg_n_0_[9] ),
        .O(\r_frameH[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    \r_frameH[10]_i_2 
       (.I0(vsync_in),
        .I1(\r_frameH[10]_i_7_n_0 ),
        .I2(\r_frameW_reg_n_0_[10] ),
        .I3(\r_frameW_reg_n_0_[8] ),
        .I4(\r_frameW_reg_n_0_[9] ),
        .I5(de_in),
        .O(\r_frameH[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \r_frameH[10]_i_3 
       (.I0(r_frameH[10]),
        .I1(r_frameH[9]),
        .I2(r_frameH[8]),
        .I3(r_frameH[7]),
        .I4(\r_frameH[10]_i_8_n_0 ),
        .I5(r_frameH[6]),
        .O(\r_frameH[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \r_frameH[10]_i_4 
       (.I0(r_frameH[5]),
        .I1(r_frameH[7]),
        .I2(r_frameH[4]),
        .I3(r_frameH[9]),
        .I4(r_frameH[6]),
        .I5(\r_frameH[10]_i_9_n_0 ),
        .O(\r_frameH[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_frameH[10]_i_5 
       (.I0(r_frameH[2]),
        .I1(r_frameH[1]),
        .I2(r_frameH[0]),
        .I3(r_frameH[3]),
        .O(\r_frameH[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \r_frameH[10]_i_6 
       (.I0(de_in),
        .I1(\r_frameH[10]_i_10_n_0 ),
        .I2(\r_frameW_reg_n_0_[10] ),
        .I3(\r_frameW_reg_n_0_[6] ),
        .I4(\r_frameW[10]_i_3_n_0 ),
        .I5(\r_frameW_reg_n_0_[7] ),
        .O(\r_frameH[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \r_frameH[10]_i_7 
       (.I0(\r_frameW_reg_n_0_[6] ),
        .I1(\r_frameW[10]_i_3_n_0 ),
        .I2(\r_frameW_reg_n_0_[7] ),
        .O(\r_frameH[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r_frameH[10]_i_8 
       (.I0(r_frameH[4]),
        .I1(r_frameH[2]),
        .I2(r_frameH[1]),
        .I3(r_frameH[0]),
        .I4(r_frameH[3]),
        .I5(r_frameH[5]),
        .O(\r_frameH[10]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_frameH[10]_i_9 
       (.I0(r_frameH[10]),
        .I1(r_frameH[8]),
        .O(\r_frameH[10]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_frameH[1]_i_1 
       (.I0(r_frameH[1]),
        .I1(r_frameH[0]),
        .O(\r_frameH[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_frameH[2]_i_1 
       (.I0(r_frameH[2]),
        .I1(r_frameH[0]),
        .I2(r_frameH[1]),
        .O(\r_frameH[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F00FF80800000)) 
    \r_frameH[3]_i_1 
       (.I0(r_frameH[0]),
        .I1(r_frameH[1]),
        .I2(r_frameH[2]),
        .I3(vsync_in),
        .I4(\r_frameH[10]_i_6_n_0 ),
        .I5(r_frameH[3]),
        .O(\r_frameH[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_frameH[4]_i_1 
       (.I0(r_frameH[4]),
        .I1(r_frameH[3]),
        .I2(r_frameH[0]),
        .I3(r_frameH[1]),
        .I4(r_frameH[2]),
        .O(\r_frameH[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \r_frameH[5]_i_1 
       (.I0(r_frameH[5]),
        .I1(r_frameH[4]),
        .I2(r_frameH[2]),
        .I3(r_frameH[1]),
        .I4(r_frameH[0]),
        .I5(r_frameH[3]),
        .O(\r_frameH[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \r_frameH[6]_i_1 
       (.I0(r_frameH[6]),
        .I1(r_frameH[5]),
        .I2(\r_frameH[10]_i_5_n_0 ),
        .I3(r_frameH[4]),
        .O(\r_frameH[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \r_frameH[7]_i_1 
       (.I0(r_frameH[7]),
        .I1(r_frameH[6]),
        .I2(r_frameH[4]),
        .I3(\r_frameH[10]_i_5_n_0 ),
        .I4(r_frameH[5]),
        .O(\r_frameH[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \r_frameH[8]_i_1 
       (.I0(r_frameH[8]),
        .I1(r_frameH[7]),
        .I2(r_frameH[5]),
        .I3(\r_frameH[10]_i_5_n_0 ),
        .I4(r_frameH[4]),
        .I5(r_frameH[6]),
        .O(\r_frameH[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \r_frameH[9]_i_1 
       (.I0(r_frameH[9]),
        .I1(r_frameH[6]),
        .I2(\r_frameH[10]_i_8_n_0 ),
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
       (.I0(\r_frameW_reg_n_0_[0] ),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \r_frameW[10]_i_1 
       (.I0(vsync_in),
        .I1(de_in),
        .O(r_frameW));
  LUT6 #(
    .INIT(64'hF0F0F0F068F0F0F0)) 
    \r_frameW[10]_i_2 
       (.I0(\r_frameW_reg_n_0_[9] ),
        .I1(\r_frameW_reg_n_0_[8] ),
        .I2(\r_frameW_reg_n_0_[10] ),
        .I3(\r_frameW_reg_n_0_[6] ),
        .I4(\r_frameW_reg_n_0_[7] ),
        .I5(\r_frameW[10]_i_3_n_0 ),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r_frameW[10]_i_3 
       (.I0(\r_frameW_reg_n_0_[4] ),
        .I1(\r_frameW_reg_n_0_[2] ),
        .I2(\r_frameW_reg_n_0_[0] ),
        .I3(\r_frameW_reg_n_0_[1] ),
        .I4(\r_frameW_reg_n_0_[3] ),
        .I5(\r_frameW_reg_n_0_[5] ),
        .O(\r_frameW[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_frameW[1]_i_1 
       (.I0(\r_frameW_reg_n_0_[0] ),
        .I1(\r_frameW_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_frameW[2]_i_1 
       (.I0(\r_frameW_reg_n_0_[2] ),
        .I1(\r_frameW_reg_n_0_[0] ),
        .I2(\r_frameW_reg_n_0_[1] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_frameW[3]_i_1 
       (.I0(\r_frameW_reg_n_0_[3] ),
        .I1(\r_frameW_reg_n_0_[1] ),
        .I2(\r_frameW_reg_n_0_[0] ),
        .I3(\r_frameW_reg_n_0_[2] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_frameW[4]_i_1 
       (.I0(\r_frameW_reg_n_0_[4] ),
        .I1(\r_frameW_reg_n_0_[2] ),
        .I2(\r_frameW_reg_n_0_[0] ),
        .I3(\r_frameW_reg_n_0_[1] ),
        .I4(\r_frameW_reg_n_0_[3] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \r_frameW[5]_i_1 
       (.I0(\r_frameW_reg_n_0_[5] ),
        .I1(\r_frameW_reg_n_0_[3] ),
        .I2(\r_frameW_reg_n_0_[1] ),
        .I3(\r_frameW_reg_n_0_[0] ),
        .I4(\r_frameW_reg_n_0_[2] ),
        .I5(\r_frameW_reg_n_0_[4] ),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \r_frameW[6]_i_1 
       (.I0(\r_frameW_reg_n_0_[6] ),
        .I1(\r_frameW[10]_i_3_n_0 ),
        .O(\r_frameW[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \r_frameW[7]_i_1 
       (.I0(\r_frameW_reg_n_0_[7] ),
        .I1(\r_frameW_reg_n_0_[6] ),
        .I2(\r_frameW[10]_i_3_n_0 ),
        .O(\r_frameW[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FFFFF00B00000)) 
    \r_frameW[8]_i_1 
       (.I0(\r_frameW_reg_n_0_[9] ),
        .I1(\r_frameW_reg_n_0_[10] ),
        .I2(\r_frameW_reg_n_0_[6] ),
        .I3(\r_frameW[10]_i_3_n_0 ),
        .I4(\r_frameW_reg_n_0_[7] ),
        .I5(\r_frameW_reg_n_0_[8] ),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \r_frameW[9]_i_1 
       (.I0(\r_frameW_reg_n_0_[9] ),
        .I1(\r_frameW_reg_n_0_[6] ),
        .I2(\r_frameW[10]_i_3_n_0 ),
        .I3(\r_frameW_reg_n_0_[7] ),
        .I4(\r_frameW_reg_n_0_[8] ),
        .O(p_0_in[9]));
  FDRE \r_frameW_reg[0] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[0]),
        .Q(\r_frameW_reg_n_0_[0] ),
        .R(r_frameW));
  FDRE \r_frameW_reg[10] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[10]),
        .Q(\r_frameW_reg_n_0_[10] ),
        .R(r_frameW));
  FDRE \r_frameW_reg[1] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[1]),
        .Q(\r_frameW_reg_n_0_[1] ),
        .R(r_frameW));
  FDRE \r_frameW_reg[2] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[2]),
        .Q(\r_frameW_reg_n_0_[2] ),
        .R(r_frameW));
  FDRE \r_frameW_reg[3] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[3]),
        .Q(\r_frameW_reg_n_0_[3] ),
        .R(r_frameW));
  FDRE \r_frameW_reg[4] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[4]),
        .Q(\r_frameW_reg_n_0_[4] ),
        .R(r_frameW));
  FDRE \r_frameW_reg[5] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[5]),
        .Q(\r_frameW_reg_n_0_[5] ),
        .R(r_frameW));
  FDRE \r_frameW_reg[6] 
       (.C(clk),
        .CE(de_in),
        .D(\r_frameW[6]_i_1_n_0 ),
        .Q(\r_frameW_reg_n_0_[6] ),
        .R(r_frameW));
  FDRE \r_frameW_reg[7] 
       (.C(clk),
        .CE(de_in),
        .D(\r_frameW[7]_i_1_n_0 ),
        .Q(\r_frameW_reg_n_0_[7] ),
        .R(r_frameW));
  FDRE \r_frameW_reg[8] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[8]),
        .Q(\r_frameW_reg_n_0_[8] ),
        .R(r_frameW));
  FDRE \r_frameW_reg[9] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[9]),
        .Q(\r_frameW_reg_n_0_[9] ),
        .R(r_frameW));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \reg_addrb[11]_i_1 
       (.I0(\reg_addrb[11]_i_4_n_0 ),
        .I1(\reg_addrb[11]_i_5_n_0 ),
        .I2(\r_frameW_reg_n_0_[5] ),
        .I3(r_frameH[9]),
        .I4(\r_frameW_reg_n_0_[10] ),
        .I5(vsync_in),
        .O(reg_addrb));
  LUT5 #(
    .INIT(32'h00000002)) 
    \reg_addrb[11]_i_2 
       (.I0(\reg_addrb[11]_i_4_n_0 ),
        .I1(\reg_addrb[11]_i_5_n_0 ),
        .I2(\r_frameW_reg_n_0_[5] ),
        .I3(r_frameH[9]),
        .I4(\r_frameW_reg_n_0_[10] ),
        .O(\reg_addrb[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \reg_addrb[11]_i_4 
       (.I0(r_frameH[8]),
        .I1(r_frameH[10]),
        .I2(r_frameH[6]),
        .I3(r_frameH[5]),
        .I4(\r_frameW_reg_n_0_[8] ),
        .I5(\r_frameW_reg_n_0_[9] ),
        .O(\reg_addrb[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \reg_addrb[11]_i_5 
       (.I0(r_frameH[7]),
        .I1(\r_frameW_reg_n_0_[7] ),
        .I2(de_in),
        .I3(\r_frameW_reg_n_0_[6] ),
        .O(\reg_addrb[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \reg_addrb[3]_i_2 
       (.I0(addrb[0]),
        .O(\reg_addrb[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_addrb_reg[0] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(\reg_addrb_reg[3]_i_1_n_7 ),
        .Q(addrb[0]),
        .R(reg_addrb));
  FDRE #(
    .INIT(1'b0)) 
    \reg_addrb_reg[10] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(\reg_addrb_reg[11]_i_3_n_5 ),
        .Q(addrb[10]),
        .R(reg_addrb));
  FDRE #(
    .INIT(1'b0)) 
    \reg_addrb_reg[11] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(\reg_addrb_reg[11]_i_3_n_4 ),
        .Q(addrb[11]),
        .R(reg_addrb));
  CARRY4 \reg_addrb_reg[11]_i_3 
       (.CI(\reg_addrb_reg[7]_i_1_n_0 ),
        .CO({\NLW_reg_addrb_reg[11]_i_3_CO_UNCONNECTED [3],\reg_addrb_reg[11]_i_3_n_1 ,\reg_addrb_reg[11]_i_3_n_2 ,\reg_addrb_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reg_addrb_reg[11]_i_3_n_4 ,\reg_addrb_reg[11]_i_3_n_5 ,\reg_addrb_reg[11]_i_3_n_6 ,\reg_addrb_reg[11]_i_3_n_7 }),
        .S(addrb[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_addrb_reg[1] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(\reg_addrb_reg[3]_i_1_n_6 ),
        .Q(addrb[1]),
        .R(reg_addrb));
  FDRE #(
    .INIT(1'b0)) 
    \reg_addrb_reg[2] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(\reg_addrb_reg[3]_i_1_n_5 ),
        .Q(addrb[2]),
        .R(reg_addrb));
  FDRE #(
    .INIT(1'b0)) 
    \reg_addrb_reg[3] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(\reg_addrb_reg[3]_i_1_n_4 ),
        .Q(addrb[3]),
        .R(reg_addrb));
  CARRY4 \reg_addrb_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\reg_addrb_reg[3]_i_1_n_0 ,\reg_addrb_reg[3]_i_1_n_1 ,\reg_addrb_reg[3]_i_1_n_2 ,\reg_addrb_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\reg_addrb_reg[3]_i_1_n_4 ,\reg_addrb_reg[3]_i_1_n_5 ,\reg_addrb_reg[3]_i_1_n_6 ,\reg_addrb_reg[3]_i_1_n_7 }),
        .S({addrb[3:1],\reg_addrb[3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \reg_addrb_reg[4] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(\reg_addrb_reg[7]_i_1_n_7 ),
        .Q(addrb[4]),
        .R(reg_addrb));
  FDRE #(
    .INIT(1'b0)) 
    \reg_addrb_reg[5] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(\reg_addrb_reg[7]_i_1_n_6 ),
        .Q(addrb[5]),
        .R(reg_addrb));
  FDRE #(
    .INIT(1'b0)) 
    \reg_addrb_reg[6] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(\reg_addrb_reg[7]_i_1_n_5 ),
        .Q(addrb[6]),
        .R(reg_addrb));
  FDRE #(
    .INIT(1'b0)) 
    \reg_addrb_reg[7] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(\reg_addrb_reg[7]_i_1_n_4 ),
        .Q(addrb[7]),
        .R(reg_addrb));
  CARRY4 \reg_addrb_reg[7]_i_1 
       (.CI(\reg_addrb_reg[3]_i_1_n_0 ),
        .CO({\reg_addrb_reg[7]_i_1_n_0 ,\reg_addrb_reg[7]_i_1_n_1 ,\reg_addrb_reg[7]_i_1_n_2 ,\reg_addrb_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reg_addrb_reg[7]_i_1_n_4 ,\reg_addrb_reg[7]_i_1_n_5 ,\reg_addrb_reg[7]_i_1_n_6 ,\reg_addrb_reg[7]_i_1_n_7 }),
        .S(addrb[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_addrb_reg[8] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(\reg_addrb_reg[11]_i_3_n_7 ),
        .Q(addrb[8]),
        .R(reg_addrb));
  FDRE #(
    .INIT(1'b0)) 
    \reg_addrb_reg[9] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(\reg_addrb_reg[11]_i_3_n_6 ),
        .Q(addrb[9]),
        .R(reg_addrb));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[0] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[0]),
        .Q(dinb[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[10] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[10]),
        .Q(dinb[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[11] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[11]),
        .Q(dinb[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[12] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[12]),
        .Q(dinb[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[13] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[13]),
        .Q(dinb[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[14] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[14]),
        .Q(dinb[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[15] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[15]),
        .Q(dinb[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[16] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[16]),
        .Q(dinb[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[17] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[17]),
        .Q(dinb[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[18] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[18]),
        .Q(dinb[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[19] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[19]),
        .Q(dinb[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[1] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[1]),
        .Q(dinb[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[20] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[20]),
        .Q(dinb[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[21] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[21]),
        .Q(dinb[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[22] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[22]),
        .Q(dinb[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[23] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[23]),
        .Q(dinb[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[2] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[2]),
        .Q(dinb[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[3] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[3]),
        .Q(dinb[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[4] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[4]),
        .Q(dinb[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[5] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[5]),
        .Q(dinb[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[6] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[6]),
        .Q(dinb[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[7] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[7]),
        .Q(dinb[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[8] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[8]),
        .Q(dinb[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_dinb_reg[9] 
       (.C(clk),
        .CE(\reg_addrb[11]_i_2_n_0 ),
        .D(rgb_in[9]),
        .Q(dinb[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    reg_web_i_1
       (.I0(\reg_addrb[11]_i_4_n_0 ),
        .I1(\reg_addrb[11]_i_5_n_0 ),
        .I2(\r_frameW_reg_n_0_[5] ),
        .I3(r_frameH[9]),
        .I4(\r_frameW_reg_n_0_[10] ),
        .I5(vsync_in),
        .O(reg_web_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reg_web_reg
       (.C(clk),
        .CE(1'b1),
        .D(reg_web_i_1_n_0),
        .Q(web),
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
