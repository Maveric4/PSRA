-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Wed Mar 27 16:35:17 2019
-- Host        : lsriw running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ald_write_video_bram_0_0_sim_netlist.vhdl
-- Design      : ald_write_video_bram_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_write_video_bram is
  port (
    dina : out STD_LOGIC_VECTOR ( 23 downto 0 );
    wea : out STD_LOGIC;
    vsync_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    de_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_write_video_bram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_write_video_bram is
  signal data : STD_LOGIC;
  signal \data[23]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal r_frameH : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \r_frameH[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_10_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_2_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_3_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_4_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_5_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_6_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_7_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_8_n_0\ : STD_LOGIC;
  signal \r_frameH[10]_i_9_n_0\ : STD_LOGIC;
  signal \r_frameH[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameH[9]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameW[10]_i_3_n_0\ : STD_LOGIC;
  signal \r_frameW[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameW[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_frameW_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_frameW_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_frameW_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_frameW_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_frameW_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_frameW_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_frameW_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_frameW_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_frameW_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_frameW_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_frameW_reg_n_0_[9]\ : STD_LOGIC;
  signal we : STD_LOGIC;
  signal we0 : STD_LOGIC;
  signal we_i_1_n_0 : STD_LOGIC;
  signal \^wea\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_frameH[10]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_frameH[10]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_frameH[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_frameH[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_frameH[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_frameH[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_frameH[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_frameW[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_frameW[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_frameW[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_frameW[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_frameW[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_frameW[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_frameW[9]_i_1\ : label is "soft_lutpair2";
begin
  wea <= \^wea\;
\data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => de_in,
      I1 => \data[23]_i_2_n_0\,
      I2 => r_frameH(6),
      I3 => r_frameH(7),
      I4 => r_frameH(9),
      I5 => \r_frameW_reg_n_0_[6]\,
      O => data
    );
\data[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => r_frameH(8),
      I1 => r_frameH(10),
      I2 => \r_frameW_reg_n_0_[7]\,
      I3 => \r_frameW_reg_n_0_[10]\,
      I4 => \r_frameW_reg_n_0_[8]\,
      I5 => \r_frameW_reg_n_0_[9]\,
      O => \data[23]_i_2_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(0),
      Q => dina(0),
      R => '0'
    );
\data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(10),
      Q => dina(10),
      R => '0'
    );
\data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(11),
      Q => dina(11),
      R => '0'
    );
\data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(12),
      Q => dina(12),
      R => '0'
    );
\data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(13),
      Q => dina(13),
      R => '0'
    );
\data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(14),
      Q => dina(14),
      R => '0'
    );
\data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(15),
      Q => dina(15),
      R => '0'
    );
\data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(16),
      Q => dina(16),
      R => '0'
    );
\data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(17),
      Q => dina(17),
      R => '0'
    );
\data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(18),
      Q => dina(18),
      R => '0'
    );
\data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(19),
      Q => dina(19),
      R => '0'
    );
\data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(1),
      Q => dina(1),
      R => '0'
    );
\data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(20),
      Q => dina(20),
      R => '0'
    );
\data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(21),
      Q => dina(21),
      R => '0'
    );
\data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(22),
      Q => dina(22),
      R => '0'
    );
\data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(23),
      Q => dina(23),
      R => '0'
    );
\data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(2),
      Q => dina(2),
      R => '0'
    );
\data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(3),
      Q => dina(3),
      R => '0'
    );
\data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(4),
      Q => dina(4),
      R => '0'
    );
\data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(5),
      Q => dina(5),
      R => '0'
    );
\data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(6),
      Q => dina(6),
      R => '0'
    );
\data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(7),
      Q => dina(7),
      R => '0'
    );
\data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(8),
      Q => dina(8),
      R => '0'
    );
\data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => rgb_in(9),
      Q => dina(9),
      R => '0'
    );
\r_frameH[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_frameH(0),
      O => \r_frameH[0]_i_1_n_0\
    );
\r_frameH[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0CAA"
    )
        port map (
      I0 => vsync_in,
      I1 => \r_frameH[10]_i_4_n_0\,
      I2 => \r_frameH[10]_i_5_n_0\,
      I3 => \r_frameH[10]_i_6_n_0\,
      O => \r_frameH[10]_i_1_n_0\
    );
\r_frameH[10]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \r_frameW_reg_n_0_[8]\,
      I1 => \r_frameW_reg_n_0_[9]\,
      O => \r_frameH[10]_i_10_n_0\
    );
