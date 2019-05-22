// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "write_video_bram,Vivado 2018.3" *)
module ald_write_video_bram_0_0(clk, de_in, hsync_in, vsync_in, rgb_in, addrb, dinb, 
  enb, rst, web);
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
