// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Nov 30 23:24:45 2022
// Host        : DESTROYER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Yoadmin/Documents/vivado/RV32I/RV32I.srcs/sources_1/bd/microcontroler_tb/ip/microcontroler_tb_uCtb_0_0/microcontroler_tb_uCtb_0_0_stub.v
// Design      : microcontroler_tb_uCtb_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "uCtb,Vivado 2018.3" *)
module microcontroler_tb_uCtb_0_0(CLK, RST, IMem, STALL, IMemAddr, DMemLoad, DMemAddr, 
  DMemStore, DMemWen, Dhigh, Dlow, DONE)
/* synthesis syn_black_box black_box_pad_pin="CLK,RST,IMem[31:0],STALL,IMemAddr[31:0],DMemLoad[31:0],DMemAddr[31:0],DMemStore[31:0],DMemWen,Dhigh,Dlow,DONE" */;
  input CLK;
  input RST;
  input [31:0]IMem;
  input STALL;
  output [31:0]IMemAddr;
  input [31:0]DMemLoad;
  output [31:0]DMemAddr;
  output [31:0]DMemStore;
  output DMemWen;
  output Dhigh;
  output Dlow;
  output DONE;
endmodule
