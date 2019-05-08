-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Wed Apr  3 16:57:32 2019
-- Host        : lsriw running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/lsriw/PSRA/DG/lab6/ald/ald.srcs/sources_1/bd/ald/ip/ald_shift_addr_0_0/ald_shift_addr_0_0_stub.vhdl
-- Design      : ald_shift_addr_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ald_shift_addr_0_0 is
  Port ( 
    addr_in : in STD_LOGIC_VECTOR ( 12 downto 0 );
    addr_out : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );

end ald_shift_addr_0_0;

architecture stub of ald_shift_addr_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "addr_in[12:0],addr_out[10:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "shift_addr,Vivado 2018.3";
begin
end;
