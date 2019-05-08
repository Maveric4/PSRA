// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Mar 20 14:44:30 2019
// Host        : lsriw running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/lsriw/PSRA/DG/lab4/ald/ald.srcs/sources_1/bd/ald/ip/ald_draw_bbox_0_0/ald_draw_bbox_0_0_stub.v
// Design      : ald_draw_bbox_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "draw_bbox,Vivado 2018.3" *)
module ald_draw_bbox_0_0(clk, de_in, hsync_in, vsync_in, rgb_in, bbox_0, 
  de_out, hsync_out, vsync_out, rgb_out)
/* synthesis syn_black_box black_box_pad_pin="clk,de_in,hsync_in,vsync_in,rgb_in[23:0],bbox_0[63:0],de_out,hsync_out,vsync_out,rgb_out[23:0]" */;
  input clk;
  input de_in;
  input hsync_in;
  input vsync_in;
  input [23:0]rgb_in;
  input [63:0]bbox_0;
  output de_out;
  output hsync_out;
  output vsync_out;
  output [23:0]rgb_out;
endmodule
