-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Wed Apr  3 16:57:32 2019
-- Host        : lsriw running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/lsriw/PSRA/DG/lab6/ald/ald.srcs/sources_1/bd/ald/ip/ald_shift_addr_0_0/ald_shift_addr_0_0_sim_netlist.vhdl
-- Design      : ald_shift_addr_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ald_shift_addr_0_0 is
  port (
    addr_in : in STD_LOGIC_VECTOR ( 12 downto 0 );
    addr_out : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ald_shift_addr_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ald_shift_addr_0_0 : entity is "ald_shift_addr_0_0,shift_addr,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ald_shift_addr_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ald_shift_addr_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ald_shift_addr_0_0 : entity is "shift_addr,Vivado 2018.3";
end ald_shift_addr_0_0;

architecture STRUCTURE of ald_shift_addr_0_0 is
  signal \^addr_in\ : STD_LOGIC_VECTOR ( 12 downto 0 );
begin
  \^addr_in\(12 downto 2) <= addr_in(12 downto 2);
  addr_out(10 downto 0) <= \^addr_in\(12 downto 2);
end STRUCTURE;
