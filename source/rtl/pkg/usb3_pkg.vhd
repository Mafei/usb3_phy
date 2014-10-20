-------------------------------------------------------------------------------
-- Title      : usb3 VHDL package
-- Project    : 
-------------------------------------------------------------------------------
-- File       : usb3_pkg.vhd
-- Author     : amr  <amr@laptop>
-- Company    : 
-- Created    : 2014-10-17
-- Last update: 20-10-2014
-- Platform   : 
-- Standard   : VHDL'87
-------------------------------------------------------------------------------
-- Description: a VHDL listing constant and functions used in the RTL
-------------------------------------------------------------------------------
-- Copyright (c) 2014 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2014-10-17  1.0      amr     Created
-------------------------------------------------------------------------------

library ieee;
use ieee.numeric_bit.all;
use ieee.std_logic_1164.all;

package usb3_pkg is

  -- 8b/10b encoded negative disparity
  constant eD0_0_n  : std_logic_vector(9 downto 0) := "10" & x"74";
  constant eD1_0_n  : std_logic_vector(9 downto 0) := "01" & x"d4";
  constant eD2_0_n  : std_logic_vector(9 downto 0) := "10" & x"d4";
  constant eD3_0_n  : std_logic_vector(9 downto 0) := "11" & x"1b";
  constant eD4_0_n  : std_logic_vector(9 downto 0) := "11" & x"54";
  constant eD5_0_n  : std_logic_vector(9 downto 0) := "10" & x"9b";
  constant eD6_0_n  : std_logic_vector(9 downto 0) := "01" & x"9b";
  constant eD7_0_n  : std_logic_vector(9 downto 0) := "11" & x"8b";
  constant eD8_0_n  : std_logic_vector(9 downto 0) := "11" & x"94";
  constant eD9_0_n  : std_logic_vector(9 downto 0) := "10" & x"5b";
  constant eD10_0_n : std_logic_vector(9 downto 0) := "01" & x"5b";
  constant eD11_0_n : std_logic_vector(9 downto 0) := "11" & x"4b";
  constant eD12_0_n : std_logic_vector(9 downto 0) := "00" & x"db";
  constant eD13_0_n : std_logic_vector(9 downto 0) := "10" & x"cb";
  constant eD14_0_n : std_logic_vector(9 downto 0) := "01" & x"cb";
  constant eD15_0_n : std_logic_vector(9 downto 0) := "01" & x"74";
  constant eD16_0_n : std_logic_vector(9 downto 0) := "01" & x"b4";
  constant eD17_0_n : std_logic_vector(9 downto 0) := "10" & x"3b";
  constant eD18_0_n : std_logic_vector(9 downto 0) := "01" & x"3b";
  constant eD19_0_n : std_logic_vector(9 downto 0) := "11" & x"2b";
  constant eD20_0_n : std_logic_vector(9 downto 0) := "00" & x"bb";
  constant eD21_0_n : std_logic_vector(9 downto 0) := "10" & x"ab";
  constant eD22_0_n : std_logic_vector(9 downto 0) := "01" & x"ab";
  constant eD23_0_n : std_logic_vector(9 downto 0) := "11" & x"a4";
  constant eD24_0_n : std_logic_vector(9 downto 0) := "11" & x"34";
  constant eD25_0_n : std_logic_vector(9 downto 0) := "10" & x"6b";
  constant eD26_0_n : std_logic_vector(9 downto 0) := "01" & x"6b";
  constant eD27_0_n : std_logic_vector(9 downto 0) := "11" & x"64";
  constant eD28_0_n : std_logic_vector(9 downto 0) := "00" & x"eb";
  constant eD29_0_n : std_logic_vector(9 downto 0) := "10" & x"e4";
  constant eD30_0_n : std_logic_vector(9 downto 0) := "01" & x"e4";
  constant eD31_0_n : std_logic_vector(9 downto 0) := "10" & x"b4";
  constant eD0_1_n  : std_logic_vector(9 downto 0) := "10" & x"79";
  constant eD1_1_n  : std_logic_vector(9 downto 0) := "01" & x"d9";
  constant eD2_1_n  : std_logic_vector(9 downto 0) := "10" & x"d9";
  constant eD3_1_n  : std_logic_vector(9 downto 0) := "11" & x"19";
  constant eD4_1_n  : std_logic_vector(9 downto 0) := "11" & x"59";
  constant eD5_1_n  : std_logic_vector(9 downto 0) := "10" & x"99";
  constant eD6_1_n  : std_logic_vector(9 downto 0) := "01" & x"99";
  constant eD7_1_n  : std_logic_vector(9 downto 0) := "11" & x"89";
  constant eD8_1_n  : std_logic_vector(9 downto 0) := "11" & x"99";
  constant eD9_1_n  : std_logic_vector(9 downto 0) := "10" & x"59";
  constant eD10_1_n : std_logic_vector(9 downto 0) := "01" & x"59";
  constant eD11_1_n : std_logic_vector(9 downto 0) := "11" & x"49";
  constant eD12_1_n : std_logic_vector(9 downto 0) := "00" & x"d9";
  constant eD13_1_n : std_logic_vector(9 downto 0) := "10" & x"c9";
  constant eD14_1_n : std_logic_vector(9 downto 0) := "01" & x"c9";
  constant eD15_1_n : std_logic_vector(9 downto 0) := "01" & x"79";
  constant eD16_1_n : std_logic_vector(9 downto 0) := "01" & x"b9";
  constant eD17_1_n : std_logic_vector(9 downto 0) := "10" & x"39";
  constant eD18_1_n : std_logic_vector(9 downto 0) := "01" & x"39";
  constant eD19_1_n : std_logic_vector(9 downto 0) := "11" & x"29";
  constant eD20_1_n : std_logic_vector(9 downto 0) := "00" & x"b9";
  constant eD21_1_n : std_logic_vector(9 downto 0) := "10" & x"a9";
  constant eD22_1_n : std_logic_vector(9 downto 0) := "01" & x"a9";
  constant eD23_1_n : std_logic_vector(9 downto 0) := "11" & x"a9";
  constant eD24_1_n : std_logic_vector(9 downto 0) := "11" & x"39";
  constant eD25_1_n : std_logic_vector(9 downto 0) := "10" & x"69";
  constant eD26_1_n : std_logic_vector(9 downto 0) := "01" & x"69";
  constant eD27_1_n : std_logic_vector(9 downto 0) := "11" & x"69";
  constant eD28_1_n : std_logic_vector(9 downto 0) := "00" & x"e9";
  constant eD29_1_n : std_logic_vector(9 downto 0) := "10" & x"e9";
  constant eD30_1_n : std_logic_vector(9 downto 0) := "01" & x"e9";
  constant eD31_1_n : std_logic_vector(9 downto 0) := "10" & x"b9";
  constant eD0_2_n  : std_logic_vector(9 downto 0) := "10" & x"75";
  constant eD1_2_n  : std_logic_vector(9 downto 0) := "01" & x"d5";
  constant eD2_2_n  : std_logic_vector(9 downto 0) := "10" & x"d5";
  constant eD3_2_n  : std_logic_vector(9 downto 0) := "11" & x"15";
  constant eD4_2_n  : std_logic_vector(9 downto 0) := "11" & x"55";
  constant eD5_2_n  : std_logic_vector(9 downto 0) := "10" & x"95";
  constant eD6_2_n  : std_logic_vector(9 downto 0) := "01" & x"95";
  constant eD7_2_n  : std_logic_vector(9 downto 0) := "11" & x"85";
  constant eD8_2_n  : std_logic_vector(9 downto 0) := "11" & x"95";
  constant eD9_2_n  : std_logic_vector(9 downto 0) := "10" & x"55";
  constant eD10_2_n : std_logic_vector(9 downto 0) := "01" & x"55";
  constant eD11_2_n : std_logic_vector(9 downto 0) := "11" & x"45";
  constant eD12_2_n : std_logic_vector(9 downto 0) := "00" & x"d5";
  constant eD13_2_n : std_logic_vector(9 downto 0) := "10" & x"c5";
  constant eD14_2_n : std_logic_vector(9 downto 0) := "01" & x"c5";
  constant eD15_2_n : std_logic_vector(9 downto 0) := "01" & x"75";
  constant eD16_2_n : std_logic_vector(9 downto 0) := "01" & x"b5";
  constant eD17_2_n : std_logic_vector(9 downto 0) := "10" & x"35";
  constant eD18_2_n : std_logic_vector(9 downto 0) := "01" & x"35";
  constant eD19_2_n : std_logic_vector(9 downto 0) := "11" & x"25";
  constant eD20_2_n : std_logic_vector(9 downto 0) := "00" & x"b5";
  constant eD21_2_n : std_logic_vector(9 downto 0) := "10" & x"a5";
  constant eD22_2_n : std_logic_vector(9 downto 0) := "01" & x"a5";
  constant eD23_2_n : std_logic_vector(9 downto 0) := "11" & x"a5";
  constant eD24_2_n : std_logic_vector(9 downto 0) := "11" & x"35";
  constant eD25_2_n : std_logic_vector(9 downto 0) := "10" & x"65";
  constant eD26_2_n : std_logic_vector(9 downto 0) := "01" & x"65";
  constant eD27_2_n : std_logic_vector(9 downto 0) := "11" & x"65";
  constant eD28_2_n : std_logic_vector(9 downto 0) := "00" & x"e5";
  constant eD29_2_n : std_logic_vector(9 downto 0) := "10" & x"e5";
  constant eD30_2_n : std_logic_vector(9 downto 0) := "01" & x"e5";
  constant eD31_2_n : std_logic_vector(9 downto 0) := "10" & x"b5";
  constant eD0_3_n  : std_logic_vector(9 downto 0) := "10" & x"73";
  constant eD1_3_n  : std_logic_vector(9 downto 0) := "01" & x"d3";
  constant eD2_3_n  : std_logic_vector(9 downto 0) := "10" & x"d3";
  constant eD3_3_n  : std_logic_vector(9 downto 0) := "11" & x"1c";
  constant eD4_3_n  : std_logic_vector(9 downto 0) := "11" & x"53";
  constant eD5_3_n  : std_logic_vector(9 downto 0) := "10" & x"9c";
  constant eD6_3_n  : std_logic_vector(9 downto 0) := "01" & x"9c";
  constant eD7_3_n  : std_logic_vector(9 downto 0) := "11" & x"8c";
  constant eD8_3_n  : std_logic_vector(9 downto 0) := "11" & x"93";
  constant eD9_3_n  : std_logic_vector(9 downto 0) := "10" & x"5c";
  constant eD10_3_n : std_logic_vector(9 downto 0) := "01" & x"5c";
  constant eD11_3_n : std_logic_vector(9 downto 0) := "11" & x"4c";
  constant eD12_3_n : std_logic_vector(9 downto 0) := "00" & x"dc";
  constant eD13_3_n : std_logic_vector(9 downto 0) := "10" & x"cc";
  constant eD14_3_n : std_logic_vector(9 downto 0) := "01" & x"cc";
  constant eD15_3_n : std_logic_vector(9 downto 0) := "01" & x"73";
  constant eD16_3_n : std_logic_vector(9 downto 0) := "01" & x"b3";
  constant eD17_3_n : std_logic_vector(9 downto 0) := "10" & x"3c";
  constant eD18_3_n : std_logic_vector(9 downto 0) := "01" & x"3c";
  constant eD19_3_n : std_logic_vector(9 downto 0) := "11" & x"2c";
  constant eD20_3_n : std_logic_vector(9 downto 0) := "00" & x"bc";
  constant eD21_3_n : std_logic_vector(9 downto 0) := "10" & x"ac";
  constant eD22_3_n : std_logic_vector(9 downto 0) := "01" & x"ac";
  constant eD23_3_n : std_logic_vector(9 downto 0) := "11" & x"a3";
  constant eD24_3_n : std_logic_vector(9 downto 0) := "11" & x"33";
  constant eD25_3_n : std_logic_vector(9 downto 0) := "10" & x"6c";
  constant eD26_3_n : std_logic_vector(9 downto 0) := "01" & x"6c";
  constant eD27_3_n : std_logic_vector(9 downto 0) := "11" & x"63";
  constant eD28_3_n : std_logic_vector(9 downto 0) := "00" & x"ec";
  constant eD29_3_n : std_logic_vector(9 downto 0) := "10" & x"e3";
  constant eD30_3_n : std_logic_vector(9 downto 0) := "01" & x"e3";
  constant eD31_3_n : std_logic_vector(9 downto 0) := "10" & x"b3";
  constant eD0_4_n  : std_logic_vector(9 downto 0) := "10" & x"72";
  constant eD1_4_n  : std_logic_vector(9 downto 0) := "01" & x"d2";
  constant eD2_4_n  : std_logic_vector(9 downto 0) := "10" & x"d2";
  constant eD3_4_n  : std_logic_vector(9 downto 0) := "11" & x"1d";
  constant eD4_4_n  : std_logic_vector(9 downto 0) := "11" & x"52";
  constant eD5_4_n  : std_logic_vector(9 downto 0) := "10" & x"9d";
  constant eD6_4_n  : std_logic_vector(9 downto 0) := "01" & x"9d";
  constant eD7_4_n  : std_logic_vector(9 downto 0) := "11" & x"8d";
  constant eD8_4_n  : std_logic_vector(9 downto 0) := "11" & x"92";
  constant eD9_4_n  : std_logic_vector(9 downto 0) := "10" & x"5d";
  constant eD10_4_n : std_logic_vector(9 downto 0) := "01" & x"5d";
  constant eD11_4_n : std_logic_vector(9 downto 0) := "11" & x"4d";
  constant eD12_4_n : std_logic_vector(9 downto 0) := "00" & x"dd";
  constant eD13_4_n : std_logic_vector(9 downto 0) := "10" & x"cd";
  constant eD14_4_n : std_logic_vector(9 downto 0) := "01" & x"cd";
  constant eD15_4_n : std_logic_vector(9 downto 0) := "01" & x"72";
  constant eD16_4_n : std_logic_vector(9 downto 0) := "01" & x"b2";
  constant eD17_4_n : std_logic_vector(9 downto 0) := "10" & x"3d";
  constant eD18_4_n : std_logic_vector(9 downto 0) := "01" & x"3d";
  constant eD19_4_n : std_logic_vector(9 downto 0) := "11" & x"2d";
  constant eD20_4_n : std_logic_vector(9 downto 0) := "00" & x"bd";
  constant eD21_4_n : std_logic_vector(9 downto 0) := "10" & x"ad";
  constant eD22_4_n : std_logic_vector(9 downto 0) := "01" & x"ad";
  constant eD23_4_n : std_logic_vector(9 downto 0) := "11" & x"a2";
  constant eD24_4_n : std_logic_vector(9 downto 0) := "11" & x"32";
  constant eD25_4_n : std_logic_vector(9 downto 0) := "10" & x"6d";
  constant eD26_4_n : std_logic_vector(9 downto 0) := "01" & x"6d";
  constant eD27_4_n : std_logic_vector(9 downto 0) := "11" & x"62";
  constant eD28_4_n : std_logic_vector(9 downto 0) := "00" & x"ed";
  constant eD29_4_n : std_logic_vector(9 downto 0) := "10" & x"e2";
  constant eD30_4_n : std_logic_vector(9 downto 0) := "01" & x"e2";
  constant eD31_4_n : std_logic_vector(9 downto 0) := "10" & x"b2";
  constant eD0_5_n  : std_logic_vector(9 downto 0) := "10" & x"7a";
  constant eD1_5_n  : std_logic_vector(9 downto 0) := "01" & x"da";
  constant eD2_5_n  : std_logic_vector(9 downto 0) := "10" & x"da";
  constant eD3_5_n  : std_logic_vector(9 downto 0) := "11" & x"1a";
  constant eD4_5_n  : std_logic_vector(9 downto 0) := "11" & x"5a";
  constant eD5_5_n  : std_logic_vector(9 downto 0) := "10" & x"9a";
  constant eD6_5_n  : std_logic_vector(9 downto 0) := "01" & x"9a";
  constant eD7_5_n  : std_logic_vector(9 downto 0) := "11" & x"8a";
  constant eD8_5_n  : std_logic_vector(9 downto 0) := "11" & x"9a";
  constant eD9_5_n  : std_logic_vector(9 downto 0) := "10" & x"5a";
  constant eD10_5_n : std_logic_vector(9 downto 0) := "01" & x"5a";
  constant eD11_5_n : std_logic_vector(9 downto 0) := "11" & x"4a";
  constant eD12_5_n : std_logic_vector(9 downto 0) := "00" & x"da";
  constant eD13_5_n : std_logic_vector(9 downto 0) := "10" & x"ca";
  constant eD14_5_n : std_logic_vector(9 downto 0) := "01" & x"ca";
  constant eD15_5_n : std_logic_vector(9 downto 0) := "01" & x"7a";
  constant eD16_5_n : std_logic_vector(9 downto 0) := "01" & x"ba";
  constant eD17_5_n : std_logic_vector(9 downto 0) := "10" & x"3a";
  constant eD18_5_n : std_logic_vector(9 downto 0) := "01" & x"3a";
  constant eD19_5_n : std_logic_vector(9 downto 0) := "11" & x"2a";
  constant eD20_5_n : std_logic_vector(9 downto 0) := "00" & x"ba";
  constant eD21_5_n : std_logic_vector(9 downto 0) := "10" & x"aa";
  constant eD22_5_n : std_logic_vector(9 downto 0) := "01" & x"aa";
  constant eD23_5_n : std_logic_vector(9 downto 0) := "11" & x"aa";
  constant eD24_5_n : std_logic_vector(9 downto 0) := "11" & x"3a";
  constant eD25_5_n : std_logic_vector(9 downto 0) := "10" & x"6a";
  constant eD26_5_n : std_logic_vector(9 downto 0) := "01" & x"6a";
  constant eD27_5_n : std_logic_vector(9 downto 0) := "11" & x"6a";
  constant eD28_5_n : std_logic_vector(9 downto 0) := "00" & x"ea";
  constant eD29_5_n : std_logic_vector(9 downto 0) := "10" & x"ea";
  constant eD30_5_n : std_logic_vector(9 downto 0) := "01" & x"ea";
  constant eD31_5_n : std_logic_vector(9 downto 0) := "10" & x"ba";
  constant eD0_6_n  : std_logic_vector(9 downto 0) := "10" & x"76";
  constant eD1_6_n  : std_logic_vector(9 downto 0) := "01" & x"d6";
  constant eD2_6_n  : std_logic_vector(9 downto 0) := "10" & x"d6";
  constant eD3_6_n  : std_logic_vector(9 downto 0) := "11" & x"16";
  constant eD4_6_n  : std_logic_vector(9 downto 0) := "11" & x"56";
  constant eD5_6_n  : std_logic_vector(9 downto 0) := "10" & x"96";
  constant eD6_6_n  : std_logic_vector(9 downto 0) := "01" & x"96";
  constant eD7_6_n  : std_logic_vector(9 downto 0) := "11" & x"86";
  constant eD8_6_n  : std_logic_vector(9 downto 0) := "11" & x"96";
  constant eD9_6_n  : std_logic_vector(9 downto 0) := "10" & x"56";
  constant eD10_6_n : std_logic_vector(9 downto 0) := "01" & x"56";
  constant eD11_6_n : std_logic_vector(9 downto 0) := "11" & x"46";
  constant eD12_6_n : std_logic_vector(9 downto 0) := "00" & x"d6";
  constant eD13_6_n : std_logic_vector(9 downto 0) := "10" & x"c6";
  constant eD14_6_n : std_logic_vector(9 downto 0) := "01" & x"c6";
  constant eD15_6_n : std_logic_vector(9 downto 0) := "01" & x"76";
  constant eD16_6_n : std_logic_vector(9 downto 0) := "01" & x"b6";
  constant eD17_6_n : std_logic_vector(9 downto 0) := "10" & x"36";
  constant eD18_6_n : std_logic_vector(9 downto 0) := "01" & x"36";
  constant eD19_6_n : std_logic_vector(9 downto 0) := "11" & x"26";
  constant eD20_6_n : std_logic_vector(9 downto 0) := "00" & x"b6";
  constant eD21_6_n : std_logic_vector(9 downto 0) := "10" & x"a6";
  constant eD22_6_n : std_logic_vector(9 downto 0) := "01" & x"a6";
  constant eD23_6_n : std_logic_vector(9 downto 0) := "11" & x"a6";
  constant eD24_6_n : std_logic_vector(9 downto 0) := "11" & x"36";
  constant eD25_6_n : std_logic_vector(9 downto 0) := "10" & x"66";
  constant eD26_6_n : std_logic_vector(9 downto 0) := "01" & x"66";
  constant eD27_6_n : std_logic_vector(9 downto 0) := "11" & x"66";
  constant eD28_6_n : std_logic_vector(9 downto 0) := "00" & x"e6";
  constant eD29_6_n : std_logic_vector(9 downto 0) := "10" & x"e6";
  constant eD30_6_n : std_logic_vector(9 downto 0) := "01" & x"e6";
  constant eD31_6_n : std_logic_vector(9 downto 0) := "10" & x"b6";
  constant eD0_7_n  : std_logic_vector(9 downto 0) := "10" & x"71";
  constant eD1_7_n  : std_logic_vector(9 downto 0) := "01" & x"d1";
  constant eD2_7_n  : std_logic_vector(9 downto 0) := "10" & x"d1";
  constant eD3_7_n  : std_logic_vector(9 downto 0) := "11" & x"1e";
  constant eD4_7_n  : std_logic_vector(9 downto 0) := "11" & x"51";
  constant eD5_7_n  : std_logic_vector(9 downto 0) := "10" & x"9e";
  constant eD6_7_n  : std_logic_vector(9 downto 0) := "01" & x"9e";
  constant eD7_7_n  : std_logic_vector(9 downto 0) := "11" & x"8e";
  constant eD8_7_n  : std_logic_vector(9 downto 0) := "11" & x"91";
  constant eD9_7_n  : std_logic_vector(9 downto 0) := "10" & x"5e";
  constant eD10_7_n : std_logic_vector(9 downto 0) := "01" & x"5e";
  constant eD11_7_n : std_logic_vector(9 downto 0) := "11" & x"4e";
  constant eD12_7_n : std_logic_vector(9 downto 0) := "00" & x"de";
  constant eD13_7_n : std_logic_vector(9 downto 0) := "10" & x"ce";
  constant eD14_7_n : std_logic_vector(9 downto 0) := "01" & x"ce";
  constant eD15_7_n : std_logic_vector(9 downto 0) := "01" & x"71";
  constant eD16_7_n : std_logic_vector(9 downto 0) := "01" & x"b1";
  constant eD17_7_n : std_logic_vector(9 downto 0) := "10" & x"37";
  constant eD18_7_n : std_logic_vector(9 downto 0) := "01" & x"37";
  constant eD19_7_n : std_logic_vector(9 downto 0) := "11" & x"2e";
  constant eD20_7_n : std_logic_vector(9 downto 0) := "00" & x"b7";
  constant eD21_7_n : std_logic_vector(9 downto 0) := "10" & x"ae";
  constant eD22_7_n : std_logic_vector(9 downto 0) := "01" & x"ae";
  constant eD23_7_n : std_logic_vector(9 downto 0) := "11" & x"a1";
  constant eD24_7_n : std_logic_vector(9 downto 0) := "11" & x"31";
  constant eD25_7_n : std_logic_vector(9 downto 0) := "10" & x"6e";
  constant eD26_7_n : std_logic_vector(9 downto 0) := "01" & x"6e";
  constant eD27_7_n : std_logic_vector(9 downto 0) := "11" & x"61";
  constant eD28_7_n : std_logic_vector(9 downto 0) := "00" & x"ee";
  constant eD29_7_n : std_logic_vector(9 downto 0) := "10" & x"e1";
  constant eD30_7_n : std_logic_vector(9 downto 0) := "01" & x"e1";
  constant eD31_7_n : std_logic_vector(9 downto 0) := "10" & x"b1";

  -- 8b/10b encoded positive disparity
  constant eD0_0_p  : std_logic_vector(9 downto 0) := "01" & x"8b";
  constant eD1_0_p  : std_logic_vector(9 downto 0) := "10" & x"2b";
  constant eD2_0_p  : std_logic_vector(9 downto 0) := "01" & x"2b";
  constant eD3_0_p  : std_logic_vector(9 downto 0) := "11" & x"14";
  constant eD4_0_p  : std_logic_vector(9 downto 0) := "00" & x"ab";
  constant eD5_0_p  : std_logic_vector(9 downto 0) := "10" & x"94";
  constant eD6_0_p  : std_logic_vector(9 downto 0) := "01" & x"94";
  constant eD7_0_p  : std_logic_vector(9 downto 0) := "00" & x"74";
  constant eD8_0_p  : std_logic_vector(9 downto 0) := "00" & x"6b";
  constant eD9_0_p  : std_logic_vector(9 downto 0) := "10" & x"54";
  constant eD10_0_p : std_logic_vector(9 downto 0) := "01" & x"54";
  constant eD11_0_p : std_logic_vector(9 downto 0) := "11" & x"44";
  constant eD12_0_p : std_logic_vector(9 downto 0) := "00" & x"d4";
  constant eD13_0_p : std_logic_vector(9 downto 0) := "10" & x"c4";
  constant eD14_0_p : std_logic_vector(9 downto 0) := "01" & x"c4";
  constant eD15_0_p : std_logic_vector(9 downto 0) := "10" & x"8b";
  constant eD16_0_p : std_logic_vector(9 downto 0) := "10" & x"4b";
  constant eD17_0_p : std_logic_vector(9 downto 0) := "10" & x"34";
  constant eD18_0_p : std_logic_vector(9 downto 0) := "01" & x"34";
  constant eD19_0_p : std_logic_vector(9 downto 0) := "11" & x"24";
  constant eD20_0_p : std_logic_vector(9 downto 0) := "00" & x"b4";
  constant eD21_0_p : std_logic_vector(9 downto 0) := "10" & x"a4";
  constant eD22_0_p : std_logic_vector(9 downto 0) := "01" & x"a4";
  constant eD23_0_p : std_logic_vector(9 downto 0) := "00" & x"5b";
  constant eD24_0_p : std_logic_vector(9 downto 0) := "00" & x"cb";
  constant eD25_0_p : std_logic_vector(9 downto 0) := "10" & x"64";
  constant eD26_0_p : std_logic_vector(9 downto 0) := "01" & x"64";
  constant eD27_0_p : std_logic_vector(9 downto 0) := "00" & x"9b";
  constant eD28_0_p : std_logic_vector(9 downto 0) := "00" & x"e4";
  constant eD29_0_p : std_logic_vector(9 downto 0) := "01" & x"1b";
  constant eD30_0_p : std_logic_vector(9 downto 0) := "10" & x"1b";
  constant eD31_0_p : std_logic_vector(9 downto 0) := "01" & x"4b";
  constant eD0_1_p  : std_logic_vector(9 downto 0) := "01" & x"89";
  constant eD1_1_p  : std_logic_vector(9 downto 0) := "10" & x"29";
  constant eD2_1_p  : std_logic_vector(9 downto 0) := "01" & x"29";
  constant eD3_1_p  : std_logic_vector(9 downto 0) := "11" & x"19";
  constant eD4_1_p  : std_logic_vector(9 downto 0) := "00" & x"a9";
  constant eD5_1_p  : std_logic_vector(9 downto 0) := "10" & x"99";
  constant eD6_1_p  : std_logic_vector(9 downto 0) := "01" & x"99";
  constant eD7_1_p  : std_logic_vector(9 downto 0) := "00" & x"79";
  constant eD8_1_p  : std_logic_vector(9 downto 0) := "00" & x"69";
  constant eD9_1_p  : std_logic_vector(9 downto 0) := "10" & x"59";
  constant eD10_1_p : std_logic_vector(9 downto 0) := "01" & x"59";
  constant eD11_1_p : std_logic_vector(9 downto 0) := "11" & x"49";
  constant eD12_1_p : std_logic_vector(9 downto 0) := "00" & x"d9";
  constant eD13_1_p : std_logic_vector(9 downto 0) := "10" & x"c9";
  constant eD14_1_p : std_logic_vector(9 downto 0) := "01" & x"c9";
  constant eD15_1_p : std_logic_vector(9 downto 0) := "10" & x"89";
  constant eD16_1_p : std_logic_vector(9 downto 0) := "10" & x"49";
  constant eD17_1_p : std_logic_vector(9 downto 0) := "10" & x"39";
  constant eD18_1_p : std_logic_vector(9 downto 0) := "01" & x"39";
  constant eD19_1_p : std_logic_vector(9 downto 0) := "11" & x"29";
  constant eD20_1_p : std_logic_vector(9 downto 0) := "00" & x"b9";
  constant eD21_1_p : std_logic_vector(9 downto 0) := "10" & x"a9";
  constant eD22_1_p : std_logic_vector(9 downto 0) := "01" & x"a9";
  constant eD23_1_p : std_logic_vector(9 downto 0) := "00" & x"59";
  constant eD24_1_p : std_logic_vector(9 downto 0) := "00" & x"c9";
  constant eD25_1_p : std_logic_vector(9 downto 0) := "10" & x"69";
  constant eD26_1_p : std_logic_vector(9 downto 0) := "01" & x"69";
  constant eD27_1_p : std_logic_vector(9 downto 0) := "00" & x"99";
  constant eD28_1_p : std_logic_vector(9 downto 0) := "00" & x"e9";
  constant eD29_1_p : std_logic_vector(9 downto 0) := "01" & x"19";
  constant eD30_1_p : std_logic_vector(9 downto 0) := "10" & x"19";
  constant eD31_1_p : std_logic_vector(9 downto 0) := "01" & x"49";
  constant eD0_2_p  : std_logic_vector(9 downto 0) := "01" & x"85";
  constant eD1_2_p  : std_logic_vector(9 downto 0) := "10" & x"25";
  constant eD2_2_p  : std_logic_vector(9 downto 0) := "01" & x"25";
  constant eD3_2_p  : std_logic_vector(9 downto 0) := "11" & x"15";
  constant eD4_2_p  : std_logic_vector(9 downto 0) := "00" & x"a5";
  constant eD5_2_p  : std_logic_vector(9 downto 0) := "10" & x"95";
  constant eD6_2_p  : std_logic_vector(9 downto 0) := "01" & x"95";
  constant eD7_2_p  : std_logic_vector(9 downto 0) := "00" & x"75";
  constant eD8_2_p  : std_logic_vector(9 downto 0) := "00" & x"65";
  constant eD9_2_p  : std_logic_vector(9 downto 0) := "10" & x"55";
  constant eD10_2_p : std_logic_vector(9 downto 0) := "01" & x"55";
  constant eD11_2_p : std_logic_vector(9 downto 0) := "11" & x"45";
  constant eD12_2_p : std_logic_vector(9 downto 0) := "00" & x"d5";
  constant eD13_2_p : std_logic_vector(9 downto 0) := "10" & x"c5";
  constant eD14_2_p : std_logic_vector(9 downto 0) := "01" & x"c5";
  constant eD15_2_p : std_logic_vector(9 downto 0) := "10" & x"85";
  constant eD16_2_p : std_logic_vector(9 downto 0) := "10" & x"45";
  constant eD17_2_p : std_logic_vector(9 downto 0) := "10" & x"35";
  constant eD18_2_p : std_logic_vector(9 downto 0) := "01" & x"35";
  constant eD19_2_p : std_logic_vector(9 downto 0) := "11" & x"25";
  constant eD20_2_p : std_logic_vector(9 downto 0) := "00" & x"b5";
  constant eD21_2_p : std_logic_vector(9 downto 0) := "10" & x"a5";
  constant eD22_2_p : std_logic_vector(9 downto 0) := "01" & x"a5";
  constant eD23_2_p : std_logic_vector(9 downto 0) := "00" & x"55";
  constant eD24_2_p : std_logic_vector(9 downto 0) := "00" & x"c5";
  constant eD25_2_p : std_logic_vector(9 downto 0) := "10" & x"65";
  constant eD26_2_p : std_logic_vector(9 downto 0) := "01" & x"65";
  constant eD27_2_p : std_logic_vector(9 downto 0) := "00" & x"95";
  constant eD28_2_p : std_logic_vector(9 downto 0) := "00" & x"e5";
  constant eD29_2_p : std_logic_vector(9 downto 0) := "01" & x"15";
  constant eD30_2_p : std_logic_vector(9 downto 0) := "10" & x"15";
  constant eD31_2_p : std_logic_vector(9 downto 0) := "01" & x"45";
  constant eD0_3_p  : std_logic_vector(9 downto 0) := "01" & x"8c";
  constant eD1_3_p  : std_logic_vector(9 downto 0) := "10" & x"2c";
  constant eD2_3_p  : std_logic_vector(9 downto 0) := "01" & x"2c";
  constant eD3_3_p  : std_logic_vector(9 downto 0) := "11" & x"13";
  constant eD4_3_p  : std_logic_vector(9 downto 0) := "00" & x"ac";
  constant eD5_3_p  : std_logic_vector(9 downto 0) := "10" & x"93";
  constant eD6_3_p  : std_logic_vector(9 downto 0) := "01" & x"93";
  constant eD7_3_p  : std_logic_vector(9 downto 0) := "00" & x"73";
  constant eD8_3_p  : std_logic_vector(9 downto 0) := "00" & x"6c";
  constant eD9_3_p  : std_logic_vector(9 downto 0) := "10" & x"53";
  constant eD10_3_p : std_logic_vector(9 downto 0) := "01" & x"53";
  constant eD11_3_p : std_logic_vector(9 downto 0) := "11" & x"43";
  constant eD12_3_p : std_logic_vector(9 downto 0) := "00" & x"d3";
  constant eD13_3_p : std_logic_vector(9 downto 0) := "10" & x"c3";
  constant eD14_3_p : std_logic_vector(9 downto 0) := "01" & x"c3";
  constant eD15_3_p : std_logic_vector(9 downto 0) := "10" & x"8c";
  constant eD16_3_p : std_logic_vector(9 downto 0) := "10" & x"4c";
  constant eD17_3_p : std_logic_vector(9 downto 0) := "10" & x"33";
  constant eD18_3_p : std_logic_vector(9 downto 0) := "01" & x"33";
  constant eD19_3_p : std_logic_vector(9 downto 0) := "11" & x"23";
  constant eD20_3_p : std_logic_vector(9 downto 0) := "00" & x"b3";
  constant eD21_3_p : std_logic_vector(9 downto 0) := "10" & x"a3";
  constant eD22_3_p : std_logic_vector(9 downto 0) := "01" & x"a3";
  constant eD23_3_p : std_logic_vector(9 downto 0) := "00" & x"5c";
  constant eD24_3_p : std_logic_vector(9 downto 0) := "00" & x"cc";
  constant eD25_3_p : std_logic_vector(9 downto 0) := "10" & x"63";
  constant eD26_3_p : std_logic_vector(9 downto 0) := "01" & x"63";
  constant eD27_3_p : std_logic_vector(9 downto 0) := "00" & x"9c";
  constant eD28_3_p : std_logic_vector(9 downto 0) := "00" & x"e3";
  constant eD29_3_p : std_logic_vector(9 downto 0) := "01" & x"1c";
  constant eD30_3_p : std_logic_vector(9 downto 0) := "10" & x"1c";
  constant eD31_3_p : std_logic_vector(9 downto 0) := "01" & x"4c";
  constant eD0_4_p  : std_logic_vector(9 downto 0) := "01" & x"8d";
  constant eD1_4_p  : std_logic_vector(9 downto 0) := "10" & x"2d";
  constant eD2_4_p  : std_logic_vector(9 downto 0) := "01" & x"2d";
  constant eD3_4_p  : std_logic_vector(9 downto 0) := "11" & x"12";
  constant eD4_4_p  : std_logic_vector(9 downto 0) := "00" & x"ad";
  constant eD5_4_p  : std_logic_vector(9 downto 0) := "10" & x"92";
  constant eD6_4_p  : std_logic_vector(9 downto 0) := "01" & x"92";
  constant eD7_4_p  : std_logic_vector(9 downto 0) := "00" & x"72";
  constant eD8_4_p  : std_logic_vector(9 downto 0) := "00" & x"6d";
  constant eD9_4_p  : std_logic_vector(9 downto 0) := "10" & x"52";
  constant eD10_4_p : std_logic_vector(9 downto 0) := "01" & x"52";
  constant eD11_4_p : std_logic_vector(9 downto 0) := "11" & x"42";
  constant eD12_4_p : std_logic_vector(9 downto 0) := "00" & x"d2";
  constant eD13_4_p : std_logic_vector(9 downto 0) := "10" & x"c2";
  constant eD14_4_p : std_logic_vector(9 downto 0) := "01" & x"c2";
  constant eD15_4_p : std_logic_vector(9 downto 0) := "10" & x"8d";
  constant eD16_4_p : std_logic_vector(9 downto 0) := "10" & x"4d";
  constant eD17_4_p : std_logic_vector(9 downto 0) := "10" & x"32";
  constant eD18_4_p : std_logic_vector(9 downto 0) := "01" & x"32";
  constant eD19_4_p : std_logic_vector(9 downto 0) := "11" & x"22";
  constant eD20_4_p : std_logic_vector(9 downto 0) := "00" & x"b2";
  constant eD21_4_p : std_logic_vector(9 downto 0) := "10" & x"a2";
  constant eD22_4_p : std_logic_vector(9 downto 0) := "01" & x"a2";
  constant eD23_4_p : std_logic_vector(9 downto 0) := "00" & x"5d";
  constant eD24_4_p : std_logic_vector(9 downto 0) := "00" & x"cd";
  constant eD25_4_p : std_logic_vector(9 downto 0) := "10" & x"62";
  constant eD26_4_p : std_logic_vector(9 downto 0) := "01" & x"62";
  constant eD27_4_p : std_logic_vector(9 downto 0) := "00" & x"9d";
  constant eD28_4_p : std_logic_vector(9 downto 0) := "00" & x"e2";
  constant eD29_4_p : std_logic_vector(9 downto 0) := "01" & x"1d";
  constant eD30_4_p : std_logic_vector(9 downto 0) := "10" & x"1d";
  constant eD31_4_p : std_logic_vector(9 downto 0) := "01" & x"4d";
  constant eD0_5_p  : std_logic_vector(9 downto 0) := "01" & x"8a";
  constant eD1_5_p  : std_logic_vector(9 downto 0) := "10" & x"2a";
  constant eD2_5_p  : std_logic_vector(9 downto 0) := "01" & x"2a";
  constant eD3_5_p  : std_logic_vector(9 downto 0) := "11" & x"1a";
  constant eD4_5_p  : std_logic_vector(9 downto 0) := "00" & x"aa";
  constant eD5_5_p  : std_logic_vector(9 downto 0) := "10" & x"9a";
  constant eD6_5_p  : std_logic_vector(9 downto 0) := "01" & x"9a";
  constant eD7_5_p  : std_logic_vector(9 downto 0) := "00" & x"7a";
  constant eD8_5_p  : std_logic_vector(9 downto 0) := "00" & x"6a";
  constant eD9_5_p  : std_logic_vector(9 downto 0) := "10" & x"5a";
  constant eD10_5_p : std_logic_vector(9 downto 0) := "01" & x"5a";
  constant eD11_5_p : std_logic_vector(9 downto 0) := "11" & x"4a";
  constant eD12_5_p : std_logic_vector(9 downto 0) := "00" & x"da";
  constant eD13_5_p : std_logic_vector(9 downto 0) := "10" & x"ca";
  constant eD14_5_p : std_logic_vector(9 downto 0) := "01" & x"ca";
  constant eD15_5_p : std_logic_vector(9 downto 0) := "10" & x"8a";
  constant eD16_5_p : std_logic_vector(9 downto 0) := "10" & x"4a";
  constant eD17_5_p : std_logic_vector(9 downto 0) := "10" & x"3a";
  constant eD18_5_p : std_logic_vector(9 downto 0) := "01" & x"3a";
  constant eD19_5_p : std_logic_vector(9 downto 0) := "11" & x"2a";
  constant eD20_5_p : std_logic_vector(9 downto 0) := "00" & x"ba";
  constant eD21_5_p : std_logic_vector(9 downto 0) := "10" & x"aa";
  constant eD22_5_p : std_logic_vector(9 downto 0) := "01" & x"aa";
  constant eD23_5_p : std_logic_vector(9 downto 0) := "00" & x"5a";
  constant eD24_5_p : std_logic_vector(9 downto 0) := "00" & x"ca";
  constant eD25_5_p : std_logic_vector(9 downto 0) := "10" & x"6a";
  constant eD26_5_p : std_logic_vector(9 downto 0) := "01" & x"6a";
  constant eD27_5_p : std_logic_vector(9 downto 0) := "00" & x"9a";
  constant eD28_5_p : std_logic_vector(9 downto 0) := "00" & x"ea";
  constant eD29_5_p : std_logic_vector(9 downto 0) := "01" & x"1a";
  constant eD30_5_p : std_logic_vector(9 downto 0) := "10" & x"1a";
  constant eD31_5_p : std_logic_vector(9 downto 0) := "01" & x"4a";
  constant eD0_6_p  : std_logic_vector(9 downto 0) := "01" & x"86";
  constant eD1_6_p  : std_logic_vector(9 downto 0) := "10" & x"26";
  constant eD2_6_p  : std_logic_vector(9 downto 0) := "01" & x"26";
  constant eD3_6_p  : std_logic_vector(9 downto 0) := "11" & x"16";
  constant eD4_6_p  : std_logic_vector(9 downto 0) := "00" & x"a6";
  constant eD5_6_p  : std_logic_vector(9 downto 0) := "10" & x"96";
  constant eD6_6_p  : std_logic_vector(9 downto 0) := "01" & x"96";
  constant eD7_6_p  : std_logic_vector(9 downto 0) := "00" & x"76";
  constant eD8_6_p  : std_logic_vector(9 downto 0) := "00" & x"66";
  constant eD9_6_p  : std_logic_vector(9 downto 0) := "10" & x"56";
  constant eD10_6_p : std_logic_vector(9 downto 0) := "01" & x"56";
  constant eD11_6_p : std_logic_vector(9 downto 0) := "11" & x"46";
  constant eD12_6_p : std_logic_vector(9 downto 0) := "00" & x"d6";
  constant eD13_6_p : std_logic_vector(9 downto 0) := "10" & x"c6";
  constant eD14_6_p : std_logic_vector(9 downto 0) := "01" & x"c6";
  constant eD15_6_p : std_logic_vector(9 downto 0) := "10" & x"86";
  constant eD16_6_p : std_logic_vector(9 downto 0) := "10" & x"46";
  constant eD17_6_p : std_logic_vector(9 downto 0) := "10" & x"36";
  constant eD18_6_p : std_logic_vector(9 downto 0) := "01" & x"36";
  constant eD19_6_p : std_logic_vector(9 downto 0) := "11" & x"26";
  constant eD20_6_p : std_logic_vector(9 downto 0) := "00" & x"b6";
  constant eD21_6_p : std_logic_vector(9 downto 0) := "10" & x"a6";
  constant eD22_6_p : std_logic_vector(9 downto 0) := "01" & x"a6";
  constant eD23_6_p : std_logic_vector(9 downto 0) := "00" & x"56";
  constant eD24_6_p : std_logic_vector(9 downto 0) := "00" & x"c6";
  constant eD25_6_p : std_logic_vector(9 downto 0) := "10" & x"66";
  constant eD26_6_p : std_logic_vector(9 downto 0) := "01" & x"66";
  constant eD27_6_p : std_logic_vector(9 downto 0) := "00" & x"96";
  constant eD28_6_p : std_logic_vector(9 downto 0) := "00" & x"e6";
  constant eD29_6_p : std_logic_vector(9 downto 0) := "01" & x"16";
  constant eD30_6_p : std_logic_vector(9 downto 0) := "10" & x"16";
  constant eD31_6_p : std_logic_vector(9 downto 0) := "01" & x"46";
  constant eD0_7_p  : std_logic_vector(9 downto 0) := "01" & x"8e";
  constant eD1_7_p  : std_logic_vector(9 downto 0) := "10" & x"2e";
  constant eD2_7_p  : std_logic_vector(9 downto 0) := "01" & x"2e";
  constant eD3_7_p  : std_logic_vector(9 downto 0) := "11" & x"11";
  constant eD4_7_p  : std_logic_vector(9 downto 0) := "00" & x"ae";
  constant eD5_7_p  : std_logic_vector(9 downto 0) := "10" & x"91";
  constant eD6_7_p  : std_logic_vector(9 downto 0) := "01" & x"91";
  constant eD7_7_p  : std_logic_vector(9 downto 0) := "00" & x"71";
  constant eD8_7_p  : std_logic_vector(9 downto 0) := "00" & x"6e";
  constant eD9_7_p  : std_logic_vector(9 downto 0) := "10" & x"51";
  constant eD10_7_p : std_logic_vector(9 downto 0) := "01" & x"51";
  constant eD11_7_p : std_logic_vector(9 downto 0) := "11" & x"48";
  constant eD12_7_p : std_logic_vector(9 downto 0) := "00" & x"d1";
  constant eD13_7_p : std_logic_vector(9 downto 0) := "10" & x"c8";
  constant eD14_7_p : std_logic_vector(9 downto 0) := "01" & x"c8";
  constant eD15_7_p : std_logic_vector(9 downto 0) := "10" & x"8e";
  constant eD16_7_p : std_logic_vector(9 downto 0) := "10" & x"4e";
  constant eD17_7_p : std_logic_vector(9 downto 0) := "10" & x"31";
  constant eD18_7_p : std_logic_vector(9 downto 0) := "01" & x"31";
  constant eD19_7_p : std_logic_vector(9 downto 0) := "11" & x"21";
  constant eD20_7_p : std_logic_vector(9 downto 0) := "00" & x"b1";
  constant eD21_7_p : std_logic_vector(9 downto 0) := "10" & x"a1";
  constant eD22_7_p : std_logic_vector(9 downto 0) := "01" & x"a1";
  constant eD23_7_p : std_logic_vector(9 downto 0) := "00" & x"5e";
  constant eD24_7_p : std_logic_vector(9 downto 0) := "00" & x"ce";
  constant eD25_7_p : std_logic_vector(9 downto 0) := "10" & x"61";
  constant eD26_7_p : std_logic_vector(9 downto 0) := "01" & x"61";
  constant eD27_7_p : std_logic_vector(9 downto 0) := "00" & x"9e";
  constant eD28_7_p : std_logic_vector(9 downto 0) := "00" & x"e1";
  constant eD29_7_p : std_logic_vector(9 downto 0) := "01" & x"1e";
  constant eD30_7_p : std_logic_vector(9 downto 0) := "10" & x"1e";
  constant eD31_7_p : std_logic_vector(9 downto 0) := "01" & x"4e";

  -- 8b/10b special character symbol code
  constant k28_0_n : std_logic_vector(9 downto 0) := "0011110100";
  constant k28_0_p : std_logic_vector(9 downto 0) := "0011110100";
  constant k28_1_n : std_logic_vector(9 downto 0) := "0011111001";
  constant k28_1_p : std_logic_vector(9 downto 0) := "1100000110";
  constant k28_2_n : std_logic_vector(9 downto 0) := "0011110101";
  constant k28_2_p : std_logic_vector(9 downto 0) := "1100001010";
  constant k28_3_n : std_logic_vector(9 downto 0) := "0011110011";
  constant k28_3_p : std_logic_vector(9 downto 0) := "1100001100";
  constant k28_4_n : std_logic_vector(9 downto 0) := "0011110010";
  constant k28_4_p : std_logic_vector(9 downto 0) := "1100001101";
  constant k28_5_n : std_logic_vector(9 downto 0) := "0011111010";
  constant k28_5_p : std_logic_vector(9 downto 0) := "1100000101";
  constant k28_6_n : std_logic_vector(9 downto 0) := "0011110110";
  constant k28_6_p : std_logic_vector(9 downto 0) := "1100001001";
  constant k28_7_n : std_logic_vector(9 downto 0) := "0011111000";
  constant k28_7_p : std_logic_vector(9 downto 0) := "1100000111";
  constant k23_7_n : std_logic_vector(9 downto 0) := "1110101000";
  constant k23_7_p : std_logic_vector(9 downto 0) := "0001010111";
  constant k27_7_n : std_logic_vector(9 downto 0) := "1101101000";
  constant k27_7_p : std_logic_vector(9 downto 0) := "0010010111";
  constant k29_7_n : std_logic_vector(9 downto 0) := "1011101000";
  constant k29_7_p : std_logic_vector(9 downto 0) := "0100010111";
  constant k30_7_n : std_logic_vector(9 downto 0) := "0111101000";
  constant k30_7_p : std_logic_vector(9 downto 0) := "1000010111";

  constant lfsr_init_gen1_c : std_logic_vector(15 downto 0) := x"FFFF";
  constant lfsr_init_gen2_c : std_logic_vector(22 downto 0) := "001" & x"DBFBC";

  function ones_count(d  : std_logic_vector) return natural;
  function zeros_count(d : std_logic_vector) return natural;
  
end usb3_pkg;

package body usb3_pkg is

  function ones_count(d : std_logic_vector) return natural is
    variable ones_count_m : natural := 0;   -- Intermediate/temp ones count
  begin
    for i in d'length-1 downto 0 loop
      if d(i) = '1' then
        ones_count_m := ones_count_m + 1;
      end if;
    end loop;  -- i
    return ones_count_m;
  end ones_count;
  function zeros_count(d : std_logic_vector) return natural is
    variable zeros_count_m : natural := 0;  -- Intermediate/temp ones count
  begin
    for i in d'length-1 downto 0 loop
      if d(i) = '0' then
        zeros_count_m := zeros_count_m + 1;
      end if;
    end loop;  -- i
    return zeros_count_m;
  end zeros_count;


  
end usb3_pkg;

