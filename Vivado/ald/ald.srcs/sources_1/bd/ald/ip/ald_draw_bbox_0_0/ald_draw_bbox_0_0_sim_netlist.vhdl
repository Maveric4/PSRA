-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Wed Mar 20 14:44:31 2019
-- Host        : lsriw running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/lsriw/PSRA/DG/lab4/ald/ald.srcs/sources_1/bd/ald/ip/ald_draw_bbox_0_0/ald_draw_bbox_0_0_sim_netlist.vhdl
-- Design      : ald_draw_bbox_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ald_draw_bbox_0_0_signle_bbox is
  port (
    de_out : out STD_LOGIC;
    hsync_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    rgb_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    de_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    hsync_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    bbox_0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    r_frameH : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ald_draw_bbox_0_0_signle_bbox : entity is "signle_bbox";
end ald_draw_bbox_0_0_signle_bbox;

architecture STRUCTURE of ald_draw_bbox_0_0_signle_bbox is
  signal \r_b[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_b[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_b[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_b[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_b[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_b[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_b[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_b[7]_i_1_n_0\ : STD_LOGIC;
  signal r_r : STD_LOGIC;
  signal r_r1 : STD_LOGIC;
  signal r_r4 : STD_LOGIC;
  signal r_r40_in : STD_LOGIC;
  signal r_r40_out : STD_LOGIC;
  signal r_r41_in : STD_LOGIC;
  signal r_r41_out : STD_LOGIC;
  signal r_r42_in : STD_LOGIC;
  signal r_r42_out : STD_LOGIC;
  signal \r_r4__10_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry__0_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry__0_n_1\ : STD_LOGIC;
  signal \r_r4__10_carry__0_n_2\ : STD_LOGIC;
  signal \r_r4__10_carry__0_n_3\ : STD_LOGIC;
  signal \r_r4__10_carry_i_1_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry_i_2_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry_i_3_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry_i_4_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry_i_5_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry_i_6_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry_i_7_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry_i_8_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry_n_0\ : STD_LOGIC;
  signal \r_r4__10_carry_n_1\ : STD_LOGIC;
  signal \r_r4__10_carry_n_2\ : STD_LOGIC;
  signal \r_r4__10_carry_n_3\ : STD_LOGIC;
  signal \r_r4__18_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_r4__18_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_r4__18_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_r4__18_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_r4__18_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \r_r4__18_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \r_r4__18_carry__0_n_1\ : STD_LOGIC;
  signal \r_r4__18_carry__0_n_2\ : STD_LOGIC;
  signal \r_r4__18_carry__0_n_3\ : STD_LOGIC;
  signal \r_r4__18_carry_i_1_n_0\ : STD_LOGIC;
  signal \r_r4__18_carry_i_2_n_0\ : STD_LOGIC;
  signal \r_r4__18_carry_i_3_n_0\ : STD_LOGIC;
  signal \r_r4__18_carry_i_4_n_0\ : STD_LOGIC;
  signal \r_r4__18_carry_i_5_n_0\ : STD_LOGIC;
  signal \r_r4__18_carry_i_6_n_0\ : STD_LOGIC;
  signal \r_r4__18_carry_i_7_n_0\ : STD_LOGIC;
  signal \r_r4__18_carry_i_8_n_0\ : STD_LOGIC;
  signal \r_r4__18_carry_n_0\ : STD_LOGIC;
  signal \r_r4__18_carry_n_1\ : STD_LOGIC;
  signal \r_r4__18_carry_n_2\ : STD_LOGIC;
  signal \r_r4__18_carry_n_3\ : STD_LOGIC;
  signal \r_r4__26_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_r4__26_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_r4__26_carry__0_n_3\ : STD_LOGIC;
  signal \r_r4__26_carry_i_1_n_0\ : STD_LOGIC;
  signal \r_r4__26_carry_i_2_n_0\ : STD_LOGIC;
  signal \r_r4__26_carry_i_3_n_0\ : STD_LOGIC;
  signal \r_r4__26_carry_i_4_n_0\ : STD_LOGIC;
  signal \r_r4__26_carry_n_0\ : STD_LOGIC;
  signal \r_r4__26_carry_n_1\ : STD_LOGIC;
  signal \r_r4__26_carry_n_2\ : STD_LOGIC;
  signal \r_r4__26_carry_n_3\ : STD_LOGIC;
  signal \r_r4__32_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_r4__32_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_r4__32_carry__0_n_3\ : STD_LOGIC;
  signal \r_r4__32_carry_i_1_n_0\ : STD_LOGIC;
  signal \r_r4__32_carry_i_2_n_0\ : STD_LOGIC;
  signal \r_r4__32_carry_i_3_n_0\ : STD_LOGIC;
  signal \r_r4__32_carry_i_4_n_0\ : STD_LOGIC;
  signal \r_r4__32_carry_n_0\ : STD_LOGIC;
  signal \r_r4__32_carry_n_1\ : STD_LOGIC;
  signal \r_r4__32_carry_n_2\ : STD_LOGIC;
  signal \r_r4__32_carry_n_3\ : STD_LOGIC;
  signal \r_r4__38_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_r4__38_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_r4__38_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_r4__38_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_r4__38_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \r_r4__38_carry__0_n_2\ : STD_LOGIC;
  signal \r_r4__38_carry__0_n_3\ : STD_LOGIC;
  signal \r_r4__38_carry_i_1_n_0\ : STD_LOGIC;
  signal \r_r4__38_carry_i_2_n_0\ : STD_LOGIC;
  signal \r_r4__38_carry_i_3_n_0\ : STD_LOGIC;
  signal \r_r4__38_carry_i_4_n_0\ : STD_LOGIC;
  signal \r_r4__38_carry_i_5_n_0\ : STD_LOGIC;
  signal \r_r4__38_carry_i_6_n_0\ : STD_LOGIC;
  signal \r_r4__38_carry_i_7_n_0\ : STD_LOGIC;
  signal \r_r4__38_carry_i_8_n_0\ : STD_LOGIC;
  signal \r_r4__38_carry_n_0\ : STD_LOGIC;
  signal \r_r4__38_carry_n_1\ : STD_LOGIC;
  signal \r_r4__38_carry_n_2\ : STD_LOGIC;
  signal \r_r4__38_carry_n_3\ : STD_LOGIC;
  signal \r_r4__45_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_r4__45_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_r4__45_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_r4__45_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_r4__45_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \r_r4__45_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \r_r4__45_carry__0_n_1\ : STD_LOGIC;
  signal \r_r4__45_carry__0_n_2\ : STD_LOGIC;
  signal \r_r4__45_carry__0_n_3\ : STD_LOGIC;
  signal \r_r4__45_carry_i_1_n_0\ : STD_LOGIC;
  signal \r_r4__45_carry_i_2_n_0\ : STD_LOGIC;
  signal \r_r4__45_carry_i_3_n_0\ : STD_LOGIC;
  signal \r_r4__45_carry_i_4_n_0\ : STD_LOGIC;
  signal \r_r4__45_carry_i_5_n_0\ : STD_LOGIC;
  signal \r_r4__45_carry_i_6_n_0\ : STD_LOGIC;
  signal \r_r4__45_carry_i_7_n_0\ : STD_LOGIC;
  signal \r_r4__45_carry_i_8_n_0\ : STD_LOGIC;
  signal \r_r4__45_carry_n_0\ : STD_LOGIC;
  signal \r_r4__45_carry_n_1\ : STD_LOGIC;
  signal \r_r4__45_carry_n_2\ : STD_LOGIC;
  signal \r_r4__45_carry_n_3\ : STD_LOGIC;
  signal \r_r4__4_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_r4__4_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_r4__4_carry__0_n_3\ : STD_LOGIC;
  signal \r_r4__4_carry_i_1_n_0\ : STD_LOGIC;
  signal \r_r4__4_carry_i_2_n_0\ : STD_LOGIC;
  signal \r_r4__4_carry_i_3_n_0\ : STD_LOGIC;
  signal \r_r4__4_carry_i_4_n_0\ : STD_LOGIC;
  signal \r_r4__4_carry_n_0\ : STD_LOGIC;
  signal \r_r4__4_carry_n_1\ : STD_LOGIC;
  signal \r_r4__4_carry_n_2\ : STD_LOGIC;
  signal \r_r4__4_carry_n_3\ : STD_LOGIC;
  signal \r_r4_carry__0_i_1_n_0\ : STD_LOGIC;
  signal r_r4_carry_i_1_n_0 : STD_LOGIC;
  signal r_r4_carry_i_2_n_0 : STD_LOGIC;
  signal r_r4_carry_i_3_n_0 : STD_LOGIC;
  signal r_r4_carry_i_4_n_0 : STD_LOGIC;
  signal r_r4_carry_n_0 : STD_LOGIC;
  signal r_r4_carry_n_1 : STD_LOGIC;
  signal r_r4_carry_n_2 : STD_LOGIC;
  signal r_r4_carry_n_3 : STD_LOGIC;
  signal \r_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_r[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_r[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_r[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_r[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_r[7]_i_4_n_0\ : STD_LOGIC;
  signal \NLW_r_r4__10_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_r4__10_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_r4__18_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_r4__18_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_r4__26_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_r4__26_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_r4__26_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_r4__32_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_r4__32_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_r4__32_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_r4__38_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_r4__38_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_r4__38_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_r4__45_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_r4__45_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_r4__4_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_r4__4_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_r4__4_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_r_r4_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_r4_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_r4_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\r_b[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEEEEEEEEE"
    )
        port map (
      I0 => rgb_in(0),
      I1 => \r_r[7]_i_3_n_0\,
      I2 => r_r42_out,
      I3 => r_r41_out,
      I4 => r_r42_in,
      I5 => r_r41_in,
      O => \r_b[0]_i_1_n_0\
    );
\r_b[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEEEEEEEEE"
    )
        port map (
      I0 => rgb_in(1),
      I1 => \r_r[7]_i_3_n_0\,
      I2 => r_r42_out,
      I3 => r_r41_out,
      I4 => r_r42_in,
      I5 => r_r41_in,
      O => \r_b[1]_i_1_n_0\
    );
\r_b[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEEEEEEEEE"
    )
        port map (
      I0 => rgb_in(2),
      I1 => \r_r[7]_i_3_n_0\,
      I2 => r_r42_out,
      I3 => r_r41_out,
      I4 => r_r42_in,
      I5 => r_r41_in,
      O => \r_b[2]_i_1_n_0\
    );
\r_b[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEEEEEEEEE"
    )
        port map (
      I0 => rgb_in(3),
      I1 => \r_r[7]_i_3_n_0\,
      I2 => r_r42_out,
      I3 => r_r41_out,
      I4 => r_r42_in,
      I5 => r_r41_in,
      O => \r_b[3]_i_1_n_0\
    );
\r_b[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEEEEEEEEE"
    )
        port map (
      I0 => rgb_in(4),
      I1 => \r_r[7]_i_3_n_0\,
      I2 => r_r42_out,
      I3 => r_r41_out,
      I4 => r_r42_in,
      I5 => r_r41_in,
      O => \r_b[4]_i_1_n_0\
    );
\r_b[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEEEEEEEEE"
    )
        port map (
      I0 => rgb_in(5),
      I1 => \r_r[7]_i_3_n_0\,
      I2 => r_r42_out,
      I3 => r_r41_out,
      I4 => r_r42_in,
      I5 => r_r41_in,
      O => \r_b[5]_i_1_n_0\
    );
\r_b[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEEEEEEEEE"
    )
        port map (
      I0 => rgb_in(6),
      I1 => \r_r[7]_i_3_n_0\,
      I2 => r_r42_out,
      I3 => r_r41_out,
      I4 => r_r42_in,
      I5 => r_r41_in,
      O => \r_b[6]_i_1_n_0\
    );
\r_b[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEEEEEEEEE"
    )
        port map (
      I0 => rgb_in(7),
      I1 => \r_r[7]_i_3_n_0\,
      I2 => r_r42_out,
      I3 => r_r41_out,
      I4 => r_r42_in,
      I5 => r_r41_in,
      O => \r_b[7]_i_1_n_0\
    );
\r_b_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_b[0]_i_1_n_0\,
      Q => rgb_out(0),
      R => r_r
    );
\r_b_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_b[1]_i_1_n_0\,
      Q => rgb_out(1),
      R => r_r
    );
\r_b_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_b[2]_i_1_n_0\,
      Q => rgb_out(2),
      R => r_r
    );
\r_b_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_b[3]_i_1_n_0\,
      Q => rgb_out(3),
      R => r_r
    );
\r_b_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_b[4]_i_1_n_0\,
      Q => rgb_out(4),
      R => r_r
    );
\r_b_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_b[5]_i_1_n_0\,
      Q => rgb_out(5),
      R => r_r
    );
\r_b_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_b[6]_i_1_n_0\,
      Q => rgb_out(6),
      R => r_r
    );
\r_b_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_b[7]_i_1_n_0\,
      Q => rgb_out(7),
      R => r_r
    );
r_de_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => de_in,
      Q => de_out,
      R => '0'
    );
\r_g[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8880"
    )
        port map (
      I0 => r_r41_in,
      I1 => r_r42_in,
      I2 => r_r41_out,
      I3 => r_r42_out,
      I4 => \r_r[7]_i_3_n_0\,
      O => r_r1
    );
\r_g_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(8),
      Q => rgb_out(8),
      R => r_r1
    );
\r_g_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(9),
      Q => rgb_out(9),
      R => r_r1
    );
\r_g_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(10),
      Q => rgb_out(10),
      R => r_r1
    );