\r_frameH[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
        port map (
      I0 => vsync_in,
      I1 => \r_frameH[10]_i_7_n_0\,
      I2 => \r_frameW_reg_n_0_[10]\,
      I3 => \r_frameW_reg_n_0_[8]\,
      I4 => \r_frameW_reg_n_0_[9]\,
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
      I4 => \r_frameH[10]_i_8_n_0\,
      I5 => r_frameH(6),
      O => \r_frameH[10]_i_3_n_0\
    );
\r_frameH[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => r_frameH(4),
      I1 => r_frameH(7),
      I2 => r_frameH(5),
      I3 => r_frameH(9),
      I4 => r_frameH(6),
      I5 => \r_frameH[10]_i_9_n_0\,
      O => \r_frameH[10]_i_4_n_0\
    );
\r_frameH[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => r_frameH(2),
      I1 => r_frameH(1),
      I2 => r_frameH(0),
      I3 => r_frameH(3),
      O => \r_frameH[10]_i_5_n_0\
    );
\r_frameH[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => de_in,
      I1 => \r_frameH[10]_i_10_n_0\,
      I2 => \r_frameW_reg_n_0_[10]\,
      I3 => \r_frameW_reg_n_0_[6]\,
      I4 => \r_frameW[10]_i_3_n_0\,
      I5 => \r_frameW_reg_n_0_[7]\,
      O => \r_frameH[10]_i_6_n_0\
    );
\r_frameH[10]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \r_frameW_reg_n_0_[6]\,
      I1 => \r_frameW[10]_i_3_n_0\,
      I2 => \r_frameW_reg_n_0_[7]\,
      O => \r_frameH[10]_i_7_n_0\
    );
\r_frameH[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => r_frameH(4),
      I1 => r_frameH(2),
      I2 => r_frameH(1),
      I3 => r_frameH(0),
      I4 => r_frameH(3),
      I5 => r_frameH(5),
      O => \r_frameH[10]_i_8_n_0\
    );
\r_frameH[10]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r_frameH(10),
      I1 => r_frameH(8),
      O => \r_frameH[10]_i_9_n_0\
    );
\r_frameH[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_frameH(1),
      I1 => r_frameH(0),
      O => \r_frameH[1]_i_1_n_0\
    );
\r_frameH[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => r_frameH(2),
      I1 => r_frameH(0),
      I2 => r_frameH(1),
      O => \r_frameH[2]_i_1_n_0\
    );
\r_frameH[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F00FF80800000"
    )
        port map (
      I0 => r_frameH(0),
      I1 => r_frameH(1),
      I2 => r_frameH(2),
      I3 => vsync_in,
      I4 => \r_frameH[10]_i_6_n_0\,
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
      I2 => r_frameH(0),
      I3 => r_frameH(1),
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
      I3 => r_frameH(1),
      I4 => r_frameH(0),
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
      I2 => \r_frameH[10]_i_5_n_0\,
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
      I3 => \r_frameH[10]_i_5_n_0\,
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
      I3 => \r_frameH[10]_i_5_n_0\,
      I4 => r_frameH(4),
      I5 => r_frameH(6),
      O => \r_frameH[8]_i_1_n_0\
    );
\r_frameH[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => r_frameH(9),
      I1 => r_frameH(6),
      I2 => \r_frameH[10]_i_8_n_0\,
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
      I0 => \r_frameW_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\r_frameW[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vsync_in,
      I1 => de_in,
      O => we
    );
\r_frameW[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F068F0F0F0"
    )
        port map (
      I0 => \r_frameW_reg_n_0_[9]\,
      I1 => \r_frameW_reg_n_0_[8]\,
      I2 => \r_frameW_reg_n_0_[10]\,
      I3 => \r_frameW_reg_n_0_[6]\,
      I4 => \r_frameW_reg_n_0_[7]\,
      I5 => \r_frameW[10]_i_3_n_0\,
      O => p_0_in(10)
    );
\r_frameW[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \r_frameW_reg_n_0_[4]\,
      I1 => \r_frameW_reg_n_0_[2]\,
      I2 => \r_frameW_reg_n_0_[0]\,
      I3 => \r_frameW_reg_n_0_[1]\,
      I4 => \r_frameW_reg_n_0_[3]\,
      I5 => \r_frameW_reg_n_0_[5]\,
      O => \r_frameW[10]_i_3_n_0\
    );
\r_frameW[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_frameW_reg_n_0_[0]\,
      I1 => \r_frameW_reg_n_0_[1]\,
      O => p_0_in(1)
    );
\r_frameW[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \r_frameW_reg_n_0_[2]\,
      I1 => \r_frameW_reg_n_0_[0]\,
      I2 => \r_frameW_reg_n_0_[1]\,
      O => p_0_in(2)
    );
\r_frameW[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \r_frameW_reg_n_0_[3]\,
      I1 => \r_frameW_reg_n_0_[1]\,
      I2 => \r_frameW_reg_n_0_[0]\,
      I3 => \r_frameW_reg_n_0_[2]\,
      O => p_0_in(3)
    );
\r_frameW[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \r_frameW_reg_n_0_[4]\,
      I1 => \r_frameW_reg_n_0_[2]\,
      I2 => \r_frameW_reg_n_0_[0]\,
      I3 => \r_frameW_reg_n_0_[1]\,
      I4 => \r_frameW_reg_n_0_[3]\,
      O => p_0_in(4)
    );
\r_frameW[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \r_frameW_reg_n_0_[5]\,
      I1 => \r_frameW_reg_n_0_[3]\,
      I2 => \r_frameW_reg_n_0_[1]\,
      I3 => \r_frameW_reg_n_0_[0]\,
      I4 => \r_frameW_reg_n_0_[2]\,
      I5 => \r_frameW_reg_n_0_[4]\,
      O => p_0_in(5)
    );
\r_frameW[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_frameW_reg_n_0_[6]\,
      I1 => \r_frameW[10]_i_3_n_0\,
      O => \r_frameW[6]_i_1_n_0\
    );
\r_frameW[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \r_frameW_reg_n_0_[7]\,
      I1 => \r_frameW_reg_n_0_[6]\,
      I2 => \r_frameW[10]_i_3_n_0\,
      O => \r_frameW[7]_i_1_n_0\
    );
\r_frameW[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFFFF00B00000"
    )
        port map (
      I0 => \r_frameW_reg_n_0_[9]\,
      I1 => \r_frameW_reg_n_0_[10]\,
      I2 => \r_frameW_reg_n_0_[6]\,
      I3 => \r_frameW[10]_i_3_n_0\,
      I4 => \r_frameW_reg_n_0_[7]\,
      I5 => \r_frameW_reg_n_0_[8]\,
      O => p_0_in(8)
    );
\r_frameW[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \r_frameW_reg_n_0_[9]\,
      I1 => \r_frameW_reg_n_0_[6]\,
      I2 => \r_frameW[10]_i_3_n_0\,
      I3 => \r_frameW_reg_n_0_[7]\,
      I4 => \r_frameW_reg_n_0_[8]\,
      O => p_0_in(9)
    );
\r_frameW_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(0),
      Q => \r_frameW_reg_n_0_[0]\,
      R => we
    );
