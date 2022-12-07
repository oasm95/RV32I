--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_f4cf_wrapper.bd
--Design : bd_f4cf_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_f4cf_wrapper is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end bd_f4cf_wrapper;

architecture STRUCTURE of bd_f4cf_wrapper is
  component bd_f4cf is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component bd_f4cf;
begin
bd_f4cf_i: component bd_f4cf
     port map (
      clk => clk,
      probe0(31 downto 0) => probe0(31 downto 0),
      probe1(31 downto 0) => probe1(31 downto 0),
      probe2(31 downto 0) => probe2(31 downto 0),
      probe3(0) => probe3(0),
      probe4(0) => probe4(0),
      probe5(31 downto 0) => probe5(31 downto 0),
      probe6(31 downto 0) => probe6(31 downto 0)
    );
end STRUCTURE;