\r_g_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(11),
      Q => rgb_out(11),
      R => r_r1
    );
\r_g_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(12),
      Q => rgb_out(12),
      R => r_r1
    );
\r_g_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(13),
      Q => rgb_out(13),
      R => r_r1
    );
\r_g_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(14),
      Q => rgb_out(14),
      R => r_r1
    );
\r_g_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rgb_in(15),
      Q => rgb_out(15),
      R => r_r1
    );
r_hsync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => hsync_in,
      Q => hsync_out,
      R => '0'
    );
\r_r4__10_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_r4__10_carry_n_0\,
      CO(2) => \r_r4__10_carry_n_1\,
      CO(1) => \r_r4__10_carry_n_2\,
      CO(0) => \r_r4__10_carry_n_3\,
      CYINIT => '0',
      DI(3) => \r_r4__10_carry_i_1_n_0\,
      DI(2) => \r_r4__10_carry_i_2_n_0\,
      DI(1) => \r_r4__10_carry_i_3_n_0\,
      DI(0) => \r_r4__10_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_r_r4__10_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_r4__10_carry_i_5_n_0\,
      S(2) => \r_r4__10_carry_i_6_n_0\,
      S(1) => \r_r4__10_carry_i_7_n_0\,
      S(0) => \r_r4__10_carry_i_8_n_0\
    );