\r_frameW_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(10),
      Q => \r_frameW_reg_n_0_[10]\,
      R => we
    );
\r_frameW_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(1),
      Q => \r_frameW_reg_n_0_[1]\,
      R => we
    );
\r_frameW_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(2),
      Q => \r_frameW_reg_n_0_[2]\,
      R => we
    );
\r_frameW_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(3),
      Q => \r_frameW_reg_n_0_[3]\,
      R => we
    );
\r_frameW_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(4),
      Q => \r_frameW_reg_n_0_[4]\,
      R => we
    );
\r_frameW_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(5),
      Q => \r_frameW_reg_n_0_[5]\,
      R => we
    );
\r_frameW_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => \r_frameW[6]_i_1_n_0\,
      Q => \r_frameW_reg_n_0_[6]\,
      R => we
    );
\r_frameW_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => \r_frameW[7]_i_1_n_0\,
      Q => \r_frameW_reg_n_0_[7]\,
      R => we
    );
\r_frameW_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(8),
      Q => \r_frameW_reg_n_0_[8]\,
      R => we
    );
\r_frameW_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => de_in,
      D => p_0_in(9),
      Q => \r_frameW_reg_n_0_[9]\,
      R => we
    );
we_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0CA"
    )
        port map (
      I0 => \^wea\,
      I1 => we0,
      I2 => de_in,
      I3 => vsync_in,
      O => we_i_1_n_0
    );
we_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \r_frameW_reg_n_0_[6]\,
      I1 => r_frameH(9),
      I2 => r_frameH(7),
      I3 => r_frameH(6),
      I4 => \data[23]_i_2_n_0\,
      O => we0
    );
we_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => we_i_1_n_0,
      Q => \^wea\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    de_in : in STD_LOGIC;
    hsync_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    addra : out STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ena : out STD_LOGIC;
    wea : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ald_write_video_bram_0_0,write_video_bram,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "write_video_bram,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^dina\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ald_dvi2rgb_0_0_PixelClk, INSERT_VIP 0";
begin
  dina(31) <= \<const0>\;
  dina(30) <= \<const0>\;
  dina(29) <= \<const0>\;
  dina(28) <= \<const0>\;
  dina(27) <= \<const0>\;
  dina(26) <= \<const0>\;
  dina(25) <= \<const0>\;
  dina(24) <= \<const0>\;
  dina(23 downto 0) <= \^dina\(23 downto 0);
  ena <= \<const1>\;
  addra(0) <= 'Z';
  addra(1) <= 'Z';
  addra(2) <= 'Z';
  addra(3) <= 'Z';
  addra(4) <= 'Z';
  addra(5) <= 'Z';
  addra(6) <= 'Z';
  addra(7) <= 'Z';
  addra(8) <= 'Z';
  addra(9) <= 'Z';
  addra(10) <= 'Z';
  addra(11) <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_write_video_bram
     port map (
      clk => clk,
      de_in => de_in,
      dina(23 downto 0) => \^dina\(23 downto 0),
      rgb_in(23 downto 0) => rgb_in(23 downto 0),
      vsync_in => vsync_in,
      wea => wea
    );
end STRUCTURE;
