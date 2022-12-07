*SPICE netlist created from verilog structural netlist module csr by vlog2Spice (qflow)
*This file may contain array delimiters, not for use in simulation.

** Start of included library /usr/share/qflow/tech/osu018/osu018_stdcells.sp

.subckt AND2X1 Y B vdd gnd A
M0 a_2_6# A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A a_2_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 gnd B a_9_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_6# gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AND2X1

.subckt AND2X2 vdd gnd A B Y
M0 a_2_6# A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A a_2_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 gnd B a_9_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AND2X2

.subckt AOI21X1 gnd vdd A B Y C
M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_12_6# A gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y B a_12_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 gnd C Y Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AOI21X1

.subckt AOI22X1 gnd vdd C D Y A B
M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y D a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# C Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_11_6# A gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y B a_11_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_28_6# D Y Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 gnd C a_28_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AOI22X1

.subckt BUFX2 vdd gnd A Y
M0 vdd A a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_2_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 gnd A a_2_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 Y a_2_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends BUFX2

.subckt BUFX4 vdd gnd A Y
M0 vdd A a_2_6# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_2_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd a_2_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 gnd A a_2_6# Gnd nfet w=1.5u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y a_2_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 gnd a_2_6# Y Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends BUFX4

.subckt CLKBUF1 A vdd gnd Y
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_9_6# A gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 gnd A a_9_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_25_6# a_9_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 gnd a_9_6# a_25_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_41_6# a_25_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 gnd a_25_6# a_41_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_41_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 gnd a_41_6# Y Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF1

.subckt CLKBUF2 vdd gnd A Y
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 Y a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_9_6# A gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 gnd A a_9_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_25_6# a_9_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 gnd a_9_6# a_25_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_41_6# a_25_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 gnd a_25_6# a_41_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_57_6# a_41_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 gnd a_41_6# a_57_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_73_6# a_57_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 gnd a_57_6# a_73_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 Y a_73_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 gnd a_73_6# Y Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF2

.subckt CLKBUF3 gnd vdd A Y
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_89_6# a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# a_89_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_105_6# a_89_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 vdd a_89_6# a_105_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_105_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_105_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_9_6# A gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 gnd A a_9_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_25_6# a_9_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 gnd a_9_6# a_25_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_41_6# a_25_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 gnd a_25_6# a_41_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_57_6# a_41_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 gnd a_41_6# a_57_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_73_6# a_57_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 gnd a_57_6# a_73_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_89_6# a_73_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 gnd a_73_6# a_89_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 a_105_6# a_89_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 gnd a_89_6# a_105_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 Y a_105_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 gnd a_105_6# Y Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF3

.subckt DFFNEGX1 CLK vdd D gnd Q
M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# CLK a_23_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_23_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# CLK a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# a_2_6# a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 gnd CLK a_2_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_23_6# CLK a_17_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# a_2_6# a_23_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 gnd a_34_4# a_31_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_23_6# gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# a_2_6# a_61_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# CLK a_66_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 gnd Q a_76_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFNEGX1

.subckt DFFPOSX1 vdd D gnd Q CLK
M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_22_6# CLK a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# a_2_6# a_22_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_22_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# a_2_6# a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# CLK a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 gnd CLK a_2_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_22_6# a_2_6# a_17_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# CLK a_22_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 gnd a_34_4# a_31_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_22_6# gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# CLK a_61_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# a_2_6# a_66_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 gnd Q a_76_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFPOSX1

.subckt DFFSR gnd vdd D S R Q CLK
M0 a_2_6# R vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd a_10_61# a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_10_61# a_23_27# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd S a_10_61# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_23_27# a_47_71# a_2_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_57_6# a_47_4# a_23_27# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd D a_57_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_47_71# a_47_4# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_47_71# CLK vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_105_6# a_47_71# a_10_61# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_113_6# a_47_4# a_105_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_122_6# a_105_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 vdd R a_122_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_113_6# a_122_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 vdd S a_113_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_122_6# Q vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_10_6# R a_2_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 gnd a_10_61# a_10_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_26_6# a_23_27# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_10_61# S a_26_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_23_27# a_47_4# a_2_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_57_6# a_47_71# a_23_27# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 gnd D a_57_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 gnd a_47_71# a_47_4# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_47_71# CLK gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 a_105_6# a_47_4# a_10_61# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_113_6# a_47_71# a_105_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 a_130_6# a_105_6# a_122_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 gnd R a_130_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 a_146_6# a_122_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 a_113_6# S a_146_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 gnd a_122_6# Q Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFSR

.subckt FAX1 gnd vdd A B C YC YS
M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_33_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd B a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C vdd vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd A a_84_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 gnd A a_2_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 gnd A a_33_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 gnd B a_46_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 gnd A a_84_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1

.subckt FILL vdd gnd
.ends FILL

.subckt HAX1 vdd gnd YC A B YS
M0 vdd A a_2_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_74# B vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd a_2_74# YC vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_41_74# a_2_74# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_49_54# B a_41_74# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd A a_49_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 YS a_41_74# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_9_6# A gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_2_74# B a_9_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 gnd a_2_74# YC Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_38_6# a_2_74# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_41_74# B a_38_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_38_6# A a_41_74# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YS a_41_74# gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends HAX1

.subckt INVX1 A Y vdd gnd
M0 Y A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y A gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX1

.subckt INVX2 vdd gnd Y A
M0 Y A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y A gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX2

.subckt INVX4 vdd gnd Y A
M0 Y A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 gnd A Y Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX4

.subckt INVX8 vdd gnd A Y
M0 Y A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y A gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 gnd A Y Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y A gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 gnd A Y Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX8

.subckt LATCH D Q gnd vdd CLK
M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_18_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_84# CLK a_23_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd Q a_35_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 gnd CLK a_2_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Q a_23_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# D gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_23_6# CLK a_18_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# a_23_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 gnd Q a_35_6# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_23_6# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends LATCH

.subckt MUX2X1 S vdd gnd Y A B
M0 vdd S a_2_10# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_50# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y S a_17_50# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_30_54# a_2_10# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_30_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 gnd S a_2_10# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_17_10# B gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 Y a_2_10# a_17_10# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_30_10# S Y Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 gnd A a_30_10# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends MUX2X1

.subckt NAND2X1 vdd Y gnd A B
M0 Y A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B Y vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_9_6# A gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 Y B a_9_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NAND2X1

.subckt NAND3X1 B vdd gnd A C Y
M0 Y A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B Y vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y C vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A gnd Gnd nfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_14_6# B a_9_6# Gnd nfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y C a_14_6# Gnd nfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NAND3X1

.subckt NOR2X1 vdd B gnd Y A
M0 a_9_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 gnd B Y Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NOR2X1

.subckt NOR3X1 vdd gnd B C A Y
M0 vdd A a_2_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_64# A vdd vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_64# B a_2_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_64# B a_25_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y C a_25_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_25_64# C Y vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y A gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 gnd B Y Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y C gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NOR3X1

.subckt OAI21X1 gnd vdd A B Y C
M0 a_9_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd C Y vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 gnd A a_2_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_2_6# B gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y C a_2_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OAI21X1

.subckt OAI22X1 gnd vdd D C A B Y
M0 a_9_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_28_54# D Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd C a_28_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 gnd A a_2_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_2_6# B gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y D a_2_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_2_6# C Y Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OAI22X1

.subckt OR2X1 Y B vdd gnd A
M0 a_9_54# A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_54# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# A gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 gnd B a_2_54# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_54# gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OR2X1

.subckt OR2X2 Y B vdd gnd A
M0 a_9_54# A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_54# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# A gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 gnd B a_2_54# Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_54# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OR2X2

.subckt TBUFX1 vdd gnd EN A Y
M0 a_9_6# EN vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_26_54# a_9_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd A a_26_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# EN gnd Gnd nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_26_6# EN Y Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 gnd A a_26_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends TBUFX1

.subckt TBUFX2 vdd gnd A EN Y
M0 a_9_6# EN vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_9_6# a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_18_54# a_9_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd A a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_18_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_9_6# EN gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y EN a_18_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# EN Y Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 gnd A a_18_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_18_6# A gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends TBUFX2

.subckt XNOR2X1 A B gnd vdd Y
M0 vdd A a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_12_41# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_12_41# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 gnd A a_2_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_12_41# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y A a_18_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# Y Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 gnd B a_35_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_12_41# B gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends XNOR2X1

.subckt XOR2X1 Y vdd B A gnd
M0 vdd A a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_13_43# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# a_2_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_13_43# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 gnd A a_2_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_13_43# gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y a_2_6# a_18_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# A Y Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 gnd B a_35_6# Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_13_43# B gnd Gnd nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends XOR2X1

** End of included library /usr/share/qflow/tech/osu018/osu018_stdcells.sp

.subckt csr vdd gnd CSR_IRQ CSR_PCaddr[0] CSR_PCaddr[1] CSR_PCaddr[2] CSR_PCaddr[3]
+ CSR_PCaddr[4] CSR_PCaddr[5] CSR_PCaddr[6] CSR_PCaddr[7] CSR_PCaddr[8] CSR_PCaddr[9] CSR_PCaddr[10] CSR_PCaddr[11]
+ CSR_PCaddr[12] CSR_PCaddr[13] CSR_PCaddr[14] CSR_PCaddr[15] CSR_PCaddr[16] CSR_PCaddr[17] CSR_PCaddr[18] CSR_PCaddr[19]
+ CSR_PCaddr[20] CSR_PCaddr[21] CSR_PCaddr[22] CSR_PCaddr[23] CSR_PCaddr[24] CSR_PCaddr[25] CSR_PCaddr[26] CSR_PCaddr[27]
+ CSR_PCaddr[28] CSR_PCaddr[29] CSR_PCaddr[30] CSR_PCaddr[31] CSR_Ret CSR_Wdata[0] CSR_Wdata[1] CSR_Wdata[2]
+ CSR_Wdata[3] CSR_Wdata[4] CSR_Wdata[5] CSR_Wdata[6] CSR_Wdata[7] CSR_Wdata[8] CSR_Wdata[9] CSR_Wdata[10]
+ CSR_Wdata[11] CSR_Wdata[12] CSR_Wdata[13] CSR_Wdata[14] CSR_Wdata[15] CSR_Wdata[16] CSR_Wdata[17] CSR_Wdata[18]
+ CSR_Wdata[19] CSR_Wdata[20] CSR_Wdata[21] CSR_Wdata[22] CSR_Wdata[23] CSR_Wdata[24] CSR_Wdata[25] CSR_Wdata[26]
+ CSR_Wdata[27] CSR_Wdata[28] CSR_Wdata[29] CSR_Wdata[30] CSR_Wdata[31] CSR_Wen CSR_Wen_traps CSR_addr[0]
+ CSR_addr[1] CSR_addr[2] CSR_addr[3] CSR_addr[4] CSR_addr[5] CSR_addr[6] CSR_addr[7] CSR_addr[8]
+ CSR_addr[9] CSR_addr[10] CSR_addr[11] CSR_data[0] CSR_data[1] CSR_data[2] CSR_data[3] CSR_data[4]
+ CSR_data[5] CSR_data[6] CSR_data[7] CSR_data[8] CSR_data[9] CSR_data[10] CSR_data[11] CSR_data[12]
+ CSR_data[13] CSR_data[14] CSR_data[15] CSR_data[16] CSR_data[17] CSR_data[18] CSR_data[19] CSR_data[20]
+ CSR_data[21] CSR_data[22] CSR_data[23] CSR_data[24] CSR_data[25] CSR_data[26] CSR_data[27] CSR_data[28]
+ CSR_data[29] CSR_data[30] CSR_data[31] CSR_mcause[0] CSR_mcause[1] CSR_mcause[2] CSR_mcause[3] CSR_mepc[0]
+ CSR_mepc[1] CSR_mepc[2] CSR_mepc[3] CSR_mepc[4] CSR_mepc[5] CSR_mepc[6] CSR_mepc[7] CSR_mepc[8]
+ CSR_mepc[9] CSR_mepc[10] CSR_mepc[11] CSR_mepc[12] CSR_mepc[13] CSR_mepc[14] CSR_mepc[15] CSR_mepc[16]
+ CSR_mepc[17] CSR_mepc[18] CSR_mepc[19] CSR_mepc[20] CSR_mepc[21] CSR_mepc[22] CSR_mepc[23] CSR_mepc[24]
+ CSR_mepc[25] CSR_mepc[26] CSR_mepc[27] CSR_mepc[28] CSR_mepc[29] CSR_mepc[30] CSR_mepc[31] Extern_IRQ
+ clk 