\r_r4__10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_r4__10_carry_n_0\,
      CO(3) => \r_r4__10_carry__0_n_0\,
      CO(2) => \r_r4__10_carry__0_n_1\,
      CO(1) => \r_r4__10_carry__0_n_2\,
      CO(0) => \r_r4__10_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \r_r4__10_carry__0_i_1_n_0\,
      DI(2) => \r_r4__10_carry__0_i_2_n_0\,
      DI(1) => \r_r4__10_carry__0_i_3_n_0\,
      DI(0) => \r_r4__10_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_r_r4__10_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_r4__10_carry__0_i_5_n_0\,
      S(2) => \r_r4__10_carry__0_i_6_n_0\,
      S(1) => \r_r4__10_carry__0_i_7_n_0\,
      S(0) => \r_r4__10_carry__0_i_8_n_0\
    );
\r_r4__10_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bbox_0(31),
      I1 => bbox_0(30),
      O => \r_r4__10_carry__0_i_1_n_0\
    );
\r_r4__10_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bbox_0(29),
      I1 => bbox_0(28),
      O => \r_r4__10_carry__0_i_2_n_0\
    );
\r_r4__10_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => bbox_0(27),
      I1 => Q(10),
      I2 => bbox_0(26),
      O => \r_r4__10_carry__0_i_3_n_0\
    );
\r_r4__10_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => Q(9),
      I1 => bbox_0(25),
      I2 => bbox_0(24),
      I3 => Q(8),
      O => \r_r4__10_carry__0_i_4_n_0\
    );
\r_r4__10_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bbox_0(30),
      I1 => bbox_0(31),
      O => \r_r4__10_carry__0_i_5_n_0\
    );
\r_r4__10_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bbox_0(28),
      I1 => bbox_0(29),
      O => \r_r4__10_carry__0_i_6_n_0\
    );
\r_r4__10_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => bbox_0(27),
      I1 => bbox_0(26),
      I2 => Q(10),
      O => \r_r4__10_carry__0_i_7_n_0\
    );
\r_r4__10_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(25),
      I1 => Q(9),
      I2 => bbox_0(24),
      I3 => Q(8),
      O => \r_r4__10_carry__0_i_8_n_0\
    );
\r_r4__10_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => Q(7),
      I1 => bbox_0(23),
      I2 => bbox_0(22),
      I3 => Q(6),
      O => \r_r4__10_carry_i_1_n_0\
    );
\r_r4__10_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => Q(5),
      I1 => bbox_0(21),
      I2 => bbox_0(20),
      I3 => Q(4),
      O => \r_r4__10_carry_i_2_n_0\
    );
\r_r4__10_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => Q(3),
      I1 => bbox_0(19),
      I2 => bbox_0(18),
      I3 => Q(2),
      O => \r_r4__10_carry_i_3_n_0\
    );
\r_r4__10_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => Q(1),
      I1 => bbox_0(17),
      I2 => bbox_0(16),
      I3 => Q(0),
      O => \r_r4__10_carry_i_4_n_0\
    );
\r_r4__10_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(23),
      I1 => Q(7),
      I2 => bbox_0(22),
      I3 => Q(6),
      O => \r_r4__10_carry_i_5_n_0\
    );
\r_r4__10_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(21),
      I1 => Q(5),
      I2 => bbox_0(20),
      I3 => Q(4),
      O => \r_r4__10_carry_i_6_n_0\
    );
\r_r4__10_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(19),
      I1 => Q(3),
      I2 => bbox_0(18),
      I3 => Q(2),
      O => \r_r4__10_carry_i_7_n_0\
    );
\r_r4__10_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(17),
      I1 => Q(1),
      I2 => bbox_0(16),
      I3 => Q(0),
      O => \r_r4__10_carry_i_8_n_0\
    );
\r_r4__18_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_r4__18_carry_n_0\,
      CO(2) => \r_r4__18_carry_n_1\,
      CO(1) => \r_r4__18_carry_n_2\,
      CO(0) => \r_r4__18_carry_n_3\,
      CYINIT => '0',
      DI(3) => \r_r4__18_carry_i_1_n_0\,
      DI(2) => \r_r4__18_carry_i_2_n_0\,
      DI(1) => \r_r4__18_carry_i_3_n_0\,
      DI(0) => \r_r4__18_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_r_r4__18_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_r4__18_carry_i_5_n_0\,
      S(2) => \r_r4__18_carry_i_6_n_0\,
      S(1) => \r_r4__18_carry_i_7_n_0\,
      S(0) => \r_r4__18_carry_i_8_n_0\
    );
\r_r4__18_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_r4__18_carry_n_0\,
      CO(3) => r_r40_in,
      CO(2) => \r_r4__18_carry__0_n_1\,
      CO(1) => \r_r4__18_carry__0_n_2\,
      CO(0) => \r_r4__18_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \r_r4__18_carry__0_i_1_n_0\,
      DI(0) => \r_r4__18_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_r_r4__18_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_r4__18_carry__0_i_3_n_0\,
      S(2) => \r_r4__18_carry__0_i_4_n_0\,
      S(1) => \r_r4__18_carry__0_i_5_n_0\,
      S(0) => \r_r4__18_carry__0_i_6_n_0\
    );
\r_r4__18_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => bbox_0(11),
      I1 => Q(10),
      I2 => bbox_0(10),
      O => \r_r4__18_carry__0_i_1_n_0\
    );
\r_r4__18_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(9),
      I1 => bbox_0(9),
      I2 => Q(8),
      I3 => bbox_0(8),
      O => \r_r4__18_carry__0_i_2_n_0\
    );
\r_r4__18_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bbox_0(15),
      I1 => bbox_0(14),
      O => \r_r4__18_carry__0_i_3_n_0\
    );
\r_r4__18_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bbox_0(13),
      I1 => bbox_0(12),
      O => \r_r4__18_carry__0_i_4_n_0\
    );
\r_r4__18_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => bbox_0(11),
      I1 => bbox_0(10),
      I2 => Q(10),
      O => \r_r4__18_carry__0_i_5_n_0\
    );
\r_r4__18_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(9),
      I1 => Q(9),
      I2 => bbox_0(8),
      I3 => Q(8),
      O => \r_r4__18_carry__0_i_6_n_0\
    );
\r_r4__18_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(7),
      I1 => bbox_0(7),
      I2 => Q(6),
      I3 => bbox_0(6),
      O => \r_r4__18_carry_i_1_n_0\
    );
\r_r4__18_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(5),
      I1 => bbox_0(5),
      I2 => Q(4),
      I3 => bbox_0(4),
      O => \r_r4__18_carry_i_2_n_0\
    );
\r_r4__18_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(3),
      I1 => bbox_0(3),
      I2 => Q(2),
      I3 => bbox_0(2),
      O => \r_r4__18_carry_i_3_n_0\
    );
