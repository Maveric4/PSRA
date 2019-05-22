-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Thu Apr  4 13:58:59 2019
-- Host        : lsriw running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/lsriw/HSVS/0404/ald_cpu_hdmi_vga/ald/ald.srcs/sources_1/bd/ald/ip/ald_write_video_bram_0_0/ald_write_video_bram_0_0_stub.vhdl
-- Design      : ald_write_video_bram_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ald_write_video_bram_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    de_in : in STD_LOGIC;
    hsync_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    addrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    dinb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    enb : out STD_LOGIC;
    rst : out STD_LOGIC;
    web : out STD_LOGIC
  );

end ald_write_video_bram_0_0;

architecture stub of ald_write_video_bram_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,de_in,hsync_in,vsync_in,rgb_in[23:0],addrb[11:0],dinb[31:0],enb,rst,web";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "write_video_bram,Vivado 2018.3";
begin
end;
