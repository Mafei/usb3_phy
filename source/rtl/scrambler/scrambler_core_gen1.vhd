-------------------------------------------------------------------------------
-- Title      : gen1 scrambler
-- Project    : 
-------------------------------------------------------------------------------
-- File       : scrambler_core_gen1.vhd
-- Author     : amr  <amr@laptop>
-- Company    : 
-- Created    : 2014-10-17
-- Last update: 24-10-2014
-- Platform   : 
-- Standard   : VHDL'87
-------------------------------------------------------------------------------
-- Description: scrambler for GEN1 PHY
-------------------------------------------------------------------------------
-- Copyright (c) 2014 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2014-10-17  1.0      amr     Created
-------------------------------------------------------------------------------

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.usb3_pkg.all;

entity scrambler_core_gen1 is
  
  port (
    -- scrambler clock    
    clk          : in  std_logic;
    -- synchronous active high reset    
    rst          : in  std_logic;
    -- enable LFSR advance   
    advance_lfsr : in  std_logic;
    -- XOR input data with LFSR out    
    xor_data     : in  std_logic;
    -- Initialize the LFSR   
    init_lfsr    : in  std_logic;
    -- valid input
    validin      : in  std_logic;
    -- Input data byte    
    din          : in  std_logic_vector(7 downto 0);
    -- valid out flag
    validout     : out std_logic;
    -- Scrambled output    
    dout         : out std_logic_vector(7 downto 0)
    );

end scrambler_core_gen1;

architecture behav of scrambler_core_gen1 is

  signal   lfsr_reg      : std_logic_vector(15 downto 0) := lfsr_init_gen1_c;
  type     lfsr_t is array (0 to 8) of std_logic_vector(15 downto 0);
  signal   lfsr_a        : lfsr_t;
  signal   din_int       : std_logic_vector(7 downto 0);
  signal   dout_nxt      : std_logic_vector(7 downto 0);
  signal   dout_reg      : std_logic_vector(7 downto 0)  := (others => '0');
  constant data_mirror_c : std_logic                     := '0';
  signal   vldout_reg    : std_logic                     := '0';

begin  -- behav

  
  mirror_din1 : if data_mirror_c = '1' generate
    mr_lp : for i in 0 to 7 generate
      din_int(i) <= din(7-i);
    end generate mr_lp;
  end generate mirror_din1;
  mirror_din2 : if data_mirror_c = '0' generate
    din_int <= din;
  end generate mirror_din2;

  lfsr_a(0) <= lfsr_reg;

  lfsr_states_o : for i in 1 to 8 generate
    lfsr_states_i : for j in 0 to 15 generate
      xor_regs1 : if (j = 0 or j = 3 or j = 4 or j = 5) generate
        lfsr_a(i)(0) <= lfsr_a(i-1)(15);
        lfsr_a(i)(3) <= lfsr_a(i-1)(15) xor lfsr_a(i-1)(2);
        lfsr_a(i)(4) <= lfsr_a(i-1)(15) xor lfsr_a(i-1)(3);
        lfsr_a(i)(5) <= lfsr_a(i-1)(15) xor lfsr_a(i-1)(4);
      end generate xor_regs1;
      xor_regs2 : if (j /= 0 and j /= 3 and j /= 4 and j /= 5) generate
        lfsr_a(i)(j) <= lfsr_a(i-1)(j-1);
      end generate xor_regs2;
    end generate lfsr_states_i;
    dout_nxt(i-1) <= lfsr_a(i)(15) xor din_int(i-1);
  end generate lfsr_states_o;

  -- purpose: clock process
  -- type   : combinational
  -- inputs : clk
  -- outputs: lfsr_reg
  clk_pr : process (clk)
  begin  -- process clk_pr
    if rising_edge(clk) then
      if rst = '1' then
        lfsr_reg   <= lfsr_init_gen1_c;
        vldout_reg <= '0';
      else
        if init_lfsr = '1' then
          lfsr_reg <= lfsr_init_gen1_c;
        elsif advance_lfsr = '1' then
          lfsr_reg <= lfsr_a(8);
        end if;
        vldout_reg <= validin;
      end if;
    end if;
  end process clk_pr;

  -- purpose: implement output data register
  -- type   : combinational
  -- inputs : clk
  -- outputs: dout_reg
  dout_Reg_pr : process (clk)
  begin  -- process dout_Reg_pr
    if rising_edge(clk) then
      if xor_data = '1' then
        dout_reg <= dout_nxt;
      elsif (validin = '1') then
        dout_reg <= din_int;
      end if;
    end if;
  end process dout_Reg_pr;

  dout     <= dout_reg;
  validout <= vldout_reg;

  
end behav;