\r_r4__18_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(1),
      I1 => bbox_0(1),
      I2 => Q(0),
      I3 => bbox_0(0),
      O => \r_r4__18_carry_i_4_n_0\
    );
\r_r4__18_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(7),
      I1 => Q(7),
      I2 => bbox_0(6),
      I3 => Q(6),
      O => \r_r4__18_carry_i_5_n_0\
    );
\r_r4__18_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(5),
      I1 => Q(5),
      I2 => bbox_0(4),
      I3 => Q(4),
      O => \r_r4__18_carry_i_6_n_0\
    );
\r_r4__18_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(3),
      I1 => Q(3),
      I2 => bbox_0(2),
      I3 => Q(2),
      O => \r_r4__18_carry_i_7_n_0\
    );
\r_r4__18_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(1),
      I1 => Q(1),
      I2 => bbox_0(0),
      I3 => Q(0),
      O => \r_r4__18_carry_i_8_n_0\
    );
\r_r4__26_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_r4__26_carry_n_0\,
      CO(2) => \r_r4__26_carry_n_1\,
      CO(1) => \r_r4__26_carry_n_2\,
      CO(0) => \r_r4__26_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_r4__26_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_r4__26_carry_i_1_n_0\,
      S(2) => \r_r4__26_carry_i_2_n_0\,
      S(1) => \r_r4__26_carry_i_3_n_0\,
      S(0) => \r_r4__26_carry_i_4_n_0\
    );
\r_r4__26_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_r4__26_carry_n_0\,
      CO(3 downto 2) => \NLW_r_r4__26_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => r_r41_out,
      CO(0) => \r_r4__26_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_r4__26_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \r_r4__26_carry__0_i_1_n_0\,
      S(0) => \r_r4__26_carry__0_i_2_n_0\
    );
\r_r4__26_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bbox_0(31),
      O => \r_r4__26_carry__0_i_1_n_0\
    );
\r_r4__26_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => bbox_0(29),
      I1 => bbox_0(28),
      I2 => bbox_0(30),
      O => \r_r4__26_carry__0_i_2_n_0\
    );
\r_r4__26_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000009"
    )
        port map (
      I0 => Q(10),
      I1 => bbox_0(26),
      I2 => bbox_0(27),
      I3 => bbox_0(25),
      I4 => Q(9),
      O => \r_r4__26_carry_i_1_n_0\
    );
\r_r4__26_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(6),
      I1 => bbox_0(22),
      I2 => Q(7),
      I3 => bbox_0(23),
      I4 => bbox_0(24),
      I5 => Q(8),
      O => \r_r4__26_carry_i_2_n_0\
    );
\r_r4__26_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(4),
      I1 => bbox_0(20),
      I2 => Q(5),
      I3 => bbox_0(21),
      I4 => bbox_0(19),
      I5 => Q(3),
      O => \r_r4__26_carry_i_3_n_0\
    );
\r_r4__26_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(0),
      I1 => bbox_0(16),
      I2 => Q(1),
      I3 => bbox_0(17),
      I4 => bbox_0(18),
      I5 => Q(2),
      O => \r_r4__26_carry_i_4_n_0\
    );
\r_r4__32_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_r4__32_carry_n_0\,
      CO(2) => \r_r4__32_carry_n_1\,
      CO(1) => \r_r4__32_carry_n_2\,
      CO(0) => \r_r4__32_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_r4__32_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_r4__32_carry_i_1_n_0\,
      S(2) => \r_r4__32_carry_i_2_n_0\,
      S(1) => \r_r4__32_carry_i_3_n_0\,
      S(0) => \r_r4__32_carry_i_4_n_0\
    );
\r_r4__32_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_r4__32_carry_n_0\,
      CO(3 downto 2) => \NLW_r_r4__32_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => r_r42_out,
      CO(0) => \r_r4__32_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_r4__32_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \r_r4__32_carry__0_i_1_n_0\,
      S(0) => \r_r4__32_carry__0_i_2_n_0\
    );
\r_r4__32_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bbox_0(15),
      O => \r_r4__32_carry__0_i_1_n_0\
    );
\r_r4__32_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => bbox_0(12),
      I1 => bbox_0(13),
      I2 => bbox_0(14),
      O => \r_r4__32_carry__0_i_2_n_0\
    );
\r_r4__32_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000009"
    )
        port map (
      I0 => Q(10),
      I1 => bbox_0(10),
      I2 => bbox_0(11),
      I3 => bbox_0(9),
      I4 => Q(9),
      O => \r_r4__32_carry_i_1_n_0\
    );
\r_r4__32_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(6),
      I1 => bbox_0(6),
      I2 => Q(7),
      I3 => bbox_0(7),
      I4 => bbox_0(8),
      I5 => Q(8),
      O => \r_r4__32_carry_i_2_n_0\
    );
\r_r4__32_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(4),
      I1 => bbox_0(4),
      I2 => Q(5),
      I3 => bbox_0(5),
      I4 => bbox_0(3),
      I5 => Q(3),
      O => \r_r4__32_carry_i_3_n_0\
    );
\r_r4__32_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(0),
      I1 => bbox_0(0),
      I2 => Q(1),
      I3 => bbox_0(1),
      I4 => bbox_0(2),
      I5 => Q(2),
      O => \r_r4__32_carry_i_4_n_0\
    );
\r_r4__38_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_r4__38_carry_n_0\,
      CO(2) => \r_r4__38_carry_n_1\,
      CO(1) => \r_r4__38_carry_n_2\,
      CO(0) => \r_r4__38_carry_n_3\,
      CYINIT => '0',
      DI(3) => \r_r4__38_carry_i_1_n_0\,
      DI(2) => \r_r4__38_carry_i_2_n_0\,
      DI(1) => \r_r4__38_carry_i_3_n_0\,
      DI(0) => \r_r4__38_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_r_r4__38_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_r4__38_carry_i_5_n_0\,
      S(2) => \r_r4__38_carry_i_6_n_0\,
      S(1) => \r_r4__38_carry_i_7_n_0\,
      S(0) => \r_r4__38_carry_i_8_n_0\
    );
\r_r4__38_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_r4__38_carry_n_0\,
      CO(3) => \NLW_r_r4__38_carry__0_CO_UNCONNECTED\(3),
      CO(2) => r_r41_in,
      CO(1) => \r_r4__38_carry__0_n_2\,
      CO(0) => \r_r4__38_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => bbox_0(60),
      DI(1) => \r_r4__38_carry__0_i_1_n_0\,
      DI(0) => \r_r4__38_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_r_r4__38_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \r_r4__38_carry__0_i_3_n_0\,
      S(1) => \r_r4__38_carry__0_i_4_n_0\,
      S(0) => \r_r4__38_carry__0_i_5_n_0\
    );
\r_r4__38_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => bbox_0(59),
      I1 => r_frameH(10),
      I2 => bbox_0(58),
      O => \r_r4__38_carry__0_i_1_n_0\
    );
\r_r4__38_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => r_frameH(9),
      I1 => bbox_0(57),
      I2 => bbox_0(56),
      I3 => r_frameH(8),
      O => \r_r4__38_carry__0_i_2_n_0\
    );
\r_r4__38_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bbox_0(60),
      O => \r_r4__38_carry__0_i_3_n_0\
    );
