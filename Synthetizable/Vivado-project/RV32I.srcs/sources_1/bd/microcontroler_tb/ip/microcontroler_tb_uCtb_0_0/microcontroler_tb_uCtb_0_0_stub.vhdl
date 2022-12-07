-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Nov 30 23:24:45 2022
-- Host        : DESTROYER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Yoadmin/Documents/vivado/RV32I/RV32I.srcs/sources_1/bd/microcontroler_tb/ip/microcontroler_tb_uCtb_0_0/microcontroler_tb_uCtb_0_0_stub.vhdl
-- Design      : microcontroler_tb_uCtb_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity microcontroler_tb_uCtb_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    IMem : in STD_LOGIC_VECTOR ( 31 downto 0 );
    STALL : in STD_LOGIC;
    IMemAddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DMemLoad : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DMemAddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DMemStore : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DMemWen : out STD_LOGIC;
    Dhigh : out STD_LOGIC;
    Dlow : out STD_LOGIC;
    DONE : out STD_LOGIC
  );

end microcontroler_tb_uCtb_0_0;

architecture stub of microcontroler_tb_uCtb_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,RST,IMem[31:0],STALL,IMemAddr[31:0],DMemLoad[31:0],DMemAddr[31:0],DMemStore[31:0],DMemWen,Dhigh,Dlow,DONE";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "uCtb,Vivado 2018.3";
begin
end;
