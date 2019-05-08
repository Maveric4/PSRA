// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Apr  3 16:24:46 2019
// Host        : lsriw running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ald_write_video_bram_0_0_sim_netlist.v
// Design      : ald_write_video_bram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ald_write_video_bram_0_0,write_video_bram,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "write_video_bram,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    de_in,
    hsync_in,
    vsync_in,
    rgb_in,
    addra,
    dina,
    ena,
    wea);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ald_dvi2rgb_0_0_PixelClk, INSERT_VIP 0" *) input clk;
  input de_in;
  input hsync_in;
  input vsync_in;
  input [23:0]rgb_in;
  output [10:0]addra;
  output [31:0]dina;
  output ena;
  output wea;

  wire \<const0> ;
  wire \<const1> ;
  wire [10:0]addra;
  wire clk;
  wire de_in;
  wire [23:0]\^dina ;
  wire [23:0]rgb_in;
  wire vsync_in;
  wire wea;

  assign dina[31] = \<const0> ;
  assign dina[30] = \<const0> ;
  assign dina[29] = \<const0> ;
  assign dina[28] = \<const0> ;
  assign dina[27] = \<const0> ;
  assign dina[26] = \<const0> ;
  assign dina[25] = \<const0> ;
  assign dina[24] = \<const0> ;
  assign dina[23:0] = \^dina [23:0];
  assign ena = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_write_video_bram inst
       (.addra(addra),
        .clk(clk),
        .de_in(de_in),
        .dina(\^dina ),
        .rgb_in(rgb_in),
        .vsync_in(vsync_in),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_write_video_bram
   (addra,
    dina,
    wea,
    clk,
    rgb_in,
    de_in,
    vsync_in);
  output [10:0]addra;
  output [23:0]dina;
  output wea;
  input clk;
  input [23:0]rgb_in;
  input de_in;
  input vsync_in;

  wire \addr[0]_i_1_n_0 ;
  wire \addr[10]_i_1_n_0 ;
  wire \addr[10]_i_2_n_0 ;
  wire \addr[10]_i_3_n_0 ;
  wire \addr[1]_i_1_n_0 ;
  wire \addr[2]_i_1_n_0 ;
  wire \addr[3]_i_1_n_0 ;
  wire \addr[4]_i_1_n_0 ;
  wire \addr[5]_i_1_n_0 ;
  wire \addr[5]_i_2_n_0 ;
  wire \addr[6]_i_1_n_0 ;
  wire \addr[7]_i_1_n_0 ;
  wire \addr[8]_i_1_n_0 ;
  wire \addr[9]_i_1_n_0 ;
  wire \addr[9]_i_2_n_0 ;
  wire [10:0]addra;
  wire clk;
  wire data;
  wire \data[23]_i_2_n_0 ;
  wire \data[23]_i_3_n_0 ;
  wire de_in;
  wire [23:0]dina;
  wire [10:0]p_0_in;
  wire [10:0]p_1_in;
  wire [10:0]r_frameH;
  wire \r_frameH[10]_i_1_n_0 ;
  wire \r_frameH[10]_i_3_n_0 ;
  wire \r_frameH[10]_i_4_n_0 ;
  wire \r_frameH[10]_i_5_n_0 ;
  wire \r_frameH[10]_i_6_n_0 ;
  wire \r_frameH[4]_i_2_n_0 ;
  wire \r_frameH[4]_i_3_n_0 ;
  wire \r_frameH[5]_i_2_n_0 ;
  wire \r_frameH[7]_i_2_n_0 ;
  wire \r_frameH[8]_i_2_n_0 ;
  wire \r_frameH[9]_i_2_n_0 ;
  wire \r_frameW[10]_i_3_n_0 ;
  wire \r_frameW[1]_i_1_n_0 ;
  wire \r_frameW[1]_i_2_n_0 ;
  wire \r_frameW[1]_i_3_n_0 ;
  wire \r_frameW[7]_i_2_n_0 ;
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
  wire [23:0]rgb_in;
  wire vsync_in;
  wire we;
  wire we_i_1_n_0;
  wire we_i_2_n_0;
  wire wea;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr[0]_i_1 
       (.I0(data),
        .I1(addra[0]),
        .O(\addr[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr[10]_i_1 
       (.I0(data),
        .I1(vsync_in),
        .O(\addr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \addr[10]_i_2 
       (.I0(\addr[10]_i_3_n_0 ),
        .I1(addra[9]),
        .I2(data),
        .I3(addra[10]),
        .O(\addr[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \addr[10]_i_3 
       (.I0(addra[7]),
        .I1(\addr[9]_i_2_n_0 ),
        .I2(addra[6]),
        .I3(addra[8]),
        .O(\addr[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \addr[1]_i_1 
       (.I0(data),
        .I1(addra[0]),
        .I2(addra[1]),
        .O(\addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \addr[2]_i_1 
       (.I0(data),
        .I1(addra[1]),
        .I2(addra[0]),
        .I3(addra[2]),
        .O(\addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \addr[3]_i_1 
       (.I0(data),
        .I1(addra[2]),
        .I2(addra[0]),
        .I3(addra[1]),
        .I4(addra[3]),
        .O(\addr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \addr[4]_i_1 
       (.I0(data),
        .I1(addra[3]),
        .I2(addra[1]),
        .I3(addra[0]),
        .I4(addra[2]),
        .I5(addra[4]),
        .O(\addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \addr[5]_i_1 
       (.I0(data),
        .I1(\addr[5]_i_2_n_0 ),
        .I2(addra[5]),
        .O(\addr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \addr[5]_i_2 
       (.I0(addra[3]),
        .I1(addra[1]),
        .I2(addra[0]),
        .I3(addra[2]),
        .I4(addra[4]),
        .O(\addr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \addr[6]_i_1 
       (.I0(data),
        .I1(\addr[9]_i_2_n_0 ),
        .I2(addra[6]),
        .O(\addr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \addr[7]_i_1 
       (.I0(\addr[9]_i_2_n_0 ),
        .I1(addra[6]),
        .I2(data),
        .I3(addra[7]),
        .O(\addr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hDF002000)) 
    \addr[8]_i_1 
       (.I0(addra[6]),
        .I1(\addr[9]_i_2_n_0 ),
        .I2(addra[7]),
        .I3(data),
        .I4(addra[8]),
        .O(\addr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF000020000000)) 
    \addr[9]_i_1 
       (.I0(addra[7]),
        .I1(\addr[9]_i_2_n_0 ),
        .I2(addra[6]),
        .I3(addra[8]),
        .I4(data),
        .I5(addra[9]),
        .O(\addr[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \addr[9]_i_2 
       (.I0(addra[4]),
        .I1(addra[2]),
        .I2(addra[0]),
        .I3(addra[1]),
        .I4(addra[3]),
        .I5(addra[5]),
        .O(\addr[9]_i_2_n_0 ));
  FDRE \addr_reg[0] 
       (.C(clk),
        .CE(\addr[10]_i_1_n_0 ),
        .D(\addr[0]_i_1_n_0 ),
        .Q(addra[0]),
        .R(1'b0));
  FDRE \addr_reg[10] 
       (.C(clk),
        .CE(\addr[10]_i_1_n_0 ),
        .D(\addr[10]_i_2_n_0 ),
        .Q(addra[10]),
        .R(1'b0));
  FDRE \addr_reg[1] 
       (.C(clk),
        .CE(\addr[10]_i_1_n_0 ),
        .D(\addr[1]_i_1_n_0 ),
        .Q(addra[1]),
        .R(1'b0));
  FDRE \addr_reg[2] 
       (.C(clk),
        .CE(\addr[10]_i_1_n_0 ),
        .D(\addr[2]_i_1_n_0 ),
        .Q(addra[2]),
        .R(1'b0));
  FDRE \addr_reg[3] 
       (.C(clk),
        .CE(\addr[10]_i_1_n_0 ),
        .D(\addr[3]_i_1_n_0 ),
        .Q(addra[3]),
        .R(1'b0));
  FDRE \addr_reg[4] 
       (.C(clk),
        .CE(\addr[10]_i_1_n_0 ),
        .D(\addr[4]_i_1_n_0 ),
        .Q(addra[4]),
        .R(1'b0));
  FDRE \addr_reg[5] 
       (.C(clk),
        .CE(\addr[10]_i_1_n_0 ),
        .D(\addr[5]_i_1_n_0 ),
        .Q(addra[5]),
        .R(1'b0));
  FDRE \addr_reg[6] 
       (.C(clk),
        .CE(\addr[10]_i_1_n_0 ),
        .D(\addr[6]_i_1_n_0 ),
        .Q(addra[6]),
        .R(1'b0));
  FDRE \addr_reg[7] 
       (.C(clk),
        .CE(\addr[10]_i_1_n_0 ),
        .D(\addr[7]_i_1_n_0 ),
        .Q(addra[7]),
        .R(1'b0));
  FDRE \addr_reg[8] 
       (.C(clk),
        .CE(\addr[10]_i_1_n_0 ),
        .D(\addr[8]_i_1_n_0 ),
        .Q(addra[8]),
        .R(1'b0));
  FDRE \addr_reg[9] 
       (.C(clk),
        .CE(\addr[10]_i_1_n_0 ),
        .D(\addr[9]_i_1_n_0 ),
        .Q(addra[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \data[23]_i_1 
       (.I0(\r_frameW_reg_n_0_[7] ),
        .I1(\r_frameW_reg_n_0_[6] ),
        .I2(\r_frameW_reg_n_0_[5] ),
        .I3(r_frameH[9]),
        .I4(\data[23]_i_2_n_0 ),
        .I5(\data[23]_i_3_n_0 ),
        .O(data));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data[23]_i_2 
       (.I0(\r_frameW_reg_n_0_[10] ),
        .I1(r_frameH[10]),
        .I2(r_frameH[8]),
        .I3(r_frameH[5]),
        .I4(r_frameH[7]),
        .I5(r_frameH[6]),
        .O(\data[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \data[23]_i_3 
       (.I0(\r_frameW_reg_n_0_[9] ),
        .I1(\r_frameW_reg_n_0_[8] ),
        .I2(de_in),
        .O(\data[23]_i_3_n_0 ));
  FDRE \data_reg[0] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[0]),
        .Q(dina[0]),
        .R(1'b0));
  FDRE \data_reg[10] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[10]),
        .Q(dina[10]),
        .R(1'b0));
  FDRE \data_reg[11] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[11]),
        .Q(dina[11]),
        .R(1'b0));
  FDRE \data_reg[12] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[12]),
        .Q(dina[12]),
        .R(1'b0));
  FDRE \data_reg[13] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[13]),
        .Q(dina[13]),
        .R(1'b0));
  FDRE \data_reg[14] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[14]),
        .Q(dina[14]),
        .R(1'b0));
  FDRE \data_reg[15] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[15]),
        .Q(dina[15]),
        .R(1'b0));
  FDRE \data_reg[16] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[16]),
        .Q(dina[16]),
        .R(1'b0));
  FDRE \data_reg[17] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[17]),
        .Q(dina[17]),
        .R(1'b0));
  FDRE \data_reg[18] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[18]),
        .Q(dina[18]),
        .R(1'b0));
  FDRE \data_reg[19] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[19]),
        .Q(dina[19]),
        .R(1'b0));
  FDRE \data_reg[1] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[1]),
        .Q(dina[1]),
        .R(1'b0));
  FDRE \data_reg[20] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[20]),
        .Q(dina[20]),
        .R(1'b0));
  FDRE \data_reg[21] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[21]),
        .Q(dina[21]),
        .R(1'b0));
  FDRE \data_reg[22] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[22]),
        .Q(dina[22]),
        .R(1'b0));
  FDRE \data_reg[23] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[23]),
        .Q(dina[23]),
        .R(1'b0));
  FDRE \data_reg[2] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[2]),
        .Q(dina[2]),
        .R(1'b0));
  FDRE \data_reg[3] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[3]),
        .Q(dina[3]),
        .R(1'b0));
  FDRE \data_reg[4] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[4]),
        .Q(dina[4]),
        .R(1'b0));
  FDRE \data_reg[5] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[5]),
        .Q(dina[5]),
        .R(1'b0));
  FDRE \data_reg[6] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[6]),
        .Q(dina[6]),
        .R(1'b0));
  FDRE \data_reg[7] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[7]),
        .Q(dina[7]),
        .R(1'b0));
  FDRE \data_reg[8] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[8]),
        .Q(dina[8]),
        .R(1'b0));
  FDRE \data_reg[9] 
       (.C(clk),
        .CE(data),
        .D(rgb_in[9]),
        .Q(dina[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_frameH[0]_i_1 
       (.I0(\r_frameH[10]_i_3_n_0 ),
        .I1(r_frameH[0]),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \r_frameH[10]_i_1 
       (.I0(\r_frameH[10]_i_3_n_0 ),
        .I1(vsync_in),
        .O(\r_frameH[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDF002000)) 
    \r_frameH[10]_i_2 
       (.I0(r_frameH[8]),
        .I1(\r_frameH[10]_i_4_n_0 ),
        .I2(r_frameH[9]),
        .I3(\r_frameH[10]_i_3_n_0 ),
        .I4(r_frameH[10]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \r_frameH[10]_i_3 
       (.I0(\r_frameW_reg_n_0_[10] ),
        .I1(\r_frameH[10]_i_5_n_0 ),
        .I2(de_in),
        .I3(\r_frameW_reg_n_0_[7] ),
        .I4(\r_frameH[10]_i_6_n_0 ),
        .I5(\r_frameW_reg_n_0_[6] ),
        .O(\r_frameH[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \r_frameH[10]_i_4 
       (.I0(r_frameH[5]),
        .I1(\r_frameH[5]_i_2_n_0 ),
        .I2(r_frameH[4]),
        .I3(r_frameH[7]),
        .I4(r_frameH[6]),
        .O(\r_frameH[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_frameH[10]_i_5 
       (.I0(\r_frameW_reg_n_0_[8] ),
        .I1(\r_frameW_reg_n_0_[9] ),
        .O(\r_frameH[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r_frameH[10]_i_6 
       (.I0(\r_frameW_reg_n_0_[4] ),
        .I1(\r_frameW_reg_n_0_[2] ),
        .I2(\r_frameW_reg_n_0_[0] ),
        .I3(\r_frameW_reg_n_0_[1] ),
        .I4(\r_frameW_reg_n_0_[3] ),
        .I5(\r_frameW_reg_n_0_[5] ),
        .O(\r_frameH[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \r_frameH[1]_i_1 
       (.I0(\r_frameH[10]_i_3_n_0 ),
        .I1(r_frameH[0]),
        .I2(r_frameH[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \r_frameH[2]_i_1 
       (.I0(\r_frameH[10]_i_3_n_0 ),
        .I1(r_frameH[1]),
        .I2(r_frameH[0]),
        .I3(r_frameH[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \r_frameH[3]_i_1 
       (.I0(\r_frameH[10]_i_3_n_0 ),
        .I1(r_frameH[2]),
        .I2(r_frameH[0]),
        .I3(r_frameH[1]),
        .I4(r_frameH[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h8888888822222202)) 
    \r_frameH[4]_i_1 
       (.I0(\r_frameH[10]_i_3_n_0 ),
        .I1(r_frameH[4]),
        .I2(r_frameH[9]),
        .I3(\r_frameH[4]_i_2_n_0 ),
        .I4(\r_frameH[4]_i_3_n_0 ),
        .I5(\r_frameH[5]_i_2_n_0 ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_frameH[4]_i_2 
       (.I0(r_frameH[6]),
        .I1(r_frameH[7]),
        .O(\r_frameH[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \r_frameH[4]_i_3 
       (.I0(r_frameH[10]),
        .I1(r_frameH[8]),
        .I2(r_frameH[5]),
        .O(\r_frameH[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \r_frameH[5]_i_1 
       (.I0(\r_frameH[10]_i_3_n_0 ),
        .I1(r_frameH[4]),
        .I2(\r_frameH[5]_i_2_n_0 ),
        .I3(r_frameH[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_frameH[5]_i_2 
       (.I0(r_frameH[2]),
        .I1(r_frameH[0]),
        .I2(r_frameH[1]),
        .I3(r_frameH[3]),
        .O(\r_frameH[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C0CC44444444)) 
    \r_frameH[6]_i_1 
       (.I0(\r_frameH[8]_i_2_n_0 ),
        .I1(\r_frameH[10]_i_3_n_0 ),
        .I2(\r_frameH[7]_i_2_n_0 ),
        .I3(r_frameH[4]),
        .I4(r_frameH[7]),
        .I5(r_frameH[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80C08CC0)) 
    \r_frameH[7]_i_1 
       (.I0(\r_frameH[7]_i_2_n_0 ),
        .I1(\r_frameH[10]_i_3_n_0 ),
        .I2(r_frameH[7]),
        .I3(r_frameH[6]),
        .I4(\r_frameH[8]_i_2_n_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hCFCFCFCFFFFFFFFD)) 
    \r_frameH[7]_i_2 
       (.I0(r_frameH[9]),
        .I1(\r_frameH[5]_i_2_n_0 ),
        .I2(r_frameH[4]),
        .I3(r_frameH[10]),
        .I4(r_frameH[8]),
        .I5(r_frameH[5]),
        .O(\r_frameH[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \r_frameH[8]_i_1 
       (.I0(\r_frameH[10]_i_3_n_0 ),
        .I1(r_frameH[6]),
        .I2(r_frameH[7]),
        .I3(\r_frameH[8]_i_2_n_0 ),
        .I4(r_frameH[8]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r_frameH[8]_i_2 
       (.I0(r_frameH[4]),
        .I1(r_frameH[2]),
        .I2(r_frameH[0]),
        .I3(r_frameH[1]),
        .I4(r_frameH[3]),
        .I5(r_frameH[5]),
        .O(\r_frameH[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h888800C0)) 
    \r_frameH[9]_i_1 
       (.I0(\r_frameH[9]_i_2_n_0 ),
        .I1(\r_frameH[10]_i_3_n_0 ),
        .I2(r_frameH[8]),
        .I3(\r_frameH[10]_i_4_n_0 ),
        .I4(r_frameH[9]),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'hEFEFFFFFFFFFFFFE)) 
    \r_frameH[9]_i_2 
       (.I0(\r_frameH[4]_i_2_n_0 ),
        .I1(\r_frameH[5]_i_2_n_0 ),
        .I2(r_frameH[4]),
        .I3(r_frameH[10]),
        .I4(r_frameH[8]),
        .I5(r_frameH[5]),
        .O(\r_frameH[9]_i_2_n_0 ));
  FDRE \r_frameH_reg[0] 
       (.C(clk),
        .CE(\r_frameH[10]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(r_frameH[0]),
        .R(1'b0));
  FDRE \r_frameH_reg[10] 
       (.C(clk),
        .CE(\r_frameH[10]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(r_frameH[10]),
        .R(1'b0));
  FDRE \r_frameH_reg[1] 
       (.C(clk),
        .CE(\r_frameH[10]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(r_frameH[1]),
        .R(1'b0));
  FDRE \r_frameH_reg[2] 
       (.C(clk),
        .CE(\r_frameH[10]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(r_frameH[2]),
        .R(1'b0));
  FDRE \r_frameH_reg[3] 
       (.C(clk),
        .CE(\r_frameH[10]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(r_frameH[3]),
        .R(1'b0));
  FDRE \r_frameH_reg[4] 
       (.C(clk),
        .CE(\r_frameH[10]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(r_frameH[4]),
        .R(1'b0));
  FDRE \r_frameH_reg[5] 
       (.C(clk),
        .CE(\r_frameH[10]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(r_frameH[5]),
        .R(1'b0));
  FDRE \r_frameH_reg[6] 
       (.C(clk),
        .CE(\r_frameH[10]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(r_frameH[6]),
        .R(1'b0));
  FDRE \r_frameH_reg[7] 
       (.C(clk),
        .CE(\r_frameH[10]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(r_frameH[7]),
        .R(1'b0));
  FDRE \r_frameH_reg[8] 
       (.C(clk),
        .CE(\r_frameH[10]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(r_frameH[8]),
        .R(1'b0));
  FDRE \r_frameH_reg[9] 
       (.C(clk),
        .CE(\r_frameH[10]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(r_frameH[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
        .O(we));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAA68)) 
    \r_frameW[10]_i_2 
       (.I0(\r_frameW_reg_n_0_[10] ),
        .I1(\r_frameW_reg_n_0_[9] ),
        .I2(\r_frameW_reg_n_0_[8] ),
        .I3(\r_frameW[10]_i_3_n_0 ),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \r_frameW[10]_i_3 
       (.I0(\r_frameW_reg_n_0_[6] ),
        .I1(\r_frameW_reg_n_0_[4] ),
        .I2(\r_frameW[7]_i_2_n_0 ),
        .I3(\r_frameW_reg_n_0_[3] ),
        .I4(\r_frameW_reg_n_0_[5] ),
        .I5(\r_frameW_reg_n_0_[7] ),
        .O(\r_frameW[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6066)) 
    \r_frameW[1]_i_1 
       (.I0(\r_frameW_reg_n_0_[1] ),
        .I1(\r_frameW_reg_n_0_[0] ),
        .I2(\r_frameW[1]_i_2_n_0 ),
        .I3(\r_frameW[1]_i_3_n_0 ),
        .O(\r_frameW[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r_frameW[1]_i_2 
       (.I0(\r_frameW_reg_n_0_[2] ),
        .I1(\r_frameW_reg_n_0_[0] ),
        .I2(\r_frameW_reg_n_0_[1] ),
        .I3(\r_frameW_reg_n_0_[3] ),
        .I4(\r_frameW_reg_n_0_[4] ),
        .I5(\r_frameW_reg_n_0_[5] ),
        .O(\r_frameW[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \r_frameW[1]_i_3 
       (.I0(\r_frameW_reg_n_0_[9] ),
        .I1(\r_frameW_reg_n_0_[8] ),
        .I2(\r_frameW_reg_n_0_[10] ),
        .I3(\r_frameW_reg_n_0_[6] ),
        .I4(\r_frameW_reg_n_0_[7] ),
        .O(\r_frameW[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_frameW[2]_i_1 
       (.I0(\r_frameW_reg_n_0_[1] ),
        .I1(\r_frameW_reg_n_0_[0] ),
        .I2(\r_frameW_reg_n_0_[2] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_frameW[3]_i_1 
       (.I0(\r_frameW_reg_n_0_[2] ),
        .I1(\r_frameW_reg_n_0_[0] ),
        .I2(\r_frameW_reg_n_0_[1] ),
        .I3(\r_frameW_reg_n_0_[3] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_frameW[4]_i_1 
       (.I0(\r_frameW_reg_n_0_[3] ),
        .I1(\r_frameW_reg_n_0_[1] ),
        .I2(\r_frameW_reg_n_0_[0] ),
        .I3(\r_frameW_reg_n_0_[2] ),
        .I4(\r_frameW_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_frameW[5]_i_1 
       (.I0(\r_frameW_reg_n_0_[4] ),
        .I1(\r_frameW_reg_n_0_[2] ),
        .I2(\r_frameW_reg_n_0_[0] ),
        .I3(\r_frameW_reg_n_0_[1] ),
        .I4(\r_frameW_reg_n_0_[3] ),
        .I5(\r_frameW_reg_n_0_[5] ),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \r_frameW[6]_i_1 
       (.I0(\r_frameW_reg_n_0_[5] ),
        .I1(\r_frameW_reg_n_0_[3] ),
        .I2(\r_frameW[7]_i_2_n_0 ),
        .I3(\r_frameW_reg_n_0_[4] ),
        .I4(\r_frameW_reg_n_0_[6] ),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \r_frameW[7]_i_1 
       (.I0(\r_frameW_reg_n_0_[6] ),
        .I1(\r_frameW_reg_n_0_[4] ),
        .I2(\r_frameW[7]_i_2_n_0 ),
        .I3(\r_frameW_reg_n_0_[3] ),
        .I4(\r_frameW_reg_n_0_[5] ),
        .I5(\r_frameW_reg_n_0_[7] ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \r_frameW[7]_i_2 
       (.I0(\r_frameW_reg_n_0_[1] ),
        .I1(\r_frameW_reg_n_0_[0] ),
        .I2(\r_frameW_reg_n_0_[2] ),
        .O(\r_frameW[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAA51)) 
    \r_frameW[8]_i_1 
       (.I0(\r_frameW[10]_i_3_n_0 ),
        .I1(\r_frameW_reg_n_0_[10] ),
        .I2(\r_frameW_reg_n_0_[9] ),
        .I3(\r_frameW_reg_n_0_[8] ),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \r_frameW[9]_i_1 
       (.I0(\r_frameW_reg_n_0_[8] ),
        .I1(\r_frameW[10]_i_3_n_0 ),
        .I2(\r_frameW_reg_n_0_[9] ),
        .O(p_0_in[9]));
  FDRE \r_frameW_reg[0] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[0]),
        .Q(\r_frameW_reg_n_0_[0] ),
        .R(we));
  FDRE \r_frameW_reg[10] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[10]),
        .Q(\r_frameW_reg_n_0_[10] ),
        .R(we));
  FDRE \r_frameW_reg[1] 
       (.C(clk),
        .CE(de_in),
        .D(\r_frameW[1]_i_1_n_0 ),
        .Q(\r_frameW_reg_n_0_[1] ),
        .R(we));
  FDRE \r_frameW_reg[2] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[2]),
        .Q(\r_frameW_reg_n_0_[2] ),
        .R(we));
  FDRE \r_frameW_reg[3] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[3]),
        .Q(\r_frameW_reg_n_0_[3] ),
        .R(we));
  FDRE \r_frameW_reg[4] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[4]),
        .Q(\r_frameW_reg_n_0_[4] ),
        .R(we));
  FDRE \r_frameW_reg[5] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[5]),
        .Q(\r_frameW_reg_n_0_[5] ),
        .R(we));
  FDRE \r_frameW_reg[6] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[6]),
        .Q(\r_frameW_reg_n_0_[6] ),
        .R(we));
  FDRE \r_frameW_reg[7] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[7]),
        .Q(\r_frameW_reg_n_0_[7] ),
        .R(we));
  FDRE \r_frameW_reg[8] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[8]),
        .Q(\r_frameW_reg_n_0_[8] ),
        .R(we));
  FDRE \r_frameW_reg[9] 
       (.C(clk),
        .CE(de_in),
        .D(p_0_in[9]),
        .Q(\r_frameW_reg_n_0_[9] ),
        .R(we));
  LUT6 #(
    .INIT(64'h040404F404040404)) 
    we_i_1
       (.I0(vsync_in),
        .I1(wea),
        .I2(de_in),
        .I3(\r_frameW_reg_n_0_[8] ),
        .I4(\r_frameW_reg_n_0_[9] ),
        .I5(we_i_2_n_0),
        .O(we_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    we_i_2
       (.I0(\data[23]_i_2_n_0 ),
        .I1(r_frameH[9]),
        .I2(\r_frameW_reg_n_0_[5] ),
        .I3(\r_frameW_reg_n_0_[6] ),
        .I4(\r_frameW_reg_n_0_[7] ),
        .O(we_i_2_n_0));
  FDRE we_reg
       (.C(clk),
        .CE(1'b1),
        .D(we_i_1_n_0),
        .Q(wea),
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