\r_r4__38_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => bbox_0(59),
      I1 => bbox_0(58),
      I2 => r_frameH(10),
      O => \r_r4__38_carry__0_i_4_n_0\
    );
\r_r4__38_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(56),
      I1 => r_frameH(8),
      I2 => bbox_0(57),
      I3 => r_frameH(9),
      O => \r_r4__38_carry__0_i_5_n_0\
    );
\r_r4__38_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => r_frameH(7),
      I1 => bbox_0(55),
      I2 => bbox_0(54),
      I3 => r_frameH(6),
      O => \r_r4__38_carry_i_1_n_0\
    );
\r_r4__38_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => r_frameH(5),
      I1 => bbox_0(53),
      I2 => bbox_0(52),
      I3 => r_frameH(4),
      O => \r_r4__38_carry_i_2_n_0\
    );
\r_r4__38_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => r_frameH(3),
      I1 => bbox_0(51),
      I2 => bbox_0(50),
      I3 => r_frameH(2),
      O => \r_r4__38_carry_i_3_n_0\
    );
\r_r4__38_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => r_frameH(1),
      I1 => bbox_0(49),
      I2 => bbox_0(48),
      I3 => r_frameH(0),
      O => \r_r4__38_carry_i_4_n_0\
    );
\r_r4__38_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(55),
      I1 => r_frameH(7),
      I2 => bbox_0(54),
      I3 => r_frameH(6),
      O => \r_r4__38_carry_i_5_n_0\
    );
\r_r4__38_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(53),
      I1 => r_frameH(5),
      I2 => bbox_0(52),
      I3 => r_frameH(4),
      O => \r_r4__38_carry_i_6_n_0\
    );
\r_r4__38_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(50),
      I1 => r_frameH(2),
      I2 => bbox_0(51),
      I3 => r_frameH(3),
      O => \r_r4__38_carry_i_7_n_0\
    );
\r_r4__38_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(49),
      I1 => r_frameH(1),
      I2 => bbox_0(48),
      I3 => r_frameH(0),
      O => \r_r4__38_carry_i_8_n_0\
    );
\r_r4__45_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_r4__45_carry_n_0\,
      CO(2) => \r_r4__45_carry_n_1\,
      CO(1) => \r_r4__45_carry_n_2\,
      CO(0) => \r_r4__45_carry_n_3\,
      CYINIT => '0',
      DI(3) => \r_r4__45_carry_i_1_n_0\,
      DI(2) => \r_r4__45_carry_i_2_n_0\,
      DI(1) => \r_r4__45_carry_i_3_n_0\,
      DI(0) => \r_r4__45_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_r_r4__45_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_r4__45_carry_i_5_n_0\,
      S(2) => \r_r4__45_carry_i_6_n_0\,
      S(1) => \r_r4__45_carry_i_7_n_0\,
      S(0) => \r_r4__45_carry_i_8_n_0\
    );
\r_r4__45_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_r4__45_carry_n_0\,
      CO(3) => r_r42_in,
      CO(2) => \r_r4__45_carry__0_n_1\,
      CO(1) => \r_r4__45_carry__0_n_2\,
      CO(0) => \r_r4__45_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \r_r4__45_carry__0_i_1_n_0\,
      DI(0) => \r_r4__45_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_r_r4__45_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_r4__45_carry__0_i_3_n_0\,
      S(2) => \r_r4__45_carry__0_i_4_n_0\,
      S(1) => \r_r4__45_carry__0_i_5_n_0\,
      S(0) => \r_r4__45_carry__0_i_6_n_0\
    );
\r_r4__45_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => bbox_0(43),
      I1 => r_frameH(10),
      I2 => bbox_0(42),
      O => \r_r4__45_carry__0_i_1_n_0\
    );
\r_r4__45_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => r_frameH(9),
      I1 => bbox_0(41),
      I2 => r_frameH(8),
      I3 => bbox_0(40),
      O => \r_r4__45_carry__0_i_2_n_0\
    );
\r_r4__45_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bbox_0(47),
      I1 => bbox_0(46),
      O => \r_r4__45_carry__0_i_3_n_0\
    );
\r_r4__45_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bbox_0(45),
      I1 => bbox_0(44),
      O => \r_r4__45_carry__0_i_4_n_0\
    );
\r_r4__45_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => bbox_0(43),
      I1 => bbox_0(42),
      I2 => r_frameH(10),
      O => \r_r4__45_carry__0_i_5_n_0\
    );
\r_r4__45_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(40),
      I1 => r_frameH(8),
      I2 => bbox_0(41),
      I3 => r_frameH(9),
      O => \r_r4__45_carry__0_i_6_n_0\
    );
\r_r4__45_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => r_frameH(7),
      I1 => bbox_0(39),
      I2 => r_frameH(6),
      I3 => bbox_0(38),
      O => \r_r4__45_carry_i_1_n_0\
    );
\r_r4__45_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => r_frameH(5),
      I1 => bbox_0(37),
      I2 => r_frameH(4),
      I3 => bbox_0(36),
      O => \r_r4__45_carry_i_2_n_0\
    );
\r_r4__45_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => r_frameH(3),
      I1 => bbox_0(35),
      I2 => r_frameH(2),
      I3 => bbox_0(34),
      O => \r_r4__45_carry_i_3_n_0\
    );
\r_r4__45_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => r_frameH(1),
      I1 => bbox_0(33),
      I2 => r_frameH(0),
      I3 => bbox_0(32),
      O => \r_r4__45_carry_i_4_n_0\
    );
\r_r4__45_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(39),
      I1 => r_frameH(7),
      I2 => bbox_0(38),
      I3 => r_frameH(6),
      O => \r_r4__45_carry_i_5_n_0\
    );
\r_r4__45_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(37),
      I1 => r_frameH(5),
      I2 => bbox_0(36),
      I3 => r_frameH(4),
      O => \r_r4__45_carry_i_6_n_0\
    );
\r_r4__45_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(34),
      I1 => r_frameH(2),
      I2 => bbox_0(35),
      I3 => r_frameH(3),
      O => \r_r4__45_carry_i_7_n_0\
    );
\r_r4__45_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bbox_0(33),
      I1 => r_frameH(1),
      I2 => bbox_0(32),
      I3 => r_frameH(0),
      O => \r_r4__45_carry_i_8_n_0\
    );
\r_r4__4_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_r4__4_carry_n_0\,
      CO(2) => \r_r4__4_carry_n_1\,
      CO(1) => \r_r4__4_carry_n_2\,
      CO(0) => \r_r4__4_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_r4__4_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_r4__4_carry_i_1_n_0\,
      S(2) => \r_r4__4_carry_i_2_n_0\,
      S(1) => \r_r4__4_carry_i_3_n_0\,
      S(0) => \r_r4__4_carry_i_4_n_0\
    );
\r_r4__4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_r4__4_carry_n_0\,
      CO(3 downto 2) => \NLW_r_r4__4_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => r_r40_out,
      CO(0) => \r_r4__4_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_r4__4_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \r_r4__4_carry__0_i_1_n_0\,
      S(0) => \r_r4__4_carry__0_i_2_n_0\
    );
\r_r4__4_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bbox_0(47),
      O => \r_r4__4_carry__0_i_1_n_0\
    );
\r_r4__4_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => bbox_0(44),
      I1 => bbox_0(45),
      I2 => bbox_0(46),
      O => \r_r4__4_carry__0_i_2_n_0\
    );
