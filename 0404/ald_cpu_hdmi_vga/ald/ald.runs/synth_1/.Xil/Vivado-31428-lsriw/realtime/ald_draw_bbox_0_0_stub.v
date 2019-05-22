// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "draw_bbox,Vivado 2018.3" *)
module ald_draw_bbox_0_0(clk, de_in, hsync_in, vsync_in, rgb_in, bbox_0, 
  de_out, hsync_out, vsync_out, rgb_out);
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
