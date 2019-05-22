// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Apr  4 13:58:58 2019
// Host        : lsriw running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ald_write_video_bram_0_0_stub.v
// Design      : ald_write_video_bram_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "write_video_bram,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, de_in, hsync_in, vsync_in, rgb_in, addrb, dinb, 
  enb, rst, web)
/* synthesis syn_black_box black_box_pad_pin="clk,de_in,hsync_in,vsync_in,rgb_in[23:0],addrb[11:0],dinb[31:0],enb,rst,web" */;
  input clk;
  input de_in;
  input hsync_in;
  input vsync_in;
  input [23:0]rgb_in;
  output [11:0]addrb;
  output [31:0]dinb;
  output enb;
  output rst;
  output web;
endmodule