\r_r4__4_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000009"
    )
        port map (
      I0 => r_frameH(10),
      I1 => bbox_0(42),
      I2 => bbox_0(43),
      I3 => bbox_0(41),
      I4 => r_frameH(9),
      O => \r_r4__4_carry_i_1_n_0\
    );
\r_r4__4_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => bbox_0(40),
      I1 => r_frameH(8),
      I2 => r_frameH(6),
      I3 => bbox_0(38),
      I4 => r_frameH(7),
      I5 => bbox_0(39),
      O => \r_r4__4_carry_i_2_n_0\
    );
\r_r4__4_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_frameH(4),
      I1 => bbox_0(36),
      I2 => r_frameH(5),
      I3 => bbox_0(37),
      I4 => bbox_0(35),
      I5 => r_frameH(3),
      O => \r_r4__4_carry_i_3_n_0\
    );
\r_r4__4_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => bbox_0(34),
      I1 => r_frameH(2),
      I2 => r_frameH(0),
      I3 => bbox_0(32),
      I4 => r_frameH(1),
      I5 => bbox_0(33),
      O => \r_r4__4_carry_i_4_n_0\
    );
r_r4_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_r4_carry_n_0,
      CO(2) => r_r4_carry_n_1,
      CO(1) => r_r4_carry_n_2,
      CO(0) => r_r4_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_r_r4_carry_O_UNCONNECTED(3 downto 0),
      S(3) => r_r4_carry_i_1_n_0,
      S(2) => r_r4_carry_i_2_n_0,
      S(1) => r_r4_carry_i_3_n_0,
      S(0) => r_r4_carry_i_4_n_0
    );
\r_r4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_r4_carry_n_0,
      CO(3 downto 1) => \NLW_r_r4_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => r_r4,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_r4_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \r_r4_carry__0_i_1_n_0\
    );
\r_r4_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bbox_0(60),
      O => \r_r4_carry__0_i_1_n_0\
    );
r_r4_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000009"
    )
        port map (
      I0 => r_frameH(10),
      I1 => bbox_0(58),
      I2 => bbox_0(59),
      I3 => bbox_0(57),
      I4 => r_frameH(9),
      O => r_r4_carry_i_1_n_0
    );
r_r4_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => bbox_0(56),
      I1 => r_frameH(8),
      I2 => r_frameH(6),
      I3 => bbox_0(54),
      I4 => r_frameH(7),
      I5 => bbox_0(55),
      O => r_r4_carry_i_2_n_0
    );
r_r4_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_frameH(4),
      I1 => bbox_0(52),
      I2 => r_frameH(5),
      I3 => bbox_0(53),
      I4 => bbox_0(51),
      I5 => r_frameH(3),
      O => r_r4_carry_i_3_n_0
    );
r_r4_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => bbox_0(50),
      I1 => r_frameH(2),
      I2 => r_frameH(0),
      I3 => bbox_0(48),
      I4 => r_frameH(1),
      I5 => bbox_0(49),
      O => r_r4_carry_i_4_n_0
    );
\r_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => rgb_in(16),
      I1 => \r_r[7]_i_3_n_0\,
      I2 => r_r42_out,
      I3 => r_r41_out,
      I4 => r_r42_in,
      I5 => r_r41_in,
      O => \r_r[0]_i_1_n_0\
    );
\r_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => rgb_in(17),
      I1 => \r_r[7]_i_3_n_0\,
      I2 => r_r42_out,
      I3 => r_r41_out,
      I4 => r_r42_in,
      I5 => r_r41_in,
      O => \r_r[1]_i_1_n_0\
    );
\r_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => rgb_in(18),
      I1 => \r_r[7]_i_3_n_0\,
      I2 => r_r42_out,
      I3 => r_r41_out,
      I4 => r_r42_in,
      I5 => r_r41_in,
      O => \r_r[2]_i_1_n_0\
    );
\r_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => rgb_in(19),
      I1 => \r_r[7]_i_3_n_0\,
      I2 => r_r42_out,
      I3 => r_r41_out,
      I4 => r_r42_in,
      I5 => r_r41_in,
      O => \r_r[3]_i_1_n_0\
    );
\r_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => rgb_in(20),
      I1 => \r_r[7]_i_3_n_0\,
      I2 => r_r42_out,
      I3 => r_r41_out,
      I4 => r_r42_in,
      I5 => r_r41_in,
      O => \r_r[4]_i_1_n_0\
    );
\r_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => rgb_in(21),
      I1 => \r_r[7]_i_3_n_0\,
      I2 => r_r42_out,
      I3 => r_r41_out,
      I4 => r_r42_in,
      I5 => r_r41_in,
      O => \r_r[5]_i_1_n_0\
    );
\r_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => rgb_in(22),
      I1 => \r_r[7]_i_3_n_0\,
      I2 => r_r42_out,
      I3 => r_r41_out,
      I4 => r_r42_in,
      I5 => r_r41_in,
      O => \r_r[6]_i_1_n_0\
    );
\r_r[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000E00"
    )
        port map (
      I0 => \r_r[7]_i_3_n_0\,
      I1 => \r_r[7]_i_4_n_0\,
      I2 => bbox_0(63),
      I3 => bbox_0(61),
      I4 => bbox_0(62),
      O => r_r
    );
\r_r[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => rgb_in(23),
      I1 => \r_r[7]_i_3_n_0\,
      I2 => r_r42_out,
      I3 => r_r41_out,
      I4 => r_r42_in,
      I5 => r_r41_in,
      O => \r_r[7]_i_2_n_0\
    );
\r_r[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => r_r40_out,
      I1 => r_r4,
      I2 => r_r40_in,
      I3 => \r_r4__10_carry__0_n_0\,
      O => \r_r[7]_i_3_n_0\
    );
\r_r[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => r_r42_out,
      I1 => r_r41_out,
      I2 => r_r42_in,
      I3 => r_r41_in,
      O => \r_r[7]_i_4_n_0\
    );
\r_r_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_r[0]_i_1_n_0\,
      Q => rgb_out(16),
      S => r_r
    );
\r_r_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_r[1]_i_1_n_0\,
      Q => rgb_out(17),
      S => r_r
    );
\r_r_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_r[2]_i_1_n_0\,
      Q => rgb_out(18),
      S => r_r
    );
\r_r_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_r[3]_i_1_n_0\,
      Q => rgb_out(19),
      S => r_r
    );
\r_r_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_r[4]_i_1_n_0\,
      Q => rgb_out(20),
      S => r_r
    );
\r_r_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_r[5]_i_1_n_0\,
      Q => rgb_out(21),
      S => r_r
    );
\r_r_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_r[6]_i_1_n_0\,
      Q => rgb_out(22),
      S => r_r
    );
\r_r_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_r[7]_i_2_n_0\,
      Q => rgb_out(23),
      S => r_r
    );