XBUFX2_insert71 vdd gnd _31_ _31__bF$buf0 BUFX2
XBUFX2_insert70 vdd gnd _31_ _31__bF$buf1 BUFX2
XBUFX2_insert69 vdd gnd _31_ _31__bF$buf2 BUFX2
XBUFX2_insert68 vdd gnd _31_ _31__bF$buf3 BUFX2
XBUFX2_insert67 vdd gnd _31_ _31__bF$buf4 BUFX2
XBUFX2_insert66 vdd gnd CSR_Ret CSR_Ret_bF$buf0 BUFX2
XBUFX2_insert65 vdd gnd CSR_Ret CSR_Ret_bF$buf1 BUFX2
XBUFX2_insert64 vdd gnd CSR_Ret CSR_Ret_bF$buf2 BUFX2
XBUFX2_insert63 vdd gnd CSR_Ret CSR_Ret_bF$buf3 BUFX2
XBUFX2_insert62 vdd gnd CSR_Ret CSR_Ret_bF$buf4 BUFX2
XBUFX2_insert61 vdd gnd CSR_Ret CSR_Ret_bF$buf5 BUFX2
XBUFX2_insert60 vdd gnd _11_ _11__bF$buf0 BUFX2
XBUFX2_insert59 vdd gnd _11_ _11__bF$buf1 BUFX2
XBUFX2_insert58 vdd gnd _11_ _11__bF$buf2 BUFX2
XBUFX2_insert57 vdd gnd _11_ _11__bF$buf3 BUFX2
XBUFX2_insert56 vdd gnd _11_ _11__bF$buf4 BUFX2
XBUFX2_insert55 vdd gnd _237_ _237__bF$buf0 BUFX2
XBUFX2_insert54 vdd gnd _237_ _237__bF$buf1 BUFX2
XBUFX2_insert53 vdd gnd _237_ _237__bF$buf2 BUFX2
XBUFX2_insert52 vdd gnd _237_ _237__bF$buf3 BUFX2
XBUFX2_insert51 vdd gnd _237_ _237__bF$buf4 BUFX2
XBUFX2_insert50 vdd gnd _108_ _108__bF$buf0 BUFX2
XBUFX2_insert49 vdd gnd _108_ _108__bF$buf1 BUFX2
XBUFX2_insert48 vdd gnd _108_ _108__bF$buf2 BUFX2
XBUFX2_insert47 vdd gnd _108_ _108__bF$buf3 BUFX2
XBUFX2_insert46 vdd gnd _108_ _108__bF$buf4 BUFX2
XBUFX2_insert45 vdd gnd _114_ _114__bF$buf0 BUFX2
XBUFX2_insert44 vdd gnd _114_ _114__bF$buf1 BUFX2
XBUFX2_insert43 vdd gnd _114_ _114__bF$buf2 BUFX2
XBUFX2_insert42 vdd gnd _114_ _114__bF$buf3 BUFX2
XBUFX2_insert41 vdd gnd _114_ _114__bF$buf4 BUFX2
XBUFX2_insert40 vdd gnd _114_ _114__bF$buf5 BUFX2
XBUFX2_insert39 vdd gnd _114_ _114__bF$buf6 BUFX2
XBUFX2_insert38 vdd gnd _170_ _170__bF$buf0 BUFX2
XBUFX2_insert37 vdd gnd _170_ _170__bF$buf1 BUFX2
XBUFX2_insert36 vdd gnd _170_ _170__bF$buf2 BUFX2
XBUFX2_insert35 vdd gnd _170_ _170__bF$buf3 BUFX2
XBUFX2_insert34 vdd gnd _170_ _170__bF$buf4 BUFX2
XBUFX2_insert33 vdd gnd _170_ _170__bF$buf5 BUFX2
XBUFX2_insert32 vdd gnd _170_ _170__bF$buf6 BUFX2
XBUFX2_insert31 vdd gnd _24_ _24__bF$buf0 BUFX2
XBUFX2_insert30 vdd gnd _24_ _24__bF$buf1 BUFX2
XBUFX2_insert29 vdd gnd _24_ _24__bF$buf2 BUFX2
XBUFX2_insert28 vdd gnd _24_ _24__bF$buf3 BUFX2
XBUFX2_insert27 vdd gnd _24_ _24__bF$buf4 BUFX2
XBUFX2_insert26 vdd gnd CSR_Wen_traps CSR_Wen_traps_bF$buf0 BUFX2
XBUFX2_insert25 vdd gnd CSR_Wen_traps CSR_Wen_traps_bF$buf1 BUFX2
XBUFX2_insert24 vdd gnd CSR_Wen_traps CSR_Wen_traps_bF$buf2 BUFX2
XBUFX2_insert23 vdd gnd CSR_Wen_traps CSR_Wen_traps_bF$buf3 BUFX2
XBUFX2_insert22 vdd gnd CSR_Wen_traps CSR_Wen_traps_bF$buf4 BUFX2
XBUFX2_insert21 vdd gnd CSR_Wen_traps CSR_Wen_traps_bF$buf5 BUFX2
XBUFX2_insert20 vdd gnd _235_ _235__bF$buf0 BUFX2
XBUFX2_insert19 vdd gnd _235_ _235__bF$buf1 BUFX2
XBUFX2_insert18 vdd gnd _235_ _235__bF$buf2 BUFX2
XBUFX2_insert17 vdd gnd _235_ _235__bF$buf3 BUFX2
XBUFX2_insert16 vdd gnd _235_ _235__bF$buf4 BUFX2
XCLKBUF1_insert15 clk vdd gnd clk_bF$buf0 CLKBUF1
XCLKBUF1_insert14 clk vdd gnd clk_bF$buf1 CLKBUF1
XCLKBUF1_insert13 clk vdd gnd clk_bF$buf2 CLKBUF1
XCLKBUF1_insert12 clk vdd gnd clk_bF$buf3 CLKBUF1
XCLKBUF1_insert11 clk vdd gnd clk_bF$buf4 CLKBUF1
XCLKBUF1_insert10 clk vdd gnd clk_bF$buf5 CLKBUF1
XCLKBUF1_insert9 clk vdd gnd clk_bF$buf6 CLKBUF1
XCLKBUF1_insert8 clk vdd gnd clk_bF$buf7 CLKBUF1
XCLKBUF1_insert7 clk vdd gnd clk_bF$buf8 CLKBUF1
XBUFX2_insert6 vdd gnd _112_ _112__bF$buf0 BUFX2
XBUFX2_insert5 vdd gnd _112_ _112__bF$buf1 BUFX2
XBUFX2_insert4 vdd gnd _112_ _112__bF$buf2 BUFX2
XBUFX2_insert3 vdd gnd _112_ _112__bF$buf3 BUFX2
XBUFX2_insert2 vdd gnd _112_ _112__bF$buf4 BUFX2
XBUFX2_insert1 vdd gnd _112_ _112__bF$buf5 BUFX2
XBUFX2_insert0 vdd gnd _112_ _112__bF$buf6 BUFX2
X_1000_ vdd _375_ gnd mepc[11] CSR_Ret_bF$buf5 NAND2X1
X_1001_ gnd vdd _372_ _192_ _376_ _194_ OAI21X1
X_1002_ _376_ _377_ vdd gnd INVX1
X_1003_ vdd _378_ gnd mvect[12] mvect[13] NAND2X1
X_1004_ gnd vdd _372_ _378_ _379_ _108__bF$buf4 OAI21X1
X_1005_ gnd vdd _377_ _379_ _486_[13] _375_ OAI21X1
X_1006_ vdd _380_ gnd mepc[12] CSR_Ret_bF$buf4 NAND2X1
X_1007_ gnd vdd _372_ _378_ _381_ _196_ OAI21X1
X_1008_ _381_ _382_ vdd gnd INVX1
X_1009_ _383_ _378_ vdd gnd _372_ OR2X2
X_1010_ gnd vdd _383_ _196_ _384_ _108__bF$buf3 OAI21X1
X_1011_ gnd vdd _384_ _382_ _486_[14] _380_ OAI21X1
X_1012_ vdd _385_ gnd mepc[13] CSR_Ret_bF$buf3 NAND2X1
X_1013_ gnd vdd _383_ _196_ _386_ _198_ OAI21X1
X_1014_ _386_ _387_ vdd gnd INVX1
X_1015_ vdd _388_ gnd mvect[14] mvect[15] NAND2X1
X_1016_ _389_ _388_ vdd gnd _378_ OR2X2
X_1017_ gnd vdd _372_ _389_ _390_ _108__bF$buf2 OAI21X1
X_1018_ gnd vdd _387_ _390_ _486_[15] _385_ OAI21X1
X_1019_ vdd _391_ gnd mepc[14] CSR_Ret_bF$buf2 NAND2X1
X_1020_ vdd _372_ gnd _392_ _389_ NOR2X1
X_1021_ vdd _388_ gnd _393_ _378_ NOR2X1
X_1022_ _393_ vdd gnd _371_ _350_ _394_ NAND3X1
X_1023_ vdd _394_ gnd _395_ _328_ NOR2X1
X_1024_ vdd _396_ gnd mvect[16] _395_ NAND2X1
X_1025_ gnd vdd mvect[16] _392_ _397_ _396_ OAI21X1
X_1026_ gnd vdd _397_ CSR_Ret_bF$buf1 _486_[16] _391_ OAI21X1
X_1027_ vdd _398_ gnd mepc[15] CSR_Ret_bF$buf0 NAND2X1
X_1028_ gnd vdd mvect[16] _395_ _399_ mvect[17] AOI21X1
X_1029_ vdd gnd _400_ _392_ INVX2
X_1030_ vdd _401_ gnd mvect[16] mvect[17] NAND2X1
X_1031_ gnd vdd _400_ _401_ _402_ _108__bF$buf1 OAI21X1
X_1032_ gnd vdd _402_ _399_ _486_[17] _398_ OAI21X1
X_1033_ vdd _403_ gnd mepc[16] CSR_Ret_bF$buf5 NAND2X1
X_1034_ vdd gnd mvect[16] mvect[17] _404_ AND2X2
X_1035_ gnd vdd _404_ _392_ _405_ mvect[18] AOI21X1
X_1036_ vdd _406_ gnd mvect[18] _404_ NAND2X1
X_1037_ gnd vdd _400_ _406_ _407_ _108__bF$buf0 OAI21X1
X_1038_ gnd vdd _407_ _405_ _486_[18] _403_ OAI21X1
X_1039_ vdd _408_ gnd mepc[17] CSR_Ret_bF$buf4 NAND2X1
X_1040_ _406_ _409_ vdd gnd INVX1
X_1041_ gnd vdd _409_ _395_ _410_ mvect[19] AOI21X1
X_1042_ vdd gnd mvect[18] mvect[19] _411_ AND2X2
X_1043_ vdd _412_ gnd _404_ _411_ NAND2X1
X_1044_ gnd vdd _400_ _412_ _413_ _108__bF$buf4 OAI21X1
X_1045_ gnd vdd _413_ _410_ _486_[19] _408_ OAI21X1
X_1046_ vdd _414_ gnd mepc[18] CSR_Ret_bF$buf3 NAND2X1
X_1047_ _411_ vdd gnd _404_ _392_ _415_ NAND3X1
X_1048_ vdd gnd _415_ _208_ _416_ AND2X2
X_1049_ gnd vdd _415_ _208_ _417_ _108__bF$buf3 OAI21X1
X_1050_ gnd vdd _416_ _417_ _486_[20] _414_ OAI21X1
X_1051_ vdd _418_ gnd mepc[19] CSR_Ret_bF$buf2 NAND2X1
X_1052_ vdd _412_ gnd _419_ _208_ NOR2X1
X_1053_ gnd vdd _419_ _395_ _420_ mvect[21] AOI21X1
X_1054_ vdd gnd mvect[20] mvect[21] _421_ AND2X2
X_1055_ _411_ vdd gnd _404_ _421_ _422_ NAND3X1
X_1056_ gnd vdd _400_ _422_ _423_ _108__bF$buf2 OAI21X1
X_1057_ gnd vdd _423_ _420_ _486_[21] _418_ OAI21X1
X_1058_ vdd _424_ gnd mepc[20] CSR_Ret_bF$buf1 NAND2X1
X_1059_ vdd _425_ gnd mvect[18] mvect[19] NAND2X1
X_1060_ vdd _426_ gnd mvect[20] mvect[21] NAND2X1
X_1061_ vdd gnd _425_ _426_ _401_ _427_ NOR3X1
X_1062_ _393_ vdd gnd _371_ _427_ _428_ NAND3X1
X_1063_ vdd _428_ gnd _429_ _356_ NOR2X1
X_1064_ vdd _429_ gnd _430_ mvect[22] NOR2X1
X_1065_ vdd _431_ gnd mvect[22] _429_ NAND2X1
X_1066_ vdd _432_ gnd _108__bF$buf1 _431_ NAND2X1
X_1067_ gnd vdd _432_ _430_ _486_[22] _424_ OAI21X1
X_1068_ vdd _108__bF$buf0 gnd _433_ mepc[21] NOR2X1
X_1069_ _434_ mvect[23] vdd gnd _431_ OR2X2
X_1070_ gnd vdd mvect[23] _431_ _435_ CSR_Ret_bF$buf0 AOI21X1
X_1071_ gnd vdd _435_ _434_ _486_[23] _433_ AOI21X1
X_1072_ vdd _436_ gnd mepc[22] CSR_Ret_bF$buf5 NAND2X1
X_1073_ vdd _437_ gnd mvect[22] mvect[23] NAND2X1
X_1074_ vdd gnd _437_ _428_ _356_ _438_ NOR3X1
X_1075_ vdd _438_ gnd _439_ mvect[24] NOR2X1
X_1076_ _438_ _440_ vdd gnd INVX1
X_1077_ gnd vdd _440_ _216_ _441_ _108__bF$buf4 OAI21X1
X_1078_ gnd vdd _441_ _439_ _486_[24] _436_ OAI21X1
X_1079_ vdd _442_ gnd mepc[23] CSR_Ret_bF$buf4 NAND2X1
X_1080_ gnd vdd mvect[24] _438_ _443_ mvect[25] AOI21X1
X_1081_ vdd _444_ gnd mvect[24] mvect[25] NAND2X1
X_1082_ gnd vdd _440_ _444_ _445_ _108__bF$buf3 OAI21X1
X_1083_ gnd vdd _445_ _443_ _486_[25] _442_ OAI21X1
X_1084_ _444_ _446_ vdd gnd INVX1
X_1085_ gnd vdd _446_ _438_ _447_ mvect[26] AOI21X1
X_1086_ _446_ vdd gnd mvect[26] _438_ _448_ NAND3X1
X_1087_ vdd _449_ gnd _108__bF$buf2 _448_ NAND2X1
X_1088_ vdd _450_ gnd mepc[24] CSR_Ret_bF$buf3 NAND2X1
X_1089_ gnd vdd _449_ _447_ _486_[26] _450_ OAI21X1
X_1090_ _108__bF$buf1 vdd gnd _222_ _448_ _451_ NAND3X1
X_1091_ vdd _108__bF$buf0 gnd _452_ mepc[25] NOR2X1
X_1092_ vdd _453_ gnd mvect[26] mvect[27] NAND2X1
X_1093_ vdd _453_ gnd _454_ _444_ NOR2X1
X_1094_ vdd gnd _454_ _108__bF$buf4 _455_ AND2X2
X_1095_ gnd vdd _455_ _438_ _456_ _452_ AOI21X1
X_1096_ vdd gnd _451_ _456_ _486_[27] AND2X2
X_1097_ vdd _457_ gnd mepc[26] CSR_Ret_bF$buf2 NAND2X1
X_1098_ vdd gnd _444_ _453_ _437_ _458_ NOR3X1
X_1099_ _458_ _459_ vdd gnd INVX1
X_1100_ vdd gnd _459_ _428_ _356_ _460_ NOR3X1
X_1101_ vdd _460_ gnd _461_ mvect[28] NOR2X1
X_1102_ vdd gnd _389_ _422_ _368_ _462_ NOR3X1
X_1103_ _458_ vdd gnd _351_ _462_ _463_ NAND3X1
X_1104_ gnd vdd _463_ _224_ _464_ _108__bF$buf3 OAI21X1
X_1105_ gnd vdd _464_ _461_ _486_[28] _457_ OAI21X1
X_1106_ vdd _108__bF$buf2 gnd _465_ mepc[27] NOR2X1
X_1107_ vdd _466_ gnd mvect[28] _460_ NAND2X1
X_1108_ _467_ mvect[29] vdd gnd _466_ OR2X2
X_1109_ gnd vdd mvect[29] _466_ _468_ CSR_Ret_bF$buf1 AOI21X1
X_1110_ gnd vdd _468_ _467_ _486_[29] _465_ AOI21X1
X_1111_ mepc[28] _469_ vdd gnd INVX1
X_1112_ vdd _470_ gnd mvect[28] mvect[29] NAND2X1
X_1113_ vdd gnd _470_ _157_ _0_ _471_ NOR3X1
X_1114_ _458_ vdd gnd _350_ _471_ _472_ NAND3X1
X_1115_ gnd vdd _472_ _428_ _473_ mvect[30] OAI21X1
X_1116_ _473_ _474_ vdd gnd INVX1
X_1117_ vdd _472_ gnd _475_ _428_ NOR2X1
X_1118_ vdd gnd _475_ _228_ _476_ AND2X2
X_1119_ gnd vdd _476_ _474_ _477_ _108__bF$buf1 OAI21X1
X_1120_ gnd vdd _469_ _108__bF$buf0 _486_[30] _477_ OAI21X1
X_1121_ _470_ _478_ vdd gnd INVX1
X_1122_ vdd _479_ gnd mvect[30] _478_ NAND2X1
X_1123_ _479_ _480_ vdd gnd INVX1
X_1124_ gnd vdd _480_ _460_ _481_ _230_ AOI21X1
X_1125_ vdd gnd _479_ _463_ mvect[31] _482_ NOR3X1
X_1126_ gnd vdd _482_ _481_ _483_ _108__bF$buf4 OAI21X1
X_1127_ vdd _484_ gnd mepc[29] CSR_Ret_bF$buf0 NAND2X1
X_1128_ vdd _486_[31] gnd _484_ _483_ NAND2X1
X_1129_ vdd gnd _485_ CSR_IRQ BUFX2
X_1130_ vdd gnd gnd CSR_PCaddr[0] BUFX2
X_1131_ vdd gnd gnd CSR_PCaddr[1] BUFX2
X_1132_ vdd gnd _486_[2] CSR_PCaddr[2] BUFX2
X_1133_ vdd gnd _486_[3] CSR_PCaddr[3] BUFX2
X_1134_ vdd gnd _486_[4] CSR_PCaddr[4] BUFX2
X_1135_ vdd gnd _486_[5] CSR_PCaddr[5] BUFX2
X_1136_ vdd gnd _486_[6] CSR_PCaddr[6] BUFX2
X_1137_ vdd gnd _486_[7] CSR_PCaddr[7] BUFX2
X_1138_ vdd gnd _486_[8] CSR_PCaddr[8] BUFX2
X_1139_ vdd gnd _486_[9] CSR_PCaddr[9] BUFX2
X_1140_ vdd gnd _486_[10] CSR_PCaddr[10] BUFX2
X_1141_ vdd gnd _486_[11] CSR_PCaddr[11] BUFX2
X_1142_ vdd gnd _486_[12] CSR_PCaddr[12] BUFX2
X_1143_ vdd gnd _486_[13] CSR_PCaddr[13] BUFX2
X_1144_ vdd gnd _486_[14] CSR_PCaddr[14] BUFX2
X_1145_ vdd gnd _486_[15] CSR_PCaddr[15] BUFX2
X_1146_ vdd gnd _486_[16] CSR_PCaddr[16] BUFX2
X_1147_ vdd gnd _486_[17] CSR_PCaddr[17] BUFX2
X_1148_ vdd gnd _486_[18] CSR_PCaddr[18] BUFX2
X_1149_ vdd gnd _486_[19] CSR_PCaddr[19] BUFX2
X_1150_ vdd gnd _486_[20] CSR_PCaddr[20] BUFX2
X_1151_ vdd gnd _486_[21] CSR_PCaddr[21] BUFX2
X_1152_ vdd gnd _486_[22] CSR_PCaddr[22] BUFX2
X_1153_ vdd gnd _486_[23] CSR_PCaddr[23] BUFX2
X_1154_ vdd gnd _486_[24] CSR_PCaddr[24] BUFX2
X_1155_ vdd gnd _486_[25] CSR_PCaddr[25] BUFX2
X_1156_ vdd gnd _486_[26] CSR_PCaddr[26] BUFX2
X_1157_ vdd gnd _486_[27] CSR_PCaddr[27] BUFX2
X_1158_ vdd gnd _486_[28] CSR_PCaddr[28] BUFX2
X_1159_ vdd gnd _486_[29] CSR_PCaddr[29] BUFX2
X_1160_ vdd gnd _486_[30] CSR_PCaddr[30] BUFX2
X_1161_ vdd gnd _486_[31] CSR_PCaddr[31] BUFX2
X_1162_ vdd gnd _487_[0] CSR_data[0] BUFX2
X_1163_ vdd gnd _487_[1] CSR_data[1] BUFX2
X_1164_ vdd gnd _487_[2] CSR_data[2] BUFX2
X_1165_ vdd gnd _487_[3] CSR_data[3] BUFX2
X_1166_ vdd gnd _487_[4] CSR_data[4] BUFX2
X_1167_ vdd gnd _487_[5] CSR_data[5] BUFX2
X_1168_ vdd gnd _487_[6] CSR_data[6] BUFX2
X_1169_ vdd gnd _487_[7] CSR_data[7] BUFX2
X_1170_ vdd gnd _487_[8] CSR_data[8] BUFX2
X_1171_ vdd gnd _487_[9] CSR_data[9] BUFX2
X_1172_ vdd gnd _487_[10] CSR_data[10] BUFX2
X_1173_ vdd gnd _487_[11] CSR_data[11] BUFX2
X_1174_ vdd gnd _487_[12] CSR_data[12] BUFX2
X_1175_ vdd gnd _487_[13] CSR_data[13] BUFX2
X_1176_ vdd gnd _487_[14] CSR_data[14] BUFX2
X_1177_ vdd gnd _487_[15] CSR_data[15] BUFX2
X_1178_ vdd gnd _487_[16] CSR_data[16] BUFX2
X_1179_ vdd gnd _487_[17] CSR_data[17] BUFX2
X_1180_ vdd gnd _487_[18] CSR_data[18] BUFX2
X_1181_ vdd gnd _487_[19] CSR_data[19] BUFX2
X_1182_ vdd gnd _487_[20] CSR_data[20] BUFX2
X_1183_ vdd gnd _487_[21] CSR_data[21] BUFX2
X_1184_ vdd gnd _487_[22] CSR_data[22] BUFX2
X_1185_ vdd gnd _487_[23] CSR_data[23] BUFX2
X_1186_ vdd gnd _487_[24] CSR_data[24] BUFX2
X_1187_ vdd gnd _487_[25] CSR_data[25] BUFX2
X_1188_ vdd gnd _487_[26] CSR_data[26] BUFX2
X_1189_ vdd gnd _487_[27] CSR_data[27] BUFX2
X_1190_ vdd gnd _487_[28] CSR_data[28] BUFX2
X_1191_ vdd gnd _487_[29] CSR_data[29] BUFX2
X_1192_ vdd gnd _487_[30] CSR_data[30] BUFX2
X_1193_ vdd gnd _487_[31] CSR_data[31] BUFX2
X_1194_ vdd _21_[0] gnd mepc[0] clk_bF$buf8 DFFPOSX1
X_1195_ vdd _21_[1] gnd mepc[1] clk_bF$buf7 DFFPOSX1
X_1196_ vdd _21_[2] gnd mepc[2] clk_bF$buf6 DFFPOSX1
X_1197_ vdd _21_[3] gnd mepc[3] clk_bF$buf5 DFFPOSX1
X_1198_ vdd _21_[4] gnd mepc[4] clk_bF$buf4 DFFPOSX1
X_1199_ vdd _21_[5] gnd mepc[5] clk_bF$buf3 DFFPOSX1
X_1200_ vdd _21_[6] gnd mepc[6] clk_bF$buf2 DFFPOSX1
X_1201_ vdd _21_[7] gnd mepc[7] clk_bF$buf1 DFFPOSX1
X_1202_ vdd _21_[8] gnd mepc[8] clk_bF$buf0 DFFPOSX1
X_1203_ vdd _21_[9] gnd mepc[9] clk_bF$buf8 DFFPOSX1
X_1204_ vdd _21_[10] gnd mepc[10] clk_bF$buf7 DFFPOSX1
X_1205_ vdd _21_[11] gnd mepc[11] clk_bF$buf6 DFFPOSX1
X_1206_ vdd _21_[12] gnd mepc[12] clk_bF$buf5 DFFPOSX1
X_1207_ vdd _21_[13] gnd mepc[13] clk_bF$buf4 DFFPOSX1
X_1208_ vdd _21_[14] gnd mepc[14] clk_bF$buf3 DFFPOSX1
X_1209_ vdd _21_[15] gnd mepc[15] clk_bF$buf2 DFFPOSX1
X_1210_ vdd _21_[16] gnd mepc[16] clk_bF$buf1 DFFPOSX1
X_1211_ vdd _21_[17] gnd mepc[17] clk_bF$buf0 DFFPOSX1
X_1212_ vdd _21_[18] gnd mepc[18] clk_bF$buf8 DFFPOSX1
X_1213_ vdd _21_[19] gnd mepc[19] clk_bF$buf7 DFFPOSX1
X_1214_ vdd _21_[20] gnd mepc[20] clk_bF$buf6 DFFPOSX1
X_1215_ vdd _21_[21] gnd mepc[21] clk_bF$buf5 DFFPOSX1
X_1216_ vdd _21_[22] gnd mepc[22] clk_bF$buf4 DFFPOSX1
X_1217_ vdd _21_[23] gnd mepc[23] clk_bF$buf3 DFFPOSX1
X_1218_ vdd _21_[24] gnd mepc[24] clk_bF$buf2 DFFPOSX1
X_1219_ vdd _21_[25] gnd mepc[25] clk_bF$buf1 DFFPOSX1
X_1220_ vdd _21_[26] gnd mepc[26] clk_bF$buf0 DFFPOSX1
X_1221_ vdd _21_[27] gnd mepc[27] clk_bF$buf8 DFFPOSX1
X_1222_ vdd _21_[28] gnd mepc[28] clk_bF$buf7 DFFPOSX1
X_1223_ vdd _21_[29] gnd mepc[29] clk_bF$buf6 DFFPOSX1
X_1224_ vdd Extern_IRQ gnd meta_irq clk_bF$buf5 DFFPOSX1
X_1225_ vdd meta_irq gnd mip clk_bF$buf4 DFFPOSX1
X_1226_ vdd _14_ gnd mie clk_bF$buf3 DFFPOSX1
X_1227_ vdd _07_[0] gnd mvect[0] clk_bF$buf2 DFFPOSX1
X_1228_ vdd _07_[1] gnd mvect[1] clk_bF$buf1 DFFPOSX1
X_1229_ vdd _07_[2] gnd mvect[2] clk_bF$buf0 DFFPOSX1
X_1230_ vdd _07_[3] gnd mvect[3] clk_bF$buf8 DFFPOSX1
X_1231_ vdd _07_[4] gnd mvect[4] clk_bF$buf7 DFFPOSX1
X_1232_ vdd _07_[5] gnd mvect[5] clk_bF$buf6 DFFPOSX1
X_1233_ vdd _07_[6] gnd mvect[6] clk_bF$buf5 DFFPOSX1
X_1234_ vdd _07_[7] gnd mvect[7] clk_bF$buf4 DFFPOSX1
X_1235_ vdd _07_[8] gnd mvect[8] clk_bF$buf3 DFFPOSX1
X_1236_ vdd _07_[9] gnd mvect[9] clk_bF$buf2 DFFPOSX1
X_1237_ vdd _07_[10] gnd mvect[10] clk_bF$buf1 DFFPOSX1
X_1238_ vdd _07_[11] gnd mvect[11] clk_bF$buf0 DFFPOSX1
X_1239_ vdd _07_[12] gnd mvect[12] clk_bF$buf8 DFFPOSX1
X_1240_ vdd _07_[13] gnd mvect[13] clk_bF$buf7 DFFPOSX1
X_1241_ vdd _07_[14] gnd mvect[14] clk_bF$buf6 DFFPOSX1
X_1242_ vdd _07_[15] gnd mvect[15] clk_bF$buf5 DFFPOSX1
X_1243_ vdd _07_[16] gnd mvect[16] clk_bF$buf4 DFFPOSX1
X_1244_ vdd _07_[17] gnd mvect[17] clk_bF$buf3 DFFPOSX1
X_1245_ vdd _07_[18] gnd mvect[18] clk_bF$buf2 DFFPOSX1
X_1246_ vdd _07_[19] gnd mvect[19] clk_bF$buf1 DFFPOSX1
X_1247_ vdd _07_[20] gnd mvect[20] clk_bF$buf0 DFFPOSX1
X_1248_ vdd _07_[21] gnd mvect[21] clk_bF$buf8 DFFPOSX1
X_1249_ vdd _07_[22] gnd mvect[22] clk_bF$buf7 DFFPOSX1
X_1250_ vdd _07_[23] gnd mvect[23] clk_bF$buf6 DFFPOSX1
X_1251_ vdd _07_[24] gnd mvect[24] clk_bF$buf5 DFFPOSX1
X_1252_ vdd _07_[25] gnd mvect[25] clk_bF$buf4 DFFPOSX1
X_1253_ vdd _07_[26] gnd mvect[26] clk_bF$buf3 DFFPOSX1
X_1254_ vdd _07_[27] gnd mvect[27] clk_bF$buf2 DFFPOSX1
X_1255_ vdd _07_[28] gnd mvect[28] clk_bF$buf1 DFFPOSX1
X_1256_ vdd _07_[29] gnd mvect[29] clk_bF$buf0 DFFPOSX1
X_1257_ vdd _07_[30] gnd mvect[30] clk_bF$buf8 DFFPOSX1
X_1258_ vdd _07_[31] gnd mvect[31] clk_bF$buf7 DFFPOSX1
X_1259_ vdd _33_[0] gnd mstatus[0] clk_bF$buf6 DFFPOSX1
X_1260_ vdd _33_[1] gnd mstatus[1] clk_bF$buf5 DFFPOSX1
X_1261_ vdd _28_[0] gnd mcause[0] clk_bF$buf4 DFFPOSX1
X_1262_ vdd _28_[1] gnd mcause[1] clk_bF$buf3 DFFPOSX1
X_1263_ vdd _28_[2] gnd mcause[2] clk_bF$buf2 DFFPOSX1
X_1264_ vdd _28_[3] gnd mcause[3] clk_bF$buf1 DFFPOSX1
X_1265_ vdd _28_[4] gnd mcause[4] clk_bF$buf0 DFFPOSX1
X_1266_ vdd _28_[5] gnd mcause[5] clk_bF$buf8 DFFPOSX1
X_1267_ vdd _28_[6] gnd mcause[6] clk_bF$buf7 DFFPOSX1
X_1268_ vdd _28_[7] gnd mcause[7] clk_bF$buf6 DFFPOSX1
X_1269_ vdd _28_[8] gnd mcause[8] clk_bF$buf5 DFFPOSX1
X_1270_ vdd _28_[9] gnd mcause[9] clk_bF$buf4 DFFPOSX1
X_1271_ vdd _28_[10] gnd mcause[10] clk_bF$buf3 DFFPOSX1
X_1272_ vdd _28_[11] gnd mcause[11] clk_bF$buf2 DFFPOSX1
X_1273_ vdd _28_[12] gnd mcause[12] clk_bF$buf1 DFFPOSX1
X_1274_ vdd _28_[13] gnd mcause[13] clk_bF$buf0 DFFPOSX1
X_1275_ vdd _28_[14] gnd mcause[14] clk_bF$buf8 DFFPOSX1
X_1276_ vdd _28_[15] gnd mcause[15] clk_bF$buf7 DFFPOSX1
X_1277_ vdd _28_[16] gnd mcause[16] clk_bF$buf6 DFFPOSX1
X_1278_ vdd _28_[17] gnd mcause[17] clk_bF$buf5 DFFPOSX1
X_1279_ vdd _28_[18] gnd mcause[18] clk_bF$buf4 DFFPOSX1
X_1280_ vdd _28_[19] gnd mcause[19] clk_bF$buf3 DFFPOSX1
X_1281_ vdd _28_[20] gnd mcause[20] clk_bF$buf2 DFFPOSX1
X_1282_ vdd _28_[21] gnd mcause[21] clk_bF$buf1 DFFPOSX1
X_1283_ vdd _28_[22] gnd mcause[22] clk_bF$buf0 DFFPOSX1
X_1284_ vdd _28_[23] gnd mcause[23] clk_bF$buf8 DFFPOSX1
X_1285_ vdd _28_[24] gnd mcause[24] clk_bF$buf7 DFFPOSX1
X_1286_ vdd _28_[25] gnd mcause[25] clk_bF$buf6 DFFPOSX1
X_1287_ vdd _28_[26] gnd mcause[26] clk_bF$buf5 DFFPOSX1
X_1288_ vdd _28_[27] gnd mcause[27] clk_bF$buf4 DFFPOSX1
X_1289_ vdd _28_[28] gnd mcause[28] clk_bF$buf3 DFFPOSX1
X_1290_ vdd _28_[29] gnd mcause[29] clk_bF$buf2 DFFPOSX1
X_1291_ vdd _28_[30] gnd mcause[30] clk_bF$buf1 DFFPOSX1
X_1292_ vdd _28_[31] gnd mcause[31] clk_bF$buf0 DFFPOSX1
X_488_ vdd gnd _0_ mvect[0] INVX2
X_489_ vdd CSR_addr[10] gnd _1_ CSR_addr[11] NOR2X1
X_490_ CSR_addr[8] vdd gnd CSR_addr[9] _1_ _2_ NAND3X1
X_491_ CSR_addr[7] _3_ vdd gnd INVX1
X_492_ vdd CSR_addr[4] gnd _4_ CSR_addr[5] NOR2X1
X_493_ CSR_addr[6] vdd gnd _3_ _4_ _5_ NAND3X1
X_494_ vdd _5_ gnd _6_ _2_ NOR2X1
X_495_ _7_ CSR_addr[2] vdd gnd CSR_addr[3] OR2X2
X_496_ CSR_addr[0] _8_ vdd gnd INVX1
X_497_ vdd _9_ gnd CSR_addr[1] _8_ NAND2X1
X_498_ vdd _9_ gnd _10_ _7_ NOR2X1
X_499_ vdd _11_ gnd _10_ _6_ NAND2X1
X_500_ vdd gnd _12_ _11__bF$buf4 INVX4
X_501_ vdd _13_ gnd mcause[0] _12_ NAND2X1
X_502_ vdd CSR_addr[6] gnd _15_ CSR_addr[7] NOR2X1
X_503_ vdd _16_ gnd _4_ _15_ NAND2X1
X_504_ vdd _2_ gnd _17_ _16_ NOR2X1
X_505_ CSR_addr[1] _18_ vdd gnd INVX1
X_506_ vdd _19_ gnd CSR_addr[0] _18_ NAND2X1
X_507_ CSR_addr[3] _20_ vdd gnd INVX1
X_508_ vdd _22_ gnd CSR_addr[2] _20_ NAND2X1
X_509_ vdd _22_ gnd _23_ _19_ NOR2X1
X_510_ vdd gnd _17_ _23_ _24_ AND2X2
X_511_ _24__bF$buf4 _25_ vdd gnd INVX1
X_512_ gnd vdd _0_ _25_ _487_[0] _13_ OAI21X1
X_513_ mvect[1] _26_ vdd gnd INVX1
X_514_ vdd _27_ gnd mcause[1] _12_ NAND2X1
X_515_ gnd vdd _26_ _25_ _487_[1] _27_ OAI21X1
X_516_ mcause[2] _29_ vdd gnd INVX1
X_517_ vdd _19_ gnd _30_ _7_ NOR2X1
X_518_ vdd gnd _6_ _30_ _31_ AND2X2
X_519_ gnd vdd mepc[0] _31__bF$buf4 _32_ _24__bF$buf3 
+ mvect[2]
+ AOI22X1
X_520_ gnd vdd _29_ _11__bF$buf3 _487_[2] _32_ OAI21X1
X_521_ mstatus[0] _34_ vdd gnd INVX1
X_522_ vdd CSR_addr[0] gnd _35_ CSR_addr[1] NOR2X1
X_523_ _17_ _36_ vdd gnd INVX1
X_524_ vdd _36_ gnd _37_ _7_ NOR2X1
X_525_ vdd _38_ gnd _35_ _37_ NAND2X1
X_526_ vdd _39_ gnd mepc[1] _31__bF$buf3 NAND2X1
X_527_ gnd vdd _12_ mcause[3] _40_ mvect[3] 
+ _24__bF$buf2
+ AOI22X1
X_528_ vdd gnd _40_ _39_ _41_ AND2X2
X_529_ gnd vdd _34_ _38_ _487_[3] _41_ OAI21X1
X_530_ mcause[4] _42_ vdd gnd INVX1
X_531_ gnd vdd mepc[2] _31__bF$buf2 _43_ _24__bF$buf1 
+ mvect[4]
+ AOI22X1
X_532_ gnd vdd _42_ _11__bF$buf2 _487_[4] _43_ OAI21X1
X_533_ mcause[5] _44_ vdd gnd INVX1
X_534_ gnd vdd mepc[3] _31__bF$buf1 _45_ _24__bF$buf0 
+ mvect[5]
+ AOI22X1
X_535_ gnd vdd _44_ _11__bF$buf1 _487_[5] _45_ OAI21X1
X_536_ mcause[6] _46_ vdd gnd INVX1
X_537_ gnd vdd mepc[4] _31__bF$buf0 _47_ _24__bF$buf4 
+ mvect[6]
+ AOI22X1
X_538_ gnd vdd _46_ _11__bF$buf0 _487_[6] _47_ OAI21X1
X_539_ mstatus[1] _48_ vdd gnd INVX1
X_540_ vdd _49_ gnd mepc[5] _31__bF$buf4 NAND2X1
X_541_ gnd vdd _12_ mcause[7] _50_ mvect[7] 
+ _24__bF$buf3
+ AOI22X1
X_542_ vdd gnd _50_ _49_ _51_ AND2X2
X_543_ gnd vdd _48_ _38_ _487_[7] _51_ OAI21X1
X_544_ vdd gnd _17_ _30_ _52_ AND2X2
X_545_ gnd vdd mvect[8] _24__bF$buf2 _53_ _52_ AOI21X1
X_546_ gnd vdd _12_ mcause[8] _54_ mepc[6] 
+ _31__bF$buf3
+ AOI22X1
X_547_ vdd _487_[8] gnd _53_ _54_ NAND2X1
X_548_ mcause[9] _55_ vdd gnd INVX1
X_549_ gnd vdd mepc[7] _31__bF$buf2 _56_ _24__bF$buf1 
+ mvect[9]
+ AOI22X1
X_550_ gnd vdd _55_ _11__bF$buf4 _487_[9] _56_ OAI21X1
X_551_ mcause[10] _57_ vdd gnd INVX1
X_552_ gnd vdd mepc[8] _31__bF$buf1 _58_ _24__bF$buf0 
+ mvect[10]
+ AOI22X1
X_553_ gnd vdd _57_ _11__bF$buf3 _487_[10] _58_ OAI21X1
X_554_ mip _59_ vdd gnd INVX1
X_555_ _35_ _60_ vdd gnd INVX1
X_556_ _61_ _22_ vdd gnd _60_ OR2X2
X_557_ vdd _61_ gnd _62_ _59_ NOR2X1
X_558_ gnd vdd _37_ _35_ _63_ _6_ 
+ _62_
+ AOI22X1
X_559_ vdd _36_ gnd _64_ _61_ NOR2X1
X_560_ gnd vdd _64_ mie _65_ mcause[11] 
+ _12_
+ AOI22X1
X_561_ gnd vdd mepc[9] _31__bF$buf0 _66_ _24__bF$buf4 
+ mvect[11]
+ AOI22X1
X_562_ _63_ vdd gnd _66_ _65_ _487_[11] NAND3X1
X_563_ vdd _67_ gnd mepc[10] _31__bF$buf4 NAND2X1
X_564_ gnd vdd _12_ mcause[12] _68_ mvect[12] 
+ _24__bF$buf3
+ AOI22X1
X_565_ _67_ vdd gnd _38_ _68_ _487_[12] NAND3X1
X_566_ mcause[13] _69_ vdd gnd INVX1
X_567_ gnd vdd mepc[11] _31__bF$buf3 _70_ _24__bF$buf2 
+ mvect[13]
+ AOI22X1
X_568_ gnd vdd _69_ _11__bF$buf2 _487_[13] _70_ OAI21X1
X_569_ mcause[14] _71_ vdd gnd INVX1
X_570_ gnd vdd mepc[12] _31__bF$buf2 _72_ _24__bF$buf1 
+ mvect[14]
+ AOI22X1
X_571_ gnd vdd _71_ _11__bF$buf1 _487_[14] _72_ OAI21X1
X_572_ mcause[15] _73_ vdd gnd INVX1
X_573_ gnd vdd mepc[13] _31__bF$buf1 _74_ _24__bF$buf0 
+ mvect[15]
+ AOI22X1
X_574_ gnd vdd _73_ _11__bF$buf0 _487_[15] _74_ OAI21X1
X_575_ mcause[16] _75_ vdd gnd INVX1
X_576_ gnd vdd mepc[14] _31__bF$buf0 _76_ _24__bF$buf4 
+ mvect[16]
+ AOI22X1
X_577_ gnd vdd _75_ _11__bF$buf4 _487_[16] _76_ OAI21X1
X_578_ mcause[17] _77_ vdd gnd INVX1
X_579_ gnd vdd mepc[15] _31__bF$buf4 _78_ _24__bF$buf3 
+ mvect[17]
+ AOI22X1
X_580_ gnd vdd _77_ _11__bF$buf3 _487_[17] _78_ OAI21X1
X_581_ mcause[18] _79_ vdd gnd INVX1
X_582_ gnd vdd mepc[16] _31__bF$buf3 _80_ _24__bF$buf2 
+ mvect[18]
+ AOI22X1
X_583_ gnd vdd _79_ _11__bF$buf2 _487_[18] _80_ OAI21X1
X_584_ mcause[19] _81_ vdd gnd INVX1
X_585_ gnd vdd mepc[17] _31__bF$buf2 _82_ _24__bF$buf1 
+ mvect[19]
+ AOI22X1
X_586_ gnd vdd _81_ _11__bF$buf1 _487_[19] _82_ OAI21X1
X_587_ mcause[20] _83_ vdd gnd INVX1
X_588_ gnd vdd mepc[18] _31__bF$buf1 _84_ _24__bF$buf0 
+ mvect[20]
+ AOI22X1
X_589_ gnd vdd _83_ _11__bF$buf0 _487_[20] _84_ OAI21X1
X_590_ mcause[21] _85_ vdd gnd INVX1
X_591_ gnd vdd mepc[19] _31__bF$buf0 _86_ _24__bF$buf4 
+ mvect[21]
+ AOI22X1
X_592_ gnd vdd _85_ _11__bF$buf4 _487_[21] _86_ OAI21X1
X_593_ mcause[22] _87_ vdd gnd INVX1
X_594_ gnd vdd mepc[20] _31__bF$buf4 _88_ _24__bF$buf3 
+ mvect[22]
+ AOI22X1
X_595_ gnd vdd _87_ _11__bF$buf3 _487_[22] _88_ OAI21X1
X_596_ mcause[23] _89_ vdd gnd INVX1
X_597_ gnd vdd mepc[21] _31__bF$buf3 _90_ _24__bF$buf2 
+ mvect[23]
+ AOI22X1
X_598_ gnd vdd _89_ _11__bF$buf2 _487_[23] _90_ OAI21X1
X_599_ mcause[24] _91_ vdd gnd INVX1
X_600_ gnd vdd mepc[22] _31__bF$buf2 _92_ _24__bF$buf1 
+ mvect[24]
+ AOI22X1
X_601_ gnd vdd _91_ _11__bF$buf1 _487_[24] _92_ OAI21X1
X_602_ mcause[25] _93_ vdd gnd INVX1
X_603_ gnd vdd mepc[23] _31__bF$buf1 _94_ _24__bF$buf0 
+ mvect[25]
+ AOI22X1
X_604_ gnd vdd _93_ _11__bF$buf0 _487_[25] _94_ OAI21X1
X_605_ mcause[26] _95_ vdd gnd INVX1
X_606_ gnd vdd mepc[24] _31__bF$buf0 _96_ _24__bF$buf4 
+ mvect[26]
+ AOI22X1
X_607_ gnd vdd _95_ _11__bF$buf4 _487_[26] _96_ OAI21X1
X_608_ mcause[27] _97_ vdd gnd INVX1
X_609_ gnd vdd mepc[25] _31__bF$buf4 _98_ _24__bF$buf3 
+ mvect[27]
+ AOI22X1
X_610_ gnd vdd _97_ _11__bF$buf3 _487_[27] _98_ OAI21X1
X_611_ mcause[28] _99_ vdd gnd INVX1
X_612_ gnd vdd mepc[26] _31__bF$buf3 _100_ _24__bF$buf2 
+ mvect[28]
+ AOI22X1
X_613_ gnd vdd _99_ _11__bF$buf2 _487_[28] _100_ OAI21X1
X_614_ mcause[29] _101_ vdd gnd INVX1
X_615_ gnd vdd mepc[27] _31__bF$buf2 _102_ _24__bF$buf1 
+ mvect[29]
+ AOI22X1
X_616_ gnd vdd _101_ _11__bF$buf1 _487_[29] _102_ OAI21X1
X_617_ gnd vdd mvect[30] _24__bF$buf0 _103_ _52_ AOI21X1
X_618_ gnd vdd _12_ mcause[30] _104_ mepc[28] 
+ _31__bF$buf1
+ AOI22X1
X_619_ vdd _487_[30] gnd _103_ _104_ NAND2X1
X_620_ mcause[31] _105_ vdd gnd INVX1
X_621_ gnd vdd mepc[29] _31__bF$buf0 _106_ _24__bF$buf4 
+ mvect[31]
+ AOI22X1
X_622_ gnd vdd _105_ _11__bF$buf0 _487_[31] _106_ OAI21X1
X_623_ vdd _107_ gnd CSR_mcause[0] CSR_Wen_traps_bF$buf5 NAND2X1
X_624_ vdd gnd CSR_Ret_bF$buf5 _108_ INVX8
X_625_ vdd _109_ gnd CSR_Wen _108__bF$buf3 NAND2X1
X_626_ vdd _11__bF$buf4 gnd _110_ _109_ NOR2X1
X_627_ vdd _110_ gnd _111_ mcause[0] NOR2X1
X_628_ vdd gnd CSR_Wen_traps_bF$buf4 _112_ INVX8
X_629_ _109_ _113_ vdd gnd INVX1
X_630_ vdd _114_ gnd _113_ _12_ NAND2X1
X_631_ gnd vdd _114__bF$buf6 CSR_Wdata[0] _115_ _112__bF$buf6 OAI21X1
X_632_ gnd vdd _115_ _111_ _28_[0] _107_ OAI21X1
X_633_ vdd _116_ gnd CSR_Wen_traps_bF$buf3 CSR_mcause[1] NAND2X1
X_634_ vdd _110_ gnd _117_ mcause[1] NOR2X1
X_635_ gnd vdd _114__bF$buf5 CSR_Wdata[1] _118_ _112__bF$buf5 OAI21X1
X_636_ gnd vdd _118_ _117_ _28_[1] _116_ OAI21X1
X_637_ vdd _119_ gnd CSR_Wen_traps_bF$buf2 CSR_mcause[2] NAND2X1
X_638_ gnd vdd _11__bF$buf3 _109_ _120_ _29_ OAI21X1
X_639_ gnd vdd _114__bF$buf4 CSR_Wdata[2] _121_ _120_ OAI21X1
X_640_ gnd vdd _121_ CSR_Wen_traps_bF$buf1 _28_[2] _119_ OAI21X1
X_641_ vdd _122_ gnd CSR_Wen_traps_bF$buf0 CSR_mcause[3] NAND2X1
X_642_ vdd _110_ gnd _123_ mcause[3] NOR2X1
X_643_ gnd vdd _114__bF$buf3 CSR_Wdata[3] _124_ _112__bF$buf4 OAI21X1
X_644_ gnd vdd _124_ _123_ _28_[3] _122_ OAI21X1
X_645_ gnd vdd _114__bF$buf2 CSR_Wdata[4] _125_ _112__bF$buf3 OAI21X1
X_646_ gnd vdd _42_ _114__bF$buf1 _28_[4] _125_ AOI21X1
X_647_ gnd vdd _114__bF$buf0 CSR_Wdata[5] _126_ _112__bF$buf2 OAI21X1
X_648_ gnd vdd _44_ _114__bF$buf6 _28_[5] _126_ AOI21X1
X_649_ gnd vdd _114__bF$buf5 CSR_Wdata[6] _127_ _112__bF$buf1 OAI21X1
X_650_ gnd vdd _46_ _114__bF$buf4 _28_[6] _127_ AOI21X1
X_651_ vdd _110_ gnd _128_ mcause[7] NOR2X1
X_652_ gnd vdd _114__bF$buf3 CSR_Wdata[7] _129_ _112__bF$buf0 OAI21X1
X_653_ vdd _129_ gnd _28_[7] _128_ NOR2X1
X_654_ vdd _110_ gnd _130_ mcause[8] NOR2X1
X_655_ gnd vdd _114__bF$buf2 CSR_Wdata[8] _131_ _112__bF$buf6 OAI21X1
X_656_ vdd _131_ gnd _28_[8] _130_ NOR2X1
X_657_ gnd vdd _114__bF$buf1 CSR_Wdata[9] _132_ _112__bF$buf5 OAI21X1
X_658_ gnd vdd _55_ _114__bF$buf0 _28_[9] _132_ AOI21X1
X_659_ gnd vdd _114__bF$buf6 CSR_Wdata[10] _133_ _112__bF$buf4 OAI21X1
X_660_ gnd vdd _57_ _114__bF$buf5 _28_[10] _133_ AOI21X1
X_661_ vdd _110_ gnd _134_ mcause[11] NOR2X1
X_662_ gnd vdd _114__bF$buf4 CSR_Wdata[11] _135_ _112__bF$buf3 OAI21X1
X_663_ vdd _135_ gnd _28_[11] _134_ NOR2X1
X_664_ vdd _110_ gnd _136_ mcause[12] NOR2X1
X_665_ gnd vdd _114__bF$buf3 CSR_Wdata[12] _137_ _112__bF$buf2 OAI21X1
X_666_ vdd _137_ gnd _28_[12] _136_ NOR2X1
X_667_ gnd vdd _114__bF$buf2 CSR_Wdata[13] _138_ _112__bF$buf1 OAI21X1
X_668_ gnd vdd _69_ _114__bF$buf1 _28_[13] _138_ AOI21X1
X_669_ gnd vdd _114__bF$buf0 CSR_Wdata[14] _139_ _112__bF$buf0 OAI21X1
X_670_ gnd vdd _71_ _114__bF$buf6 _28_[14] _139_ AOI21X1
X_671_ gnd vdd _114__bF$buf5 CSR_Wdata[15] _140_ _112__bF$buf6 OAI21X1
X_672_ gnd vdd _73_ _114__bF$buf4 _28_[15] _140_ AOI21X1
X_673_ gnd vdd _114__bF$buf3 CSR_Wdata[16] _141_ _112__bF$buf5 OAI21X1
X_674_ gnd vdd _75_ _114__bF$buf2 _28_[16] _141_ AOI21X1
X_675_ gnd vdd _114__bF$buf1 CSR_Wdata[17] _142_ _112__bF$buf4 OAI21X1
X_676_ gnd vdd _77_ _114__bF$buf0 _28_[17] _142_ AOI21X1
X_677_ gnd vdd _114__bF$buf6 CSR_Wdata[18] _143_ _112__bF$buf3 OAI21X1
X_678_ gnd vdd _79_ _114__bF$buf5 _28_[18] _143_ AOI21X1
X_679_ gnd vdd _114__bF$buf4 CSR_Wdata[19] _144_ _112__bF$buf2 OAI21X1
X_680_ gnd vdd _81_ _114__bF$buf3 _28_[19] _144_ AOI21X1
X_681_ gnd vdd _114__bF$buf2 CSR_Wdata[20] _145_ _112__bF$buf1 OAI21X1
X_682_ gnd vdd _83_ _114__bF$buf1 _28_[20] _145_ AOI21X1
X_683_ gnd vdd _114__bF$buf0 CSR_Wdata[21] _146_ _112__bF$buf0 OAI21X1
X_684_ gnd vdd _85_ _114__bF$buf6 _28_[21] _146_ AOI21X1
X_685_ gnd vdd _114__bF$buf5 CSR_Wdata[22] _147_ _112__bF$buf6 OAI21X1
X_686_ gnd vdd _87_ _114__bF$buf4 _28_[22] _147_ AOI21X1
X_687_ gnd vdd _114__bF$buf3 CSR_Wdata[23] _148_ _112__bF$buf5 OAI21X1
X_688_ gnd vdd _89_ _114__bF$buf2 _28_[23] _148_ AOI21X1
X_689_ gnd vdd _114__bF$buf1 CSR_Wdata[24] _149_ _112__bF$buf4 OAI21X1
X_690_ gnd vdd _91_ _114__bF$buf0 _28_[24] _149_ AOI21X1
X_691_ gnd vdd _114__bF$buf6 CSR_Wdata[25] _150_ _112__bF$buf3 OAI21X1
X_692_ gnd vdd _93_ _114__bF$buf5 _28_[25] _150_ AOI21X1
X_693_ gnd vdd _114__bF$buf4 CSR_Wdata[26] _151_ _112__bF$buf2 OAI21X1
X_694_ gnd vdd _95_ _114__bF$buf3 _28_[26] _151_ AOI21X1
X_695_ gnd vdd _114__bF$buf2 CSR_Wdata[27] _152_ _112__bF$buf1 OAI21X1
X_696_ gnd vdd _97_ _114__bF$buf1 _28_[27] _152_ AOI21X1
X_697_ gnd vdd _114__bF$buf0 CSR_Wdata[28] _153_ _112__bF$buf0 OAI21X1
X_698_ gnd vdd _99_ _114__bF$buf6 _28_[28] _153_ AOI21X1
X_699_ gnd vdd _114__bF$buf5 CSR_Wdata[29] _154_ _112__bF$buf6 OAI21X1
X_700_ gnd vdd _101_ _114__bF$buf4 _28_[29] _154_ AOI21X1
X_701_ vdd _110_ gnd _155_ mcause[30] NOR2X1
X_702_ gnd vdd _114__bF$buf3 CSR_Wdata[30] _156_ _112__bF$buf5 OAI21X1
X_703_ vdd _156_ gnd _28_[30] _155_ NOR2X1
X_704_ mie vdd gnd mstatus[0] mip _157_ NAND3X1
X_705_ _157_ _485_ vdd gnd INVX1
X_706_ vdd _158_ gnd mcause[31] _112__bF$buf4 NAND2X1
X_707_ gnd vdd _158_ _110_ _112__bF$buf3 _157_ 
+ _28_[31]
+ OAI22X1
X_708_ CSR_Wen _159_ vdd gnd INVX1
X_709_ vdd _60_ gnd _160_ _7_ NOR2X1
X_710_ vdd _161_ gnd _160_ _17_ NAND2X1
X_711_ vdd _161_ gnd _162_ _159_ NOR2X1
X_712_ CSR_Wdata[3] _163_ vdd gnd INVX1
X_713_ vdd _164_ gnd _163_ _162_ NAND2X1
X_714_ gnd vdd mstatus[0] _162_ _165_ _164_ OAI21X1
X_715_ gnd vdd _108__bF$buf2 mstatus[1] _166_ _112__bF$buf2 OAI21X1
X_716_ gnd vdd _108__bF$buf1 _165_ _33_[0] _166_ AOI21X1
X_717_ _162_ vdd gnd _167_ CSR_Wdata[7] mstatus[1] MUX2X1
X_718_ vdd CSR_Wen_traps_bF$buf5 gnd _168_ CSR_Ret_bF$buf4 NOR2X1
X_719_ gnd vdd _167_ _168_ _33_[1] _34_ 
+ CSR_Wen_traps_bF$buf4
+ AOI22X1
X_720_ vdd _109_ gnd _169_ CSR_Wen_traps_bF$buf3 NOR2X1
X_721_ vdd _170_ gnd _169_ _24__bF$buf3 NAND2X1
X_722_ vdd _170__bF$buf6 gnd _171_ CSR_Wdata[0] NOR2X1
X_723_ gnd vdd _0_ _170__bF$buf5 _07_[0] _171_ AOI21X1
X_724_ vdd _170__bF$buf4 gnd _172_ CSR_Wdata[1] NOR2X1
X_725_ gnd vdd _26_ _170__bF$buf3 _07_[1] _172_ AOI21X1
X_726_ mvect[2] _173_ vdd gnd INVX1
X_727_ vdd _170__bF$buf2 gnd _174_ CSR_Wdata[2] NOR2X1
X_728_ gnd vdd _173_ _170__bF$buf1 _07_[2] _174_ AOI21X1
X_729_ vdd gnd _175_ mvect[3] INVX2
X_730_ _170__bF$buf0 vdd gnd _07_[3] _175_ _163_ MUX2X1
X_731_ vdd gnd _176_ mvect[4] INVX2
X_732_ vdd _170__bF$buf6 gnd _177_ CSR_Wdata[4] NOR2X1
X_733_ gnd vdd _176_ _170__bF$buf5 _07_[4] _177_ AOI21X1
X_734_ vdd gnd _178_ mvect[5] INVX2
X_735_ vdd _170__bF$buf4 gnd _179_ CSR_Wdata[5] NOR2X1
X_736_ gnd vdd _178_ _170__bF$buf3 _07_[5] _179_ AOI21X1
X_737_ vdd gnd _180_ mvect[6] INVX2
X_738_ vdd _170__bF$buf2 gnd _181_ CSR_Wdata[6] NOR2X1
X_739_ gnd vdd _180_ _170__bF$buf1 _07_[6] _181_ AOI21X1
X_740_ mvect[7] _182_ vdd gnd INVX1
X_741_ vdd _170__bF$buf0 gnd _183_ CSR_Wdata[7] NOR2X1
X_742_ gnd vdd _182_ _170__bF$buf6 _07_[7] _183_ AOI21X1
X_743_ mvect[8] _184_ vdd gnd INVX1
X_744_ vdd _170__bF$buf5 gnd _185_ CSR_Wdata[8] NOR2X1
X_745_ gnd vdd _184_ _170__bF$buf4 _07_[8] _185_ AOI21X1
X_746_ mvect[9] _186_ vdd gnd INVX1
X_747_ vdd _170__bF$buf3 gnd _187_ CSR_Wdata[9] NOR2X1
X_748_ gnd vdd _186_ _170__bF$buf2 _07_[9] _187_ AOI21X1
X_749_ vdd gnd _188_ mvect[10] INVX2
X_750_ vdd _170__bF$buf1 gnd _189_ CSR_Wdata[10] NOR2X1
X_751_ gnd vdd _188_ _170__bF$buf0 _07_[10] _189_ AOI21X1
X_752_ mvect[11] _190_ vdd gnd INVX1
X_753_ CSR_Wdata[11] _191_ vdd gnd INVX1
X_754_ _170__bF$buf6 vdd gnd _07_[11] _190_ _191_ MUX2X1
X_755_ vdd gnd _192_ mvect[12] INVX2
X_756_ vdd _170__bF$buf5 gnd _193_ CSR_Wdata[12] NOR2X1
X_757_ gnd vdd _192_ _170__bF$buf4 _07_[12] _193_ AOI21X1
X_758_ mvect[13] _194_ vdd gnd INVX1
X_759_ vdd _170__bF$buf3 gnd _195_ CSR_Wdata[13] NOR2X1
X_760_ gnd vdd _194_ _170__bF$buf2 _07_[13] _195_ AOI21X1
X_761_ vdd gnd _196_ mvect[14] INVX2
X_762_ vdd _170__bF$buf1 gnd _197_ CSR_Wdata[14] NOR2X1
X_763_ gnd vdd _196_ _170__bF$buf0 _07_[14] _197_ AOI21X1
X_764_ mvect[15] _198_ vdd gnd INVX1
X_765_ vdd _170__bF$buf6 gnd _199_ CSR_Wdata[15] NOR2X1
X_766_ gnd vdd _198_ _170__bF$buf5 _07_[15] _199_ AOI21X1
X_767_ mvect[16] _200_ vdd gnd INVX1
X_768_ vdd _170__bF$buf4 gnd _201_ CSR_Wdata[16] NOR2X1
X_769_ gnd vdd _200_ _170__bF$buf3 _07_[16] _201_ AOI21X1
X_770_ mvect[17] _202_ vdd gnd INVX1
X_771_ vdd _170__bF$buf2 gnd _203_ CSR_Wdata[17] NOR2X1
X_772_ gnd vdd _202_ _170__bF$buf1 _07_[17] _203_ AOI21X1
X_773_ mvect[18] _204_ vdd gnd INVX1
X_774_ vdd _170__bF$buf0 gnd _205_ CSR_Wdata[18] NOR2X1
X_775_ gnd vdd _204_ _170__bF$buf6 _07_[18] _205_ AOI21X1
X_776_ mvect[19] _206_ vdd gnd INVX1
X_777_ vdd _170__bF$buf5 gnd _207_ CSR_Wdata[19] NOR2X1
X_778_ gnd vdd _206_ _170__bF$buf4 _07_[19] _207_ AOI21X1
X_779_ vdd gnd _208_ mvect[20] INVX2
X_780_ vdd _170__bF$buf3 gnd _209_ CSR_Wdata[20] NOR2X1
X_781_ gnd vdd _208_ _170__bF$buf2 _07_[20] _209_ AOI21X1
X_782_ mvect[21] _210_ vdd gnd INVX1
X_783_ vdd _170__bF$buf1 gnd _211_ CSR_Wdata[21] NOR2X1
X_784_ gnd vdd _210_ _170__bF$buf0 _07_[21] _211_ AOI21X1
X_785_ mvect[22] _212_ vdd gnd INVX1
X_786_ vdd _170__bF$buf6 gnd _213_ CSR_Wdata[22] NOR2X1
X_787_ gnd vdd _212_ _170__bF$buf5 _07_[22] _213_ AOI21X1
X_788_ mvect[23] _214_ vdd gnd INVX1
X_789_ vdd _170__bF$buf4 gnd _215_ CSR_Wdata[23] NOR2X1
X_790_ gnd vdd _214_ _170__bF$buf3 _07_[23] _215_ AOI21X1
X_791_ mvect[24] _216_ vdd gnd INVX1
X_792_ vdd _170__bF$buf2 gnd _217_ CSR_Wdata[24] NOR2X1
X_793_ gnd vdd _216_ _170__bF$buf1 _07_[24] _217_ AOI21X1
X_794_ mvect[25] _218_ vdd gnd INVX1
X_795_ vdd _170__bF$buf0 gnd _219_ CSR_Wdata[25] NOR2X1
X_796_ gnd vdd _218_ _170__bF$buf6 _07_[25] _219_ AOI21X1
X_797_ mvect[26] _220_ vdd gnd INVX1
X_798_ vdd _170__bF$buf5 gnd _221_ CSR_Wdata[26] NOR2X1
X_799_ gnd vdd _220_ _170__bF$buf4 _07_[26] _221_ AOI21X1
X_800_ mvect[27] _222_ vdd gnd INVX1
X_801_ vdd _170__bF$buf3 gnd _223_ CSR_Wdata[27] NOR2X1
X_802_ gnd vdd _222_ _170__bF$buf2 _07_[27] _223_ AOI21X1
X_803_ mvect[28] _224_ vdd gnd INVX1
X_804_ vdd _170__bF$buf1 gnd _225_ CSR_Wdata[28] NOR2X1
X_805_ gnd vdd _224_ _170__bF$buf0 _07_[28] _225_ AOI21X1
X_806_ mvect[29] _226_ vdd gnd INVX1
X_807_ vdd _170__bF$buf6 gnd _227_ CSR_Wdata[29] NOR2X1
X_808_ gnd vdd _226_ _170__bF$buf5 _07_[29] _227_ AOI21X1
X_809_ mvect[30] _228_ vdd gnd INVX1
X_810_ vdd _170__bF$buf4 gnd _229_ CSR_Wdata[30] NOR2X1
X_811_ gnd vdd _228_ _170__bF$buf3 _07_[30] _229_ AOI21X1
X_812_ mvect[31] _230_ vdd gnd INVX1
X_813_ vdd _170__bF$buf2 gnd _231_ CSR_Wdata[31] NOR2X1
X_814_ gnd vdd _230_ _170__bF$buf1 _07_[31] _231_ AOI21X1
X_815_ vdd _232_ gnd _169_ _64_ NAND2X1
X_816_ vdd _233_ gnd mie _232_ NAND2X1
X_817_ gnd vdd _191_ _232_ _14_ _233_ OAI21X1
X_818_ vdd _234_ gnd CSR_Wen_traps_bF$buf2 CSR_mepc[2] NAND2X1
X_819_ vdd gnd _31__bF$buf4 _113_ _235_ AND2X2
X_820_ vdd _235__bF$buf4 gnd _236_ mepc[0] NOR2X1
X_821_ vdd _237_ gnd _113_ _31__bF$buf3 NAND2X1
X_822_ gnd vdd _237__bF$buf4 CSR_Wdata[2] _238_ _112__bF$buf1 OAI21X1
X_823_ gnd vdd _236_ _238_ _21_[0] _234_ OAI21X1
X_824_ vdd _239_ gnd CSR_Wen_traps_bF$buf1 CSR_mepc[3] NAND2X1
X_825_ vdd _235__bF$buf3 gnd _240_ mepc[1] NOR2X1
X_826_ gnd vdd _237__bF$buf3 CSR_Wdata[3] _241_ _112__bF$buf0 OAI21X1
X_827_ gnd vdd _240_ _241_ _21_[1] _239_ OAI21X1
X_828_ vdd _242_ gnd CSR_Wen_traps_bF$buf0 CSR_mepc[4] NAND2X1
X_829_ vdd _235__bF$buf2 gnd _243_ mepc[2] NOR2X1
X_830_ gnd vdd _237__bF$buf2 CSR_Wdata[4] _244_ _112__bF$buf6 OAI21X1
X_831_ gnd vdd _243_ _244_ _21_[2] _242_ OAI21X1
X_832_ vdd _245_ gnd CSR_Wen_traps_bF$buf5 CSR_mepc[5] NAND2X1
X_833_ vdd _235__bF$buf1 gnd _246_ mepc[3] NOR2X1
X_834_ gnd vdd _237__bF$buf1 CSR_Wdata[5] _247_ _112__bF$buf5 OAI21X1
X_835_ gnd vdd _246_ _247_ _21_[3] _245_ OAI21X1
X_836_ vdd _248_ gnd CSR_Wen_traps_bF$buf4 CSR_mepc[6] NAND2X1
X_837_ vdd _235__bF$buf0 gnd _249_ mepc[4] NOR2X1
X_838_ gnd vdd _237__bF$buf0 CSR_Wdata[6] _250_ _112__bF$buf4 OAI21X1
X_839_ gnd vdd _249_ _250_ _21_[4] _248_ OAI21X1
X_840_ vdd _251_ gnd CSR_Wen_traps_bF$buf3 CSR_mepc[7] NAND2X1
X_841_ vdd _235__bF$buf4 gnd _252_ mepc[5] NOR2X1
X_842_ gnd vdd _237__bF$buf4 CSR_Wdata[7] _253_ _112__bF$buf3 OAI21X1
X_843_ gnd vdd _252_ _253_ _21_[5] _251_ OAI21X1
X_844_ vdd _254_ gnd CSR_Wen_traps_bF$buf2 CSR_mepc[8] NAND2X1
X_845_ vdd _235__bF$buf3 gnd _255_ mepc[6] NOR2X1
X_846_ gnd vdd _237__bF$buf3 CSR_Wdata[8] _256_ _112__bF$buf2 OAI21X1
X_847_ gnd vdd _255_ _256_ _21_[6] _254_ OAI21X1
X_848_ vdd _257_ gnd CSR_Wen_traps_bF$buf1 CSR_mepc[9] NAND2X1
X_849_ vdd _235__bF$buf2 gnd _258_ mepc[7] NOR2X1
X_850_ gnd vdd _237__bF$buf2 CSR_Wdata[9] _259_ _112__bF$buf1 OAI21X1
X_851_ gnd vdd _258_ _259_ _21_[7] _257_ OAI21X1
X_852_ vdd _260_ gnd CSR_Wen_traps_bF$buf0 CSR_mepc[10] NAND2X1
X_853_ vdd _235__bF$buf1 gnd _261_ mepc[8] NOR2X1
X_854_ gnd vdd _237__bF$buf1 CSR_Wdata[10] _262_ _112__bF$buf0 OAI21X1
X_855_ gnd vdd _261_ _262_ _21_[8] _260_ OAI21X1
X_856_ vdd _263_ gnd CSR_Wen_traps_bF$buf5 CSR_mepc[11] NAND2X1
X_857_ vdd _235__bF$buf0 gnd _264_ mepc[9] NOR2X1
X_858_ gnd vdd _237__bF$buf0 CSR_Wdata[11] _265_ _112__bF$buf6 OAI21X1
X_859_ gnd vdd _264_ _265_ _21_[9] _263_ OAI21X1
X_860_ vdd _266_ gnd CSR_Wen_traps_bF$buf4 CSR_mepc[12] NAND2X1
X_861_ vdd _235__bF$buf4 gnd _267_ mepc[10] NOR2X1
X_862_ gnd vdd _237__bF$buf4 CSR_Wdata[12] _268_ _112__bF$buf5 OAI21X1
X_863_ gnd vdd _267_ _268_ _21_[10] _266_ OAI21X1
X_864_ vdd _269_ gnd CSR_Wen_traps_bF$buf3 CSR_mepc[13] NAND2X1
X_865_ vdd _235__bF$buf3 gnd _270_ mepc[11] NOR2X1
X_866_ gnd vdd _237__bF$buf3 CSR_Wdata[13] _271_ _112__bF$buf4 OAI21X1
X_867_ gnd vdd _270_ _271_ _21_[11] _269_ OAI21X1
X_868_ vdd _272_ gnd CSR_Wen_traps_bF$buf2 CSR_mepc[14] NAND2X1
X_869_ vdd _235__bF$buf2 gnd _273_ mepc[12] NOR2X1
X_870_ gnd vdd _237__bF$buf2 CSR_Wdata[14] _274_ _112__bF$buf3 OAI21X1
X_871_ gnd vdd _273_ _274_ _21_[12] _272_ OAI21X1
X_872_ vdd _275_ gnd CSR_Wen_traps_bF$buf1 CSR_mepc[15] NAND2X1
X_873_ vdd _235__bF$buf1 gnd _276_ mepc[13] NOR2X1
X_874_ gnd vdd _237__bF$buf1 CSR_Wdata[15] _277_ _112__bF$buf2 OAI21X1
X_875_ gnd vdd _276_ _277_ _21_[13] _275_ OAI21X1
X_876_ vdd _278_ gnd CSR_Wen_traps_bF$buf0 CSR_mepc[16] NAND2X1
X_877_ vdd _235__bF$buf0 gnd _279_ mepc[14] NOR2X1
X_878_ gnd vdd _237__bF$buf0 CSR_Wdata[16] _280_ _112__bF$buf1 OAI21X1
X_879_ gnd vdd _279_ _280_ _21_[14] _278_ OAI21X1
X_880_ vdd _281_ gnd CSR_Wen_traps_bF$buf5 CSR_mepc[17] NAND2X1
X_881_ vdd _235__bF$buf4 gnd _282_ mepc[15] NOR2X1
X_882_ gnd vdd _237__bF$buf4 CSR_Wdata[17] _283_ _112__bF$buf0 OAI21X1
X_883_ gnd vdd _282_ _283_ _21_[15] _281_ OAI21X1
X_884_ vdd _284_ gnd CSR_Wen_traps_bF$buf4 CSR_mepc[18] NAND2X1
X_885_ vdd _235__bF$buf3 gnd _285_ mepc[16] NOR2X1
X_886_ gnd vdd _237__bF$buf3 CSR_Wdata[18] _286_ _112__bF$buf6 OAI21X1
X_887_ gnd vdd _285_ _286_ _21_[16] _284_ OAI21X1
X_888_ vdd _287_ gnd CSR_Wen_traps_bF$buf3 CSR_mepc[19] NAND2X1
X_889_ vdd _235__bF$buf2 gnd _288_ mepc[17] NOR2X1
X_890_ gnd vdd _237__bF$buf2 CSR_Wdata[19] _289_ _112__bF$buf5 OAI21X1
X_891_ gnd vdd _288_ _289_ _21_[17] _287_ OAI21X1
X_892_ vdd _290_ gnd CSR_Wen_traps_bF$buf2 CSR_mepc[20] NAND2X1
X_893_ vdd _235__bF$buf1 gnd _291_ mepc[18] NOR2X1
X_894_ gnd vdd _237__bF$buf1 CSR_Wdata[20] _292_ _112__bF$buf4 OAI21X1
X_895_ gnd vdd _291_ _292_ _21_[18] _290_ OAI21X1
X_896_ vdd _293_ gnd CSR_Wen_traps_bF$buf1 CSR_mepc[21] NAND2X1
X_897_ vdd _235__bF$buf0 gnd _294_ mepc[19] NOR2X1
X_898_ gnd vdd _237__bF$buf0 CSR_Wdata[21] _295_ _112__bF$buf3 OAI21X1
X_899_ gnd vdd _294_ _295_ _21_[19] _293_ OAI21X1
X_900_ vdd _296_ gnd CSR_Wen_traps_bF$buf0 CSR_mepc[22] NAND2X1
X_901_ vdd _235__bF$buf4 gnd _297_ mepc[20] NOR2X1
X_902_ gnd vdd _237__bF$buf4 CSR_Wdata[22] _298_ _112__bF$buf2 OAI21X1
X_903_ gnd vdd _297_ _298_ _21_[20] _296_ OAI21X1
X_904_ vdd _299_ gnd CSR_Wen_traps_bF$buf5 CSR_mepc[23] NAND2X1
X_905_ vdd _235__bF$buf3 gnd _300_ mepc[21] NOR2X1
X_906_ gnd vdd _237__bF$buf3 CSR_Wdata[23] _301_ _112__bF$buf1 OAI21X1
X_907_ gnd vdd _300_ _301_ _21_[21] _299_ OAI21X1
X_908_ vdd _302_ gnd CSR_Wen_traps_bF$buf4 CSR_mepc[24] NAND2X1
X_909_ vdd _235__bF$buf2 gnd _303_ mepc[22] NOR2X1
X_910_ gnd vdd _237__bF$buf2 CSR_Wdata[24] _304_ _112__bF$buf0 OAI21X1
X_911_ gnd vdd _303_ _304_ _21_[22] _302_ OAI21X1
X_912_ vdd _305_ gnd CSR_Wen_traps_bF$buf3 CSR_mepc[25] NAND2X1
X_913_ vdd _235__bF$buf1 gnd _306_ mepc[23] NOR2X1
X_914_ gnd vdd _237__bF$buf1 CSR_Wdata[25] _307_ _112__bF$buf6 OAI21X1
X_915_ gnd vdd _306_ _307_ _21_[23] _305_ OAI21X1
X_916_ vdd _308_ gnd CSR_Wen_traps_bF$buf2 CSR_mepc[26] NAND2X1
X_917_ vdd _235__bF$buf0 gnd _309_ mepc[24] NOR2X1
X_918_ gnd vdd _237__bF$buf0 CSR_Wdata[26] _310_ _112__bF$buf5 OAI21X1
X_919_ gnd vdd _309_ _310_ _21_[24] _308_ OAI21X1
X_920_ vdd _311_ gnd CSR_Wen_traps_bF$buf1 CSR_mepc[27] NAND2X1
X_921_ vdd _235__bF$buf4 gnd _312_ mepc[25] NOR2X1
X_922_ gnd vdd _237__bF$buf4 CSR_Wdata[27] _313_ _112__bF$buf4 OAI21X1
X_923_ gnd vdd _312_ _313_ _21_[25] _311_ OAI21X1
X_924_ vdd _314_ gnd CSR_Wen_traps_bF$buf0 CSR_mepc[28] NAND2X1
X_925_ vdd _235__bF$buf3 gnd _315_ mepc[26] NOR2X1
X_926_ gnd vdd _237__bF$buf3 CSR_Wdata[28] _316_ _112__bF$buf3 OAI21X1
X_927_ gnd vdd _315_ _316_ _21_[26] _314_ OAI21X1
X_928_ vdd _317_ gnd CSR_Wen_traps_bF$buf5 CSR_mepc[29] NAND2X1
X_929_ vdd _235__bF$buf2 gnd _318_ mepc[27] NOR2X1
X_930_ gnd vdd _237__bF$buf2 CSR_Wdata[29] _319_ _112__bF$buf2 OAI21X1
X_931_ gnd vdd _318_ _319_ _21_[27] _317_ OAI21X1
X_932_ vdd _320_ gnd CSR_Wen_traps_bF$buf4 CSR_mepc[30] NAND2X1
X_933_ vdd _235__bF$buf1 gnd _321_ mepc[28] NOR2X1
X_934_ gnd vdd _237__bF$buf1 CSR_Wdata[30] _322_ _112__bF$buf1 OAI21X1
X_935_ gnd vdd _321_ _322_ _21_[28] _320_ OAI21X1
X_936_ vdd _323_ gnd CSR_Wen_traps_bF$buf3 CSR_mepc[31] NAND2X1
X_937_ vdd _235__bF$buf0 gnd _324_ mepc[29] NOR2X1
X_938_ gnd vdd _237__bF$buf0 CSR_Wdata[31] _325_ _112__bF$buf0 OAI21X1
X_939_ gnd vdd _324_ _325_ _21_[29] _323_ OAI21X1
X_940_ vdd _157_ gnd _326_ _0_ NOR2X1
X_941_ vdd _327_ gnd _173_ _326_ NAND2X1
X_942_ vdd gnd _328_ _326_ INVX2
X_943_ gnd vdd mvect[2] _328_ _329_ CSR_Ret_bF$buf3 AOI21X1
X_944_ vdd _108__bF$buf0 gnd _330_ mepc[0] NOR2X1
X_945_ gnd vdd _327_ _329_ _486_[2] _330_ AOI21X1
X_946_ _327_ _175_ gnd vdd _331_ XNOR2X1
X_947_ vdd _332_ gnd mepc[1] CSR_Ret_bF$buf2 NAND2X1
X_948_ gnd vdd _331_ CSR_Ret_bF$buf1 _486_[3] _332_ OAI21X1
X_949_ vdd mvect[3] gnd _333_ mvect[2] NOR2X1
X_950_ gnd vdd _328_ _333_ _334_ _176_ OAI21X1
X_951_ gnd vdd mvect[2] mvect[3] _335_ mvect[4] OAI21X1
X_952_ gnd vdd _328_ _335_ _336_ _334_ OAI21X1
X_953_ vdd _337_ gnd mepc[2] CSR_Ret_bF$buf0 NAND2X1
X_954_ gnd vdd _336_ CSR_Ret_bF$buf5 _486_[4] _337_ OAI21X1
X_955_ gnd vdd _176_ _333_ _338_ _326_ OAI21X1
X_956_ _338_ _178_ gnd vdd _339_ XNOR2X1
X_957_ vdd _340_ gnd mepc[3] CSR_Ret_bF$buf4 NAND2X1
X_958_ gnd vdd _339_ CSR_Ret_bF$buf3 _486_[5] _340_ OAI21X1
X_959_ gnd vdd _333_ _176_ _341_ _178_ OAI21X1
X_960_ gnd vdd _326_ _341_ _342_ mvect[6] AOI21X1
X_961_ vdd _343_ gnd _326_ _341_ NAND2X1
X_962_ gnd vdd _343_ _180_ _344_ _108__bF$buf4 OAI21X1
X_963_ vdd _345_ gnd mepc[4] CSR_Ret_bF$buf2 NAND2X1
X_964_ gnd vdd _344_ _342_ _486_[6] _345_ OAI21X1
X_965_ gnd vdd _343_ _180_ _346_ _182_ OAI21X1
X_966_ vdd _347_ gnd mvect[6] mvect[7] NAND2X1
X_967_ gnd vdd _343_ _347_ _348_ _346_ OAI21X1
X_968_ vdd _349_ gnd mepc[5] CSR_Ret_bF$buf1 NAND2X1
X_969_ gnd vdd _348_ CSR_Ret_bF$buf0 _486_[7] _349_ OAI21X1
X_970_ gnd vdd _178_ _335_ _350_ _347_ AOI21X1
X_971_ vdd gnd _350_ _326_ _351_ AND2X2
X_972_ vdd _352_ gnd mvect[8] _351_ NAND2X1
X_973_ _352_ _353_ vdd gnd INVX1
X_974_ gnd vdd _351_ mvect[8] _354_ _108__bF$buf3 OAI21X1
X_975_ vdd _355_ gnd mepc[6] CSR_Ret_bF$buf5 NAND2X1
X_976_ gnd vdd _353_ _354_ _486_[8] _355_ OAI21X1
X_977_ vdd _356_ gnd _326_ _350_ NAND2X1
X_978_ gnd vdd _356_ _184_ _357_ _186_ OAI21X1
X_979_ vdd _358_ gnd mvect[8] mvect[9] NAND2X1
X_980_ gnd vdd _356_ _358_ _359_ _357_ OAI21X1
X_981_ vdd _360_ gnd mepc[7] CSR_Ret_bF$buf4 NAND2X1
X_982_ gnd vdd _359_ CSR_Ret_bF$buf3 _486_[9] _360_ OAI21X1
X_983_ _358_ _361_ vdd gnd INVX1
X_984_ vdd _362_ gnd _361_ _351_ NAND2X1
X_985_ _362_ _188_ gnd vdd _363_ XNOR2X1
X_986_ vdd _364_ gnd mepc[8] CSR_Ret_bF$buf2 NAND2X1
X_987_ gnd vdd _363_ CSR_Ret_bF$buf1 _486_[10] _364_ OAI21X1
X_988_ vdd _365_ gnd mvect[10] _361_ NAND2X1
X_989_ gnd vdd _356_ _365_ _366_ _190_ OAI21X1
X_990_ vdd _367_ gnd mvect[10] mvect[11] NAND2X1
X_991_ _368_ _367_ vdd gnd _358_ OR2X2
X_992_ gnd vdd _356_ _368_ _369_ _366_ OAI21X1
X_993_ vdd _370_ gnd mepc[9] CSR_Ret_bF$buf0 NAND2X1
X_994_ gnd vdd _369_ CSR_Ret_bF$buf5 _486_[11] _370_ OAI21X1
X_995_ vdd _367_ gnd _371_ _358_ NOR2X1
X_996_ _371_ vdd gnd _326_ _350_ _372_ NAND3X1
X_997_ _372_ _192_ gnd vdd _373_ XNOR2X1
X_998_ vdd _374_ gnd mepc[10] CSR_Ret_bF$buf4 NAND2X1
X_999_ gnd vdd _373_ CSR_Ret_bF$buf3 _486_[12] _374_ OAI21X1

.ends
.end