r_vsync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vsync_in,
      Q => vsync_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ald_draw_bbox_0_0_draw_bbox is
  port (
    rgb_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    de_out : out STD_LOGIC;
    hsync_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vsync_in : in STD_LOGIC;
    bbox_0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    de_in : in STD_LOGIC;
    hsync_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ald_draw_bbox_0_0_draw_bbox : entity is "draw_bbox";
end ald_draw_bbox_0_0_draw_bbox;

architecture STRUCTURE of ald_draw_bbox_0_0_draw_bbox is
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal r_frameH : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \r_frameH[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_2_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_3_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_4_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_5_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_6_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_7_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_8_n_0\ : STD_LOGIC;
  signal \r_frameH[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_frameH[9]_i_1_n_0\ : STD_LOGIC;
  signal r_frameW : STD_LOGIC;
  signal \r_frameW[10]_i_3_n_0\ : STD_LOGIC;
  signal \r_frameW[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameW[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameW_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_frameH[10]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_frameH[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_frameH[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_frameH[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_frameH[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_frameH[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_frameH[8]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_frameW[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_frameW[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_frameW[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_frameW[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_frameW[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_frameW[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_frameW[9]_i_1\ : label is "soft_lutpair3";
begin
\genblk1[0].bbox_i\: entity work.ald_draw_bbox_0_0_signle_bbox
     port map (
      Q(10 downto 0) => \r_frameW_reg__0\(10 downto 0),
      bbox_0(63 downto 0) => bbox_0(63 downto 0),
      clk => clk,
      de_in => de_in,
      de_out => de_out,
      hsync_in => hsync_in,
      hsync_out => hsync_out,
      r_frameH(10 downto 0) => r_frameH(10 downto 0),
      rgb_in(23 downto 0) => rgb_in(23 downto 0),
      rgb_out(23 downto 0) => rgb_out(23 downto 0),
      vsync_in => vsync_in,
      vsync_out => vsync_out
    );
\r_frameH[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_frameH(0),
      O => \r_frameH[0]_i_1_n_0\
    );
\r_frameH[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => vsync_in,
      I1 => \r_frameH[10]_i_4_n_0\,
      I2 => \r_frameH[10]_i_5_n_0\,
      O => \r_frameH[10]_i_1_n_0\
    );
\r_frameH[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAAAAAAA"
    )
        port map (
      I0 => vsync_in,
      I1 => \r_frameH[10]_i_6_n_0\,
      I2 => \r_frameW_reg__0\(9),
      I3 => \r_frameW_reg__0\(10),
      I4 => \r_frameW_reg__0\(8),
      I5 => de_in,
      O => \r_frameH[10]_i_2_n_0\
    );
\r_frameH[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => r_frameH(10),
      I1 => r_frameH(9),
      I2 => r_frameH(8),
      I3 => r_frameH(7),
      I4 => \r_frameH[10]_i_7_n_0\,
      I5 => r_frameH(6),
      O => \r_frameH[10]_i_3_n_0\
    );
\r_frameH[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \r_frameH[10]_i_8_n_0\,
      I1 => r_frameH(8),
      I2 => r_frameH(9),
      I3 => r_frameH(5),
      I4 => \r_frameH[8]_i_2_n_0\,
      O => \r_frameH[10]_i_4_n_0\
    );
\r_frameH[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => de_in,
      I1 => \r_frameW_reg__0\(8),
      I2 => \r_frameW_reg__0\(10),
      I3 => \r_frameW_reg__0\(9),
      I4 => \r_frameH[10]_i_6_n_0\,
      O => \r_frameH[10]_i_5_n_0\
    );
\r_frameH[10]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \r_frameW_reg__0\(6),
      I1 => \r_frameW[10]_i_3_n_0\,
      I2 => \r_frameW_reg__0\(7),
      O => \r_frameH[10]_i_6_n_0\
    );
\r_frameH[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => r_frameH(4),
      I1 => r_frameH(2),
      I2 => r_frameH(0),
      I3 => r_frameH(1),
      I4 => r_frameH(3),
      I5 => r_frameH(5),
      O => \r_frameH[10]_i_7_n_0\
    );
\r_frameH[10]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => r_frameH(7),
      I1 => r_frameH(4),
      I2 => r_frameH(6),
      I3 => r_frameH(10),
      O => \r_frameH[10]_i_8_n_0\
    );
\r_frameH[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_frameH(0),
      I1 => r_frameH(1),
      O => \r_frameH[1]_i_1_n_0\
    );
\r_frameH[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => r_frameH(2),
      I1 => r_frameH(1),
      I2 => r_frameH(0),
      O => \r_frameH[2]_i_1_n_0\
    );
\r_frameH[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F00FF80800000"
    )
        port map (
      I0 => r_frameH(1),
      I1 => r_frameH(0),
      I2 => r_frameH(2),
      I3 => vsync_in,
      I4 => \r_frameH[10]_i_5_n_0\,
      I5 => r_frameH(3),
      O => \r_frameH[3]_i_1_n_0\
    );
\r_frameH[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => r_frameH(4),
      I1 => r_frameH(3),
      I2 => r_frameH(1),
      I3 => r_frameH(0),
      I4 => r_frameH(2),
      O => \r_frameH[4]_i_1_n_0\
    );
\r_frameH[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => r_frameH(5),
      I1 => r_frameH(4),
      I2 => r_frameH(2),
      I3 => r_frameH(0),
      I4 => r_frameH(1),
      I5 => r_frameH(3),
      O => \r_frameH[5]_i_1_n_0\
    );
\r_frameH[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => r_frameH(6),
      I1 => r_frameH(5),
      I2 => \r_frameH[8]_i_2_n_0\,
      I3 => r_frameH(4),
      O => \r_frameH[6]_i_1_n_0\
    );
\r_frameH[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => r_frameH(7),
      I1 => r_frameH(6),
      I2 => r_frameH(4),
      I3 => \r_frameH[8]_i_2_n_0\,
      I4 => r_frameH(5),
      O => \r_frameH[7]_i_1_n_0\
    );
\r_frameH[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => r_frameH(8),
      I1 => r_frameH(7),
      I2 => r_frameH(5),
      I3 => \r_frameH[8]_i_2_n_0\,
      I4 => r_frameH(4),
      I5 => r_frameH(6),
      O => \r_frameH[8]_i_1_n_0\
    );
\r_frameH[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => r_frameH(2),
      I1 => r_frameH(0),
      I2 => r_frameH(1),
      I3 => r_frameH(3),
      O => \r_frameH[8]_i_2_n_0\
    );
\r_frameH[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => r_frameH(9),
      I1 => r_frameH(6),
      I2 => \r_frameH[10]_i_7_n_0\,
      I3 => r_frameH(7),
      I4 => r_frameH(8),
      O => \r_frameH[9]_i_1_n_0\
    );
\r_frameH_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_frameH[10]_i_2_n_0\,
      D => \r_frameH[0]_i_1_n_0\,
      Q => r_frameH(0),
      R => \r_frameH[10]_i_1_n_0\
    );
\r_frameH_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_frameH[10]_i_2_n_0\,
      D => \r_frameH[10]_i_3_n_0\,
      Q => r_frameH(10),
      R => \r_frameH[10]_i_1_n_0\
    );
\r_frameH_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_frameH[10]_i_2_n_0\,
      D => \r_frameH[1]_i_1_n_0\,
      Q => r_frameH(1),
      R => \r_frameH[10]_i_1_n_0\
    );
\r_frameH_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_frameH[10]_i_2_n_0\,
      D => \r_frameH[2]_i_1_n_0\,
      Q => r_frameH(2),
      R => \r_frameH[10]_i_1_n_0\
    );
\r_frameH_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_frameH[3]_i_1_n_0\,
      Q => r_frameH(3),
      R => '0'
    );
\r_frameH_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_frameH[10]_i_2_n_0\,
      D => \r_frameH[4]_i_1_n_0\,
      Q => r_frameH(4),
      R => \r_frameH[10]_i_1_n_0\
    );
\r_frameH_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_frameH[10]_i_2_n_0\,
      D => \r_frameH[5]_i_1_n_0\,
      Q => r_frameH(5),
      R => \r_frameH[10]_i_1_n_0\
    );
\r_frameH_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_frameH[10]_i_2_n_0\,
      D => \r_frameH[6]_i_1_n_0\,
      Q => r_frameH(6),
      R => \r_frameH[10]_i_1_n_0\
    );
\r_frameH_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_frameH[10]_i_2_n_0\,
      D => \r_frameH[7]_i_1_n_0\,
      Q => r_frameH(7),
      R => \r_frameH[10]_i_1_n_0\
    );
\r_frameH_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_frameH[10]_i_2_n_0\,
      D => \r_frameH[8]_i_1_n_0\,
      Q => r_frameH(8),
      R => \r_frameH[10]_i_1_n_0\
    );
\r_frameH_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_frameH[10]_i_2_n_0\,
      D => \r_frameH[9]_i_1_n_0\,
      Q => r_frameH(9),
      R => \r_frameH[10]_i_1_n_0\
    );
\r_frameW[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_frameW_reg__0\(0),
      O => p_0_in(0)
    );
\r_frameW[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vsync_in,
      I1 => de_in,
      O => r_frameW
    );
\r_frameW[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F078F0F070"
    )
        port map (
      I0 => \r_frameW_reg__0\(6),
      I1 => \r_frameW_reg__0\(7),
      I2 => \r_frameW_reg__0\(10),
      I3 => \r_frameW_reg__0\(9),
      I4 => \r_frameW_reg__0\(8),
      I5 => \r_frameW[10]_i_3_n_0\,
      O => p_0_in(10)
    );
\r_frameW[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \r_frameW_reg__0\(4),
      I1 => \r_frameW_reg__0\(2),
      I2 => \r_frameW_reg__0\(1),
      I3 => \r_frameW_reg__0\(0),
      I4 => \r_frameW_reg__0\(3),
      I5 => \r_frameW_reg__0\(5),
      O => \r_frameW[10]_i_3_n_0\
    );
\r_frameW[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_frameW_reg__0\(1),
      I1 => \r_frameW_reg__0\(0),
      O => p_0_in(1)
    );
\r_frameW[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \r_frameW_reg__0\(2),
      I1 => \r_frameW_reg__0\(1),
      I2 => \r_frameW_reg__0\(0),
      O => p_0_in(2)
    );
\r_frameW[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \r_frameW_reg__0\(3),
      I1 => \r_frameW_reg__0\(0),
      I2 => \r_frameW_reg__0\(1),
      I3 => \r_frameW_reg__0\(2),
      O => p_0_in(3)
    );
\r_frameW[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \r_frameW_reg__0\(4),
      I1 => \r_frameW_reg__0\(2),
      I2 => \r_frameW_reg__0\(1),
      I3 => \r_frameW_reg__0\(0),
      I4 => \r_frameW_reg__0\(3),
      O => p_0_in(4)
    );
\r_frameW[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \r_frameW_reg__0\(5),
      I1 => \r_frameW_reg__0\(3),
      I2 => \r_frameW_reg__0\(0),
      I3 => \r_frameW_reg__0\(1),
      I4 => \r_frameW_reg__0\(2),
      I5 => \r_frameW_reg__0\(4),
      O => p_0_in(5)
    );
\r_frameW[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_frameW_reg__0\(6),
      I1 => \r_frameW[10]_i_3_n_0\,
      O => \r_frameW[6]_i_1_n_0\
    );
\r_frameW[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \r_frameW_reg__0\(7),
      I1 => \r_frameW_reg__0\(6),
      I2 => \r_frameW[10]_i_3_n_0\,
      O => \r_frameW[7]_i_1_n_0\
    );
\r_frameW[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFFFF00D00000"
    )
        port map (
      I0 => \r_frameW_reg__0\(10),
      I1 => \r_frameW_reg__0\(9),
      I2 => \r_frameW_reg__0\(6),
      I3 => \r_frameW[10]_i_3_n_0\,
      I4 => \r_frameW_reg__0\(7),
      I5 => \r_frameW_reg__0\(8),
      O => p_0_in(8)
    );
\r_frameW[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \r_frameW_reg__0\(9),
      I1 => \r_frameW_reg__0\(6),
      I2 => \r_frameW[10]_i_3_n_0\,
      I3 => \r_frameW_reg__0\(7),
      I4 => \r_frameW_reg__0\(8),
      O => p_0_in(9)
    );
\r_frameW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(0),
      Q => \r_frameW_reg__0\(0),
      R => r_frameW
    );
\r_frameW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(10),
      Q => \r_frameW_reg__0\(10),
      R => r_frameW
    );
\r_frameW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(1),
      Q => \r_frameW_reg__0\(1),
      R => r_frameW
    );
\r_frameW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(2),
      Q => \r_frameW_reg__0\(2),
      R => r_frameW
    );
\r_frameW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(3),
      Q => \r_frameW_reg__0\(3),
      R => r_frameW
    );
\r_frameW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(4),
      Q => \r_frameW_reg__0\(4),
      R => r_frameW
    );
\r_frameW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(5),
      Q => \r_frameW_reg__0\(5),
      R => r_frameW
    );
\r_frameW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => \r_frameW[6]_i_1_n_0\,
      Q => \r_frameW_reg__0\(6),
      R => r_frameW
    );
\r_frameW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => \r_frameW[7]_i_1_n_0\,
      Q => \r_frameW_reg__0\(7),
      R => r_frameW
    );
\r_frameW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(8),
      Q => \r_frameW_reg__0\(8),
      R => r_frameW
    );
\r_frameW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(9),
      Q => \r_frameW_reg__0\(9),
      R => r_frameW
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ald_draw_bbox_0_0 is
  port (
    clk : in STD_LOGIC;
    de_in : in STD_LOGIC;
    hsync_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    bbox_0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    de_out : out STD_LOGIC;
    hsync_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    rgb_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ald_draw_bbox_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ald_draw_bbox_0_0 : entity is "ald_draw_bbox_0_0,draw_bbox,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ald_draw_bbox_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ald_draw_bbox_0_0 : entity is "draw_bbox,Vivado 2018.3";
end ald_draw_bbox_0_0;

architecture STRUCTURE of ald_draw_bbox_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ald_dvi2rgb_0_0_PixelClk, INSERT_VIP 0";
begin
inst: entity work.ald_draw_bbox_0_0_draw_bbox
     port map (
      bbox_0(63 downto 0) => bbox_0(63 downto 0),
      clk => clk,
      de_in => de_in,
      de_out => de_out,
      hsync_in => hsync_in,
      hsync_out => hsync_out,
      rgb_in(23 downto 0) => rgb_in(23 downto 0),
      rgb_out(23 downto 0) => rgb_out(23 downto 0),
      vsync_in => vsync_in,
      vsync_out => vsync_out
    );
end STRUCTURE;
